package com.ustb.hospital.servlet;

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

@WebServlet("/doct/DeptId")
public class DoctorsSelectByDeptId extends HttpServlet {
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        this.doGet(req, resp);
    }
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        DepartmentsServiceImpl as = new DepartmentsServiceImpl();
        List<Departments> list = as.queryFirstdept(1);
        System.out.println(list);
        req.setAttribute("list", list);
        req.getRequestDispatcher("dept/doctadd.jsp").forward(req, resp);

        /*
        String department_name = req.getParameter("department_name");
        String department_description = req.getParameter("department_description");
        System.out.println(department_name);
        System.out.println(department_description);
        if(department_name != null && !department_name.isEmpty() &&
                department_description != null && !department_description.isEmpty()){
            System.out.println("添加成功");
            resp.sendRedirect("/list.jsp");
            as.addNewDept(department_name,department_description);
            System.out.println(list);

        }
        else{
            System.out.println("添加失败");
        }
        */
    }
}