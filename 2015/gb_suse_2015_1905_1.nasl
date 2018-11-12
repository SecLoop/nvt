###############################################################################
# OpenVAS Vulnerability Test
# $Id: gb_suse_2015_1905_1.nasl 12284 2018-11-09 12:37:21Z cfischer $
#
# SuSE Update for java-1_8_0-openjdk openSUSE-SU-2015:1905-1 (java-1_8_0-openjdk)
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
  script_oid("1.3.6.1.4.1.25623.1.0.851124");
  script_version("$Revision: 12284 $");
  script_tag(name:"last_modification", value:"$Date: 2018-11-09 13:37:21 +0100 (Fri, 09 Nov 2018) $");
  script_tag(name:"creation_date", value:"2015-11-05 06:17:48 +0100 (Thu, 05 Nov 2015)");
  script_cve_id("CVE-2015-4734", "CVE-2015-4803", "CVE-2015-4805", "CVE-2015-4806",
                "CVE-2015-4810", "CVE-2015-4835", "CVE-2015-4840", "CVE-2015-4842",
                "CVE-2015-4843", "CVE-2015-4844", "CVE-2015-4860", "CVE-2015-4868",
                "CVE-2015-4872", "CVE-2015-4881", "CVE-2015-4882", "CVE-2015-4883",
                "CVE-2015-4893", "CVE-2015-4901", "CVE-2015-4902", "CVE-2015-4903",
                "CVE-2015-4906", "CVE-2015-4908", "CVE-2015-4911", "CVE-2015-4916");
  script_tag(name:"cvss_base", value:"10.0");
  script_tag(name:"cvss_base_vector", value:"AV:N/AC:L/Au:N/C:C/I:C/A:C");
  script_tag(name:"qod_type", value:"package");
  script_name("SuSE Update for java-1_8_0-openjdk openSUSE-SU-2015:1905-1 (java-1_8_0-openjdk)");
  script_tag(name:"summary", value:"Check the version of java-1_8_0-openjdk");
  script_tag(name:"vuldetect", value:"Checks if a vulnerable version is present on the target host.");
  script_tag(name:"insight", value:"java-1_8_0-openjdk was updated to fix 24 security issues.

  These security issues were fixed:

  - CVE-2015-4734: A remote user can exploit a flaw in the Embedded JGSS
  component to partially access data

  - CVE-2015-4803: A remote user can exploit a flaw in the JRockit JAXP
  component to cause partial denial of service conditions

  - CVE-2015-4805: A remote user can exploit a flaw in the Embedded
  Serialization component to gain elevated privileges

  - CVE-2015-4806: A remote user can exploit a flaw in the Java SE Embedded
  Libraries component to partially access and partially modify data

  - CVE-2015-4835: A remote user can exploit a flaw in the Embedded CORBA
  component to gain elevated privileges

  - CVE-2015-4842: A remote user can exploit a flaw in the Embedded JAXP
  component to partially access data

  - CVE-2015-4843: A remote user can exploit a flaw in the Java SE Embedded
  Libraries component to gain elevated privileges

  - CVE-2015-4844: A remote user can exploit a flaw in the Embedded 2D
  component to gain elevated privileges

  - CVE-2015-4860: A remote user can exploit a flaw in the Embedded RMI
  component to gain elevated privileges

  - CVE-2015-4872: A remote user can exploit a flaw in the JRockit Security
  component to partially modify data [].

  - CVE-2015-4881: A remote user can exploit a flaw in the Embedded CORBA
  component to gain elevated privileges

  - CVE-2015-4882: A remote user can exploit a flaw in the Embedded CORBA
  component to cause partial denial of service conditions

  - CVE-2015-4883: A remote user can exploit a flaw in the Embedded RMI
  component to gain elevated privileges

  - CVE-2015-4893: A remote user can exploit a flaw in the JRockit JAXP
  component to cause partial denial of service conditions

  - CVE-2015-4902: A remote user can exploit a flaw in the Java SE
  Deployment component to partially modify data

  - CVE-2015-4903: A remote user can exploit a flaw in the Embedded RMI
  component to partially access data

  - CVE-2015-4911: A remote user can exploit a flaw in the JRockit JAXP
  component to cause partial denial of service conditions

  - CVE-2015-4810: A local user can exploit a flaw in the Java SE Deployment
  component to gain elevated privileges

  - CVE-2015-4840: A remote user can exploit a flaw in the Embedded 2D
  component to partially access data

  - CVE-2015-4868: A remote user can exploit a flaw in the Java SE Embedded
  Libraries component to gain elevated privileges

  - CVE-2015-4901: A remote user can exploit a flaw in the JavaFX component
  to gain elevated privileges

  - CVE-2015-4906: A remote user c ...

  Description truncated, for more information please check the Reference URL");
  script_tag(name:"affected", value:"java-1_8_0-openjdk on openSUSE 13.2");
  script_tag(name:"solution", value:"Please install the updated packages.");
  script_xref(name:"openSUSE-SU", value:"2015:1905_1");
  script_tag(name:"solution_type", value:"VendorFix");
  script_category(ACT_GATHER_INFO);
  script_copyright("Copyright (C) 2015 Greenbone Networks GmbH");
  script_family("SuSE Local Security Checks");
  script_dependencies("gather-package-list.nasl");
  script_mandatory_keys("ssh/login/suse", "ssh/login/rpms", re:"ssh/login/release=openSUSE13\.2");
  exit(0);
}

