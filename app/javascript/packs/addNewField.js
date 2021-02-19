const addField = () => {
  const addSocial = document.getElementById('add_social');
  addSocial.addEventListener('click', () => {
    const lastId = document.querySelector('#social_fields').lastElementChild.id;
    console.log(lastId)
    const newId = parseInt(lastId, 10) + 1;
    const newFieldset = document.querySelector(`[id="${lastId}"]`).outerHTML.replace(new RegExp(''+lastId, 'g'), newId);

    document.querySelector('#social_fields').insertAdjacentHTML("beforeend", newFieldset);
  });
};

export { addField }
