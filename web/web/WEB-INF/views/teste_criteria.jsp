<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<c:forEach items="${listaQuestao}" var="q">
<p>${q.id}</p>
<p>${q.titulo}</p>
<p>${q.texto}</p>
<br><br>
</c:forEach>