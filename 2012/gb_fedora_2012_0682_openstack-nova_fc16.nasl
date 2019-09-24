###############################################################################
# OpenVAS Vulnerability Test
#
# Fedora Update for openstack-nova FEDORA-2012-0682
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
  script_xref(name:"URL", value:"http://lists.fedoraproject.org/pipermail/package-announce/2012-January/072190.html");
  script_oid("1.3.6.1.4.1.25623.1.0.863814");
  script_version("2019-09-20T11:01:01+0000");
  script_tag(name:"last_modification", value:"2019-09-20 11:01:01 +0000 (Fri, 20 Sep 2019)");
  script_tag(name:"creation_date", value:"2012-03-19 12:19:32 +0530 (Mon, 19 Mar 2012)");
  script_cve_id("CVE-2012-0030", "CVE-2011-4596", "CVE-2011-4076");
  script_tag(name:"cvss_base", value:"4.9");
  script_tag(name:"cvss_base_vector", value:"AV:N/AC:M/Au:S/C:N/I:P/A:P");
  script_xref(name:"FEDORA", value:"2012-0682");
  script_name("Fedora Update for openstack-nova FEDORA-2012-0682");
  script_tag(name:"summary", value:"The remote host is missing an update for the 'openstack-nova'
  package(s) announced via the referenced advisory.");
  script_category(ACT_GATHER_INFO);
  script_copyright("Copyright (c) 2012 Greenbone Networks GmbH");
  script_family("Fedora Local Security Checks");
  script_dependencies("gather-package-list.nasl");
  script_mandatory_keys("ssh/login/fedora", "ssh/login/rpms", re:"ssh/login/release=FC16");
  script_tag(name:"affected", value:"openstack-nova on Fedora 16");
  script_tag(name:"solution", value:"Please install the updated package(s).");
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

if(release == "FC16")
{

  if ((res = isrpmvuln(pkg:"openstack-nova", rpm:"openstack-nova~2011.3.1~0.4.10818.fc16", rls:"FC16")) != NULL)
  {
    security_message(data:res);
    exit(0);
  }

  if (__pkg_match) exit(99);
  exit(0);
}
