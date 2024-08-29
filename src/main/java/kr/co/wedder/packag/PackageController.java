package kr.co.wedder.packag;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class PackageController {

    @RequestMapping(value="/packageDetail")
    public String packageDetail() {
        return "package/packageDetail";
    }

    @RequestMapping(value="/packageMain")
    public String packageMain() {
        return "package/packageMain";
    }

    @RequestMapping(value="/packageRecommend")
    public String packageRecommend() {
        return "package/packageRecommend";
    }
}
