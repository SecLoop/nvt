###############################################################################
# OpenVAS Vulnerability Test
#
# CentOS Update for libexif CESA-2012:1255 centos6
#
# Authors:
# System Generated Check
#
# Copyright:
# Copyright (c) 2012 Greenbone Networks GmbH, http://www.greenbone.net
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
  script_xref(name:"URL", value:"http://lists.centos.org/pipermail/centos-announce/2012-September/018863.html");
  script_oid("1.3.6.1.4.1.25623.1.0.881488");
  script_version("$Revision: 14098 $");
  script_tag(name:"last_modification", value:"$Date: 2019-03-11 16:47:16 +0100 (Mon, 11 Mar 2019) $");
  script_tag(name:"creation_date", value:"2012-09-17 16:43:17 +0530 (Mon, 17 Sep 2012)");
  script_cve_id("CVE-2012-2812", "CVE-2012-2813", "CVE-2012-2814", "CVE-2012-2836",
                "CVE-2012-2837", "CVE-2012-2840", "CVE-2012-2841");
  script_tag(name:"cvss_base", value:"7.5");
  script_tag(name:"cvss_base_vector", value:"AV:N/AC:L/Au:N/C:P/I:P/A:P");
  script_xref(name:"CESA", value:"2012:1255");
  script_name("CentOS Update for libexif CESA-2012:1255 centos6");

  script_tag(name:"summary", value:"The remote host is missing an update as announced in the referenced advisory for libexif");
  script_category(ACT_GATHER_INFO);
  script_copyright("Copyright (c) 2012 Greenbone Networks GmbH");
  script_family("CentOS Local Security Checks");
  script_dependencies("gather-package-list.nasl");
  script_mandatory_keys("ssh/login/centos", "ssh/login/rpms", re:"ssh/login/release=CentOS6");
  script_tag(name:"affected", value:"libexif on CentOS 6");
  script_tag(name:"solution", value:"Please install the updated packages.");
  script_tag(name:"insight", value:"The libexif packages provide an Exchangeable image file format (Exif)
  library. Exif allows metadata to be added to and read from certain types
  of image files.

  Multiple flaws were found in the way libexif processed Exif tags. An
  attacker could create a specially-crafted image file that, when opened in
  an application linked against libexif, could cause the application to
  crash or, potentially, execute arbitrary code with the privileges of the
  user running the application. (CVE-2012-2812, CVE-2012-2813, CVE-2012-2814,
  CVE-2012-2836, CVE-2012-2837, CVE-2012-2840, CVE-2012-2841)

  Red Hat would like to thank Dan Fandrich for reporting these issues.
  Upstream acknowledges Mateusz Jurczyk of the Google Security Team as the
  original reporter of CVE-2012-2812, CVE-2012-2813, and CVE-2012-2814, and
  Yunho Kim as the original reporter of CVE-2012-2836 and CVE-2012-2837.

  Users of libexif are advised to upgrade to these updated packages, which
  contain backported patches to resolve these issues. All running
  applications linked against libexif must be restarted for the update to
  take effect.");
  script_tag(name:"qod_type", value:"package");
  script_tag(name:"solution_type", value:"VendorFix");
  exit(0);
}

include("revisions-lib.inc");
include("pkg-lib-rpm.inc");

release = rpm_get_ssh_release();
if(!release)
  exit(0);

res = "";

if(release == "CentOS6")
{

  if ((res = isrpmvuln(pkg:"libexif", rpm:"libexif~0.6.21~5.el6_3", rls:"CentOS6")) != NULL)
  {
    security_message(data:res);
    exit(0);
  }

  if ((res = isrpmvuln(pkg:"libexif-devel", rpm:"libexif-devel~0.6.21~5.el6_3", rls:"CentOS6")) != NULL)
  {
    security_message(data:res);
    exit(0);
  }

  if (__pkg_match) exit(99);
  exit(0);
}
