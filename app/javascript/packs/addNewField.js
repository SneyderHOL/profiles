const addField = () => {
  const addSocial = document.getElementById('add_social');
  addSocial.addEventListener('click', () => {
    const lastId = document.querySelector('#social_fields').lastElementChild.id;
    const newId = parseInt(lastId, 10) + 1;
    const newFieldset = document.querySelector('[id="0"]').outerHTML.replace(/0/g, newId);
    document.querySelector('#social_fields').insertAdjacentHTML("beforeend", newFieldset);
  });
};

export { addField }
