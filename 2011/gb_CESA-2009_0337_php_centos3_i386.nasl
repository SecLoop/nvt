###############################################################################
# OpenVAS Vulnerability Test
#
# CentOS Update for php CESA-2009:0337 centos3 i386
#
# Authors:
# System Generated Check
#
# Copyright:
# Copyright (c) 2011 Greenbone Networks GmbH, http://www.greenbone.net
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
tag_insight = "PHP is an HTML-embedded scripting language commonly used with the Apache
  HTTP Web server.

  A heap-based buffer overflow flaw was found in PHP's mbstring extension. A
  remote attacker able to pass arbitrary input to a PHP script using mbstring
  conversion functions could cause the PHP interpreter to crash or,
  possibly, execute arbitrary code. (CVE-2008-5557)
  
  A flaw was found in the handling of the &quot;mbstring.func_overload&quot;
  configuration setting. A value set for one virtual host, or in a user's
  .htaccess file, was incorrectly applied to other virtual hosts on the same
  server, causing the handling of multibyte character strings to not work
  correctly. (CVE-2009-0754)
  
  A buffer overflow flaw was found in PHP's imageloadfont function.  If a PHP
  script allowed a remote attacker to load a carefully crafted font file, it
  could cause the PHP interpreter to crash or, possibly, execute arbitrary
  code. (CVE-2008-3658)
  
  A flaw was found in the way PHP handled certain file extensions when
  running in FastCGI mode. If the PHP interpreter was being executed via
  FastCGI, a remote attacker could create a request which would cause the PHP
  interpreter to crash. (CVE-2008-3660)
  
  A memory disclosure flaw was found in the PHP gd extension's imagerotate
  function. A remote attacker able to pass arbitrary values as the
  &quot;background color&quot; argument of the function could, possibly, view portions
  of the PHP interpreter's memory. (CVE-2008-5498)
  
  All php users are advised to upgrade to these updated packages, which
  contain backported patches to resolve these issues. The httpd web server
  must be restarted for the changes to take effect.";
tag_solution = "Please Install the Updated Packages.";

tag_affected = "php on CentOS 3";


if(description)
{
  script_xref(name : "URL" , value : "http://lists.centos.org/pipermail/centos-announce/2009-April/015722.html");
  script_oid("1.3.6.1.4.1.25623.1.0.880871");
  script_version("$Revision: 14050 $");
  script_tag(name:"last_modification", value:"$Date: 2019-03-08 10:08:09 +0100 (Fri, 08 Mar 2019) $");
  script_tag(name:"creation_date", value:"2011-08-09 08:20:34 +0200 (Tue, 09 Aug 2011)");
  script_tag(name:"cvss_base", value:"10.0");
  script_tag(name:"cvss_base_vector", value:"AV:N/AC:L/Au:N/C:C/I:C/A:C");
  script_xref(name: "CESA", value: "2009:0337");
  script_cve_id("CVE-2008-3658", "CVE-2008-3660", "CVE-2008-5498", "CVE-2008-5557", "CVE-2009-0754");
  script_name("CentOS Update for php CESA-2009:0337 centos3 i386");

  script_tag(name:"summary", value:"Check for the Version of php");
  script_category(ACT_GATHER_INFO);
  script_copyright("Copyright (c) 2011 Greenbone Networks GmbH");
  script_family("CentOS Local Security Checks");
  script_dependencies("gather-package-list.nasl");
  script_mandatory_keys("ssh/login/centos", "ssh/login/rpms", re:"ssh/login/release=CentOS3");
  script_tag(name : "affected" , value : tag_affected);
  script_tag(name : "insight" , value : tag_insight);
  script_tag(name : "solution" , value : tag_solution);
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

if(release == "CentOS3")
{

  if ((res = isrpmvuln(pkg:"php", rpm:"php~4.3.2~51.ent", rls:"CentOS3")) != NULL)
  {
    security_message(data:res);
    exit(0);
  }

  if ((res = isrpmvuln(pkg:"php-devel", rpm:"php-devel~4.3.2~51.ent", rls:"CentOS3")) != NULL)
  {
    security_message(data:res);
    exit(0);
  }

  if ((res = isrpmvuln(pkg:"php-imap", rpm:"php-imap~4.3.2~51.ent", rls:"CentOS3")) != NULL)
  {
    security_message(data:res);
    exit(0);
  }

  if ((res = isrpmvuln(pkg:"php-ldap", rpm:"php-ldap~4.3.2~51.ent", rls:"CentOS3")) != NULL)
  {
    security_message(data:res);
    exit(0);
  }

  if ((res = isrpmvuln(pkg:"php-mysql", rpm:"php-mysql~4.3.2~51.ent", rls:"CentOS3")) != NULL)
  {
    security_message(data:res);
    exit(0);
  }

  if ((res = isrpmvuln(pkg:"php-odbc", rpm:"php-odbc~4.3.2~51.ent", rls:"CentOS3")) != NULL)
  {
    security_message(data:res);
    exit(0);
  }

  if ((res = isrpmvuln(pkg:"php-pgsql", rpm:"php-pgsql~4.3.2~51.ent", rls:"CentOS3")) != NULL)
  {
    security_message(data:res);
    exit(0);
  }

  if (__pkg_match) exit(99); # Not vulnerable.
  exit(0);
}
