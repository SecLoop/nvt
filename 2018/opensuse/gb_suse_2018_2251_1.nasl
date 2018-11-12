###############################################################################
# OpenVAS Vulnerability Test
# $Id: gb_suse_2018_2251_1.nasl 12280 2018-11-09 10:01:52Z cfischer $
#
# SuSE Update for Recommended openSUSE-SU-2018:2251-1 (Recommended)
#
# Authors:
# System Generated Check
#
# Copyright:
# Copyright (C) 2018 Greenbone Networks GmbH, http://www.greenbone.net
#
# This program is free software; you can redistribute it and/or modify
# it under the terms of the GNU General Public License version 2
# (or any later version), as published by the Free Software Foundation.
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

if(description)
{
  script_oid("1.3.6.1.4.1.25623.1.0.851843");
  script_version("$Revision: 12280 $");
  script_tag(name:"last_modification", value:"$Date: 2018-11-09 11:01:52 +0100 (Fri, 09 Nov 2018) $");
  script_tag(name:"creation_date", value:"2018-08-09 05:50:33 +0200 (Thu, 09 Aug 2018)");
  script_tag(name:"cvss_base", value:"5.0");
  script_tag(name:"cvss_base_vector", value:"AV:N/AC:L/Au:N/C:P/I:N/A:N");
  script_tag(name:"qod_type", value:"package");
  script_name("SuSE Update for Recommended openSUSE-SU-2018:2251-1 (Recommended)");
  script_tag(name:"summary", value:"Check the version of Recommended");
  script_tag(name:"vuldetect", value:"Checks if a vulnerable version is present on the target host.");
  script_tag(name:"insight", value:"This update for enigmail to 2.0.8 fixes the following issues:

  The enigmail 2.0.8 release addresses a security issue and solves a few
  regression bugs.

  * A security issue has been fixed that allows an attacker to prepare a
  plain, unauthenticated HTML message in a way that it looks like it's
  signed and/or encrypted (boo#1104036)


  Patch Instructions:

  To install this openSUSE Security Update use the SUSE recommended
  installation methods
  like YaST online_update or 'zypper patch'.

  Alternatively you can run the command listed for your product:

  - openSUSE Leap 42.3:

  zypper in -t patch openSUSE-2018-833=1

  - openSUSE Leap 15.0:

  zypper in -t patch openSUSE-2018-833=1");
  script_tag(name:"affected", value:"Recommended on openSUSE Leap 42.3");
  script_tag(name:"solution", value:"Please install the updated packages.");

  script_xref(name:"openSUSE-SU", value:"2018:2251_1");
  script_xref(name:"URL" , value:"http://lists.opensuse.org/opensuse-security-announce/2018-08/msg00026.html");
  script_tag(name:"solution_type", value:"VendorFix");
  script_category(ACT_GATHER_INFO);
  script_copyright("Copyright (C) 2018 Greenbone Networks GmbH");
  script_family("SuSE Local Security Checks");
  script_dependencies("gather-package-list.nasl");
  script_mandatory_keys("ssh/login/suse", "ssh/login/rpms", re:"ssh/login/release=openSUSELeap42\.3");
  exit(0);
}

include("revisions-lib.inc");
include("pkg-lib-rpm.inc");

release = rpm_get_ssh_release();
if(!release) exit(0);
res = "";

if(release == "openSUSELeap42.3")
{

  if ((res = isrpmvuln(pkg:"enigmail", rpm:"enigmail~2.0.8~24.1", rls:"openSUSELeap42.3")) != NULL)
  {
    security_message(data:res);
    exit(0);
  }

  if (__pkg_match) exit(99);
  exit(0);
}
