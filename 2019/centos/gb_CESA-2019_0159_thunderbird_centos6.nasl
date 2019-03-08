###############################################################################
# OpenVAS Vulnerability Test
# $Id: gb_CESA-2019_0159_thunderbird_centos6.nasl 14050 2019-03-08 09:08:09Z cfischer $
#
# CentOS Update for thunderbird CESA-2019:0159 centos6
#
# Authors:
# System Generated Check
#
# Copyright:
# Copyright (C) 2019 Greenbone Networks GmbH, http://www.greenbone.net
# Text descriptions are largely excerpted from the referenced
# advisory, and are Copyright (c) the respective author(s)
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
  script_oid("1.3.6.1.4.1.25623.1.0.882995");
  script_version("$Revision: 14050 $");
  script_cve_id("CVE-2018-12405", "CVE-2018-17466", "CVE-2018-18492", "CVE-2018-18493", "CVE-2018-18494", "CVE-2018-18498");
  script_tag(name:"cvss_base", value:"7.5");
  script_tag(name:"cvss_base_vector", value:"AV:N/AC:L/Au:N/C:P/I:P/A:P");
  script_tag(name:"last_modification", value:"$Date: 2019-03-08 10:08:09 +0100 (Fri, 08 Mar 2019) $");
  script_tag(name:"creation_date", value:"2019-02-02 04:03:16 +0100 (Sat, 02 Feb 2019)");
  script_name("CentOS Update for thunderbird CESA-2019:0159 centos6 ");
  script_category(ACT_GATHER_INFO);
  script_copyright("Copyright (C) 2019 Greenbone Networks GmbH");
  script_family("CentOS Local Security Checks");
  script_dependencies("gather-package-list.nasl");
  script_mandatory_keys("ssh/login/centos", "ssh/login/rpms", re:"ssh/login/release=CentOS6");

  script_xref(name:"CESA", value:"2019:0159");
  script_xref(name:"URL", value:"http://lists.centos.org/pipermail/centos-announce/2019-February/023188.html");

  script_tag(name:"summary", value:"The remote host is missing an update for the 'thunderbird'
  package(s) announced via the CESA-2019:0159 advisory.");

  script_tag(name:"vuldetect", value:"Checks if a vulnerable package version is present on the target host.");

  script_tag(name:"insight", value:"Mozilla Thunderbird is a standalone mail and newsgroup client.

This update upgrades Thunderbird to version 60.4.0.

Security Fix(es):

* Mozilla: Memory safety bugs fixed in Firefox 64 and Firefox ESR 60.4
(CVE-2018-12405)

* chromium-browser, firefox: Memory corruption in Angle (CVE-2018-17466)

* Mozilla: Use-after-free with select element (CVE-2018-18492)

* Mozilla: Buffer overflow in accelerated 2D canvas with Skia
(CVE-2018-18493)

* Mozilla: Same-origin policy violation using location attribute and
performance.getEntries to steal cross-origin URLs (CVE-2018-18494)

* Mozilla: Integer overflow when calculating buffer sizes for images
(CVE-2018-18498)

For more details about the security issue(s), including the impact, a CVSS
score, and other related information, refer to the CVE page(s) listed in
the References section.

Red Hat would like to thank the Mozilla project for reporting these issues.
Upstream acknowledges Christian Holler, Diego Calleja, Andrew McCreight,
Jon Coppeard, Natalia Csoregi, Nicolas B. Pierron, Tyson Smith, Nils, Atte
Kettunen, James Lee of Kryptos Logic, and r as the original reporters.
");

  script_tag(name:"affected", value:"thunderbird on CentOS 6.");

  script_tag(name:"solution", value:"Please install the updated package(s).");

  script_tag(name:"solution_type", value:"VendorFix");
  script_tag(name:"qod_type", value:"package");

  exit(0);
}

include("revisions-lib.inc");
include("pkg-lib-rpm.inc");

release = rpm_get_ssh_release();
if(!release) exit(0);

res = "";

if(release == "CentOS6")
{

  if ((res = isrpmvuln(pkg:"thunderbird", rpm:"thunderbird~60.4.0~1.el6.centos", rls:"CentOS6")) != NULL)
  {
    security_message(data:res);
    exit(0);
  }

  if (__pkg_match) exit(99);
  exit(0);
}
