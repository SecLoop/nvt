###############################################################################
# OpenVAS Vulnerability Test
# $Id: gb_fedora_2019_ac7e19b0c8_krb5_fc28.nasl 13517 2019-02-07 07:51:12Z mmartin $
#
# Fedora Update for krb5 FEDORA-2019-ac7e19b0c8
#
# Authors:
# System Generated Check
#
# Copyright:
# Copyright (C) 2019 Greenbone Networks GmbH, http://www.greenbone.net
# Text descriptions are largely excerpted from the referenced
# advisory, and are Copyright (c) the respective author(s)
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
  script_oid("1.3.6.1.4.1.25623.1.0.875394");
  script_version("$Revision: 13517 $");
  script_cve_id("CVE-2018-20217");
  script_tag(name:"cvss_base", value:"3.5");
  script_tag(name:"cvss_base_vector", value:"AV:N/AC:M/Au:S/C:N/I:N/A:P");
  script_tag(name:"last_modification", value:"$Date: 2019-02-07 08:51:12 +0100 (Thu, 07 Feb 2019) $");
  script_tag(name:"creation_date", value:"2019-01-11 04:01:55 +0100 (Fri, 11 Jan 2019)");
  script_name("Fedora Update for krb5 FEDORA-2019-ac7e19b0c8");
  script_category(ACT_GATHER_INFO);
  script_copyright("Copyright (C) 2019 Greenbone Networks GmbH");
  script_family("Fedora Local Security Checks");
  script_dependencies("gather-package-list.nasl");
  script_mandatory_keys("ssh/login/fedora", "ssh/login/rpms");

  script_xref(name:"FEDORA", value:"2019-ac7e19b0c8");
  script_xref(name:"URL", value:"https://lists.fedoraproject.org/archives/list/package-announce%40lists.fedoraproject.org/message/5JXNPFZYVRBZNG3ZHA3REQNCNJ53W3X5");

  script_tag(name:"summary", value:"The remote host is missing an update for
  the 'krb5' package(s) announced via the FEDORA-2019-ac7e19b0c8 advisory.");

  script_tag(name:"vuldetect", value:"Checks if a vulnerable package version is
  present on the target host.");

  script_tag(name:"insight", value:"Kerberos V5 is a trusted-third-party network
  authentication system, which can improve your network&#39 s security by
  eliminating the insecure practice of sending passwords over the network in
  unencrypted form.
");

  script_tag(name:"affected", value:"krb5 on Fedora 28.");

  script_tag(name:"solution", value:"Please install the updated package(s).");

  script_tag(name:"solution_type", value:"VendorFix");
  script_tag(name:"qod_type", value:"package");

  exit(0);
}

include("revisions-lib.inc");
include("pkg-lib-rpm.inc");

release = rpm_get_ssh_release();
if(!release) exit(0);

res = "";

if(release == "FC28")
{

  if ((res = isrpmvuln(pkg:"krb5", rpm:"krb5~1.16.1~24.fc28", rls:"FC28")) != NULL)
  {
    security_message(data:res);
    exit(0);
  }

  if (__pkg_match) exit(99);
  exit(0);
}
