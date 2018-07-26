<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
            <option value="default" selected disabled>Selecione sua cidade</option>
        <c:forEach items="${cidades}" var="cid">
            <option value="${cid.id}">${cid.nome}</option>
        </c:forEach>

