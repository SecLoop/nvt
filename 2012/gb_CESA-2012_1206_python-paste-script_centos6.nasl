###############################################################################
# OpenVAS Vulnerability Test
#
# CentOS Update for python-paste-script CESA-2012:1206 centos6
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
  script_xref(name:"URL", value:"http://lists.centos.org/pipermail/centos-announce/2012-August/018827.html");
  script_oid("1.3.6.1.4.1.25623.1.0.881475");
  script_version("$Revision: 14098 $");
  script_tag(name:"last_modification", value:"$Date: 2019-03-11 16:47:16 +0100 (Mon, 11 Mar 2019) $");
  script_tag(name:"creation_date", value:"2012-08-28 10:26:11 +0530 (Tue, 28 Aug 2012)");
  script_cve_id("CVE-2012-0878");
  script_tag(name:"cvss_base", value:"5.1");
  script_tag(name:"cvss_base_vector", value:"AV:N/AC:H/Au:N/C:P/I:P/A:P");
  script_xref(name:"CESA", value:"2012:1206");
  script_name("CentOS Update for python-paste-script CESA-2012:1206 centos6");

  script_tag(name:"summary", value:"The remote host is missing an update as announced in the referenced advisory for python-paste-script");
  script_category(ACT_GATHER_INFO);
  script_copyright("Copyright (c) 2012 Greenbone Networks GmbH");
  script_family("CentOS Local Security Checks");
  script_dependencies("gather-package-list.nasl");
  script_mandatory_keys("ssh/login/centos", "ssh/login/rpms", re:"ssh/login/release=CentOS6");
  script_tag(name:"affected", value:"python-paste-script on CentOS 6");
  script_tag(name:"solution", value:"Please install the updated packages.");
  script_tag(name:"insight", value:"Python Paste provides middleware for building and running Python web
  applications. The python-paste-script package includes paster, a tool for
  working with and running Python Paste applications.

  It was discovered that paster did not drop supplementary group privileges
  when started by the root user. Running 'paster serve' as root to start a
  Python web application that will run as a non-root user and group resulted
  in that application running with root group privileges. This could possibly
  allow a remote attacker to gain access to files that should not be
  accessible to the application. (CVE-2012-0878)

  All paster users should upgrade to this updated package, which contains a
  backported patch to resolve this issue. All running paster instances
  configured to drop privileges must be restarted for this update to take
  effect.");
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

  if ((res = isrpmvuln(pkg:"python-paste-script", rpm:"python-paste-script~1.7.3~5.el6_3", rls:"CentOS6")) != NULL)
  {
    security_message(data:res);
    exit(0);
  }

  if (__pkg_match) exit(99);
  exit(0);
}
