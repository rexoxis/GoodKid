package lsh.goodkid.mvc.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class IndexController {

    @RequestMapping(value = "/")
    public String index() {
        return "index.tiles";
    }

    @RequestMapping(value = "/info")
    public String info() {
        return "info.tiles";
    }



}
