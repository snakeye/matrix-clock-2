/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

#include "mgos.h"
#include "mgos_http_server.h"
#include "mgos_wifi.h"

void _wifi_response(struct mg_connection *c, int status, char* body) {
    mg_send_response_line(c, status, "Content-Type: application/json");
    mg_send(c, "\r\n", 2);
     
    mg_send(c, body, strlen(body));
    
    c->flags |= (MG_F_SEND_AND_CLOSE);
}

void wifi_http_handler_status(struct mg_connection *c, int ev, void *p, void *user_data) {
    if (ev != MG_EV_HTTP_REQUEST) return;

    LOG(LL_INFO, ("WiFi status requested"));

    char *connection_status = mgos_wifi_get_status_str();
    
    char buf[1024] = {0};
    struct json_out out = JSON_OUT_BUF(buf, 1024);

    json_printf(&out, "{status: %Q}", connection_status);
    
    free(connection_status);
    
    LOG(LL_INFO, (buf));
    
    _wifi_response(c, 200, buf);

    (void) p;
    (void) user_data;
}

void wifi_http_handler_scan(struct mg_connection *c, int ev, void *p, void *user_data) {
    if (ev != MG_EV_HTTP_REQUEST) return;

    LOG(LL_INFO, ("WiFi scan requested"));

    _wifi_response(c, 200, "{}");

    (void) p;
    (void) user_data;
}

void wifi_http_handler_connect(struct mg_connection *c, int ev, void *p, void *user_data) {
    if (ev != MG_EV_HTTP_REQUEST) return;

    LOG(LL_INFO, ("WiFi connect requested"));

    _wifi_response(c, 200, "{}");

    (void) p;
    (void) user_data;
}

void wifi_http_handler_disconnect(struct mg_connection *c, int ev, void *p, void *user_data) {
    if (ev != MG_EV_HTTP_REQUEST) return;

    LOG(LL_INFO, ("WiFi disconnect requested"));

    _wifi_response(c, 200, "{}");

    (void) p;
    (void) user_data;
}

void wifi_manager_init() {
    mgos_register_http_endpoint("/wifi/status", wifi_http_handler_status, NULL);
    mgos_register_http_endpoint("/wifi/scan", wifi_http_handler_scan, NULL);
    mgos_register_http_endpoint("/wifi/connect", wifi_http_handler_connect, NULL);
    mgos_register_http_endpoint("/wifi/disconnect", wifi_http_handler_disconnect, NULL);

    mgos_http_server_set_document_root("/");
}