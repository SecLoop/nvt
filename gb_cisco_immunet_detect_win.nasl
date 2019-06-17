# Copyright (C) 2018 Greenbone Networks GmbH
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
  script_oid("1.3.6.1.4.1.25623.1.0.107377");
  script_version("2019-06-14T11:05:53+0000");
  script_tag(name:"last_modification", value:"2019-06-14 11:05:53 +0000 (Fri, 14 Jun 2019)");
  script_tag(name:"creation_date", value:"2018-12-05 16:51:56 +0100 (Wed, 05 Dec 2018)");
  script_tag(name:"cvss_base", value:"0.0");
  script_tag(name:"cvss_base_vector", value:"AV:N/AC:L/Au:N/C:N/I:N/A:N");
  script_name("Cisco Immunet Version Detection (Windows)");
  script_category(ACT_GATHER_INFO);
  script_copyright("Copyright (C) 2018 Greenbone Networks GmbH");
  script_family("Product detection");
  script_dependencies("smb_reg_service_pack.nasl");
  script_mandatory_keys("SMB/WindowsVersion", "SMB/Windows/Arch");
  script_require_ports(139, 445);
  script_tag(name:"summary", value:"This script detects the installed version
of Cisco Immunet for Windows.");
  script_tag(name:"qod_type", value:"registry");

  exit(0);
}

include("smb_nt.inc");
include("cpe.inc");
include("host_details.inc");
include("secpod_smb_func.inc");
include("version_func.inc");

os_arch = get_kb_item("SMB/Windows/Arch");
if (!os_arch) exit(0);

if ("x86" >< os_arch) {
  key_list = make_list("SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\");
} else if ("x64" >< os_arch) {
  key_list = make_list("SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\",
                       "SOFTWARE\Wow6432Node\Microsoft\Windows\CurrentVersion\Uninstall\");
}

if (isnull(key_list)) exit(0);

foreach key (key_list) {
  foreach item (registry_enum_keys(key:key)) {

    appName = registry_get_sz(key:key + item, item:"DisplayName");

    if(appName !~ "Immunet") continue;

    version = "unknown";
    location = "unknown";

    loc = registry_get_sz(key:key + item, item:"DisplayIcon");
    if(loc) {
      split = split( loc, sep:"\" );
      location = ereg_replace(string:loc, pattern:split[max_index(split) - 1], replace:'');
    }


    vers = registry_get_sz(key:key + item, item:"DisplayVersion");
    if(vers){
      version = vers;
      concluded += appName + " " + version;
    }

    set_kb_item(name:"cisco/immunet/win/detected", value:TRUE);
    set_kb_item(name:"cisco/immunet/win/ver", value:version);

    register_and_report_cpe(app:appName, ver:version, concluded:concluded,
                            base:"cpe:/a:cisco:immunet:", expr:"^([0-9.]+)", insloc:location,
                            regService:"smb-login", regPort:0);

    exit(0);
  }
}

exit(0);
