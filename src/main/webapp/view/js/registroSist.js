
// valida que el usuario tenga un @ y tenga el dominio codoACodo.edu.ar
function validarUser(idMenaje, btn, idUser) {
    console.log("ingreso a validarUser")
    
    //obtendo lo que ingreso el usuario en el input luego lo pongo en la variable user
    let user=document.getElementById(idUser).value 
    console.log(`user= ${user}`)

    // console.log(user.includes("@"))
    user.includes("")

    if (!user.includes("@")) {
        // console.log("El usuario debe contener un @")
        document.getElementById(idMenaje).innerHTML="El usuario debe contener un @"
        document.getElementById(idMenaje).className="text-danger  m-1 p-1 text-center "
        document.getElementById(btn).disabled="disabled"
    } else if(!user.toLowerCase().includes("codoacodo.edu.ar")){    
        document.getElementById(idMenaje).innerHTML="El usuario debe contener dominio codoacodo.edu.ar"
        document.getElementById(idMenaje).className="text-danger  m-1 p-1 text-center"
				document.getElementById(btn).disabled="disabled"
    } else {
        document.getElementById(idMenaje).innerHTML=""
        document.getElementById(idMenaje).className=""
        document.getElementById(btn).disabled=""
    }

}



function validarPass(idMenaje, btn, idPass) {
    let pass=document.getElementById(idPass).value

    let regExp=new RegExp("(?=.*[a-z])(?=.*[A-Z]).{8,}")
    
    if (!regExp.test(pass)) {
        document.getElementById(idMenaje).innerHTML="La contraseña debe tener una minúscula, una mayúscula y ser mayor a 8 caracteres"
        document.getElementById(idMenaje).className="text-danger m-1 p-1 text-center "        
        document.getElementById(btn).disabled="disabled"  
    } else {
        document.getElementById(idMenaje).innerHTML=""
        document.getElementById(idMenaje).className=""        
        document.getElementById(btn).disabled=""  
    }
    
}




//todo: verificar que las pass sean iguales

function compararPass(idMenaje, btn, idPass, idRepPass) {
    let pass=document.getElementById(idPass).value
    let repPass=document.getElementById(idRepPass).value

        
    if (pass!=repPass) {
        document.getElementById(idMenaje).innerHTML="Las contraseñas deben coincidir"
        document.getElementById(idMenaje).className="text-danger m-1 p-1 text-center "        
        document.getElementById(btn).disabled="disabled"
    } else {
        document.getElementById(idMenaje).innerHTML=""
        document.getElementById(idMenaje).className=""        
        document.getElementById(btn).disabled=""
    }	
}


// Mostrar u ocultar contraseña
const togglePasswordIcons = document.querySelectorAll('.toggle-password');

togglePasswordIcons.forEach(function (icon) {
  icon.addEventListener('click', function () {
    const targetId = this.getAttribute('data-target');
    const targetInput = document.getElementById(targetId);
    const type = targetInput.getAttribute('type') === 'password' ? 'text' : 'password';
    targetInput.setAttribute('type', type);
    this.classList.toggle('bi-toggle-off');
    this.classList.toggle('bi-toggle-on');
  });
});



