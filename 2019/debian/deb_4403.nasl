# Copyright (C) 2019 Greenbone Networks GmbH
# Text descriptions are largely excerpted from the referenced
# advisory, and are Copyright (C) the respective author(s)
#
# SPDX-License-Identifier: GPL-2.0-or-later
#
# This program is free software; you can redistribute it and/or
# modify it under the terms of the GNU General Public License
# as published by the Free Software Foundation; either version 2
# of the License, or (at your option) any later version.
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with this program; if not, write to the Free Software
# Foundation, Inc., 51 Franklin St, Fifth Floor, Boston, MA 02110-1301 USA.

if(description)
{
  script_oid("1.3.6.1.4.1.25623.1.0.704403");
  script_version("2019-07-04T09:25:28+0000");
  script_cve_id("CVE-2019-9637", "CVE-2019-9638", "CVE-2019-9639", "CVE-2019-9640", "CVE-2019-9641");
  script_name("Debian Security Advisory DSA 4403-1 (php7.0 - security update)");
  script_tag(name:"last_modification", value:"2019-07-04 09:25:28 +0000 (Thu, 04 Jul 2019)");
  script_tag(name:"creation_date", value:"2019-03-08 00:00:00 +0100 (Fri, 08 Mar 2019)");
  script_tag(name:"cvss_base", value:"7.5");
  script_tag(name:"cvss_base_vector", value:"AV:N/AC:L/Au:N/C:P/I:P/A:P");
  script_tag(name:"solution_type", value:"VendorFix");
  script_tag(name:"qod_type", value:"package");

  script_xref(name:"URL", value:"https://www.debian.org/security/2019/dsa-4403.html");

  script_category(ACT_GATHER_INFO);

  script_copyright("Copyright (C) 2019 Greenbone Networks GmbH");
  script_family("Debian Local Security Checks");
  script_dependencies("gather-package-list.nasl");
  script_mandatory_keys("ssh/login/debian_linux", "ssh/login/packages", re:"ssh/login/release=DEB9");
  script_tag(name:"affected", value:"php7.0 on Debian Linux");
  script_tag(name:"solution", value:"For the stable distribution (stretch), this problem has been fixed in
version 7.0.33-0+deb9u3.

We recommend that you upgrade your php7.0 packages.");

  script_xref(name:"URL", value:"https://security-tracker.debian.org/tracker/php7.0");
  script_tag(name:"summary", value:"Multiple security issues were found in PHP, a widely-used open source
general purpose scripting language: The EXIF extension had multiple cases
of invalid memory access and rename() was implemented insecurely.");
  script_tag(name:"vuldetect", value:"This check tests the installed software version using the apt package manager.");

  exit(0);
}

include("revisions-lib.inc");
include("pkg-lib-deb.inc");

res = "";
report = "";
if(!isnull(res = isdpkgvuln(pkg:"libapache2-mod-php7.0", ver:"7.0.33-0+deb9u3", rls:"DEB9"))) {
  report += res;
}
if(!isnull(res = isdpkgvuln(pkg:"libphp7.0-embed", ver:"7.0.33-0+deb9u3", rls:"DEB9"))) {
  report += res;
}
if(!isnull(res = isdpkgvuln(pkg:"php7.0", ver:"7.0.33-0+deb9u3", rls:"DEB9"))) {
  report += res;
}
if(!isnull(res = isdpkgvuln(pkg:"php7.0-bcmath", ver:"7.0.33-0+deb9u3", rls:"DEB9"))) {
  report += res;
}
if(!isnull(res = isdpkgvuln(pkg:"php7.0-bz2", ver:"7.0.33-0+deb9u3", rls:"DEB9"))) {
  report += res;
}
if(!isnull(res = isdpkgvuln(pkg:"php7.0-cgi", ver:"7.0.33-0+deb9u3", rls:"DEB9"))) {
  report += res;
}
if(!isnull(res = isdpkgvuln(pkg:"php7.0-cli", ver:"7.0.33-0+deb9u3", rls:"DEB9"))) {
  report += res;
}
if(!isnull(res = isdpkgvuln(pkg:"php7.0-common", ver:"7.0.33-0+deb9u3", rls:"DEB9"))) {
  report += res;
}
if(!isnull(res = isdpkgvuln(pkg:"php7.0-curl", ver:"7.0.33-0+deb9u3", rls:"DEB9"))) {
  report += res;
}
if(!isnull(res = isdpkgvuln(pkg:"php7.0-dba", ver:"7.0.33-0+deb9u3", rls:"DEB9"))) {
  report += res;
}
if(!isnull(res = isdpkgvuln(pkg:"php7.0-dev", ver:"7.0.33-0+deb9u3", rls:"DEB9"))) {
  report += res;
}
if(!isnull(res = isdpkgvuln(pkg:"php7.0-enchant", ver:"7.0.33-0+deb9u3", rls:"DEB9"))) {
  report += res;
}
if(!isnull(res = isdpkgvuln(pkg:"php7.0-fpm", ver:"7.0.33-0+deb9u3", rls:"DEB9"))) {
  report += res;
}
if(!isnull(res = isdpkgvuln(pkg:"php7.0-gd", ver:"7.0.33-0+deb9u3", rls:"DEB9"))) {
  report += res;
}
if(!isnull(res = isdpkgvuln(pkg:"php7.0-gmp", ver:"7.0.33-0+deb9u3", rls:"DEB9"))) {
  report += res;
}
if(!isnull(res = isdpkgvuln(pkg:"php7.0-imap", ver:"7.0.33-0+deb9u3", rls:"DEB9"))) {
  report += res;
}
if(!isnull(res = isdpkgvuln(pkg:"php7.0-interbase", ver:"7.0.33-0+deb9u3", rls:"DEB9"))) {
  report += res;
}
if(!isnull(res = isdpkgvuln(pkg:"php7.0-intl", ver:"7.0.33-0+deb9u3", rls:"DEB9"))) {
  report += res;
}
if(!isnull(res = isdpkgvuln(pkg:"php7.0-json", ver:"7.0.33-0+deb9u3", rls:"DEB9"))) {
  report += res;
}
if(!isnull(res = isdpkgvuln(pkg:"php7.0-ldap", ver:"7.0.33-0+deb9u3", rls:"DEB9"))) {
  report += res;
}
if(!isnull(res = isdpkgvuln(pkg:"php7.0-mbstring", ver:"7.0.33-0+deb9u3", rls:"DEB9"))) {
  report += res;
}
if(!isnull(res = isdpkgvuln(pkg:"php7.0-mcrypt", ver:"7.0.33-0+deb9u3", rls:"DEB9"))) {
  report += res;
}
if(!isnull(res = isdpkgvuln(pkg:"php7.0-mysql", ver:"7.0.33-0+deb9u3", rls:"DEB9"))) {
  report += res;
}
if(!isnull(res = isdpkgvuln(pkg:"php7.0-odbc", ver:"7.0.33-0+deb9u3", rls:"DEB9"))) {
  report += res;
}
if(!isnull(res = isdpkgvuln(pkg:"php7.0-opcache", ver:"7.0.33-0+deb9u3", rls:"DEB9"))) {
  report += res;
}
if(!isnull(res = isdpkgvuln(pkg:"php7.0-pgsql", ver:"7.0.33-0+deb9u3", rls:"DEB9"))) {
  report += res;
}
if(!isnull(res = isdpkgvuln(pkg:"php7.0-phpdbg", ver:"7.0.33-0+deb9u3", rls:"DEB9"))) {
  report += res;
}
if(!isnull(res = isdpkgvuln(pkg:"php7.0-pspell", ver:"7.0.33-0+deb9u3", rls:"DEB9"))) {
  report += res;
}
if(!isnull(res = isdpkgvuln(pkg:"php7.0-readline", ver:"7.0.33-0+deb9u3", rls:"DEB9"))) {
  report += res;
}
if(!isnull(res = isdpkgvuln(pkg:"php7.0-recode", ver:"7.0.33-0+deb9u3", rls:"DEB9"))) {
  report += res;
}
if(!isnull(res = isdpkgvuln(pkg:"php7.0-snmp", ver:"7.0.33-0+deb9u3", rls:"DEB9"))) {
  report += res;
}
if(!isnull(res = isdpkgvuln(pkg:"php7.0-soap", ver:"7.0.33-0+deb9u3", rls:"DEB9"))) {
  report += res;
}
if(!isnull(res = isdpkgvuln(pkg:"php7.0-sqlite3", ver:"7.0.33-0+deb9u3", rls:"DEB9"))) {
  report += res;
}
if(!isnull(res = isdpkgvuln(pkg:"php7.0-sybase", ver:"7.0.33-0+deb9u3", rls:"DEB9"))) {
  report += res;
}
if(!isnull(res = isdpkgvuln(pkg:"php7.0-tidy", ver:"7.0.33-0+deb9u3", rls:"DEB9"))) {
  report += res;
}
if(!isnull(res = isdpkgvuln(pkg:"php7.0-xml", ver:"7.0.33-0+deb9u3", rls:"DEB9"))) {
  report += res;
}
if(!isnull(res = isdpkgvuln(pkg:"php7.0-xmlrpc", ver:"7.0.33-0+deb9u3", rls:"DEB9"))) {
  report += res;
}
if(!isnull(res = isdpkgvuln(pkg:"php7.0-xsl", ver:"7.0.33-0+deb9u3", rls:"DEB9"))) {
  report += res;
}
if(!isnull(res = isdpkgvuln(pkg:"php7.0-zip", ver:"7.0.33-0+deb9u3", rls:"DEB9"))) {
  report += res;
}

if(report != "") {
  security_message(data:report);
} else if (__pkg_match) {
  exit(99);
}