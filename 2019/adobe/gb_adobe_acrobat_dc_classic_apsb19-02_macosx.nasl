###############################################################################
# OpenVAS Vulnerability Test
# $Id: gb_adobe_acrobat_dc_classic_apsb19-02_macosx.nasl 12942 2019-01-04 13:53:49Z santu $
#
# Adobe Acrobat DC (Classic Track) Security Updates(apsb19-02)-Mac OS X
#
# Authors:
# Vidita V Koushik <vidita@secpod.com>
#
# Copyright:
# Copyright (C) 2019 Greenbone Networks GmbH, http://www.greenbone.net
#
# This program is free software; you can redistribute it and/or modify
# it under the terms of the GNU General Public License version 2
# (or any later version), as published by the Free Software Foundation.
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with this program; if not, write to the Free Software
# Foundation, Inc., 51 Franklin St, Fifth Floor, Boston, MA 02110-1301 USA.
###############################################################################

CPE = "cpe:/a:adobe:acrobat_dc_classic";

if(description)
{
  script_oid("1.3.6.1.4.1.25623.1.0.814810");
  script_version("$Revision: 12942 $");
  script_cve_id("CVE-2018-16011", "CVE-2018-16018");
  script_tag(name:"cvss_base", value:"10.0");
  script_tag(name:"cvss_base_vector", value:"AV:N/AC:L/Au:N/C:C/I:C/A:C");
  script_tag(name:"last_modification", value:"$Date: 2019-01-04 14:53:49 +0100 (Fri, 04 Jan 2019) $");
  script_tag(name:"creation_date", value:"2019-01-04 11:45:03 +0530 (Fri, 04 Jan 2019)");
  script_name("Adobe Acrobat DC (Classic Track) Security Updates(apsb19-02)-Mac OS X");

  script_tag(name:"summary", value:"This host is installed with Adobe Acrobat DC
  (Classic Track) and is prone to multiple vulnerabilities.");

  script_tag(name:"vuldetect", value:"Checks if a vulnerable version is present
  on the target host.");

  script_tag(name:"insight", value:"Multiple flaws exist due to,

  - Use after free error.

  - Security bypass error.");

  script_tag(name:"impact", value:"Successful exploitation will allow an
  attacker to conduct arbitrary code execution in the context of the current
  user and escalate privileges.");

  script_tag(name:"affected", value:"Adobe Acrobat DC (Classic Track) versions
  2015.006.30461 and earlier on Mac OS X.");

  script_tag(name:"solution", value:"Upgrade to Adobe Acrobat DC (Classic Track)
  2015.006.30464 or later. For updates refer to Reference links.");

  script_tag(name:"solution_type", value:"VendorFix");
  script_tag(name:"qod_type", value:"executable_version");
  script_xref(name:"URL", value:"https://helpx.adobe.com/security/products/acrobat/apsb19-02.html");
  script_xref(name:"URL", value:"https://helpx.adobe.com");
  script_category(ACT_GATHER_INFO);
  script_copyright("Copyright (C) 2019 Greenbone Networks GmbH");
  script_family("General");
  script_dependencies("gb_adobe_acrobat_dc_classic_detect_macosx.nasl");
  script_mandatory_keys("Adobe/AcrobatDC/Classic/MacOSX/Version");
  exit(0);
}

include("host_details.inc");
include("version_func.inc");

infos = get_app_version_and_location( cpe:CPE, exit_no_version:TRUE );
vers = infos['version'];
path = infos['location'];

## 2015.006.30464 => 15.006.30464
if(version_is_less(version:vers, test_version:"15.006.30464"))
{
  report =  report_fixed_ver(installed_version:vers, fixed_version:"2015.006.30464", install_path:path);
  security_message(data:report);
  exit(0);
}
exit(0);