include("revisions-lib.inc");
include("pkg-lib-rpm.inc");

release = rpm_get_ssh_release();
if(!release) exit(0);
res = "";

if(release == "openSUSE13.2")
{

  if ((res = isrpmvuln(pkg:"java-1_8_0-openjdk", rpm:"java-1_8_0-openjdk~1.8.0.65~18.1", rls:"openSUSE13.2")) != NULL)
  {
    security_message(data:res);
    exit(0);
  }

  if ((res = isrpmvuln(pkg:"java-1_8_0-openjdk-accessibility", rpm:"java-1_8_0-openjdk-accessibility~1.8.0.65~18.1", rls:"openSUSE13.2")) != NULL)
  {
    security_message(data:res);
    exit(0);
  }

  if ((res = isrpmvuln(pkg:"java-1_8_0-openjdk-debuginfo", rpm:"java-1_8_0-openjdk-debuginfo~1.8.0.65~18.1", rls:"openSUSE13.2")) != NULL)
  {
    security_message(data:res);
    exit(0);
  }

  if ((res = isrpmvuln(pkg:"java-1_8_0-openjdk-debugsource", rpm:"java-1_8_0-openjdk-debugsource~1.8.0.65~18.1", rls:"openSUSE13.2")) != NULL)
  {
    security_message(data:res);
    exit(0);
  }

  if ((res = isrpmvuln(pkg:"java-1_8_0-openjdk-demo", rpm:"java-1_8_0-openjdk-demo~1.8.0.65~18.1", rls:"openSUSE13.2")) != NULL)
  {
    security_message(data:res);
    exit(0);
  }

  if ((res = isrpmvuln(pkg:"java-1_8_0-openjdk-demo-debuginfo", rpm:"java-1_8_0-openjdk-demo-debuginfo~1.8.0.65~18.1", rls:"openSUSE13.2")) != NULL)
  {
    security_message(data:res);
    exit(0);
  }

  if ((res = isrpmvuln(pkg:"java-1_8_0-openjdk-devel", rpm:"java-1_8_0-openjdk-devel~1.8.0.65~18.1", rls:"openSUSE13.2")) != NULL)
  {
    security_message(data:res);
    exit(0);
  }

  if ((res = isrpmvuln(pkg:"java-1_8_0-openjdk-headless", rpm:"java-1_8_0-openjdk-headless~1.8.0.65~18.1", rls:"openSUSE13.2")) != NULL)
  {
    security_message(data:res);
    exit(0);
  }

  if ((res = isrpmvuln(pkg:"java-1_8_0-openjdk-headless-debuginfo", rpm:"java-1_8_0-openjdk-headless-debuginfo~1.8.0.65~18.1", rls:"openSUSE13.2")) != NULL)
  {
    security_message(data:res);
    exit(0);
  }

  if ((res = isrpmvuln(pkg:"java-1_8_0-openjdk-src", rpm:"java-1_8_0-openjdk-src~1.8.0.65~18.1", rls:"openSUSE13.2")) != NULL)
  {
    security_message(data:res);
    exit(0);
  }

  if ((res = isrpmvuln(pkg:"java-1_8_0-openjdk-javadoc", rpm:"java-1_8_0-openjdk-javadoc~1.8.0.65~18.1", rls:"openSUSE13.2")) != NULL)
  {
    security_message(data:res);
    exit(0);
  }

  if (__pkg_match) exit(99);
  exit(0);
}
