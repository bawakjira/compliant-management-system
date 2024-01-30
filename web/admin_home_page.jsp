
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="model_class.DBconnecton"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <title> Admin Home Page </title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="css/bootstrap.min.css">
  </head>
  
<body>

   <% response.setHeader("pragma", "no-cache");
        response.setHeader("cache-controll", "no-cache,no-store,must-revalidate");
        response.setDateHeader("Expires",-1);
        %>
    <%
    if((session.getAttribute("name") == null)||(session.getAttribute("name")==""))
    {
  %>   
    you are not logged in <br>
    <a href="Admin_Login_Form.jsp"> please login </a>>   
    <% }
else {
%>

    <% Connection con=null;
       Statement st=null;
        ResultSet rs=null;
        int i=0;
        String sql = "select count(*) from student_complaints " ;
        con=DBconnecton.creatConnection();
        st=con.createStatement();
        rs =st.executeQuery (sql);
        if (rs.next ()){
         i=rs.getInt(1);
        }
        st.close();
        rs.close();
        con.close();
    %> 
    
    <%  Connection con1=null;
        Statement st1=null;
        ResultSet rs1=null;
        int i1=0;
        String sql1 = "select count(*) from student_complaints where complaintsType='exam ' " ;
        con1=DBconnecton.creatConnection();
        st1=con1.createStatement();
        rs1 =st1.executeQuery (sql1);
        if (rs1.next ()){
         i1=rs1.getInt(1);
        }
        float p1=(float)((i1*100)/i);
        st1.close();
        rs1.close();
        con1.close();
        %> 
        
        <%  Connection con2=null;
        Statement st2=null;
        ResultSet rs2=null;
        int i2=0;
        String sql2 = "select count(*) from student_complaints where complaintsType='campus' " ;
        con2=DBconnecton.creatConnection();
        st2=con2.createStatement();
        rs2 =st2.executeQuery (sql2);
        if (rs2.next ()){
         i2=rs2.getInt(1);
        }
         float p2=(float)((i2*100)/i);
        st2.close();
        rs2.close();
        con2.close();
        %> 
        
        <%  Connection con3=null;
        Statement st3=null;
        ResultSet rs3=null;
        int i3=0;
        String sql3 = "select count(*) from student_complaints where complaintsType='hostel' " ;
        con3=DBconnecton.creatConnection();
        st3=con3.createStatement();
        rs3 =st3.executeQuery (sql3);
        if (rs3.next ()){
         i3=rs3.getInt(1);
        }
         float p3=(float)((i3*100)/i);
        st3.close();
        rs3.close();
        con3.close();
        %>
        
        <%  Connection con4=null;
        Statement st4=null;
        ResultSet rs4=null;
        int i4=0;
        String sql4 = "select count(*) from student_complaints where complaintsType='accounts' " ;
        con4=DBconnecton.creatConnection();
        st4=con4.createStatement();
        rs4 =st4.executeQuery (sql4);
        if (rs4.next ()){
         i4=rs4.getInt(1);
        }
         float p4=(float)((i4*100)/i);
        st4.close();
        rs4.close();
        con4.close();
        %> 
        
        <%  Connection con5=null;
        Statement st5=null;
        ResultSet rs5=null;
        int i5=0;
        String sql5 = "select count(*) from student_complaints where complaintsType='library' " ;
        con5=DBconnecton.creatConnection();
        st5=con5.createStatement();
        rs5 =st5.executeQuery (sql5);
        if (rs5.next ()){
         i5=rs5.getInt(1);
        }
         float p5=(float)((i5*100)/i);
        st5.close();
        rs5.close();
        con5.close();
        %> 
        
        <%  Connection con6=null;
        Statement st6=null;
        ResultSet rs6=null;
        int i6=0;
        String sql6= "select count(*) from student_complaints where complaintsType='canteen' " ;
        con6=DBconnecton.creatConnection();
        st6=con6.createStatement();
        rs6 =st6.executeQuery (sql6);
        if (rs6.next ()){
         i6=rs6.getInt(1);
        }
         float p6=(float)((i6*100)/i);
        st6.close();
        rs6.close();
        con6.close();
        %> 
        
        <%  Connection con7=null;
        Statement st7=null;
        ResultSet rs7=null;
        int i7=0;
        String sql7= "select count(*) from student_complaints where complaintsType='vehicles' " ;
        con7=DBconnecton.creatConnection();
        st7=con7.createStatement();
        rs7=st7.executeQuery (sql7);
        if (rs7.next ()){
         i7=rs7.getInt(1);
        }
         float p7=(float)((i7*100)/i);
        st7.close();
        rs7.close();
        con7.close();
        %> 
        
        <%  Connection con8=null;
        Statement st8=null;
        ResultSet rs8=null;
        int i8=0;
        String sql8= "select count(*) from student_complaints where complaintsType='teachers' " ;
        con8=DBconnecton.creatConnection();
        st8=con8.createStatement();
        rs8=st8.executeQuery (sql8);
        if (rs8.next ()){
         i8=rs8.getInt(1);
        }
         float p8=(float)((i8*100)/i);
        st8.close();
        rs8.close();
        con8.close();
        %> 
        
        <%  Connection con9=null;
        Statement st9=null;
        ResultSet rs9=null;
        int i9=0;
        String sql9= "select count(*) from student_complaints where complaintsType='administrative' " ;
        con9=DBconnecton.creatConnection();
        st9=con9.createStatement();
        rs9=st9.executeQuery (sql9);
        if (rs9.next ()){
         i9=rs9.getInt(1);
        }
         float p9=(float)((i9*100)/i);
        st9.close();
        rs9.close();
        con9.close();
        %> 
        
        <%  Connection con10=null;
        Statement st10=null;
        ResultSet rs10=null;
        int i10=0;
        String sql10= "select count(*) from student_complaints where complaintsType='other' " ;
        con10=DBconnecton.creatConnection();
        st10=con10.createStatement();
        rs10=st10.executeQuery (sql10);
        if (rs10.next ()){
         i10=rs10.getInt(1);
        }
         float p10=(float)((i10*100)/i);
        st10.close();
        rs10.close();
        con10.close();
        %> 
        
    <%@include file="myHTML/adminHomePage.html" %>
    <div class="container-fluid text-center">    
        <div class="row content ">
                 <%@include file="myHTML/list_of_complaints_category.html" %>
          <div class="col-lg-8 col-lg-offset-1">   
              <div class="col-lg-offset-1 text-left text-info"> <h3> <b>Complaints Statistics ( Category wise )<b></b></h3></div>
             <div class="col-lg-10 text-left well-lg"> 
                 
                   <div>Exam Complaints </div>
                  <div class="progress">
                  <div class="progress-bar progress-bar-info" role="progressbar" aria-valuenow="<%=p1 %>" aria-valuemin="0" aria-valuemax="100" style="width:<%=p1 %>%">
                   <%=p1 %>% Complaints (Exam)
                  </div>
                </div>
                  <div>Campus Complaints </div>
                <div class="progress">
                  <div class="progress-bar progress-bar-info" role="progressbar" aria-valuenow="<%=p2 %>" aria-valuemin="0" aria-valuemax="100" style="width:<%=p2 %>%">
                    <%=p2 %>%Complaints (Campus)
                  </div>
                </div>
                  <div>Hostel Complaints </div>
                <div class="progress">
                  <div class="progress-bar progress-bar-info" role="progressbar" aria-valuenow="<%=p3 %>" aria-valuemin="0" aria-valuemax="100" style="width:<%=p3 %>%">
                   <%=p3 %>% Complaints (Hostel)
                  </div>
                </div>
                   <div>Accounts Complaints </div>
                <div class="progress">
                  <div class="progress-bar progress-bar-info" role="progressbar" aria-valuenow="<%=p4 %>" aria-valuemin="0" aria-valuemax="100" style="width:<%=p4 %>%">
                   <%=p4 %>% Complaints (Accounts)  
                  </div>
                </div>
                  <div>Library Complaints </div>
                <div class="progress">
                  <div class="progress-bar progress-bar-info" role="progressbar" aria-valuenow="<%=p5 %>" aria-valuemin="0" aria-valuemax="100" style="width:<%=p5 %>%">
                    <%=p5 %>% Complaints (Library)
                  </div>
                </div>
                  <div>Canteen Complaints </div>
                <div class="progress">
                  <div class="progress-bar progress-bar-info" role="progressbar" aria-valuenow="<%=p6 %>" aria-valuemin="0" aria-valuemax="100" style="width:<%=p6 %>%">
                   <%=p6 %>% Complaints (Canteen)
                  </div>
                </div>
                  <div>Vehicle Complaints </div>
                <div class="progress">
                  <div class="progress-bar progress-bar-info" role="progressbar" aria-valuenow="<%=p7 %>" aria-valuemin="0" aria-valuemax="100" style="width:<%=p7 %>%">
                 <%=p7 %>% Complaints (Vehicles)
                  </div>
                </div>
                  <div>Teacher Complaints </div>
                <div class="progress">
                  <div class="progress-bar progress-bar-info" role="progressbar" aria-valuenow="<%=p8 %>" aria-valuemin="0" aria-valuemax="100" style="width:<%=p8 %>%">
                    <%=p8 %>% Complaints (Teachers)
                  </div>
                </div>
                  <div>Administrative Complaints </div>
                <div class="progress">
                  <div class="progress-bar progress-bar-info" role="progressbar" aria-valuenow="<%=p9 %>" aria-valuemin="0" aria-valuemax="100" style="width:<%=p9 %>%">
                    <%=p9 %>% Complaints (Administrative)
                  </div>
                </div>
                  <div>Other Complaints </div>
                <div class="progress">
                  <div class="progress-bar progress-bar-info" role="progressbar" aria-valuenow="<%=p10 %>" aria-valuemin="0" aria-valuemax="100" style="width:<%=p10 %>%">
                    <%=p10 %>% Complaints (Other)
                  </div>
                </div>
       </div>

           </div>   
        </div>   
       </div>
 
<%}%>
</body>
</html>
