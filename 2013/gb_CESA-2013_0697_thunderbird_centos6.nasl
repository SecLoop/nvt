###############################################################################
# OpenVAS Vulnerability Test
#
# CentOS Update for thunderbird CESA-2013:0697 centos6
#
# Authors:
# System Generated Check
#
# Copyright:
# Copyright (c) 2013 Greenbone Networks GmbH, http://www.greenbone.net
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

include("revisions-lib.inc");
tag_insight = "Mozilla Thunderbird is a standalone mail and newsgroup client.

  Several flaws were found in the processing of malformed content. Malicious
  content could cause Thunderbird to crash or, potentially, execute arbitrary
  code with the privileges of the user running Thunderbird. (CVE-2013-0788)

  A flaw was found in the way Same Origin Wrappers were implemented in
  Thunderbird. Malicious content could use this flaw to bypass the
  same-origin policy and execute arbitrary code with the privileges of the
  user running Thunderbird. (CVE-2013-0795)

  A flaw was found in the embedded WebGL library in Thunderbird. Malicious
  content could cause Thunderbird to crash or, potentially, execute arbitrary
  code with the privileges of the user running Thunderbird. Note: This issue
  only affected systems using the Intel Mesa graphics drivers.
  (CVE-2013-0796)

  An out-of-bounds write flaw was found in the embedded Cairo library in
  Thunderbird. Malicious content could cause Thunderbird to crash or,
  potentially, execute arbitrary code with the privileges of the user running
  Thunderbird. (CVE-2013-0800)

  A flaw was found in the way Thunderbird handled the JavaScript history
  functions. Malicious content could cause a page to be displayed that
  has a baseURI pointing to a different site, allowing cross-site scripting
  (XSS) and phishing attacks. (CVE-2013-0793)

  Red Hat would like to thank the Mozilla project for reporting these issues.
  Upstream acknowledges Olli Pettay, Jesse Ruderman, Boris Zbarsky, Christian
  Holler, Milan Sreckovic, Joe Drew, Cody Crews, miaubiz, Abhishek Arya, and
  Mariusz Mlynski as the original reporters of these issues.

  Note: All issues except CVE-2013-0800 cannot be exploited by a
  specially-crafted HTML mail message as JavaScript is disabled by default
  for mail messages. They could be exploited another way in Thunderbird, for
  example, when viewing the full remote content of an RSS feed.

  All Thunderbird users should upgrade to this updated package, which
  contains Thunderbird version 17.0.5 ESR, which corrects these issues. After
  installing the update, Thunderbird must be restarted for the changes to
  take effect.";


tag_affected = "thunderbird on CentOS 6";
tag_solution = "Please Install the Updated Packages.";

if(description)
{
  script_oid("1.3.6.1.4.1.25623.1.0.881706");
  script_version("$Revision: 14050 $");
  script_tag(name:"last_modification", value:"$Date: 2019-03-08 10:08:09 +0100 (Fri, 08 Mar 2019) $");
  script_tag(name:"creation_date", value:"2013-04-05 13:48:32 +0530 (Fri, 05 Apr 2013)");
  script_cve_id("CVE-2013-0788", "CVE-2013-0793", "CVE-2013-0795", "CVE-2013-0796",
                "CVE-2013-0800");
  script_tag(name:"cvss_base", value:"10.0");
  script_tag(name:"cvss_base_vector", value:"AV:N/AC:L/Au:N/C:C/I:C/A:C");
  script_name("CentOS Update for thunderbird CESA-2013:0697 centos6 ");

  script_xref(name: "CESA", value: "2013:0697");
  script_xref(name: "URL" , value: "http://lists.centos.org/pipermail/centos-announce/2013-April/019678.html");
  script_tag(name: "summary" , value: "Check for the Version of thunderbird");
  script_category(ACT_GATHER_INFO);
  script_copyright("Copyright (c) 2013 Greenbone Networks GmbH");
  script_family("CentOS Local Security Checks");
  script_dependencies("gather-package-list.nasl");
  script_mandatory_keys("ssh/login/centos", "ssh/login/rpms", re:"ssh/login/release=CentOS6");
  script_tag(name : "affected" , value : tag_affected);
  script_tag(name : "solution" , value : tag_solution);
  script_tag(name : "insight" , value : tag_insight);
  script_tag(name:"qod_type", value:"package");
  script_tag(name:"solution_type", value:"VendorFix");
  exit(0);
}


include("pkg-lib-rpm.inc");

release = get_kb_item("ssh/login/release");

res = "";
if(release == NULL){
  exit(0);
}

if(release == "CentOS6")
{

  if ((res = isrpmvuln(pkg:"thunderbird", rpm:"thunderbird~17.0.5~1.el6.centos", rls:"CentOS6")) != NULL)
  {
    security_message(data:res);
    exit(0);
  }

  if (__pkg_match) exit(99); # Not vulnerable.
  exit(0);
}
