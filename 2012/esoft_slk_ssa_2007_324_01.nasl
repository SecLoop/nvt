# OpenVAS Vulnerability Test
# Description: Auto-generated from the corresponding slackware advisory
#
# Authors:
# Thomas Reinke <reinke@securityspace.com>
#
# Copyright:
# Copyright (c) 2012 E-Soft Inc. http://www.securityspace.com
# Text descriptions are largely excerpted from the referenced
# advisory, and are Copyright (c) the respective author(s)
#
# This program is free software; you can redistribute it and/or modify
# it under the terms of the GNU General Public License version 2,
# or at your option, GNU General Public License version 3,
# as published by the Free Software Foundation
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with this program; if not, write to the Free Software
# Foundation, Inc., 51 Franklin St, Fifth Floor, Boston, MA 02110-1301 USA.
#

if(description)
{
  script_oid("1.3.6.1.4.1.25623.1.0.59025");
  script_tag(name:"creation_date", value:"2012-09-11 01:34:21 +0200 (Tue, 11 Sep 2012)");
  script_tag(name:"last_modification", value:"2019-10-07 14:34:48 +0000 (Mon, 07 Oct 2019)");
  script_cve_id("CVE-2007-4841", "CVE-2007-5339");
  script_tag(name:"cvss_base", value:"9.3");
  script_tag(name:"cvss_base_vector", value:"AV:N/AC:M/Au:N/C:C/I:C/A:C");
  script_version("2019-10-07T14:34:48+0000");
  script_name("Slackware Advisory SSA:2007-324-01 mozilla-thunderbird");
  script_category(ACT_GATHER_INFO);
  script_copyright("Copyright (c) 2012 E-Soft Inc. http://www.securityspace.com");
  script_family("Slackware Local Security Checks");
  script_dependencies("gather-package-list.nasl");
  script_mandatory_keys("ssh/login/slackware_linux", "ssh/login/slackpack", re:"ssh/login/release=SLK(10\.2|11\.0|12\.0)");

  script_xref(name:"URL", value:"https://secure1.securityspace.com/smysecure/catid.html?in=SSA:2007-324-01");

  script_tag(name:"insight", value:"New mozilla-thunderbird packages are available for Slackware 10.2, 11.0, 12.0,
  and -current to fix security issues.  Slackware is not vulnerable to either
  of these in its default configuration, but watch out if you've enabled
  JavaScript.

  More information about the security issues are linked in the references.");

  script_xref(name:"URL", value:"http://www.mozilla.org/security/announce/2007/mfsa2007-36.html");
  script_xref(name:"URL", value:"http://www.mozilla.org/security/announce/2007/mfsa2007-29.html");

  script_tag(name:"solution", value:"Upgrade to the new package(s).");

  script_tag(name:"summary", value:"The remote host is missing an update as announced
  via advisory SSA:2007-324-01.");

  script_tag(name:"qod_type", value:"package");
  script_tag(name:"solution_type", value:"VendorFix");

  exit(0);
}

include("revisions-lib.inc");
include("pkg-lib-slack.inc");

report = "";
res = "";

if((res = isslkpkgvuln(pkg:"mozilla-thunderbird", ver:"2.0.0.9-i686-1", rls:"SLK10.2")) != NULL) {
  report += res;
}
if((res = isslkpkgvuln(pkg:"mozilla-thunderbird", ver:"2.0.0.9-i686-1", rls:"SLK11.0")) != NULL) {
  report += res;
}
if((res = isslkpkgvuln(pkg:"mozilla-thunderbird", ver:"2.0.0.9-i686-1", rls:"SLK12.0")) != NULL) {
  report += res;
}

if(report != "") {
  security_message(data:report);
} else if(__pkg_match) {
  exit(99);
}
