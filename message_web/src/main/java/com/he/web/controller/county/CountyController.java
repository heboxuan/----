package com.he.web.controller.county;

import com.alibaba.dubbo.config.annotation.Reference;
import com.github.pagehelper.PageInfo;
import com.he.domain.county.FrontCity;
import com.he.service.county.CountyService;
import com.he.web.controller.BaseController;
import org.springframework.stereotype.Controller;
import org.springframework.util.StringUtils;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

/**
 * 北京各区管理
 * @Author: heboxuan
 * @Date: Created in 10:28 2021/3/21
 */
@Controller
@RequestMapping("/county")
public class CountyController extends BaseController {

    @Reference
    private CountyService countyService;


    @RequestMapping("/list")
    public String findAll(@RequestParam(defaultValue = "1") int page,
                          @RequestParam(defaultValue = "5") int size,
                          @RequestParam(required = false)String findByParam) {
        PageInfo info=countyService.findAll(page,size,findByParam);
        request.setAttribute("page",info);
        return "county/county-list";
    }

    @RequestMapping("/toAdd")
    public String toAdd() {
        return "county/county-add";
    }

    @RequestMapping("/edit")
    public String edit(FrontCity frontCity) {
        if (StringUtils.isEmpty(frontCity.getId())) {
            countyService.save(frontCity);
        }else {
            countyService.update(frontCity);
        }
        return "redirect:/county/list.do";
    }

    @RequestMapping("/toUpdate")
    public String toUpdate(Long id) {
        FrontCity frontCity = countyService.findById(id);
        request.setAttribute("frontCity",frontCity);
        return "county/county-update";
    }

    @RequestMapping("/delete")
    public String delete(Long id) {
        countyService.delete(id);
        return "redirect:/county/list.do";
    }

}
