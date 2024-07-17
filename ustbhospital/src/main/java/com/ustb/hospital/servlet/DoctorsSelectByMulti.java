package com.ustb.hospital.servlet;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.github.pagehelper.PageInfo;
import com.ustb.hospital.entity.Departments;
import com.ustb.hospital.entity.Doctors;
import com.ustb.hospital.service.DepartmentsServiceImpl;
import com.ustb.hospital.service.DoctorsServiceImpl;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet("/Doct/list")
public class DoctorsSelectByMulti extends HttpServlet {
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        this.doPost(req, resp);
    }
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("utf-8");
        resp.setContentType("text/html;charset=utf-8");

        String pageNum = req.getParameter("pageNum");
        String pageSize = req.getParameter("pageSize");
        String jobNumber = req.getParameter("jobNumber");
        String doctName = req.getParameter("name");
        String deptId = req.getParameter("deptId");
//        int i1;
//        if(deptId != null||!"".equals(deptId)){
//            i1 = Integer.parseInt(deptId);
//        }
        int i;
        if(pageNum != null && !pageNum.isEmpty()) {
            //类型转换
            i = Integer.parseInt(pageNum);
        }
        else{
            i = 1;
        }

        DoctorsServiceImpl service = new DoctorsServiceImpl();

        PageInfo<Doctors> pageInfo = service.queryByMulti(i,5,jobNumber,doctName, Integer.parseInt(deptId));
        ObjectMapper objectMapper = new ObjectMapper();
        String jsonStr = objectMapper.writeValueAsString(pageInfo);
        resp.getWriter().write(jsonStr);
        //req.getRequestDispatcher("dept/doct/doctlist.jsp").forward(req, resp);
//        req.setAttribute("pageInfo", pageInfo);
//        req.getRequestDispatcher("dept/Doct/doctlist.jsp").forward(req, resp);
    }
}