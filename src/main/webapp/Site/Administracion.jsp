<jsp:include page="header.jsp"/>
    
<%@page import="java.util.List" %>
<%@page import="cl.inacap.Odiseo.DAO.LibroDAO" %> 
<%@page import="cl.inacap.Odiseo.DTO.Libros"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>

<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/jquery-confirm/3.3.2/jquery-confirm.min.css">
<link rel="stylesheet" href="https://cdn.datatables.net/1.10.25/css/jquery.dataTables.min.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/limonte-sweetalert2/11.0.4/sweetalert2.css">





		<br>
		<br>
		<div class="text-center">
        	<a class="btn btn-primary btn-block" href="AgregarLibro.do" style="background-color: black; border: black;">Agregar Libro</a>
        </div>
		<div class="col-md-12"><hr></div>
    
        <div class="container">
        <div class="row">
            <div class="col-12 col-centered text-center">
            	<div class="row">
            			 <h1>Libros</h1>
            		<div class="col-md-12">
                        <table class="table table-dark table-hover" id="tabla-trabajo">
                            <thead>
                                <tr>
                                    <th>Nombre</th>
                                    <th>Autor</th>
                                    <th>N° Paginas</th>
                                    <th>Destacado</th>
                                    <th>Portada</th>
                                    <th>Estrellas</th>
                                    <th>Categoria</th>
                                    <th>Editar</th>
                                    <th>Eliminar</th>
                                </tr>
                            </thead>
                            <tbody>                     
                            	<c:forEach items="${Libros }"  var="l" varStatus="recorrido"> 
                            		<tr>
                            			<td>${l.nombreLibro }</td>
                            			<td>${l.autorLibro }</td>
                            			<td>${l.cantPaginas }</td>
                            			<td>${l.booleanDestacado }</td>
                            			<td><a href="${l.portadaLibro } "><button type="button" class="btn btn-primary">Portada</button></a></td>
                            			<td>${l.estrellas } </td>
                            			<td>${l.categoria } </td>
                            			<td><a href="EditarLibro.do?index=${recorrido.index}" ${recorrido.index }>
                            			<button type="button" class="btn btn-success">Editar</button></a></td>
                                    	<td>
                                    		<button type="button" class="btn btn-danger" onclick="eliminarLibro(${recorrido.index} ,'${l.nombreLibro }')">Eliminar</button>
                                    	</td>
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

<script src="https://cdnjs.cloudflare.com/ajax/libs/limonte-sweetalert2/11.0.4/sweetalert2.all.min.js"></script>
<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/js/bootstrap.min.js" integrity="sha384-+YQ4JLhjyBLPDQt//I+STsc9iw4uQqACwlvpslubQzn4u2UU2UFM80nGisd026JF" crossorigin="anonymous"></script>
<script src="https://cdn.datatables.net/1.10.25/js/jquery.dataTables.min.js"></script>

<script>
    $(document).ready(function (){
        $("#tabla-trabajo").DataTable();
    })
    
    function eliminarLibro(iDLibro,nombreLibro){
    	
    	var jsonSend={
    		'IdLibro':iDLibro,
    		'NombreLibro':nombreLibro
    	}
    	
    	$.ajax({
    		type:"POST",
    		url:"EliminarLibro.do",
    		data:jsonSend,
    		
    		success:function(obj){
    			
    			Swal.fire({
    				  title: 'Listo',
    				  text: obj,
    				  icon: 'success',
    				  confirmButtonColor: '#3085d6',
    				  confirmButtonText: 'Perfecto!'
    				}).then((result) => {
    				  if (result.isConfirmed) {
    					  location.reload();
    				  }
    				})
    			
    		}
    	})
    	
    	
    	
    }


</script>

</html>