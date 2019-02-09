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
  script_oid("1.3.6.1.4.1.25623.1.0.875447");
  script_version("$Revision: 13540 $");
  script_cve_id("CVE-2018-16858", "CVE-2018-10583");
  script_tag(name:"cvss_base", value:"5.0");
  script_tag(name:"cvss_base_vector", value:"AV:N/AC:L/Au:N/C:P/I:N/A:N");
  script_tag(name:"last_modification", value:"$Date: 2019-02-08 14:07:49 +0100 (Fri, 08 Feb 2019) $");
  script_tag(name:"creation_date", value:"2019-02-08 04:08:50 +0100 (Fri, 08 Feb 2019)");
  script_name("Fedora Update for libreoffice FEDORA-2019-cf9ddf9fff");
  script_category(ACT_GATHER_INFO);
  script_copyright("Copyright (C) 2019 Greenbone Networks GmbH");
  script_family("Fedora Local Security Checks");
  script_dependencies("gather-package-list.nasl");
  script_mandatory_keys("ssh/login/fedora", "ssh/login/rpms");

  script_xref(name:"FEDORA", value:"2019-cf9ddf9fff");
  script_xref(name:"URL", value:"https://lists.fedoraproject.org/archives/list/package-announce%40lists.fedoraproject.org/message/MBZCK6EUBFQSMGRHIODV47TD4QPNMT3K");

  script_tag(name:"summary", value:"The remote host is missing an update for the
  'libreoffice' package(s) announced via the FEDORA-2019-cf9ddf9fff advisory.");

  script_tag(name:"vuldetect", value:"Checks if a vulnerable package version is
  present on the target host.");

  script_tag(name:"insight", value:"LibreOffice is an Open Source, community-developed,
  office productivity suite. It includes the key desktop applications, such as a word
  processor, spreadsheet, presentation manager, formula editor and drawing program,
  with a user interface and feature set similar to other office suites.  Sophisticated
  and flexible, LibreOffice also works transparently with a variety of file formats,
  including Microsoft Office File Formats.
");

  script_tag(name:"affected", value:"libreoffice on Fedora 28.");

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

  if ((res = isrpmvuln(pkg:"libreoffice", rpm:"libreoffice~6.0.7.3~1.fc28", rls:"FC28")) != NULL)
  {
    security_message(data:res);
    exit(0);
  }

  if (__pkg_match) exit(99);
  exit(0);
}
