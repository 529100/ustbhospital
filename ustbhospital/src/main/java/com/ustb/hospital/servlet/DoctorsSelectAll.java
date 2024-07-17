package com.ustb.hospital.servlet;

import com.github.pagehelper.PageInfo;
import com.ustb.hospital.service.DoctorsServiceImpl;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/list1")
public class DoctorsSelectAll extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        //获取请求参数 --String
        String pageNum = req.getParameter("pageNum");
        String pageSize = req.getParameter("pageSize");
        int i;
        if(pageNum != null && !pageNum.isEmpty()) {
            //类型转换
            i = Integer.parseInt(pageNum);
        }
        else{
            i = 1;
        }
        //int j = Integer.parseInt(pageSize);
        DoctorsServiceImpl as = new DoctorsServiceImpl();
        PageInfo pageInfo = as.queryAll(i,5);
        req.setAttribute("pageInfo", pageInfo);
        req.getRequestDispatcher("dept/list1.jsp").forward(req, resp);
    }
}
