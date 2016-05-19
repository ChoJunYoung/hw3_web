package kr.ac.cnu.web;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * Created by junyoung on 2016. 5. 19..
 */

@Controller
@RequestMapping("/main")

public class MainController {
    @RequestMapping("/index")
    public String indexControl() {
        return "/index";
    }
}
