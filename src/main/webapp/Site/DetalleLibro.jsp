<jsp:include page="header.jsp"/>

<%@page import="java.util.List" %>
<%@page import="cl.inacap.Odiseo.DAO.LibroDAO" %> 
<%@page import="cl.inacap.Odiseo.DTO.Libros"%>

    <section class="container">
		<br>
		<br>
		
        <div class="row">
            <div class="col-2 text-center">
                <img class="img-thumbnail" src="${selectLibro.portadaLibro }" alt="">
                <div class="info">
                    	<p class="info2">Páginas: <br>${selectLibro.cantPaginas }</p>
                    	<p class="info2">Puntuación: <br>${selectLibro.estrellas } <i class="far fa-star"></i></p>
                    	<p class="info2">Categoría: <br>${selectLibro.categoria }</p>
                    </div>
            </div>
            <div class="col-10">

                    <h1>${selectLibro.nombreLibro }</h1>
                    <h4>by ${selectLibro.autorLibro }</h4>
                    <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse scelerisque eu urna vel aliquam. Vestibulum molestie nec augue sit amet mollis. Curabitur aliquam malesuada quam, quis bibendum orci dapibus at. Quisque sit amet ullamcorper nibh, non placerat neque. Phasellus id neque orci. Ut orci erat, rhoncus sed porttitor ut, fringilla quis arcu. Cras pharetra, massa eu ullamcorper vulputate, felis quam vulputate lectus, at maximus enim sapien sed lectus. Vestibulum elementum justo orci, nec rutrum arcu interdum sit amet. Nulla aliquam aliquam convallis. Nam pretium, felis vel elementum convallis, eros arcu suscipit lorem, sed laoreet quam orci vitae nibh. Nulla facilisi. Donec magna erat, posuere a mattis id, mattis ut risus. Ut ut neque ipsum. Nulla massa est, aliquet ut porta ut, tincidunt quis eros.</p>
    
            </div>
        </div>
        <br>
	</section>
    
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/js/bootstrap.min.js" integrity="sha384-+YQ4JLhjyBLPDQt//I+STsc9iw4uQqACwlvpslubQzn4u2UU2UFM80nGisd026JF" crossorigin="anonymous"></script>

</html>