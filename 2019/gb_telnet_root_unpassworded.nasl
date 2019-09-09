# Copyright (C) 2019 Greenbone Networks GmbH
#
# SPDX-License-Identifier: GPL-2.0-or-later
#
# This program is free software; you can redistribute it and/or
# modify it under the terms of the GNU General Public License
# as published by the Free Software Foundation; either version 2
# of the License, or (at your option) any later version.
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with this program; if not, write to the Free Software
# Foundation, Inc., 51 Franklin St, Fifth Floor, Boston, MA 02110-1301 USA.

if(description)
{
  script_oid("1.3.6.1.4.1.25623.1.0.108586");
  script_version("2019-09-06T14:17:49+0000");
  script_cve_id("CVE-2019-5021", "CVE-1999-0502");
  script_tag(name:"cvss_base", value:"10.0");
  script_tag(name:"cvss_base_vector", value:"AV:N/AC:L/Au:N/C:C/I:C/A:C");
  script_tag(name:"last_modification", value:"2019-09-06 14:17:49 +0000 (Fri, 06 Sep 2019)");
  script_tag(name:"creation_date", value:"2019-05-24 12:35:09 +0000 (Fri, 24 May 2019)");
  script_name("Unpassworded 'root' Account (Telnet)");
  script_category(ACT_ATTACK);
  script_family("Default Accounts");
  script_copyright("Copyright (C) 2019 Greenbone Networks GmbH");
  script_dependencies("telnetserver_detect_type_nd_version.nasl", "os_detection.nasl", "gb_default_credentials_options.nasl");
  script_require_ports("Services/telnet", 23);
  script_require_keys("Host/runs_unixoide");
  script_mandatory_keys("telnet/banner/available");
  script_exclude_keys("telnet/no_login_banner", "default_credentials/disable_default_account_checks");

  script_xref(name:"URL", value:"https://talosintelligence.com/vulnerability_reports/TALOS-2019-0782");
  script_xref(name:"URL", value:"https://alpinelinux.org/posts/Docker-image-vulnerability-CVE-2019-5021.html");

  script_tag(name:"summary", value:"The remote host has set no password for the root account.");

  script_tag(name:"impact", value:"This issue may be exploited by a remote attacker to gain access to
  sensitive information or modify system configuration.");

  script_tag(name:"vuldetect", value:"Try to login with a 'root' username and without a password.");

  script_tag(name:"insight", value:"It was possible to login with the 'root' username and without passing
  a password.");

  script_tag(name:"affected", value:"Versions of the Official Alpine Linux Docker images (since v3.3) are
  known to be affected. Other products / devices might be affected as well.");

  script_tag(name:"solution", value:"Set a password for the 'root' account. If this is an Alpine Linux Docker image
  update to one of the following image releases:

  edge (20190228 snapshot), v3.9.2, v3.8.4, v3.7.3, v3.6.5.");

  script_tag(name:"solution_type", value:"Workaround");
  script_tag(name:"qod_type", value:"exploit");

  exit(0);
}

if(get_kb_item("default_credentials/disable_default_account_checks"))
  exit(0);

include("telnet_func.inc");
include("default_account.inc");

port = telnet_get_port( default:23 );
if( get_kb_item( "telnet/" + port + "/no_login_banner" ) )
  exit( 0 );

if( _check_telnet( port:port, login:"root" ) ) {
  report = "It was possible to login as user 'root' without a password and to execute the 'id' command.";
  security_message( port:port, data:report );
  exit( 0 );
}

exit( 99 );
