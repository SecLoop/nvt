###############################################################################
# OpenVAS Vulnerability Test
# $Id: gb_suse_2015_0870_1.nasl 12288 2018-11-09 14:02:45Z cfischer $
#
# SuSE Update for kvm SUSE-SU-2015:0870-1 (kvm)
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
  script_oid("1.3.6.1.4.1.25623.1.0.850774");
  script_version("$Revision: 12288 $");
  script_tag(name:"last_modification", value:"$Date: 2018-11-09 15:02:45 +0100 (Fri, 09 Nov 2018) $");
  script_tag(name:"creation_date", value:"2015-10-13 15:24:58 +0530 (Tue, 13 Oct 2015)");
  script_cve_id("CVE-2015-1779");
  script_tag(name:"cvss_base", value:"7.8");
  script_tag(name:"cvss_base_vector", value:"AV:N/AC:L/Au:N/C:N/I:N/A:C");
  script_tag(name:"qod_type", value:"package");
  script_name("SuSE Update for kvm SUSE-SU-2015:0870-1 (kvm)");
  script_tag(name:"summary", value:"Check the version of kvm");
  script_tag(name:"vuldetect", value:"Checks if a vulnerable version is present on the target host.");
  script_tag(name:"insight", value:"This update for KVM fixes an issue in the virtio-blk driver which could
  result in incorrectly setting its WCE configuration. Under some
  circumstances, this misconfiguration could cause severe file system
  corruption, because cache flushes were not generated as they ought to have
  been.

  The update also addresses one security vulnerability:

  * CVE-2015-1779: Insufficient resource limiting in VNC websockets
  decoder. (bsc#924018)");

  script_tag(name:"affected", value:"kvm on SUSE Linux Enterprise Server 11 SP3");
  script_tag(name:"solution", value:"Please install the updated packages.");
  script_xref(name:"SUSE-SU", value:"2015:0870_1");
  script_tag(name:"solution_type", value:"VendorFix");
  script_category(ACT_GATHER_INFO);
  script_copyright("Copyright (C) 2015 Greenbone Networks GmbH");
  script_family("SuSE Local Security Checks");
  script_dependencies("gather-package-list.nasl");
  script_mandatory_keys("ssh/login/suse", "ssh/login/rpms", re:"ssh/login/release=SLES11\.0SP3");
  exit(0);
}

include("revisions-lib.inc");
include("pkg-lib-rpm.inc");

release = rpm_get_ssh_release();
if(!release) exit(0);
res = "";

if(release == "SLES11.0SP3")
{

  if ((res = isrpmvuln(pkg:"kvm", rpm:"kvm~1.4.2~0.22.25.1", rls:"SLES11.0SP3")) != NULL)
  {
    security_message(data:res);
    exit(0);
  }

  if (__pkg_match) exit(99);
  exit(0);
}
