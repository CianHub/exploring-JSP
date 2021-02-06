
<%@ page import="java.util.*" %>

<html>
<jsp:include page="../index.html"/>

<body>
<form action="todo.jsp">
 Add new Item: <input type="text" name="item"/>

 <button type='submit'>Submit</button>
 </form>


 <br/>
 Item added: <%= request.getParameter("item") %>

 <% List<String> items = (List<String>) session.getAttribute("items");

    if (items == null){
        items = new ArrayList<String>();
        session.setAttribute("items", items );
    }

    String item = request.getParameter("item");

    boolean isItemNotEmpty = item != null && item.trim().length() > 0;
    boolean isItemNotDuplicate = item != null && !items.contains(item.trim());

    if (isItemNotEmpty && isItemNotDuplicate){
        items.add(item);
    }
    
    %>
    <hr/>
    <strong>Items:</strong>

    <ol>
    <%
     for (String itemToShow: items){
        out.println("<li>" + itemToShow + "</li>");

    } %></ol>

    <%


            Cookie cookie = new Cookie("myApp.test", "bc");

            cookie.setMaxAge(60*60*24*365);
            response.addCookie(cookie);

    

    
    
 %>
 <a href="cook.jsp">Go</a>
 </body>
</html>