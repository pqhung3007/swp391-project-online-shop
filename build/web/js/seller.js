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

//input picture in "add product"
const pictureURL = document.querySelector('.image-name');
function changePicture() {
    document.querySelector('#image').src = pictureURL.value;
}
pictureURL.addEventListener("input", changePicture)

//open and close statistic modal
const modal = document.querySelector('.modal');
const rating = document.querySelector('.ratings');
rating.addEventListener('click', () => {
    modal.classList.add('open');
});
modal.addEventListener('click', () => {
    modal.classList.remove('open');
});