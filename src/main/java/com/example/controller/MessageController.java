package com.example.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import com.example.model.Message;
import com.example.service.MessageService;

import java.text.SimpleDateFormat;
import java.util.Date;

@Controller
@RequestMapping("message")
public class MessageController extends BaseController {

    private final MessageService messageService;

    @Autowired
    public MessageController(MessageService messageService) {
        this.messageService = messageService;
    }

    @RequestMapping("add")
    private String add(Message message) {
        Date date = new Date();
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        message.setTime(simpleDateFormat.format(date));
        messageService.add(message);
        return "redirect:/message/add.jsp";
    }

    @RequestMapping("remove/{id}")
    private String remove(@PathVariable("id") Integer id) {
        messageService.remove(id);
        return "redirect:/message/list";
    }

    @RequestMapping("modify")
    private String modify(Message message) {
        messageService.modify(message);
        return "redirect:/message/list";
    }

    @RequestMapping("list/{page}")
    private String list(@PathVariable int page) {
        getSession().setAttribute("pagination", messageService.list(page));
        return "redirect:/message/list.jsp";
    }

    @RequestMapping("list")
    private String list() {
        return list(1);
    }

    @RequestMapping("search/{id}")
    private String search(@PathVariable("id") Integer id) {
        getSession().setAttribute("message", messageService.search(id));
        return "redirect:/message/edit.jsp";
    }
}