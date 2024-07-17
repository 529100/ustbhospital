package com.ustb.hospital.servlet;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.github.pagehelper.PageInfo;
import com.ustb.hospital.entity.Departments;
import com.ustb.hospital.entity.ProfessionalTitles;
import com.ustb.hospital.service.DepartmentsServiceImpl;
import com.ustb.hospital.service.PatientsServiceImpl;
import com.ustb.hospital.service.ProfessionalTitlesServiceImpl;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet("/pft/list")
public class ProfessionalTitlesSelectAll extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        this.doPost(req, resp);
    }
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("utf-8");
        resp.setContentType("text/html;charset=utf-8");


        ProfessionalTitlesServiceImpl as = new ProfessionalTitlesServiceImpl();
        List<ProfessionalTitles> pftlist = as.queryAll();
        //System.out.println(list);
//        ObjectMapper objectMapper1 = new ObjectMapper();
//        String jsonStr1 = objectMapper1.writeValueAsString(list);
//        resp.getWriter().write(jsonStr1);
        req.setAttribute("pftlist",pftlist);
        req.getRequestDispatcher("/dept/doct/doctadd.jsp").forward(req,resp);
    }
}
