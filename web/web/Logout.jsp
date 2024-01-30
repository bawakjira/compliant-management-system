
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    
   session = request.getSession(false);
if(session != null) {
  session.invalidate();
}

Cookie killMyCookie = new Cookie("mycookie", null);
     killMyCookie.setMaxAge(0);
     killMyCookie.setPath("/");
     response.addCookie(killMyCookie);
        
  response.sendRedirect("index.jsp");
  
%>
