###############################################################################
# OpenVAS Vulnerability Test
#
# CentOS Update for java CESA-2015:1228 centos6 
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
  script_oid("1.3.6.1.4.1.25623.1.0.882220");
  script_version("$Revision: 14050 $");
  script_cve_id("CVE-2015-2590", "CVE-2015-2601", "CVE-2015-2621", "CVE-2015-2625",
                "CVE-2015-2628", "CVE-2015-2632", "CVE-2015-2659", "CVE-2015-2808",
                "CVE-2015-3149", "CVE-2015-4000", "CVE-2015-4731", "CVE-2015-4732",
                "CVE-2015-4733", "CVE-2015-4748", "CVE-2015-4749", "CVE-2015-4760",
                "CVE-2015-0383");
  script_tag(name:"cvss_base", value:"10.0");
  script_tag(name:"cvss_base_vector", value:"AV:N/AC:L/Au:N/C:C/I:C/A:C");
  script_tag(name:"last_modification", value:"$Date: 2019-03-08 10:08:09 +0100 (Fri, 08 Mar 2019) $");
  script_tag(name:"creation_date", value:"2015-07-16 06:17:18 +0200 (Thu, 16 Jul 2015)");
  script_tag(name:"qod_type", value:"package");
  script_name("CentOS Update for java CESA-2015:1228 centos6 ");
  script_tag(name: "summary", value: "Check the version of java");
  script_tag(name: "vuldetect", value: "Get the installed version with the help
  of detect NVT and check if the version is vulnerable or not.");
  script_tag(name: "insight", value: "The java-1.8.0-openjdk packages provide
  the OpenJDK 8 Java Runtime
Environment and the OpenJDK 8 Java Software Development Kit.

Multiple flaws were discovered in the 2D, CORBA, JMX, Libraries and RMI
components in OpenJDK. An untrusted Java application or applet could use
these flaws to bypass Java sandbox restrictions. (CVE-2015-4760,
CVE-2015-2628, CVE-2015-4731, CVE-2015-2590, CVE-2015-4732, CVE-2015-4733)

A flaw was found in the way the Libraries component of OpenJDK verified
Online Certificate Status Protocol (OCSP) responses. An OCSP response with
no nextUpdate date specified was incorrectly handled as having unlimited
validity, possibly causing a revoked X.509 certificate to be interpreted as
valid. (CVE-2015-4748)

It was discovered that the JCE component in OpenJDK failed to use constant
time comparisons in multiple cases. An attacker could possibly use these
flaws to disclose sensitive information by measuring the time used to
perform operations using these non-constant time comparisons.
(CVE-2015-2601)

It was discovered that the GCM (Galois Counter Mode) implementation in the
Security component of OpenJDK failed to properly perform a null check.
This could cause the Java Virtual Machine to crash when an application
performed encryption using a block cipher in the GCM mode. (CVE-2015-2659)

A flaw was found in the RC4 encryption algorithm. When using certain keys
for RC4 encryption, an attacker could obtain portions of the plain text
from the cipher text without the knowledge of the encryption key.
(CVE-2015-2808)

Note: With this update, OpenJDK now disables RC4 TLS/SSL cipher suites by
default to address the CVE-2015-2808 issue. Refer to Red Hat Bugzilla bug
1207101, linked to in the References section, for additional details about
this change.

A flaw was found in the way the TLS protocol composed the Diffie-Hellman
(DH) key exchange. A man-in-the-middle attacker could use this flaw to
force the use of weak 512 bit export-grade keys during the key exchange,
allowing them do decrypt all traffic. (CVE-2015-4000)

Note: This update forces the TLS/SSL client implementation in OpenJDK to
reject DH key sizes below 768 bits, which prevents sessions to be
downgraded to export-grade keys. Refer to Red Hat Bugzilla bug 1223211,
linked to in the References section, for additional details about this
change.

It was discovered that the JNDI component in OpenJDK did not handle DNS
resolutions correctly. An attacker able to trigger such DNS errors could
cause a Java application using JNDI to consume memory and CPU time, and
possibly block further DNS resolution. (CVE-2015-4749)

Multiple informatio ... 

  Description truncated, for more information please check the Reference URL");
  script_tag(name: "affected", value: "java on CentOS 6");
  script_tag(name: "solution", value: "Please Install the Updated Packages.");
  script_xref(name: "CESA", value: "2015:1228");
  script_xref(name: "URL" , value: "http://lists.centos.org/pipermail/centos-announce/2015-July/021248.html");
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

  if ((res = isrpmvuln(pkg:"java-1.8.0-openjdk", rpm:"java-1.8.0-openjdk~1.8.0.51~0.b16.el6_6", rls:"CentOS6")) != NULL)
  {
    security_message(data:res);
    exit(0);
  }

  if ((res = isrpmvuln(pkg:"java-1.8.0-openjdk-demo", rpm:"java-1.8.0-openjdk-demo~1.8.0.51~0.b16.el6_6", rls:"CentOS6")) != NULL)
  {
    security_message(data:res);
    exit(0);
  }

  if ((res = isrpmvuln(pkg:"java-1.8.0-openjdk-devel", rpm:"java-1.8.0-openjdk-devel~1.8.0.51~0.b16.el6_6", rls:"CentOS6")) != NULL)
  {
    security_message(data:res);
    exit(0);
  }

  if ((res = isrpmvuln(pkg:"java-1.8.0-openjdk-headless", rpm:"java-1.8.0-openjdk-headless~1.8.0.51~0.b16.el6_6", rls:"CentOS6")) != NULL)
  {
    security_message(data:res);
    exit(0);
  }

  if ((res = isrpmvuln(pkg:"java-1.8.0-openjdk-javadoc", rpm:"java-1.8.0-openjdk-javadoc~1.8.0.51~0.b16.el6_6", rls:"CentOS6")) != NULL)
  {
    security_message(data:res);
    exit(0);
  }

  if ((res = isrpmvuln(pkg:"java-1.8.0-openjdk-src", rpm:"java-1.8.0-openjdk-src~1.8.0.51~0.b16.el6_6", rls:"CentOS6")) != NULL)
  {
    security_message(data:res);
    exit(0);
  }

  if (__pkg_match) exit(99); # Not vulnerable.
  exit(0);
}
