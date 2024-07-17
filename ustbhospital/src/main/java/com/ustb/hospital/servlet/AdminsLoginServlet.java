package com.ustb.hospital.servlet;

import com.ustb.hospital.entity.Admins;
import com.ustb.hospital.service.AdminsServiceImpl;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet("/login")
public class AdminsLoginServlet extends HttpServlet{
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        this.doGet(req, resp);
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException{
        String username = req.getParameter("username");
        String password = req.getParameter("password");

        AdminsServiceImpl adminsService =  new AdminsServiceImpl();
        Admins admins = adminsService.queryByUsername(username);
        if(admins == null){
            System.out.println("账号不存在");
            req.getRequestDispatcher("/login.jsp").forward(req,resp);
        }
        else {
            if(!admins.getPassword().equals(password)){
                System.out.println("密码错误");
                req.getRequestDispatcher("/login.jsp").forward(req,resp);
            }else {
                System.out.println("登录成功");
                //转发和重定向区别
                    //转发服务器内部请求，一次请求
                    //重定向由浏览器重新发起一个请求，两次请求
               resp.sendRedirect("index.jsp");
            }
        }
    }
}
