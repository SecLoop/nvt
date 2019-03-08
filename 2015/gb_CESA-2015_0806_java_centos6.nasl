###############################################################################
# OpenVAS Vulnerability Test
#
# CentOS Update for java CESA-2015:0806 centos6 
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
  script_oid("1.3.6.1.4.1.25623.1.0.882167");
  script_version("$Revision: 14050 $");
  script_tag(name:"cvss_base", value:"10.0");
  script_tag(name:"cvss_base_vector", value:"AV:N/AC:L/Au:N/C:C/I:C/A:C");
  script_tag(name:"last_modification", value:"$Date: 2019-03-08 10:08:09 +0100 (Fri, 08 Mar 2019) $");
  script_tag(name:"creation_date", value:"2015-04-16 07:03:47 +0200 (Thu, 16 Apr 2015)");
  script_cve_id("CVE-2005-1080", "CVE-2015-0460", "CVE-2015-0469", "CVE-2015-0477",
                "CVE-2015-0478", "CVE-2015-0480", "CVE-2015-0488");
  script_tag(name:"qod_type", value:"package");
  script_name("CentOS Update for java CESA-2015:0806 centos6 ");
  script_tag(name: "summary", value: "Check the version of java");
  script_tag(name: "vuldetect", value: "Get the installed version with the 
  help of detect NVT and check if the version is vulnerable or not.");
  script_tag(name: "insight", value: "The java-1.7.0-openjdk packages provide
  the OpenJDK 7 Java Runtime Environment and the OpenJDK 7 Java Software Development Kit.

An off-by-one flaw, leading to a buffer overflow, was found in the font
parsing code in the 2D component in OpenJDK. A specially crafted font file
could possibly cause the Java Virtual Machine to execute arbitrary code,
allowing an untrusted Java application or applet to bypass Java sandbox
restrictions. (CVE-2015-0469)

A flaw was found in the way the Hotspot component in OpenJDK handled
phantom references. An untrusted Java application or applet could use this
flaw to corrupt the Java Virtual Machine memory and, possibly, execute
arbitrary code, bypassing Java sandbox restrictions. (CVE-2015-0460)

A flaw was found in the way the JSSE component in OpenJDK parsed X.509
certificate options. A specially crafted certificate could cause JSSE to
raise an exception, possibly causing an application using JSSE to exit
unexpectedly. (CVE-2015-0488)

A flaw was discovered in the Beans component in OpenJDK. An untrusted Java
application or applet could use this flaw to bypass certain Java sandbox
restrictions. (CVE-2015-0477)

A directory traversal flaw was found in the way the jar tool extracted JAR
archive files. A specially crafted JAR archive could cause jar to overwrite
arbitrary files writable by the user running jar when the archive was
extracted. (CVE-2005-1080, CVE-2015-0480)

It was found that the RSA implementation in the JCE component in OpenJDK
did not follow recommended practices for implementing RSA signatures.
(CVE-2015-0478)

The CVE-2015-0478 issue was discovered by Florian Weimer of Red Hat
Product Security.

Note: If the web browser plug-in provided by the icedtea-web package was
installed, the issues exposed via Java applets could have been exploited
without user interaction if a user visited a malicious website.

All users of java-1.7.0-openjdk are advised to upgrade to these updated
packages, which resolve these issues. All running instances of OpenJDK Java
must be restarted for the update to take effect.
");
  script_tag(name: "affected", value: "java on CentOS 6");
  script_tag(name: "solution", value: "Please Install the Updated Packages.");
  script_xref(name: "CESA", value: "2015:0806");
  script_xref(name: "URL" , value: "http://lists.centos.org/pipermail/centos-announce/2015-April/021069.html");
  script_tag(name:"solution_type", value:"VendorFix");
  script_category(ACT_GATHER_INFO);
  script_copyright("Copyright (C) 2015 Greenbone Networks GmbH");
  script_family("CentOS Local Security Checks");
  script_dependencies("gather-package-list.nasl");
  script_mandatory_keys("ssh/login/centos", "ssh/login/rpms", re:"ssh/login/release=CentOS6");
  exit(0);
}

include("revisions-lib.inc");
include("pkg-lib-rpm.inc");

release = get_kb_item("ssh/login/release");

res = "";
if(release == NULL){
  exit(0);
}

if(release == "CentOS6")
{

  if ((res = isrpmvuln(pkg:"java-1.7.0-openjdk", rpm:"java-1.7.0-openjdk~1.7.0.79~2.5.5.1.el6_6", rls:"CentOS6")) != NULL)
  {
    security_message(data:res);
    exit(0);
  }

  if ((res = isrpmvuln(pkg:"java-1.7.0-openjdk-demo", rpm:"java-1.7.0-openjdk-demo~1.7.0.79~2.5.5.1.el6_6", rls:"CentOS6")) != NULL)
  {
    security_message(data:res);
    exit(0);
  }

  if ((res = isrpmvuln(pkg:"java-1.7.0-openjdk-devel", rpm:"java-1.7.0-openjdk-devel~1.7.0.79~2.5.5.1.el6_6", rls:"CentOS6")) != NULL)
  {
    security_message(data:res);
    exit(0);
  }

  if ((res = isrpmvuln(pkg:"java-1.7.0-openjdk-javadoc", rpm:"java-1.7.0-openjdk-javadoc~1.7.0.79~2.5.5.1.el6_6", rls:"CentOS6")) != NULL)
  {
    security_message(data:res);
    exit(0);
  }

  if ((res = isrpmvuln(pkg:"java-1.7.0-openjdk-src", rpm:"java-1.7.0-openjdk-src~1.7.0.79~2.5.5.1.el6_6", rls:"CentOS6")) != NULL)
  {
    security_message(data:res);
    exit(0);
  }

  if (__pkg_match) exit(99); # Not vulnerable.
  exit(0);
}
