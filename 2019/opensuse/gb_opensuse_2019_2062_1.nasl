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
  script_oid("1.3.6.1.4.1.25623.1.0.852687");
  script_version("2019-09-05T09:53:24+0000");
  script_cve_id("CVE-2019-10208");
  script_tag(name:"cvss_base", value:"5.0");
  script_tag(name:"cvss_base_vector", value:"AV:N/AC:L/Au:N/C:P/I:N/A:N");
  script_tag(name:"last_modification", value:"2019-09-05 09:53:24 +0000 (Thu, 05 Sep 2019)");
  script_tag(name:"creation_date", value:"2019-09-04 02:01:08 +0000 (Wed, 04 Sep 2019)");
  script_name("openSUSE Update for postgresql10 openSUSE-SU-2019:2062-1 (postgresql10)");
  script_category(ACT_GATHER_INFO);
  script_copyright("Copyright (C) 2019 Greenbone Networks GmbH");
  script_family("SuSE Local Security Checks");
  script_dependencies("gather-package-list.nasl");
  script_mandatory_keys("ssh/login/suse", "ssh/login/rpms", re:"ssh/login/release=openSUSELeap15\.0");

  script_xref(name:"openSUSE-SU", value:"2019:2062_1");
  script_xref(name:"URL", value:"http://lists.opensuse.org/opensuse-security-announce/2019-09/msg00009.html");

  script_tag(name:"summary", value:"The remote host is missing an update for the 'postgresql10'
  package(s) announced via the openSUSE-SU-2019:2062_1 advisory.");

  script_tag(name:"vuldetect", value:"Checks if a vulnerable package version is present on the target host.");

  script_tag(name:"insight", value:"This update for postgresql10 fixes the following issues:

  Security issue fixed:

  - CVE-2019-10208: Fixed arbitrary SQL execution via suitable SECURITY
  DEFINER function under the identity of the function owner (bsc#1145092).

  This update was imported from the SUSE:SLE-15:Update update project.


  Patch Instructions:

  To install this openSUSE Security Update use the SUSE recommended
  installation methods
  like YaST online_update or 'zypper patch'.

  Alternatively you can run the command listed for your product:

  - openSUSE Leap 15.1:

  zypper in -t patch openSUSE-2019-2062=1

  - openSUSE Leap 15.0:

  zypper in -t patch openSUSE-2019-2062=1");

  script_tag(name:"affected", value:"'postgresql10' package(s) on openSUSE Leap 15.0.");

  script_tag(name:"solution", value:"Please install the updated package(s).");

  script_tag(name:"solution_type", value:"VendorFix");
  script_tag(name:"qod_type", value:"package");

  exit(0);
}

include("revisions-lib.inc");
include("pkg-lib-rpm.inc");

release = rpm_get_ssh_release();
if(!release)
  exit(0);

res = "";
report = "";

if(release == "openSUSELeap15.0") {

  if(!isnull(res = isrpmvuln(pkg:"libecpg6", rpm:"libecpg6~10.10~lp150.3.13.1", rls:"openSUSELeap15.0"))) {
    report += res;
  }

  if(!isnull(res = isrpmvuln(pkg:"libecpg6-debuginfo", rpm:"libecpg6-debuginfo~10.10~lp150.3.13.1", rls:"openSUSELeap15.0"))) {
    report += res;
  }

  if(!isnull(res = isrpmvuln(pkg:"libpq5", rpm:"libpq5~10.10~lp150.3.13.1", rls:"openSUSELeap15.0"))) {
    report += res;
  }

  if(!isnull(res = isrpmvuln(pkg:"libpq5-debuginfo", rpm:"libpq5-debuginfo~10.10~lp150.3.13.1", rls:"openSUSELeap15.0"))) {
    report += res;
  }

  if(!isnull(res = isrpmvuln(pkg:"postgresql10", rpm:"postgresql10~10.10~lp150.3.13.1", rls:"openSUSELeap15.0"))) {
    report += res;
  }

  if(!isnull(res = isrpmvuln(pkg:"postgresql10-contrib", rpm:"postgresql10-contrib~10.10~lp150.3.13.1", rls:"openSUSELeap15.0"))) {
    report += res;
  }

  if(!isnull(res = isrpmvuln(pkg:"postgresql10-contrib-debuginfo", rpm:"postgresql10-contrib-debuginfo~10.10~lp150.3.13.1", rls:"openSUSELeap15.0"))) {
    report += res;
  }

  if(!isnull(res = isrpmvuln(pkg:"postgresql10-debuginfo", rpm:"postgresql10-debuginfo~10.10~lp150.3.13.1", rls:"openSUSELeap15.0"))) {
    report += res;
  }

  if(!isnull(res = isrpmvuln(pkg:"postgresql10-debugsource", rpm:"postgresql10-debugsource~10.10~lp150.3.13.1", rls:"openSUSELeap15.0"))) {
    report += res;
  }

  if(!isnull(res = isrpmvuln(pkg:"postgresql10-devel", rpm:"postgresql10-devel~10.10~lp150.3.13.1", rls:"openSUSELeap15.0"))) {
    report += res;
  }

  if(!isnull(res = isrpmvuln(pkg:"postgresql10-devel-debuginfo", rpm:"postgresql10-devel-debuginfo~10.10~lp150.3.13.1", rls:"openSUSELeap15.0"))) {
    report += res;
  }

  if(!isnull(res = isrpmvuln(pkg:"postgresql10-plperl", rpm:"postgresql10-plperl~10.10~lp150.3.13.1", rls:"openSUSELeap15.0"))) {
    report += res;
  }

  if(!isnull(res = isrpmvuln(pkg:"postgresql10-plperl-debuginfo", rpm:"postgresql10-plperl-debuginfo~10.10~lp150.3.13.1", rls:"openSUSELeap15.0"))) {
    report += res;
  }

  if(!isnull(res = isrpmvuln(pkg:"postgresql10-plpython", rpm:"postgresql10-plpython~10.10~lp150.3.13.1", rls:"openSUSELeap15.0"))) {
    report += res;
  }

  if(!isnull(res = isrpmvuln(pkg:"postgresql10-plpython-debuginfo", rpm:"postgresql10-plpython-debuginfo~10.10~lp150.3.13.1", rls:"openSUSELeap15.0"))) {
    report += res;
  }

  if(!isnull(res = isrpmvuln(pkg:"postgresql10-pltcl", rpm:"postgresql10-pltcl~10.10~lp150.3.13.1", rls:"openSUSELeap15.0"))) {
    report += res;
  }

  if(!isnull(res = isrpmvuln(pkg:"postgresql10-pltcl-debuginfo", rpm:"postgresql10-pltcl-debuginfo~10.10~lp150.3.13.1", rls:"openSUSELeap15.0"))) {
    report += res;
  }

  if(!isnull(res = isrpmvuln(pkg:"postgresql10-server", rpm:"postgresql10-server~10.10~lp150.3.13.1", rls:"openSUSELeap15.0"))) {
    report += res;
  }

  if(!isnull(res = isrpmvuln(pkg:"postgresql10-server-debuginfo", rpm:"postgresql10-server-debuginfo~10.10~lp150.3.13.1", rls:"openSUSELeap15.0"))) {
    report += res;
  }

  if(!isnull(res = isrpmvuln(pkg:"postgresql10-test", rpm:"postgresql10-test~10.10~lp150.3.13.1", rls:"openSUSELeap15.0"))) {
    report += res;
  }

  if(!isnull(res = isrpmvuln(pkg:"libecpg6-32bit", rpm:"libecpg6-32bit~10.10~lp150.3.13.1", rls:"openSUSELeap15.0"))) {
    report += res;
  }

  if(!isnull(res = isrpmvuln(pkg:"libecpg6-32bit-debuginfo", rpm:"libecpg6-32bit-debuginfo~10.10~lp150.3.13.1", rls:"openSUSELeap15.0"))) {
    report += res;
  }

  if(!isnull(res = isrpmvuln(pkg:"libpq5-32bit", rpm:"libpq5-32bit~10.10~lp150.3.13.1", rls:"openSUSELeap15.0"))) {
    report += res;
  }

  if(!isnull(res = isrpmvuln(pkg:"libpq5-32bit-debuginfo", rpm:"libpq5-32bit-debuginfo~10.10~lp150.3.13.1", rls:"openSUSELeap15.0"))) {
    report += res;
  }

  if(!isnull(res = isrpmvuln(pkg:"postgresql10-docs", rpm:"postgresql10-docs~10.10~lp150.3.13.1", rls:"openSUSELeap15.0"))) {
    report += res;
  }

  if(report != "") {
    security_message(data:report);
  } else if (__pkg_match) {
    exit(99);
  }
  exit(0);
}

exit(0);
