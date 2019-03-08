###############################################################################
# OpenVAS Vulnerability Test
#
# CentOS Update for firefox CESA-2011:1437 centos4 x86_64
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

include("revisions-lib.inc");
tag_insight = "Mozilla Firefox is an open source web browser. XULRunner provides the XUL
  Runtime environment for Mozilla Firefox.

  A flaw was found in the way Firefox handled certain add-ons. A web page
  containing malicious content could cause an add-on to grant itself full
  browser privileges, which could lead to arbitrary code execution with the
  privileges of the user running Firefox. (CVE-2011-3647)
  
  A cross-site scripting (XSS) flaw was found in the way Firefox handled
  certain multibyte character sets. A web page containing malicious content
  could cause Firefox to run JavaScript code with the permissions of a
  different website. (CVE-2011-3648)
  
  A flaw was found in the way Firefox handled large JavaScript scripts. A web
  page containing malicious JavaScript could cause Firefox to crash or,
  potentially, execute arbitrary code with the privileges of the user running
  Firefox. (CVE-2011-3650)
  
  For technical details regarding these flaws, refer to the Mozilla security
  advisories for Firefox 3.6.24. You can find a link to the Mozilla
  advisories in the References section of this erratum.
  
  All Firefox users should upgrade to these updated packages, which contain
  Firefox version 3.6.24, which corrects these issues. After installing the
  update, Firefox must be restarted for the changes to take effect.";

tag_affected = "firefox on CentOS 4";
tag_solution = "Please Install the Updated Packages.";



if(description)
{
  script_xref(name : "URL" , value : "http://lists.centos.org/pipermail/centos-announce/2011-November/018180.html");
  script_oid("1.3.6.1.4.1.25623.1.0.881381");
  script_version("$Revision: 14050 $");
  script_tag(name:"last_modification", value:"$Date: 2019-03-08 10:08:09 +0100 (Fri, 08 Mar 2019) $");
  script_tag(name:"creation_date", value:"2012-07-30 17:37:58 +0530 (Mon, 30 Jul 2012)");
  script_cve_id("CVE-2011-3647", "CVE-2011-3648", "CVE-2011-3650");
  script_tag(name:"cvss_base", value:"9.3");
  script_tag(name:"cvss_base_vector", value:"AV:N/AC:M/Au:N/C:C/I:C/A:C");
  script_xref(name: "CESA", value: "2011:1437");
  script_name("CentOS Update for firefox CESA-2011:1437 centos4 x86_64");

  script_tag(name: "summary" , value: "Check for the Version of firefox");
  script_category(ACT_GATHER_INFO);
  script_copyright("Copyright (c) 2012 Greenbone Networks GmbH");
  script_family("CentOS Local Security Checks");
  script_dependencies("gather-package-list.nasl");
  script_mandatory_keys("ssh/login/centos", "ssh/login/rpms", re:"ssh/login/release=CentOS4");
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

if(release == "CentOS4")
{

  if ((res = isrpmvuln(pkg:"firefox", rpm:"firefox~3.6.24~3.el4.centos", rls:"CentOS4")) != NULL)
  {
    security_message(data:res);
    exit(0);
  }

  if (__pkg_match) exit(99); # Not vulnerable.
  exit(0);
}
