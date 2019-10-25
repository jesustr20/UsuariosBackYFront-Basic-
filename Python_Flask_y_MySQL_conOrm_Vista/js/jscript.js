//Validacion del formulario
var formulario = document.getElementById('formulario');

formulario.addEventListener('submit', function(e){
    e.preventDefault();
    console.log('me diste un click')

    var datos = new FormData(formulario)
    console.log(datos)
    console.log(datos.get('fullname'))
    console.log(datos.get('phone'))
    console.log(datos.get('email'))

    URL='http://127.0.0.1:5000/users_add'
    fetch(URL, {
        method:'POST',
        body: datos
    })
        .then(res => res.json())
        .then(response =>{
            console.log(response)
        })
})

function validar(){
    var nombre, telefono, email;
    nombre = document.getElementById("name").value
    telefono = document.getElementById("fon").value
    email = document.getElementById("mail").value

    if(nombre === "" || telefono === "" || email === ""){
        alert("El campo esta vacio");
        return false;
    }else if(nombre.length>50){
        alert("El nombre es demasiado largo");
        return false;
    }else if(telefono.length>10){
        alert("El numero de telefono es demasiado largo")
        return false;
    }else if(isNaN(telefono)){
        alert("El telefono ingresado no es un numero");
        return false;
    }else if(email.length>100){
        alert("El correo es demasiado largo");
        return false;
    }
}




//var contenido = document.querySelector('#contenido')
var con = document.getElementById('#contenido')
const traer = () =>{
    URL='http://127.0.0.1:5000/user/ver'
    fetch(URL)
        .then(res=>res.json())
        .then(response=>{
            //console.log(response)
            tabla(response.response.apiResponse)
        })
}

const tabla = response =>{
    //console.log(response)
    contenido.innerHTML=''
    for(let valor of response){
        //console.log(valor.fullname)
        contenido.innerHTML += `
            <tr>
                <th>${valor.id}</th>
                <td>${valor.fullname}</td>
                <td>${valor.phone}</td>
                <td>${valor.email}</td>
                <td>
                    <a href="editar.html" class="btn btn-secondary">Editar</a>
                    <a href="" class="btn btn-danger" onclick="borrar()">Borrar</a>
                </td>
            </tr>
        `;
      
    };
};

//QUEDA PENDIENTE
const borrar = () =>{
    URL='http://127.0.0.1:5000/user/delete'
    fetch(URL, {
        method:'DELETE'
    })
        .then(res => res.json())
        .then(response => {
            console.log(response)
        })
}


borrar();
traer();