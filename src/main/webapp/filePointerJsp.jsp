<%@ page import="java.util.Date" %>
<%@ page import="task3.Methods" %>

<!ECOTYPE html>
<html>
    <head>
        <title>FilePointer.jsp</title>
    </head>

    <body>
        <p> * Date: <%= new Date().toString() %>;</p>
        <p> * Path: <%= request.getParameter("path") %>; </p>

        <div>
            <%
                String[] strs = Methods.getFilePoints0(request.getParameter("path"));

                for (String str : strs) {
                    out.println(str);
                }
            %>
        </div>

    </body>
</html>