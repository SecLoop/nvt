###############################################################################
# OpenVAS Vulnerability Test
# $Id: gb_pelco_videoxpert_detect.nasl 6661 2017-07-11 03:32:46Z ckuersteiner $
#
# Pelco VideoXpert Detection
#
# Authors:
# Christian Kuersteiner <christian.kuersteiner@greenbone.net>
#
# Copyright:
# Copyright (c) 2017 Greenbone Networks GmbH
#
# This program is free software; you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation; either version 2 of the License, or
# (at your option) any later version.
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
  script_oid("1.3.6.1.4.1.25623.1.0.106935");
  script_version("$Revision: 6661 $");
  script_tag(name: "last_modification", value: "$Date: 2017-07-11 05:32:46 +0200 (Tue, 11 Jul 2017) $");
  script_tag(name: "creation_date", value: "2017-07-11 08:49:25 +0700 (Tue, 11 Jul 2017)");
  script_tag(name: "cvss_base", value: "0.0");
  script_tag(name: "cvss_base_vector", value: "AV:N/AC:L/Au:N/C:N/I:N/A:N");

  script_tag(name:"qod_type", value:"remote_banner");

  script_name("Pelco VideoXpert Detection");

  script_tag(name: "summary" , value: "Detection of Pelco VideoXpert.

The script sends a connection request to the server and attempts to detect Pelco VideoXpert.");
  
  script_category(ACT_GATHER_INFO);

  script_copyright("Copyright (C) 2017 Greenbone Networks GmbH");
  script_family("Product detection");
  script_dependencies("find_service.nasl");
  script_require_ports("Services/www", 443);
  script_exclude_keys("Settings/disable_cgi_scanning");

  script_xref(name: "URL", value: "https://www.pelco.com/video-management-system/videoxpert");

  exit(0);
}

include("host_details.inc");
include("http_func.inc");
include("http_keepalive.inc");

port = get_http_port(default: 443);

res = http_get_cache(port: port, item: "/portal/");

if ("<title>VideoXpert Admin Portal</title>" >< res && "lilac/lilac.nocache.js" >< res) {
  version = "unknown";
  install = "/portal";

  set_kb_item(name: "pelco_videoxpert/installed", value: TRUE);

  cpe = 'cpe:/a:pelco:videoxpert';

  register_product(cpe: cpe, location: install, port: port);

  log_message(data: build_detection_report(app: "Pelco VideoXpert", version: version, install: install,
                                           cpe: cpe),
              port: port);
  exit(0);
}

exit(0);