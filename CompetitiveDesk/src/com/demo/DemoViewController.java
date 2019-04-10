package com.demo;

import javax.servlet.http.HttpServletRequest;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.competitivedesk.Utility.Serializer.JsonObjectPool;
import com.competitivedesk.common.util.Constant;

@Controller
@RequestMapping(value = "demo")
public class DemoViewController {
    private final static org.apache.log4j.Logger logger = Logger.getLogger(DemoViewController.class);

    @Autowired
    private JsonObjectPool jsonObjectPool;

    @RequestMapping(value = "online-test/index")
    public String getIndex() {
        return "index";
    }

   
    @RequestMapping(value = "testPg")
    public String getTestPg() {
        return "TestPg";
    }

    @RequestMapping(value = "online-test/livetestview")
    public String getLivetestview() {
        return "onlinetest/livetestview";
    }

    @RequestMapping(value = "online-test/test-cart")
    public String getTestCart() {
        return "onlinetest/testcart";
    }

    @RequestMapping(value = "online-test/addquestion")
    public String getAddQuestion() {
        return "addQuestion";
    }

    @RequestMapping(value = "online-test/addhindiquestion")
    public String getAddHindiQuestion() {
        return "addHindiQuestion";
    }

    @RequestMapping(value = "online-test/addsampletest")
    public String addSampleTest() {
        return "addSampleTest";
    }
    
    @RequestMapping(value = "online-test/addtestpackage")
    public String addTestPackage() {
        return "addTestPackage";
    }
    

    @RequestMapping(value = "online-test/testDataget")
    public String getusertest1(HttpServletRequest request) {

        return "listQuestionInputdata";
    }

   

    @RequestMapping(value = "/auth/signin")
    public String getlogin(HttpServletRequest request) {
        request.setAttribute("pageId", Constant.PAGE_LOGIN);
        /*return "onlinetest/login";*/
        return "login";
    }

    @RequestMapping(value = "/test/{testName}")
    public String getTestPage() {
        return "usertest";
    }

    @RequestMapping(value = "/online-test/testresult")
    public String getTestResultPage() {
        return "testresult";
    }

   
}
