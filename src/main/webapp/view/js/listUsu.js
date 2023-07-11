const modificarOraModal = document.getElementById('modificarOra');

if (modificarOraModal) {
  modificarOraModal.addEventListener('show.bs.modal', event => {
    // Button that triggered the modal
    const a = event.relatedTarget;
    // Extract info from data-bs-* attributes
    const idOrador = a.getAttribute('id');
    const name = a.getAttribute('name');
    // If necessary, you could initiate an Ajax request here
    // and then do the updating in a callback.

    // Update the modal's content.
    const inputId = modificarOraModal.querySelector('.modal-body input[name="id"]');
    const inputName = modificarOraModal.querySelector('.modal-body input[name="name"]');
    const inputLastname = modificarOraModal.querySelector('.modal-body input[name="lastname"]');
    const inputEmail = modificarOraModal.querySelector('.modal-body input[name="email"]');
    const inputTel = modificarOraModal.querySelector('.modal-body input[name="tel"]');
    const inputTema = modificarOraModal.querySelector('.modal-body input[name="tema"]');
    const inputDescripcion = modificarOraModal.querySelector('.modal-body textarea[name="descripcion"]');
    const inputHora = modificarOraModal.querySelector('.modal-body input[name="hora"]');
    const inputSala = modificarOraModal.querySelector('.modal-body input[name="sala"]');

    inputId.value = idOrador;
    inputName.value = name;
    // Asignar los valores a los demás campos
    // Por ejemplo:
    inputLastname.value = a.getAttribute('lastname');
    inputEmail.value = a.getAttribute('email');
    inputTel.value = a.getAttribute('tel');
    inputTema.value = a.getAttribute('tema');
    inputDescripcion.value = a.getAttribute('descripcion');
    inputHora.value = a.getAttribute('hora');
    inputSala.value = a.getAttribute('sala');
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
    const lastname = a.getAttribute('lastname');
    // If necessary, you could initiate an Ajax request here
    // and then do the updating in a callback.

    // Update the modal's content.
    const inputIdUser = delModal.querySelector('.modal-body #idUser');
    const divDataUser = delModal.querySelector('.modal-body #dataUser');

    inputIdUser.value = idUsuario;
    divDataUser.innerHTML = user + ' ' + lastname;
  });
}

