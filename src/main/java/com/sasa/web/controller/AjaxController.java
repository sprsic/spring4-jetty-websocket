package com.sasa.web.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.messaging.handler.annotation.MessageMapping;
import org.springframework.messaging.simp.SimpMessagingTemplate;
import org.springframework.stereotype.Controller;

@Controller
public class AjaxController {

	private final SimpMessagingTemplate messagingTemplate;

	@Autowired
	public AjaxController(SimpMessagingTemplate messagingTemplate) {
		this.messagingTemplate = messagingTemplate;
	}

	@MessageMapping("/app/data")
	public void handleData(String message) {
		sendNotification(message);
	}

	public void sendNotification(String message) {

		this.messagingTemplate.convertAndSend("/topic/data", message);
	}

}
