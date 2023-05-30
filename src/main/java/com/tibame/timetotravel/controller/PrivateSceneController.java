package com.tibame.timetotravel.controller;


import com.tibame.timetotravel.entity.PrivateScene;
import com.tibame.timetotravel.service.PrivateSceneService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/privateSceneController")
public class PrivateSceneController {

    @Autowired
    @Qualifier("privateSceneService")
    private PrivateSceneService privateSceneService;

    @PostMapping("/privateScene")
    public String insert(@RequestBody PrivateScene privateScene){
        privateSceneService.insert(privateScene);
        return "新增成功!";
    }
}