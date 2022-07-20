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
            .excel-td{
                font-family: Calibri;
                font-size: 16px;
            }
        </style>
        <table>
            <%
                response.setContentType("application/vnd.ms-excel");
                response.setHeader("Content-Disposition", "inline; filename=ShopReport.xls");
                ArrayList<Seller> list = (ArrayList<Seller>) request.getAttribute("orderList");
                ArrayList<OrderDetail> orderDetails = (ArrayList<OrderDetail>) request.getAttribute("orderDetails");
                if (list != null) {
                    for (Seller s : list) {
                    int quantity = 0;
                    int cost = 0;
            %>
            <tr>
                <td class="excel-td"><%=s.getCustomerName()%></td>
                <td class="excel-td">'<%=s.getPhone()%></td>
                <td class="excel-td"><%=s.getAddress()%></td>
                <td class="excel-td"><%=s.getOrderTime()%></td>
                <td class="excel-td"><%=s.getOrderDate()%></td>
            </tr>
            <%
                        for(OrderDetail od : orderDetails){
                            if(s.getOrderId() == od.getOrderId()){
                            quantity += od.getQuantity();
                            cost += od.getQuantity() * od.getPrice();
            %>
            <tr>
                <td></td>
                <td class="excel-td"><%=od.getName()%></td>
                <td class="excel-td"><%=od.getQuantity()%></td>
                <td class="excel-td"><%=od.getPrice()%></td>
                <td class="excel-td"><%=od.getQuantity() * od.getPrice()%></td>
            </tr>
            <%
                            }
                        }
            %>
            <tr>
                <td class="excel-td">Tổng</td>
                <td class="excel-td"></td>
                <td class="excel-td"><%=quantity%></td>
                <td class="excel-td"></td>
                <td class="excel-td"><%=cost%></td>
            </tr>
            <%
                    }
                }%>
        </table>    
    </body>
</html>
