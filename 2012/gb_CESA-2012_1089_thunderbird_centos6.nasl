###############################################################################
# OpenVAS Vulnerability Test
#
# CentOS Update for thunderbird CESA-2012:1089 centos6 
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
tag_insight = "Mozilla Thunderbird is a standalone mail and newsgroup client.

  Several flaws were found in the processing of malformed content. Malicious
  content could cause Thunderbird to crash or, potentially, execute arbitrary
  code with the privileges of the user running Thunderbird. (CVE-2012-1948,
  CVE-2012-1951, CVE-2012-1952, CVE-2012-1953, CVE-2012-1954, CVE-2012-1958,
  CVE-2012-1962, CVE-2012-1967)
  
  Malicious content could bypass same-compartment security wrappers (SCSW)
  and execute arbitrary code with chrome privileges. (CVE-2012-1959)
  
  A flaw in the way Thunderbird called history.forward and history.back could
  allow an attacker to conceal a malicious URL, possibly tricking a user
  into believing they are viewing trusted content. (CVE-2012-1955)
  
  A flaw in a parser utility class used by Thunderbird to parse feeds (such
  as RSS) could allow an attacker to execute arbitrary JavaScript with the
  privileges of the user running Thunderbird. This issue could have affected
  other Thunderbird components or add-ons that assume the class returns
  sanitized input. (CVE-2012-1957)
  
  A flaw in the way Thunderbird handled X-Frame-Options headers could allow
  malicious content to perform a clickjacking attack. (CVE-2012-1961)
  
  A flaw in the way Content Security Policy (CSP) reports were generated by
  Thunderbird could allow malicious content to steal a victim's OAuth 2.0
  access tokens and OpenID credentials. (CVE-2012-1963)
  
  A flaw in the way Thunderbird handled certificate warnings could allow a
  man-in-the-middle attacker to create a crafted warning, possibly tricking
  a user into accepting an arbitrary certificate as trusted. (CVE-2012-1964)
  
  The nss update RHBA-2012:0337 for Red Hat Enterprise Linux 5 and 6
  introduced a mitigation for the CVE-2011-3389 flaw. For compatibility
  reasons, it remains disabled by default in the nss packages. This update
  makes Thunderbird enable the mitigation by default. It can be disabled by
  setting the NSS_SSL_CBC_RANDOM_IV environment variable to 0 before
  launching Thunderbird. (BZ#838879)
  
  Red Hat would like to thank the Mozilla project for reporting these issues.
  Upstream acknowledges Benoit Jacob, Jesse Ruderman, Christian Holler, Bill
  McCloskey, Abhishek Arya, Arthur Gerkis, Bill Keese, moz_bug_r_a4, Bobby
  Holley, Mariusz Mlynski, Mario Heiderich, Fr�d�ric Buclin, Karthikeyan
  Bhargavan, and Matt McCutchen as the original reporters of these issues.
  
  Note: None of the issues in this advisory can be exploited by a
  specially-crafted HTML mail message as JavaScript is disabled by default
  for ma ... 

  Description truncated, for more information please check the Reference URL";

tag_affected = "thunderbird on CentOS 6";
tag_solution = "Please Install the Updated Packages.";



if(description)
{
  script_xref(name : "URL" , value : "http://lists.centos.org/pipermail/centos-announce/2012-July/018748.html");
  script_oid("1.3.6.1.4.1.25623.1.0.881168");
  script_version("$Revision: 14050 $");
  script_tag(name:"last_modification", value:"$Date: 2019-03-08 10:08:09 +0100 (Fri, 08 Mar 2019) $");
  script_tag(name:"creation_date", value:"2012-07-30 16:30:00 +0530 (Mon, 30 Jul 2012)");
  script_cve_id("CVE-2012-1948", "CVE-2012-1951", "CVE-2012-1952", "CVE-2012-1953",
                "CVE-2012-1954", "CVE-2012-1955", "CVE-2012-1957", "CVE-2012-1958",
                "CVE-2012-1959", "CVE-2012-1961", "CVE-2012-1962", "CVE-2012-1963",
                "CVE-2012-1964", "CVE-2012-1967", "CVE-2011-3389", "CVE-2012-1949");
  script_tag(name:"cvss_base", value:"10.0");
  script_tag(name:"cvss_base_vector", value:"AV:N/AC:L/Au:N/C:C/I:C/A:C");
  script_xref(name: "CESA", value: "2012:1089");
  script_name("CentOS Update for thunderbird CESA-2012:1089 centos6 ");

  script_tag(name: "summary" , value: "Check for the Version of thunderbird");
  script_category(ACT_GATHER_INFO);
  script_copyright("Copyright (c) 2012 Greenbone Networks GmbH");
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

  if ((res = isrpmvuln(pkg:"thunderbird", rpm:"thunderbird~10.0.6~1.el6.centos", rls:"CentOS6")) != NULL)
  {
    security_message(data:res);
    exit(0);
  }

  if (__pkg_match) exit(99); # Not vulnerable.
  exit(0);
}
