<jsp:include page="header.jsp"/>
    
<%@page import="java.util.List" %>
<%@page import="cl.inacap.Odiseo.DAO.LibroDAO" %> 
<%@page import="cl.inacap.Odiseo.DTO.Libros"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>

<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/jquery-confirm/3.3.2/jquery-confirm.min.css">

    
        <div class="container" style="margin-top: 50px;">
        <div class="row">
            <div class="col-centered text-center">
            	<div class="row">
            		<h1>Libros</h1>
            		<div class="col-md-12">
                        <table class="table table-dark table-hover" id="tabla-trabajo">
                            <thead>
                                <tr>
                                    <th>Nombre</th>
                                    <th>Autor</th>
                                    <th>N° Paginas</th>
                                    <th>Categoria</th>
                                    <th>Estrellas</th>
                                </tr>
                            </thead>
                            <tbody>                     
                            	<c:forEach items="${Libros }"  var="l" varStatus="recorrido"> 
                            		<tr>
                            			<td><a href="DetalleLibro.do?index=${recorrido.index}">${l.nombreLibro }</a></td>
                            			<td>${l.autorLibro }</td>
                            			<td>${l.cantPaginas }</td>
                            			<td>${l.categoria } </td>
                            			<td>${l.estrellas } </td>
                                    </tr>
                            	</c:forEach>
                            </tbody>
                        </table>
            		</div>
            	</div>
            </div>
        </div>
    </div>
    
</body>

<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/js/bootstrap.min.js" integrity="sha384-+YQ4JLhjyBLPDQt//I+STsc9iw4uQqACwlvpslubQzn4u2UU2UFM80nGisd026JF" crossorigin="anonymous"></script>
<script src="https://cdn.datatables.net/1.10.25/js/jquery.dataTables.min.js"></script>

<script>
    $(document).ready(function (){
        $("#tabla-trabajo").DataTable();
    })
</script>

</html>