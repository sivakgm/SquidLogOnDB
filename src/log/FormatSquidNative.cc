/*
 * DEBUG: section 46    Access Log - Squid format
 * AUTHOR: Duane Wessels
 *
 * SQUID Web Proxy Cache          http://www.squid-cache.org/
 * ----------------------------------------------------------
 *
 *  Squid is the result of efforts by numerous individuals from
 *  the Internet community; see the CONTRIBUTORS file for full
 *  details.   Many organizations have provided support for Squid's
 *  development; see the SPONSORS file for full details.  Squid is
 *  Copyrighted (C) 2001 by the Regents of the University of
 *  California; see the COPYRIGHT file for full details.  Squid
 *  incorporates software developed and/or copyrighted by other
 *  sources; see the CREDITS file for full details.
 *
 *  This program is free software; you can redistribute it and/or modify
 *  it under the terms of the GNU General Public License as published by
 *  the Free Software Foundation; either version 2 of the License, or
 *  (at your option) any later version.
 *
 *  This program is distributed in the hope that it will be useful,
 *  but WITHOUT ANY WARRANTY; without even the implied warranty of
 *  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 *  GNU General Public License for more details.
 *
 *  You should have received a copy of the GNU General Public License
 *  along with this program; if not, write to the Free Software
 *  Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA 02111, USA.
 *
 */

#include "squid.h"
#include "AccessLogEntry.h"
#include "format/Quoting.h"
#include "format/Token.h"
#include "globals.h"
#include "HttpRequest.h"
#include "log/File.h"
#include "log/Formats.h"
#include "SquidConfig.h"
#include "SquidTime.h"

//Modified to insert log into DB

#include <ctime>
#include<sys/time.h>
#include <string>
#include <mysql_connection.h>
#include <mysql_driver.h>
#include <cppconn/driver.h>
#include <cppconn/exception.h>
#include <cppconn/resultset.h>
#include <cppconn/statement.h>
#include <cppconn/prepared_statement.h>
#include <boost/lexical_cast.hpp>


extern sql::Driver *driver;
extern sql::Connection *conn;
extern sql::PreparedStatement *pstmt;


//#############################

void
Log::Format::SquidNative(const AccessLogEntry::Pointer &al, Logfile * logfile)
{
    char hierHost[MAX_IPSTRLEN];

    const char *user = NULL;

	//Modified for DB log
	
	tm *ltm = localtime(&current_time.tv_sec);

	//########################

#if USE_AUTH
    if (al->request && al->request->auth_user_request != NULL)
        user = ::Format::QuoteUrlEncodeUsername(al->request->auth_user_request->username());
#endif

    if (!user)
        user = ::Format::QuoteUrlEncodeUsername(al->cache.extuser);

#if USE_SSL
    if (!user)
        user = ::Format::QuoteUrlEncodeUsername(al->cache.ssluser);
#endif

    if (!user)
        user = ::Format::QuoteUrlEncodeUsername(al->cache.rfc931);

    if (user && !*user)
        safe_free(user);

    char clientip[MAX_IPSTRLEN];
    al->getLogClientIp(clientip, MAX_IPSTRLEN);

    logfilePrintf(logfile, "%9ld.%03d %6d %s %s%s/%03d %" PRId64 " %s %s %s %s%s/%s %s%s",
                  (long int) current_time.tv_sec,
                  (int) current_time.tv_usec / 1000,
                  al->cache.msec,
                  clientip,
                  LogTags_str[al->cache.code],
                  al->http.statusSfx(),
                  al->http.code,
                  al->cache.replySize,
                  al->_private.method_str,
                  al->url,
                  user ? user : dash_str,
                  al->hier.ping.timedout ? "TIMEOUT_" : "",
                  hier_code_str[al->hier.code],
                  al->hier.tcpServer != NULL ? al->hier.tcpServer->remote.toStr(hierHost, sizeof(hierHost)) : "-",
                  al->http.content_type,
                  (Config.onoff.log_mime_hdrs?"":"\n"));

    safe_free(user);

//Log insertion DB insertion

	try
	{

        	try
        	{
			 pstmt->setString(1,boost::lexical_cast<std::string>(current_time.tv_sec));

		//inserting date	
			pstmt->setString(2,boost::lexical_cast<std::string>(1900 + ltm->tm_year)+"-"+boost::lexical_cast<std::string>(1 + ltm->tm_mon < 10 ?"0":"")+boost::lexical_cast<std::string>(1 + ltm->tm_mon)+"-"+boost::lexical_cast<std::string>((ltm->tm_mday < 10 ?"0":""))+boost::lexical_cast<std::string>(ltm->tm_mday));

		//inserting time
			pstmt->setString(3,boost::lexical_cast<std::string>(ltm->tm_hour)+":"+boost::lexical_cast<std::string>((ltm->tm_min < 10 ?"0":"")) +boost::lexical_cast<std::string>( ltm->tm_min) + ":" + boost::lexical_cast<std::string>(( ltm->tm_sec < 10 ?"0":""))+boost::lexical_cast<std::string>( ltm->tm_sec));
		
			pstmt->setInt(4,al->cache.msec);
    	    		pstmt->setString(5,clientip);
	        	pstmt->setString(6,LogTags_str[al->cache.code]);
    			pstmt->setString(7,boost::lexical_cast<std::string>(al->http.code));
	        	pstmt->setInt(8,al->cache.replySize);
    			pstmt->setString(9,al->_private.method_str);
        		pstmt->setString(10,al->url);
	        	pstmt->setString(11,user ? user : dash_str);
    			pstmt->setString(12,hier_code_str[al->hier.code]);
        		pstmt->setString(13,al->hier.tcpServer != NULL ? al->hier.tcpServer->remote.toStr(hierHost, sizeof(hierHost)) : "-");
	        	pstmt->setString(14,al->http.content_type);

    			pstmt->executeUpdate();
        	}
        	catch(sql::SQLException &e)
        	{
			syslog(LOG_NOTICE,"Re-trying to connect MySql DB");
			driver = get_driver_instance();
	        	conn = driver->connect("tcp://127.0.0.1:3306","root","simple");
    	    		conn->setSchema("squid");
        		pstmt = conn->prepareStatement("insert into access_log(time_since_epoch,date_day,date_time,response_time,client_src_ip_addr,squid_request_status,http_status_code,reply_size,request_method,request_url,username,squid_hier_status,server_ip_addr,mime_type) values(?,?,?,?,?,?,?,?,?,?,?,?,?,?);");
			syslog(LOG_NOTICE,"Connected to MySQL");
	 	}	
	}
	catch(sql::SQLException &e)
	{
		syslog(LOG_NOTICE,"MySql Connection Failed");
	}

//########################

    if (Config.onoff.log_mime_hdrs) {
        char *ereq = ::Format::QuoteMimeBlob(al->headers.request);
        char *erep = ::Format::QuoteMimeBlob(al->headers.reply);
        logfilePrintf(logfile, " [%s] [%s]\n", ereq, erep);
        safe_free(ereq);
        safe_free(erep);
    }
}
