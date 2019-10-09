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
  script_oid("1.3.6.1.4.1.25623.1.0.113456");
  script_version("2019-10-07T14:34:48+0000");
  script_tag(name:"last_modification", value:"2019-10-07 14:34:48 +0000 (Mon, 07 Oct 2019)");
  script_tag(name:"creation_date", value:"2019-08-12 13:46:35 +0000 (Mon, 12 Aug 2019)");
  script_tag(name:"cvss_base", value:"4.3");
  script_tag(name:"cvss_base_vector", value:"AV:N/AC:M/Au:N/C:P/I:N/A:N");

  script_tag(name:"qod_type", value:"remote_banner");

  script_tag(name:"solution_type", value:"VendorFix");

  script_cve_id("CVE-2019-7614", "CVE-2019-7616");

  script_name("Elastic Kibana < 6.8.2, 7.x.x < 7.2.1 Multiple Vulnerabilities (Windows)");

  script_category(ACT_GATHER_INFO);

  script_copyright("Copyright (C) 2019 Greenbone Networks GmbH");
  script_family("Web application abuses");
  script_dependencies("gb_elasticsearch_kibana_detect.nasl", "os_detection.nasl");
  script_mandatory_keys("Elasticsearch/Kibana/Installed", "Host/runs_windows");

  script_tag(name:"summary", value:"Kibana is prone to multiple vulnerabilities.");
  script_tag(name:"vuldetect", value:"Checks if a vulnerable version is present on the target host.");
  script_tag(name:"insight", value:"The following vulnerabilities exist:

  - On a system with multiple users submitting requests, it could be possible for an attacker
    to gain access to a response header containing sensitive data from another user.

  - An attacker with administrative Kibana access could set the timelion:graphite.url
    configuration option to an arbitrary URL. This could possibly lead to an attacker
    accessing external URL resources as the Kibana process on the host system.");
  script_tag(name:"impact", value:"Successful exploitation would allow an attacker to read sensitive information.");
  script_tag(name:"affected", value:"Kibana through version 6.8.1 and version 7.0.0 through 7.2.0.");
  script_tag(name:"solution", value:"Update to version 6.8.2 or 7.2.1 respectively.");

  script_xref(name:"URL", value:"https://www.elastic.co/community/security/");

  exit(0);
}

CPE = "cpe:/a:elasticsearch:kibana";

include( "host_details.inc" );
include( "version_func.inc" );

if( ! port = get_app_port( cpe: CPE ) ) exit( 0 );
if( ! infos = get_app_version_and_location( cpe: CPE, port: port, exit_no_version: TRUE ) ) exit( 0 );
version = infos["version"];
location = infos["location"];

if( version_is_less( version: version, test_version: "6.8.2" ) ) {
  report = report_fixed_ver( installed_version: version, fixed_version: "6.8.2", install_path: location );
  security_message( data: report, port: port );
  exit( 0 );
}

if( version_in_range( version: version, test_version: "7.0.0", test_version2: "7.2.0" ) ) {
  report = report_fixed_ver( installed_version: version, fixed_version: "7.2.1", install_path: location );
  security_message( data: report, port: port );
  exit( 0 );
}

exit( 99 );
