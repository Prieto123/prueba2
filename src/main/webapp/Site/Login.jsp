<jsp:include page="header.jsp"/>

            <br>
            <br>
            <br>
            <br>
            <br>
            <br>
    <section class="login">

        <div class="container">
            <br>
            <h1 class="text-center">LOGIN</h1>
            <br>
            <label for="Usuario" id="">Usuario</label>
            <input type="text" id="Usuario" class="form-control">
            <label for="Contrasena" id="">Contraseña</label>
            <input type="password" name="" id="Contrasena" class="form-control">
            <br>
            <button class="btn btn-primary btn-block" style="background-color: black;" onclick="loginUsuario()">Ingresar</button>
            <br>
        </div>

    </section>

</body>

<script src="https://code.jquery.com/jquery-3.5.1.min.js" ></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/js/bootstrap.min.js" integrity="sha384-+YQ4JLhjyBLPDQt//I+STsc9iw4uQqACwlvpslubQzn4u2UU2UFM80nGisd026JF" crossorigin="anonymous"></script>

<script>

    function loginUsuario(){
        if($("#Usuario").val()==''  || $("#Contrasena").val()==''){
            alert("Favor de ingresar Usuario Y Contraseña");
            return 0;
        }else{
            var sendData={
                'Usuario':  $("#Usuario").val(),
                'Contrasena': $("#Contrasena").val()

            };
            
            $.ajax({
                type:"POST",
                url:"LoginControllers.do",
                data:sendData,
                success:function (obj){
                   console.log(obj)
                      
                    if(obj==-1){
                        alert("El usuario o la contraseña no coinciden")
                    }else{
                        location.href=obj;
                    }

                }

            });
        }

    }

</script>

</html>