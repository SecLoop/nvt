###############################################################################
# OpenVAS Vulnerability Test
#
# CentOS Update for firefox CESA-2012:0710 centos6 
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

  Several flaws were found in the processing of malformed web content. A web
  page containing malicious content could cause Firefox to crash or,
  potentially, execute arbitrary code with the privileges of the user running
  Firefox. (CVE-2011-3101, CVE-2012-1937, CVE-2012-1938, CVE-2012-1939,
  CVE-2012-1940, CVE-2012-1941, CVE-2012-1946, CVE-2012-1947)
  
  Note: CVE-2011-3101 only affected users of certain NVIDIA display drivers
  with graphics cards that have hardware acceleration enabled.
  
  It was found that the Content Security Policy (CSP) implementation in
  Firefox no longer blocked Firefox inline event handlers. A remote attacker
  could use this flaw to possibly bypass a web application's intended
  restrictions, if that application relied on CSP to protect against flaws
  such as cross-site scripting (XSS). (CVE-2012-1944)
  
  If a web server hosted HTML files that are stored on a Microsoft Windows
  share, or a Samba share, loading such files with Firefox could result in
  Windows shortcut files (.lnk) in the same share also being loaded. An
  attacker could use this flaw to view the contents of local files and
  directories on the victim's system. This issue also affected users opening
  HTML files from Microsoft Windows shares, or Samba shares, that are mounted
  on their systems. (CVE-2012-1945)
  
  For technical details regarding these flaws, refer to the Mozilla security
  advisories for Firefox 10.0.5 ESR. You can find a link to the Mozilla
  advisories in the References section of this erratum.
  
  Red Hat would like to thank the Mozilla project for reporting these issues.
  Upstream acknowledges Ken Russell of Google as the original reporter of
  CVE-2011-3101; Igor Bukanov, Olli Pettay, Boris Zbarsky, and Jesse Ruderman
  as the original reporters of CVE-2012-1937; Jesse Ruderman, Igor Bukanov,
  Bill McCloskey, Christian Holler, Andrew McCreight, and Brian Bondy as the
  original reporters of CVE-2012-1938; Christian Holler as the original
  reporter of CVE-2012-1939; security researcher Abhishek Arya of Google as
  the original reporter of CVE-2012-1940, CVE-2012-1941, and CVE-2012-1947;
  security researcher Arthur Gerkis as the original reporter of
  CVE-2012-1946; security researcher Adam Barth as the original reporter of
  CVE-2012-1944; and security researcher Paul Stone as the original reporter
  of CVE-2012-1945.
  
  All Firefox users should upgrade to these updated packages, which contain
  Firefox version 10.0.5 ESR, which corrects these issues. After installing
  the update, Firefox must be restarted for the changes to take effect.";

tag_affected = "firefox on CentOS 6";
tag_solution = "Please Install the Updated Packages.";



if(description)
{
  script_xref(name : "URL" , value : "http://lists.centos.org/pipermail/centos-announce/2012-June/018668.html");
  script_oid("1.3.6.1.4.1.25623.1.0.881200");
  script_version("$Revision: 14050 $");
  script_tag(name:"last_modification", value:"$Date: 2019-03-08 10:08:09 +0100 (Fri, 08 Mar 2019) $");
  script_tag(name:"creation_date", value:"2012-07-30 16:41:12 +0530 (Mon, 30 Jul 2012)");
  script_cve_id("CVE-2011-3101", "CVE-2012-1937", "CVE-2012-1938", "CVE-2012-1939",
                "CVE-2012-1940", "CVE-2012-1941", "CVE-2012-1944", "CVE-2012-1945",
                "CVE-2012-1946", "CVE-2012-1947");
  script_tag(name:"cvss_base", value:"10.0");
  script_tag(name:"cvss_base_vector", value:"AV:N/AC:L/Au:N/C:C/I:C/A:C");
  script_xref(name: "CESA", value: "2012:0710");
  script_name("CentOS Update for firefox CESA-2012:0710 centos6 ");

  script_tag(name: "summary" , value: "Check for the Version of firefox");
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

  if ((res = isrpmvuln(pkg:"firefox", rpm:"firefox~10.0.5~1.el6.centos", rls:"CentOS6")) != NULL)
  {
    security_message(data:res);
    exit(0);
  }

  if ((res = isrpmvuln(pkg:"xulrunner", rpm:"xulrunner~10.0.5~1.el6.centos", rls:"CentOS6")) != NULL)
  {
    security_message(data:res);
    exit(0);
  }

  if ((res = isrpmvuln(pkg:"xulrunner-devel", rpm:"xulrunner-devel~10.0.5~1.el6.centos", rls:"CentOS6")) != NULL)
  {
    security_message(data:res);
    exit(0);
  }

  if (__pkg_match) exit(99); # Not vulnerable.
  exit(0);
}
