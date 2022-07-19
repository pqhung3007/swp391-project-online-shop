<%-- 
    Document   : ExportExcel
    Created on : Jul 19, 2022, 9:51:23 PM
    Author     : Admin
--%>
<%@page import="java.util.ArrayList"%>
<%@page import="model.Seller"%>
<%@page import="model.OrderDetail"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <!--style bảng như nào là file excel xuất ra bảng như thế-->
        <style>
/*            td{
                font-family: Arial;
            }*/
        </style>
        <table>
            <%
                response.setContentType("application/vnd.ms-excel");
                response.setHeader("Content-Disposition", "inline; filename=ShopReport.xls");
                ArrayList<Seller> list = (ArrayList<Seller>) request.getAttribute("orderList");
                ArrayList<OrderDetail> orderDetails = (ArrayList<OrderDetail>) request.getAttribute("orderDetails");
                if (list != null) {
                    for (Seller s : list) {
            %>
            <tr>
                <td><%=s.getCustomerName()%></td>
                <td><%=s.getPhone()%></td>
                <td><%=s.getAddress()%></td>
                <td><%=s.getOrderTime()%></td>
                <td><%=s.getOrderDate()%></td>
            </tr>
            <%
                for(OrderDetail od : orderDetails){
                    if(s.getOrderId() == od.getOrderId()){
            %>
            <tr>
                <td></td>
                <td><%=od.getName()%></td>
                <td><%=od.getQuantity()%></td>
                <td><%=od.getPrice()%></td>
                <td><%=od.getQuantity() * od.getPrice()%></td>
            </tr>
            <%
                    }
                }
            %>
            <% }
                }%>
        </table>    
    </body>
</html>
