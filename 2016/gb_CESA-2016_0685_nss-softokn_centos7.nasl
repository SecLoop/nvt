###############################################################################
# OpenVAS Vulnerability Test
#
# CentOS Update for nss-softokn CESA-2016:0685 centos7 
#
# Authors:
# System Generated Check
#
# Copyright:
# Copyright (C) 2016 Greenbone Networks GmbH, http://www.greenbone.net
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
  script_oid("1.3.6.1.4.1.25623.1.0.882472");
  script_version("$Revision: 14050 $");
  script_tag(name:"last_modification", value:"$Date: 2019-03-08 10:08:09 +0100 (Fri, 08 Mar 2019) $");
  script_tag(name:"creation_date", value:"2016-04-26 05:18:53 +0200 (Tue, 26 Apr 2016)");
  script_cve_id("CVE-2016-1978", "CVE-2016-1979");
  script_tag(name:"cvss_base", value:"7.5");
  script_tag(name:"cvss_base_vector", value:"AV:N/AC:L/Au:N/C:P/I:P/A:P");
  script_tag(name:"qod_type", value:"package");
  script_name("CentOS Update for nss-softokn CESA-2016:0685 centos7 ");
  script_tag(name: "summary", value: "Check the version of nss-softokn");
  script_tag(name: "vuldetect", value: "Get the installed version with the help 
of detect NVT and check if the version is vulnerable or not.");
  script_tag(name: "insight", value: "Network Security Services (NSS) is a set 
of libraries designed to support the cross-platform development of security-enabled 
client and server applications. The nss-util packages provide utilities for use 
with the Network Security Services (NSS) libraries. Netscape Portable Runtime (NSPR)
provides platform independence for non-GUI operating system facilities.

The following packages have been upgraded to a newer upstream version: nss
(3.21.0), nss-util (3.21.0), nspr (4.11.0). (BZ#1310581, BZ#1303021,
BZ#1299872)

Security Fix(es):

* A use-after-free flaw was found in the way NSS handled DHE
(DiffieHellman key exchange) and ECDHE (Elliptic Curve Diffie-Hellman key
exchange) handshake messages. A remote attacker could send a specially
crafted handshake message that, when parsed by an application linked
against NSS, would cause that application to crash or, under certain
special conditions, execute arbitrary code using the permissions of the
user running the application. (CVE-2016-1978)

* A use-after-free flaw was found in the way NSS processed certain DER
(Distinguished Encoding Rules) encoded cryptographic keys. An attacker
could use this flaw to create a specially crafted DER encoded certificate
which, when parsed by an application compiled against the NSS library,
could cause that application to crash, or execute arbitrary code using the
permissions of the user running the application. (CVE-2016-1979)

Red Hat would like to thank the Mozilla project for reporting these issues.
Upstream acknowledges Eric Rescorla as the original reporter of
CVE-2016-1978  and Tim Taubert as the original reporter of CVE-2016-1979.

Bug Fix(es):

* The nss-softokn package has been updated to be compatible with NSS 3.21.
(BZ#1326221)
");
  script_tag(name: "affected", value: "nss-softokn on CentOS 7");
  script_tag(name: "solution", value: "Please Install the Updated Packages.");

  script_xref(name: "CESA", value: "2016:0685");
  script_xref(name: "URL" , value: "http://lists.centos.org/pipermail/centos-announce/2016-April/021850.html");
  script_tag(name:"solution_type", value:"VendorFix");
  script_category(ACT_GATHER_INFO);
  script_copyright("Copyright (C) 2016 Greenbone Networks GmbH");
  script_family("CentOS Local Security Checks");
  script_dependencies("gather-package-list.nasl");
  script_mandatory_keys("ssh/login/centos", "ssh/login/rpms", re:"ssh/login/release=CentOS7");
  exit(0);
}

include("revisions-lib.inc");
include("pkg-lib-rpm.inc");

release = get_kb_item("ssh/login/release");

res = "";
if(release == NULL){
  exit(0);
}

if(release == "CentOS7")
{

  if ((res = isrpmvuln(pkg:"nss-softokn", rpm:"nss-softokn~3.16.2.3~14.2.el7_2", rls:"CentOS7")) != NULL)
  {
    security_message(data:res);
    exit(0);
  }

  if ((res = isrpmvuln(pkg:"nss-softokn-devel", rpm:"nss-softokn-devel~3.16.2.3~14.2.el7_2", rls:"CentOS7")) != NULL)
  {
    security_message(data:res);
    exit(0);
  }

  if ((res = isrpmvuln(pkg:"nss-softokn-freebl", rpm:"nss-softokn-freebl~3.16.2.3~14.2.el7_2", rls:"CentOS7")) != NULL)
  {
    security_message(data:res);
    exit(0);
  }

  if ((res = isrpmvuln(pkg:"nss-softokn-freebl-devel", rpm:"nss-softokn-freebl-devel~3.16.2.3~14.2.el7_2", rls:"CentOS7")) != NULL)
  {
    security_message(data:res);
    exit(0);
  }

  if (__pkg_match) exit(99); # Not vulnerable.
  exit(0);
}
