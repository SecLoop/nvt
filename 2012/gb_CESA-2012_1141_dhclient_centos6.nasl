###############################################################################
# OpenVAS Vulnerability Test
#
# CentOS Update for dhclient CESA-2012:1141 centos6 
#
# Authors:
# System Generated Check
#
# Copyright:
# Copyright (c) 2012 Greenbone Networks GmbH, http://www.greenbone.net
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
tag_insight = "The Dynamic Host Configuration Protocol (DHCP) is a protocol that allows
  individual devices on an IP network to get their own network configuration
  information, including an IP address, a subnet mask, and a broadcast
  address.

  A denial of service flaw was found in the way the dhcpd daemon handled
  zero-length client identifiers. A remote attacker could use this flaw to
  send a specially-crafted request to dhcpd, possibly causing it to enter an
  infinite loop and consume an excessive amount of CPU time. (CVE-2012-3571)
  
  Two memory leak flaws were found in the dhcpd daemon. A remote attacker
  could use these flaws to cause dhcpd to exhaust all available memory by
  sending a large number of DHCP requests. (CVE-2012-3954)
  
  Upstream acknowledges Markus Hietava of the Codenomicon CROSS project as
  the original reporter of CVE-2012-3571, and Glen Eustace of Massey
  University, New Zealand, as the original reporter of CVE-2012-3954.
  
  Users of DHCP should upgrade to these updated packages, which contain
  backported patches to correct these issues. After installing this update,
  all DHCP servers will be restarted automatically.";

tag_affected = "dhclient on CentOS 6";
tag_solution = "Please Install the Updated Packages.";



if(description)
{
  script_xref(name : "URL" , value : "http://lists.centos.org/pipermail/centos-announce/2012-August/018785.html");
  script_oid("1.3.6.1.4.1.25623.1.0.881463");
  script_version("$Revision: 14050 $");
  script_tag(name:"last_modification", value:"$Date: 2019-03-08 10:08:09 +0100 (Fri, 08 Mar 2019) $");
  script_tag(name:"creation_date", value:"2012-08-03 11:17:06 +0530 (Fri, 03 Aug 2012)");
  script_cve_id("CVE-2012-3571", "CVE-2012-3954");
  script_tag(name:"cvss_base", value:"6.1");
  script_tag(name:"cvss_base_vector", value:"AV:A/AC:L/Au:N/C:N/I:N/A:C");
  script_xref(name: "CESA", value: "2012:1141");
  script_name("CentOS Update for dhclient CESA-2012:1141 centos6 ");

  script_tag(name: "summary" , value: "Check for the Version of dhclient");
  script_category(ACT_GATHER_INFO);
  script_copyright("Copyright (c) 2012 Greenbone Networks GmbH");
  script_family("CentOS Local Security Checks");
  script_dependencies("gather-package-list.nasl");
  script_mandatory_keys("ssh/login/centos", "ssh/login/rpms", re:"ssh/login/release=CentOS6");
  script_tag(name : "affected" , value : tag_affected);
  script_tag(name : "solution" , value : tag_solution);
  script_tag(name : "insight" , value : tag_insight);
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

if(release == "CentOS6")
{

  if ((res = isrpmvuln(pkg:"dhclient", rpm:"dhclient~4.1.1~31.P1.el6_3.1", rls:"CentOS6")) != NULL)
  {
    security_message(data:res);
    exit(0);
  }

  if ((res = isrpmvuln(pkg:"dhcp", rpm:"dhcp~4.1.1~31.P1.el6_3.1", rls:"CentOS6")) != NULL)
  {
    security_message(data:res);
    exit(0);
  }

  if ((res = isrpmvuln(pkg:"dhcp-common", rpm:"dhcp-common~4.1.1~31.P1.el6_3.1", rls:"CentOS6")) != NULL)
  {
    security_message(data:res);
    exit(0);
  }

  if ((res = isrpmvuln(pkg:"dhcp-devel", rpm:"dhcp-devel~4.1.1~31.P1.el6_3.1", rls:"CentOS6")) != NULL)
  {
    security_message(data:res);
    exit(0);
  }

  if (__pkg_match) exit(99); # Not vulnerable.
  exit(0);
}
