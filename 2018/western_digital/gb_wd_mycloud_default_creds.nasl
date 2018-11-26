##############################################################################
# OpenVAS Vulnerability Test
# $Id: gb_wd_mycloud_default_creds.nasl 12514 2018-11-23 17:24:53Z cfischer $
#
# Western Digital MyCloud NAS Default Credentials (HTTP)
#
# Authors:
# Christian Fischer <christian.fischer@greenbone.net>
#
# Copyright:
# Copyright (C) 2018 Greenbone Networks GmbH
#
# This program is free software; you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation; either version 2 of the License, or
# (at your option) any later version.
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with this program; if not, write to the Free Software
# Foundation, Inc., 51 Franklin St, Fifth Floor, Boston, MA 02110-1301 USA.
###############################################################################

CPE = "cpe:/a:western_digital:mycloud_nas";

if(description)
{
  script_oid("1.3.6.1.4.1.25623.1.0.108485");
  script_version("$Revision: 12514 $");
  script_tag(name:"cvss_base", value:"7.5");
  script_tag(name:"cvss_base_vector", value:"AV:N/AC:L/Au:N/C:P/I:P/A:P");
  script_tag(name:"last_modification", value:"$Date: 2018-11-23 18:24:53 +0100 (Fri, 23 Nov 2018) $");
  script_tag(name:"creation_date", value:"2018-11-23 17:50:04 +0100 (Fri, 23 Nov 2018)");
  script_name("Western Digital MyCloud NAS Default Credentials (HTTP)");
  script_category(ACT_ATTACK);
  script_copyright("Copyright (C) 2018 Greenbone Networks GmbH");
  script_family("Default Accounts");
  script_dependencies("gb_wd_mycloud_web_detect.nasl");
  script_require_ports("Services/www", 80);
  script_mandatory_keys("WD-MyCloud/www/detected");

  script_tag(name:"summary", value:"The Western Digital MyCloud device is using known
  and default credentials for the HTTP based web interface.");

  script_tag(name:"impact", value:"This issue may be exploited by a remote attacker to
  gain access to sensitive information or modify system configuration.");

  script_tag(name:"vuldetect", value:"Try to login with known credentials.");

  script_tag(name:"solution", value:"Change the password.");

  script_tag(name:"solution_type", value:"Workaround");
  script_tag(name:"qod_type", value:"remote_app");

  exit(0);
}

include("host_details.inc");
include("http_func.inc");
include("http_keepalive.inc");
include("misc_func.inc");

# nb: Tested with My MyCloud Mirror 1st Gen and My MyCloud EX2 Ultra 2.30.183

username = "admin"; # nb: The default username on a new device

passwords = make_list(
"", # nb: The user can skip setting a password
"admin" ); # nb: Just try one single common password

if( ! port = get_app_port( cpe:CPE, service:"www" ) )
  exit( 0 );

if( ! dir = get_app_location( cpe:CPE, port:port ) )
  exit( 0 );

if( dir == "/" )
  dir = "";

url = dir + "/cgi-bin/login_mgr.cgi";

foreach password( passwords ) {

  if( password == "" )
    data = "cmd=wd_login&username=" + username + "&pwd=&port=";
  else
    data = "cmd=wd_login&username=" + username + "&pwd=" + base64( str:password ) + "&port=";

  req = http_post_req( port:port, url:url, data:data, add_headers:make_array( "Content-Type", "application/x-www-form-urlencoded" ) );
  res = http_keepalive_send_recv( port:port, data:req );

  # Failed login (username and/or password wrong):
  # <?xml version="1.0" encoding="UTF-8"?><config><res>0</res></config>
  #
  # Successful login (res changes from 2 to 1 on a subsequent request):
  # <?xml version="1.0" encoding="UTF-8"?><config><logd_eula>1</logd_eula><res>1</res></config>
  if( res =~ "^HTTP/1\.[01] 200" && "Set-Cookie: username=" + username + ";" >< res && res =~ '<\\?xml version="1\\.0" encoding="UTF-8"\\?><config><logd_eula>[0-9]</logd_eula><res>[12]</res></config>' ) {
    report  = "It was possible to log in to the administrative web interface at '" + report_vuln_url( port:port, url:"/", url_only:TRUE );
    report += "' using the default user '" + username + "'";

    if( password == "" )
      report += " and an empty password.";
    else
      report += " and the default password '" + password + "'.";

    security_message( port:port, data:report );
    exit( 0 );
  }
}

exit( 99 );