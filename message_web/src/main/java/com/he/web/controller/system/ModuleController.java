package com.he.web.controller.system;

import com.he.domain.system.Module;
import com.he.service.system.ModuleService;
import com.he.web.controller.BaseController;
import com.alibaba.dubbo.config.annotation.Reference;
import com.github.pagehelper.PageInfo;
import org.springframework.stereotype.Controller;
import org.springframework.util.StringUtils;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.List;

@Controller
@RequestMapping("/system/module")
public class ModuleController extends BaseController {
    @Reference
    private ModuleService moduleService;

    @RequestMapping("/list")
    public String list(
            @RequestParam(defaultValue = "1") int page,
            @RequestParam(defaultValue = "10") int size,
            @RequestParam(required = false)String findByParam) {
        PageInfo info=moduleService.findAll(page,size,findByParam);
        request.setAttribute("page",info);
        return "system/module/module-list";
    }

    @RequestMapping("/toAdd")
    public String toAdd() {
        List<Module> moduleList= moduleService.findAll();
        request.setAttribute("menus",moduleList);
        return "system/module/module-add";
    }

    @RequestMapping("/edit")
    public String edit(Module module) {
        if (StringUtils.isEmpty(module.getId())) {
            moduleService.save(module);
        } else {
            moduleService.update(module);
        }
        return "redirect:/system/module/list.do";
    }

    @RequestMapping(value = "/toUpdate")
    public String toUpdate(String id) {
        Module module=moduleService.findById(id);
        request.setAttribute("module",module);
        List<Module> moduleList= moduleService.findAll();
        request.setAttribute("menus",moduleList);
        return "system/module/module-update";
    }

    @RequestMapping("/delete")
    public String delete(String id) {
        moduleService.delete(id);
        return "redirect:/system/module/list.do";
    }
}
