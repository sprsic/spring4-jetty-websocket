package com.websockets.config;

import org.apache.log4j.Logger;
import org.springframework.web.socket.*;
import org.springframework.web.socket.handler.TextWebSocketHandler;

/**
 * Created by hydra on 28.5.16.
 */
public class MyHandler extends TextWebSocketHandler {

    private static Logger log = Logger.getLogger(MyHandler.class);

    @Override
    public void handleTextMessage(WebSocketSession session, TextMessage message) {

        //print received message
        log.info("Server received: "+ message.getPayload());
    }
}
