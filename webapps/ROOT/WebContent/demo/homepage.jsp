<jsp:include page="index.jsp"/>


<form action="resp.jsp">
 name: <input type="text" name="name"/>
 <br/>
 country: <select name='country'><option>Ireland</option><option>USA</option></select>
 <br/>
 Favourite Language: 
 <input type="radio" name="lang" value="Java">Java
  <input type="radio" name="lang" value="JavaScript"> JavaScript
  <br/>
  other Favourite Languages: 
<input type="checkbox" name="lang2" value="Python"/> Python
<input type="checkbox" name="lang2" value="HTML"/> HTML
<br/>

 <button type='submit'>Submit</button>
 </form>