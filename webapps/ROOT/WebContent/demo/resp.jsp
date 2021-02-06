Form Data: 
<p>${param.name}</p>
<p> ${param.country}</p>
<p> ${param.lang}</p>
<% 
session.setAttribute("test", "abc");
out.println(session.isNew()); %>

<ul>
<% String[] langs = request.getParameterValues("lang2");

if (langs != null) {
for (String lang: langs) {
    out.println("<li>" + lang + "</li>");
} } %>
</ul>
