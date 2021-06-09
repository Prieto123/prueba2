<jsp:include page="header.jsp"/>

<%@page import="java.util.List" %>
<%@page import="cl.inacap.Odiseo.DAO.LibroDAO" %> 
<%@page import="cl.inacap.Odiseo.DTO.Libros"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>
		
		<div class="portada">
	        <div class="container">
	            <div class="col-lg-6">
	                <div id="titulo">
	                    <h1 id="title">Peter Pan</h1>
	                </div>
	                <div id="desc">
	                    <p>La obra cuenta la historia de Peter Pan, un niño que vuela y no quiere crecer, y sus aventuras en
	                        El país de Nunca Jamás con los hermanos Wendy, John y Michael Darling; el hada Campanilla, los
	                        Niños Perdidos, y el malvado Capitán Garfio.</p>
	                </div>
	                <div id="buttons">
	                    <button class="btn btn-peter"><i class="fab fa-readme"></i> &nbsp; Mas informacion</button>
	                </div>
	            </div>
	        </div>
    	</div>
		<div class="col-12 text-center" style="color: black;">Destacados:</div>
    	
    	<div class="glide1">
        <div data-glide-el="track" class="glide__track">
            <ul class="glide__slides">
            	<c:forEach items="${Libros }"  var="l" varStatus="recorrido"> 
            			<li class="glide__slide">
            				<div class="card">		
            					<a href="DetalleLibro.do?index=${recorrido.index}">				
            						<img class="card-img-top" src="${l.portadaLibro }" alt="Card image cap">
            					</a>
            					<div class="card-body">
            						<div class="row">
            							<div class="col-6">
            						<h5 class="card-title text-left">${l.nombreLibro }</h5>
		            					</div>
		            					<div class="col-6">
		            						<h6 class="stars">${l.estrellas } <i class="fas fa-star"></i></h6>
		            					</div>
		            				</div>
		            			</div>
		            		</div>
		            	</li>
           		</c:forEach>
            </ul>
        </div>
    </div>
    

</body>

<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/Glide.js/3.2.0/glide.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-gtEjrD/SeCtmISkJkNUaaKMoLD0//ElJ19smozuHV6z3Iehds+3Ulb9Bn9Plx0x4" crossorigin="anonymous">
    </script>
    <script src="./Site/js/scripts.js"></script>
</html>