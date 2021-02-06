<html>
<jsp:include page="../index.html"/>

<body>

<%     Cookie[] cookies = request.getCookies(); 
if (cookies != null) {
    for (Cookie cook: cookies){
        if ("myApp.test".equals(cook.getName())){
            String t = cook.getValue();
            out.println(t);
            break;}}}
            %>
</body>
</html>
