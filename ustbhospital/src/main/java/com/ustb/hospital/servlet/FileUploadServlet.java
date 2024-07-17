package com.ustb.hospital.servlet;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;
import javax.xml.ws.WebFault;
import java.io.File;
import java.io.IOException;
import java.util.UUID;

@MultipartConfig
@WebServlet("/doc/add")
public class FileUploadServlet extends HttpServlet {
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        this.doGet(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("utf-8");
        String docname = req.getParameter("docname");

        Part part = req.getPart("docavatar");
        String sfn = part.getSubmittedFileName();
        String name = part.getName();

        System.out.println("docname:"+docname);
        System.out.println("文件名:"+sfn);

        String houzhui = sfn.substring(sfn.lastIndexOf("."));
        UUID uuid = UUID.randomUUID();
        String newname = UUID.randomUUID().toString().replaceAll("-", "");
        sfn = newname + houzhui;
        //1.将图片保存到数据库
        //2.将图片保存到服务器上(静态资源服务器
        //3."/"当前项目在tomcat 服务器下根路径
        String uploadImgPath = getServletContext().getRealPath("/images/docavatar/");
        /*File file = new File(uploadImgPath);
        if(!file.exists()){
            file.createNewFile();
        }*/
        part.write("E:/java examples/img/"+sfn);
        //part.write(uploadImgPath+sfn);


    }
}
