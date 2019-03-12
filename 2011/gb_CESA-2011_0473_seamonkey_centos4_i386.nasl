###############################################################################
# OpenVAS Vulnerability Test
#
# CentOS Update for seamonkey CESA-2011:0473 centos4 i386
#
# Authors:
# System Generated Check
#
# Copyright:
# Copyright (c) 2011 Greenbone Networks GmbH, http://www.greenbone.net
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
  script_xref(name:"URL", value:"http://lists.centos.org/pipermail/centos-announce/2011-April/017468.html");
  script_oid("1.3.6.1.4.1.25623.1.0.880526");
  script_version("$Revision: 14098 $");
  script_tag(name:"last_modification", value:"$Date: 2019-03-11 16:47:16 +0100 (Mon, 11 Mar 2019) $");
  script_tag(name:"creation_date", value:"2011-08-09 08:20:34 +0200 (Tue, 09 Aug 2011)");
  script_tag(name:"cvss_base", value:"10.0");
  script_tag(name:"cvss_base_vector", value:"AV:N/AC:L/Au:N/C:C/I:C/A:C");
  script_xref(name:"CESA", value:"2011:0473");
  script_cve_id("CVE-2011-0072", "CVE-2011-0073", "CVE-2011-0074", "CVE-2011-0075",
                "CVE-2011-0077", "CVE-2011-0078", "CVE-2011-0080");
  script_name("CentOS Update for seamonkey CESA-2011:0473 centos4 i386");

  script_tag(name:"summary", value:"The remote host is missing an update as announced in the referenced advisory for seamonkey");
  script_category(ACT_GATHER_INFO);
  script_copyright("Copyright (c) 2011 Greenbone Networks GmbH");
  script_family("CentOS Local Security Checks");
  script_dependencies("gather-package-list.nasl");
  script_mandatory_keys("ssh/login/centos", "ssh/login/rpms", re:"ssh/login/release=CentOS4");
  script_tag(name:"affected", value:"seamonkey on CentOS 4");
  script_tag(name:"insight", value:"SeaMonkey is an open source web browser, email and newsgroup client, IRC
  chat client, and HTML editor.

  Several flaws were found in the processing of malformed web content. A web
  page containing malicious content could possibly lead to arbitrary code
  execution with the privileges of the user running SeaMonkey.
  (CVE-2011-0080)

  An arbitrary memory write flaw was found in the way SeaMonkey handled
  out-of-memory conditions. If all memory was consumed when a user visited a
  malicious web page, it could possibly lead to arbitrary code execution
  with the privileges of the user running SeaMonkey. (CVE-2011-0078)

  An integer overflow flaw was found in the way SeaMonkey handled the HTML
  frameset tag. A web page with a frameset tag containing large values for
  the 'rows' and 'cols' attributes could trigger this flaw, possibly leading
  to arbitrary code execution with the privileges of the user running
  SeaMonkey. (CVE-2011-0077)

  A flaw was found in the way SeaMonkey handled the HTML iframe tag. A web
  page with an iframe tag containing a specially-crafted source address could
  trigger this flaw, possibly leading to arbitrary code execution with the
  privileges of the user running SeaMonkey. (CVE-2011-0075)

  A flaw was found in the way SeaMonkey displayed multiple marquee elements.
  A malformed HTML document could cause SeaMonkey to execute arbitrary code
  with the privileges of the user running SeaMonkey. (CVE-2011-0074)

  A flaw was found in the way SeaMonkey handled the nsTreeSelection element.
  Malformed content could cause SeaMonkey to execute arbitrary code with the
  privileges of the user running SeaMonkey. (CVE-2011-0073)

  A use-after-free flaw was found in the way SeaMonkey appended frame and
  iframe elements to a DOM tree when the NoScript add-on was enabled.
  Malicious HTML content could cause SeaMonkey to execute arbitrary code with
  the privileges of the user running SeaMonkey. (CVE-2011-0072)

  All SeaMonkey users should upgrade to these updated packages, which correct
  these issues. After installing the update, SeaMonkey must be restarted for
  the changes to take effect.");
  script_tag(name:"solution", value:"Please install the updated packages.");
  script_tag(name:"qod_type", value:"package");
  script_tag(name:"solution_type", value:"VendorFix");
  exit(0);
}

include("revisions-lib.inc");
include("pkg-lib-rpm.inc");

release = rpm_get_ssh_release();
if(!release)
  exit(0);

res = "";

if(release == "CentOS4")
{

  if ((res = isrpmvuln(pkg:"seamonkey", rpm:"seamonkey~1.0.9~70.el4.centos", rls:"CentOS4")) != NULL)
  {
    security_message(data:res);
    exit(0);
  }

  if ((res = isrpmvuln(pkg:"seamonkey-chat", rpm:"seamonkey-chat~1.0.9~70.el4.centos", rls:"CentOS4")) != NULL)
  {
    security_message(data:res);
    exit(0);
  }

  if ((res = isrpmvuln(pkg:"seamonkey-devel", rpm:"seamonkey-devel~1.0.9~70.el4.centos", rls:"CentOS4")) != NULL)
  {
    security_message(data:res);
    exit(0);
  }

  if ((res = isrpmvuln(pkg:"seamonkey-dom-inspector", rpm:"seamonkey-dom-inspector~1.0.9~70.el4.centos", rls:"CentOS4")) != NULL)
  {
    security_message(data:res);
    exit(0);
  }

  if ((res = isrpmvuln(pkg:"seamonkey-js-debugger", rpm:"seamonkey-js-debugger~1.0.9~70.el4.centos", rls:"CentOS4")) != NULL)
  {
    security_message(data:res);
    exit(0);
  }

  if ((res = isrpmvuln(pkg:"seamonkey-mail", rpm:"seamonkey-mail~1.0.9~70.el4.centos", rls:"CentOS4")) != NULL)
  {
    security_message(data:res);
    exit(0);
  }

  if (__pkg_match) exit(99);
  exit(0);
}
