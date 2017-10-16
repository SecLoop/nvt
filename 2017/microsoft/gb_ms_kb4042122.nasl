###############################################################################
# OpenVAS Vulnerability Test
# $Id: gb_ms_kb4042122.nasl 7401 2017-10-11 13:55:58Z santu $
#
# Microsoft Windows Multiple RCE Vulnerabilities (KB4042122)
#
# Authors:
# Kashinath T <tkashinath@secpod.com>
#
# Copyright:
# Copyright (C) 2017 Greenbone Networks GmbH, http://www.greenbone.net
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

if(description)
{
  script_oid("1.3.6.1.4.1.25623.1.0.811924");
  script_version("$Revision: 7401 $");
  script_cve_id("CVE-2017-11762", "CVE-2017-11763");
  script_bugtraq_id(101108, 101109);
  script_tag(name:"cvss_base", value:"10.0");
  script_tag(name:"cvss_base_vector", value:"AV:N/AC:L/Au:N/C:C/I:C/A:C");
  script_tag(name:"last_modification", value:"$Date: 2017-10-11 15:55:58 +0200 (Wed, 11 Oct 2017) $");
  script_tag(name:"creation_date", value:"2017-10-11 08:49:06 +0530 (Wed, 11 Oct 2017)");
  script_name("Microsoft Windows Multiple RCE Vulnerabilities (KB4042122)");

  script_tag(name:"summary", value:"This host is missing a critical security
  update according to Microsoft KB4042122");

  script_tag(name:"vuldetect", value:"Get the vulnerable file version and
  check appropriate patch is applied or not.");

  script_tag(name:"insight", value:"Multiple flaw exists due to the Windows
  font library which improperly handles specially crafted embedded fonts.");

  script_tag(name:"impact", value:"Successful exploitation will allow an attacker
  who successfully exploited the vulnerability to take control of the affected
  system.

  Impact Level: System");

  script_tag(name:"affected", value:"Microsoft Windows Server 2008 x32/x64 Edition Service Pack 2");

  script_tag(name:"solution", value:"Run Windows Update and update the
  listed hotfixes or download and update mentioned hotfixes in the advisory
  from the below link,
  https://support.microsoft.com/en-us/help/4042122");

  script_tag(name:"solution_type", value:"VendorFix");
  script_tag(name:"qod_type", value:"executable_version");
  script_xref(name : "URL" , value : "https://support.microsoft.com/en-us/help/4042122");
  script_category(ACT_GATHER_INFO);
  script_copyright("Copyright (C) 2017 Greenbone Networks GmbH");
  script_family("Windows : Microsoft Bulletins");
  script_dependencies("secpod_reg_enum.nasl");
  script_mandatory_keys("SMB/WindowsVersion");
  exit(0);
}


include("smb_nt.inc");
include("secpod_reg.inc");
include("version_func.inc");
include("secpod_smb_func.inc");

## Variables Initialization
sysPath = "";
fileVer = "";

## Check for OS and Service Pack
if(hotfix_check_sp(win2008:3, win2008x64:3) <= 0){
  exit(0);
}

## Get System Path
sysPath = smb_get_system32root();
if(!sysPath ){
  exit(0);
}

##Fetch the version of 't2embed.dll'
fileVer = fetch_file_version(sysPath, file_name:"t2embed.dll");
if(!fileVer){
  exit(0);
}

## Check for t2embed.dll version
if(version_is_less(version:fileVer, test_version:"6.0.6002.24200"))
{
  report = 'File checked:     ' + sysPath + "\t2embed.dll" + '\n' +
           'File version:     ' + fileVer  + '\n' +
           'Vulnerable range: Less than 6.0.6002.24200\n' ;
  security_message(data:report);
  exit(0);
}
exit(0);