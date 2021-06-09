<jsp:include page="header.jsp"/>

    <section>

        <form action="${IndexLibro>=0?'EditarLibro.do' : 'AgregarLibro.do'}" method="POST" name="formulario" id="formularioID">

            <input type="hidden" value="${IndexLibro}" name="index">
			<br>
			<br>
            <div class="addLibro">
                <h1>AGREGAR LIBRO</h1>
                <br>
                <label for="Nombre">Nombre</label>
                <input type="text" class="form-control" name="Nombre" id="Nombre" onchange="validarNombre(this.value)" value="${selectLibro.nombreLibro }">
                <br>
                <label for="Autor">Autor</label>
                <input type="text" class="form-control" name="Autor" id="Autor" onchange="validarAutor(this.value)" value="${selectLibro.autorLibro }">
                <br>
                <label for="CantidadDePaginas">Cantidad de Paginas</label>
                <input type="text" class="form-control" name="CantidadDePaginas" id="CantidadDePaginas" onchange="validarCantidadDePaginas(this.value)" value="${selectLibro.cantPaginas }">
                <br>
                <label for="Destacado">Destacado</label>
                <select class="form-control" name="Destacado" id="Destacado">
                    <option value="Si">Si</option>
                    <option value="No">No</option>
                </select>
                <br>
                <label for="Portada">Portada</label>
                <input type="text" class="form-control" name="Portada" id="Portada" onchange="validarPortada(this.value)" value="${selectLibro.portadaLibro }">
                <br>
                <label for="Estrellas">Estrellas</label>
                <select class="form-control" name="Estrellas" id="Estrellas">
                    <option value="1">1</option>
                    <option value="2">2</option>
                    <option value="3">3</option>
                    <option value="4">4</option>
                    <option value="5">5</option>
                </select>
                <br>
                <label for="Categoria">Categoria</label>
                <select class="form-control" name="Categoria" id="Categoria">
                    <option value="Suspenso">Suspenso</option>
                    <option value="Novela">Novela</option>
                    <option value="Terror">Terror</option>
                    <option value="Para niños">Para niños</option>
                    <option value="Thriller">Thriller</option>
                    <option value="Finanzas personales">Finanzas Personales</option>
                    <option value="Trolleo">Trolleo</option>
                </select>
                <br>
                <button class="btn btn-primary btn-block" type="button" style="background-color: black; border: black;" id="btn-send" onclick="botonActivo()">Agregar</button>
                <br>
            </div>

        </form>

    </section>


</body>

<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/js/bootstrap.min.js" integrity="sha384-+YQ4JLhjyBLPDQt//I+STsc9iw4uQqACwlvpslubQzn4u2UU2UFM80nGisd026JF" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-confirm/3.3.2/jquery-confirm.min.js"></script>

<script src="Site/js/scripts.js"></script>

<script>

window.onload = function abrirPagina() {
	var URLsearch = window.location.search;
	if (URLsearch ==='') {
		$("#btn-send").prop('disabled',true);
	}
}

function validarCampos() {
	
	if($("#Nombre").val()==='' || $("#Autor").val()==='' || $("#CantidadDePaginas").val()==='' || $("#Portada").val()==='' || isNaN($("#CantidadDePaginas").val())) {
		$("#btn-send").prop('disabled',true);
	} else {
		$("#btn-send").prop('disabled',false);
	}
}

function validarNombre() {
	validarCampos();
}

function validarAutor() {
	validarCampos();
}

function validarCantidadDePaginas() {
	validarCampos();
}

function validarPortada() {
	validarCampos();
}

function botonActivo(){
$("#formularioID").submit();
}

</script>

</html>