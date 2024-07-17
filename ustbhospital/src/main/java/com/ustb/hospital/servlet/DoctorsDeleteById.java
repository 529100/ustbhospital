package com.ustb.hospital.servlet;

import com.github.pagehelper.PageInfo;

import com.ustb.hospital.service.DoctorsServiceImpl;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/Doct/delete")
public class DoctorsDeleteById extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        this.doGet(req, resp);
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String doctorId = req.getParameter("doctorId");
        System.out.println(doctorId);
        DoctorsServiceImpl as = new DoctorsServiceImpl();
        as.delectDoctor(Integer.parseInt(doctorId));
        req.getRequestDispatcher("doct/doctlist.jsp").forward(req, resp);
    }
}
