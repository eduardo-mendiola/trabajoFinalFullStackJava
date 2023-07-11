const updUsuariosModal = document.getElementById('updUsuarios');

if (updUsuariosModal) {
  updUsuariosModal.addEventListener('show.bs.modal', event => {
    // Button that triggered the modal
    const a = event.relatedTarget;
    // Extract info from data-bs-* attributes
    const idUser = a.getAttribute('id');
    const user = a.getAttribute('user');
    // If necessary, you could initiate an Ajax request here
    // and then do the updating in a callback.

    // Update the modal's content.
    const inputId = updUsuariosModal.querySelector('.modal-body input[name="id"]');
    const inputUser = updUsuariosModal.querySelector('.modal-body input[name="user"]');
    const inputPass = updUsuariosModal.querySelector('.modal-body input[name="pass"]');
   

    inputId.value = idUser;
    inputUser.value = user;
    // Asignar los valores a los demás campos
    // Por ejemplo:
    inputUser.value = a.getAttribute('user');
    inputPass.value = a.getAttribute('pass');
   
  });
}

const delModal = document.getElementById('delModal');

if (delModal) {
  delModal.addEventListener('show.bs.modal', event => {
    // Button that triggered the modal
    const a = event.relatedTarget
    // Extract info from data-bs-* attributes
    const idUsuario = a.getAttribute('idUsuario');
    const user = a.getAttribute('user');
    // If necessary, you could initiate an Ajax request here
    // and then do the updating in a callback.

    // Update the modal's content.
    const inputIdUser = delModal.querySelector('.modal-body #idUser');
    const divDataUser = delModal.querySelector('.modal-body #dataUser');

    inputIdUser.value = idUsuario;
    divDataUser.innerHTML = user;
  });
}


