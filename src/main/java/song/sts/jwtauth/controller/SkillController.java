package song.sts.jwtauth.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import song.sts.jwtauth.model.testModel;

@Controller
@RequestMapping("/skill")
public class SkillController {
    @GetMapping("csharp")
    public String csharp(Model model) {
        testModel testModel1 = testModel.builder().title("Title1").content("Content1").writeDate("WriteData1").build();
        testModel testModel2 = testModel.builder().title("Title2").content("Content2").writeDate("WriteData2").build();
        testModel testModel3 = testModel.builder().title("Title3").content("Content3").writeDate("WriteData3").build();
        testModel testModel4 = testModel.builder().title("Title4").content("Content4").writeDate("WriteData4").build();

        List<testModel> list = new ArrayList<testModel>();
        list.add(testModel1);
        list.add(testModel2);
        list.add(testModel3);
        list.add(testModel4);

        model.addAttribute("items", list);
        return "skill/csharp";
    }

    @GetMapping("add")
    public String skillAdd() {
        return "skill/addTemplate";
    }
}
