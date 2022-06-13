const items = document.querySelectorAll('.navbar-content a');
items.forEach(item => {
    item.addEventListener('click', () => {
        changeActiveState()
        item.classList.add('active')
    })
});

const changeActiveState = () => {
    items.forEach(item => {
        item.classList.remove('active')
    });
}

const pictureURL = document.querySelector('.input-image input');
function changePicture() {
    document.querySelector('.input-image img').src = pictureURL.value;
}
pictureURL.addEventListener("input", changePicture)