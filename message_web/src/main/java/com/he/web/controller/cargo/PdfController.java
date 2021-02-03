package com.he.web.controller.cargo;

import com.he.common.utils.BeanMapUtils;
import com.he.common.utils.DownloadUtil;
import com.he.domain.cargo.Export;
import com.he.domain.cargo.ExportProduct;
import com.he.domain.cargo.ExportProductExample;
import com.he.service.cargo.ExportProductService;
import com.he.service.cargo.ExportService;
import com.he.web.controller.BaseController;
import com.alibaba.dubbo.config.annotation.Reference;
import net.sf.jasperreports.engine.JasperExportManager;
import net.sf.jasperreports.engine.JasperFillManager;
import net.sf.jasperreports.engine.JasperPrint;
import net.sf.jasperreports.engine.data.JRBeanCollectionDataSource;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import java.io.ByteArrayOutputStream;
import java.util.List;
import java.util.Map;

/**
 * 练习jasper生成pdf文件
 */
@Controller
@RequestMapping("/cargo/export")
public class PdfController extends BaseController {

    @Reference
    private ExportService exportService;

    @Reference
    private ExportProductService exportProductService;
    //@RequestMapping("exportPdf")
    //public void exportPdf() throws Exception {
    //    String path=session.getServletContext().getRealPath("/")+ "jasper/export.jasper";
    //    List list=new ArrayList();
    //    for (int i = 0; i < 10; i++) {
    //        User user=new User();
    //        user.setUserName("HL");
    //        user.setEmail("123");
    //        list.add(user);
    //    }
    //    JRDataSource dataSource=new JRBeanCollectionDataSource(list);
    //    JasperPrint jasperPrint = JasperFillManager.fillReport(path, new HashMap<>(), dataSource);
    //    JasperExportManager.exportReportToPdfStream(jasperPrint,response.getOutputStream());
    //}

    @RequestMapping("/exportPdf")
    public void exportPdf(String id) throws Exception {
        //根据id查询报运单对象
        Export export = exportService.findById(id);
        //根据报运单id查询报运单商品
        ExportProductExample example = new ExportProductExample();
        ExportProductExample.Criteria criteria = example.createCriteria();
        criteria.andExportIdEqualTo(id);
        List<ExportProduct> list = exportProductService.findAll(example);

        for (ExportProduct ep: list) {
            System.out.println(ep.getProductNo());
        }
        //将报运单对象转化为map集合
        Map<String, Object> map = BeanMapUtils.beanToMap(export);
        //获取模板路径
        String path = session.getServletContext().getRealPath("/")+"/jasper/export.jasper";
        //加载模板，数据填充
        JasperPrint print = JasperFillManager.fillReport(path, map, new JRBeanCollectionDataSource(list));
        //预览pdf
        //JasperExportManager.exportReportToPdfStream(print,response.getOutputStream());


        byte[] bytes = JasperExportManager.exportReportToPdf(print); //获取到pdf文件的byte数组

        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream(); //创建ByteArrayOutputStream输出流
        //把pdf字节数组写入到缓存流中
        byteArrayOutputStream.write(bytes);

        new DownloadUtil().download(byteArrayOutputStream,response,"报运单.pdf");
    }

}
