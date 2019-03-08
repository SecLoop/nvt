###############################################################################
# OpenVAS Vulnerability Test
#
# CentOS Update for mod_dav_svn CESA-2015:0166 centos7 
#
# Authors:
# System Generated Check
#
# Copyright:
# Copyright (C) 2015 Greenbone Networks GmbH, http://www.greenbone.net
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
  script_oid("1.3.6.1.4.1.25623.1.0.882116");
  script_version("$Revision: 14050 $");
  script_tag(name:"last_modification", value:"$Date: 2019-03-08 10:08:09 +0100 (Fri, 08 Mar 2019) $");
  script_tag(name:"creation_date", value:"2015-02-11 05:39:38 +0100 (Wed, 11 Feb 2015)");
  script_cve_id("CVE-2014-3528", "CVE-2014-3580", "CVE-2014-8108");
  script_tag(name:"cvss_base", value:"5.0");
  script_tag(name:"cvss_base_vector", value:"AV:N/AC:L/Au:N/C:N/I:N/A:P");
  script_name("CentOS Update for mod_dav_svn CESA-2015:0166 centos7 ");
  script_tag(name: "summary", value: "Check the version of mod_dav_svn");
  script_tag(name: "vuldetect", value: "Get the installed version with the help of detect NVT and check if the version is vulnerable or not.");
  script_tag(name: "insight", value: "Subversion (SVN) is a concurrent version control system which enables one
or more users to collaborate in developing and maintaining a hierarchy of
files and directories while keeping a history of all changes. The
mod_dav_svn module is used with the Apache HTTP Server to allow access
to Subversion repositories via HTTP.

A NULL pointer dereference flaw was found in the way the mod_dav_svn module
handled REPORT requests. A remote, unauthenticated attacker could use a
specially crafted REPORT request to crash mod_dav_svn. (CVE-2014-3580)

A NULL pointer dereference flaw was found in the way the mod_dav_svn module
handled certain requests for URIs that trigger a lookup of a virtual
transaction name. A remote, unauthenticated attacker could send a request
for a virtual transaction name that does not exist, causing mod_dav_svn to
crash. (CVE-2014-8108)

It was discovered that Subversion clients retrieved cached authentication
credentials using the MD5 hash of the server realm string without also
checking the server's URL. A malicious server able to provide a realm that
triggers an MD5 collision could possibly use this flaw to obtain the
credentials for a different realm. (CVE-2014-3528)

Red Hat would like to thank the Subversion project for reporting
CVE-2014-3580 and CVE-2014-8108. Upstream acknowledges Evgeny Kotkov of
VisualSVN as the original reporter.

All subversion users should upgrade to these updated packages, which
contain backported patches to correct these issues. After installing the
updated packages, for the update to take effect, you must restart the httpd
daemon, if you are using mod_dav_svn, and the svnserve daemon, if you are
serving Subversion repositories via the svn:// protocol.
");
  script_tag(name: "affected", value: "mod_dav_svn on CentOS 7");
  script_tag(name: "solution", value: "Please Install the Updated Packages.");
  script_xref(name: "CESA", value: "2015:0166");
  script_xref(name: "URL" , value: "http://lists.centos.org/pipermail/centos-announce/2015-February/020931.html");
  script_tag(name:"solution_type", value:"VendorFix");
  script_tag(name:"qod_type", value:"package");
  script_category(ACT_GATHER_INFO);
  script_copyright("Copyright (C) 2015 Greenbone Networks GmbH");
  script_family("CentOS Local Security Checks");
  script_dependencies("gather-package-list.nasl");
  script_mandatory_keys("ssh/login/centos", "ssh/login/rpms", re:"ssh/login/release=CentOS7");
  exit(0);
}

include("revisions-lib.inc");
include("pkg-lib-rpm.inc");

release = get_kb_item("ssh/login/release");

res = "";
if(release == NULL){
  exit(0);
}

if(release == "CentOS7")
{

  if ((res = isrpmvuln(pkg:"mod_dav_svn", rpm:"mod_dav_svn~1.7.14~7.el7_0", rls:"CentOS7")) != NULL)
  {
    security_message(data:res);
    exit(0);
  }

  if ((res = isrpmvuln(pkg:"subversion", rpm:"subversion~1.7.14~7.el7_0", rls:"CentOS7")) != NULL)
  {
    security_message(data:res);
    exit(0);
  }

  if ((res = isrpmvuln(pkg:"subversion-devel", rpm:"subversion-devel~1.7.14~7.el7_0", rls:"CentOS7")) != NULL)
  {
    security_message(data:res);
    exit(0);
  }

  if ((res = isrpmvuln(pkg:"subversion-gnome", rpm:"subversion-gnome~1.7.14~7.el7_0", rls:"CentOS7")) != NULL)
  {
    security_message(data:res);
    exit(0);
  }

  if ((res = isrpmvuln(pkg:"subversion-javahl", rpm:"subversion-javahl~1.7.14~7.el7_0", rls:"CentOS7")) != NULL)
  {
    security_message(data:res);
    exit(0);
  }

  if ((res = isrpmvuln(pkg:"subversion-kde", rpm:"subversion-kde~1.7.14~7.el7_0", rls:"CentOS7")) != NULL)
  {
    security_message(data:res);
    exit(0);
  }

  if ((res = isrpmvuln(pkg:"subversion-libs", rpm:"subversion-libs~1.7.14~7.el7_0", rls:"CentOS7")) != NULL)
  {
    security_message(data:res);
    exit(0);
  }

  if ((res = isrpmvuln(pkg:"subversion-perl", rpm:"subversion-perl~1.7.14~7.el7_0", rls:"CentOS7")) != NULL)
  {
    security_message(data:res);
    exit(0);
  }

  if ((res = isrpmvuln(pkg:"subversion-python", rpm:"subversion-python~1.7.14~7.el7_0", rls:"CentOS7")) != NULL)
  {
    security_message(data:res);
    exit(0);
  }

  if ((res = isrpmvuln(pkg:"subversion-ruby", rpm:"subversion-ruby~1.7.14~7.el7_0", rls:"CentOS7")) != NULL)
  {
    security_message(data:res);
    exit(0);
  }

  if ((res = isrpmvuln(pkg:"subversion-tools", rpm:"subversion-tools~1.7.14~7.el7_0", rls:"CentOS7")) != NULL)
  {
    security_message(data:res);
    exit(0);
  }

  if (__pkg_match) exit(99); # Not vulnerable.
  exit(0);
}