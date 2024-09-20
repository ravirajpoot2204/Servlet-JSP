<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page 1</title>
    </head>
    <body style="background: #e2e2e2;">

        <h1 style="background : blue; color : white;">First JSP Page</h1>
        <%! int a = 50;
            int b = 60;

            String name = "ravi";

            public int sum(int x, int y) {

                return x + y;
            }

            public String reverse(String x) {
                int i, j = x.length() - 1;
                StringBuffer sb = new StringBuffer(name);
                return sb.reverse().toString();

            }
        %> 
        <%
            out.println(a);
            out.println("<br>");
            out.println(b + "<br>");
            out.println(sum(a, b) + "<br>");
            out.println(name + "<br>");
            out.println(reverse(name));


        %>
        <h1 style ="color:blue;">Sum Is : <%= sum(a, b)%></h1>
        <h1>Reverse Is : <%= reverse(name)%></h1>
    </body>
</html>
