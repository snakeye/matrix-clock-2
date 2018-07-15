/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

#include "mgos.h"
#include "mgos_http_server.h"

void status_handler(struct mg_connection *c, int ev, void *p, void *user_data) {
    if (ev != MG_EV_HTTP_REQUEST) return;

    LOG(LL_INFO, ("WiFi status requested"));

    mg_send_response_line(c, 200, "Content-Type: application/json\r\n");
    mg_printf(c, "%s\r\n", "{}");
    c->flags |= (MG_F_SEND_AND_CLOSE);
    (void) p;
    (void) user_data;
}

void init_wifi_manager() {
    mgos_register_http_endpoint("/wifi/status", status_handler, NULL);

    mgos_http_server_set_document_root("/");
}