package com.google.chap09eljstllecturesource.el.controller;

import com.google.chap09eljstllecturesource.el.model.dto.MemberDTO;
import jakarta.servlet.*;
import jakarta.servlet.annotation.*;
import jakarta.servlet.http.*;

import java.io.IOException;

@WebServlet("/test4")
public class testFourServlet extends HttpServlet {
  @Override
  protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    MemberDTO requestMember
        = new MemberDTO(
            "정병진", 32, "010-5877-4485", "찬낮ㄴ아@ㅇㅇcom");

    MemberDTO sessionMember
        = new MemberDTO(
            "이순순", 23, "010-3392-3312","soonsoon2#@sse.com");

    /* request scope 내장 객체에 속성 추가 */
    request.setAttribute("member", requestMember);

    /* session scope 내장 객체에 속성 추가 */
    HttpSession session = request.getSession();
    session.setAttribute("member", sessionMember);


    RequestDispatcher rd
        = request.getRequestDispatcher("/views/el/testEl4.jsp");
    rd.forward(request,response);

  }

  @Override
  protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

  }
}