//validate username
const inputAlert =document.querySelector('#blankAlert');
function blankAlert(input) {
    if (input.includes(' ')) {
        inputAlert.style.display = 'block';
    } else {
        inputAlert.style.display = 'none';
    }
}


