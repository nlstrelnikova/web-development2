function onAddRight() {
  const parentElement = document.getElementById('movies');
  const actualFirstChild = (parentElement.firstElementChild);
  const newLastChildObject = getNewLastChildObject(actualFirstChild);
  parentElement.removeChild(actualFirstChild);
  const newLastChild = createNewChild(newLastChildObject);
  parentElement.appendChild(newLastChild);
}

function onAddLeft() {
  const parentElement = document.getElementById('movies');
  const actualLastChild = (parentElement.lastElementChild);
  const newFirstChildObject = getNewFirstChildObject(actualLastChild);
  parentElement.removeChild(actualLastChild);
  const newFirstChild = createNewChild(newFirstChildObject);
  parentElement.prepend(newFirstChild);
}

function getNewLastChildObject(actualChild) { /*Add Right*/
  const filmsShown = 4;
  const filmsLength = films.length;
  const actualChildObjectIndex = getActualChildObjectIndex(actualChild);
  let newLastChildObjectIndex = actualChildObjectIndex + filmsShown;
  if (newLastChildObjectIndex >= filmsLength) {
    newLastChildObjectIndex = newLastChildObjectIndex - filmsLength;
  }
  return films[newLastChildObjectIndex];
}

function getNewFirstChildObject(actualChild) { /*Add Left*/
  const filmsShown = 4;
  const filmsLength = films.length;
  const actualLastChildObjectIndex = getActualChildObjectIndex(actualChild);
  let newFirstChildObjectIndex = actualLastChildObjectIndex - filmsShown;
  if (actualLastChildObjectIndex < filmsShown) {
    newFirstChildObjectIndex = (actualLastChildObjectIndex - filmsShown + filmsLength);
  }
  return films[newFirstChildObjectIndex];
}

function getActualChildObjectIndex(actualChild) {
  const actualChildId = actualChild.id;
  const actualChildObject = films.find(item => item.id == actualChildId);
  const actualChildObjectIndex = films.indexOf(actualChildObject);
  return actualChildObjectIndex;
}

function createNewChild(newChildObject) {
  const newChild = document.createElement('div');
  newChild.classList.add('movie');
  newChild.id = `${newChildObject.id}`;
  newChild.innerHTML = `<img src="${newChildObject.image}" alt="Картинки нет" class="img_movie">
  <h3 class="my_movi">${newChildObject.title}</h3>
  <p class="description">${newChildObject.description}</p>`;
  return newChild;
}

function run() {
  const leftArrow = document.getElementById('left_arrow');
  leftArrow.addEventListener('click', onAddLeft);
  const rightArrow = document.getElementById('right_arrow');
  rightArrow.addEventListener('click', onAddRight);
}

window.onload = run;