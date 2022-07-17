// section navigator in navbar
const menu = document.querySelector('navbar-nav a');

menu.addEventListener('click', (e) => {
    e.preventDefault();
    if (e.target.classList.contains('nav-link')) {
        const id = e.target.getAttribute('href');
        document.querySelector(id).scrollIntoView({ behavior: "smooth" });
    }
});



//check password identical 
const passInput = document.getElementById("password");
const repassInput = document.getElementById("repassword");
const passConfirm = document.getElementById("passconfirm");

repassInput.addEventListener("keyup", () => {
    passIdentical(repassInput.value, passInput.value, passConfirm);
});
passInput.addEventListener("keyup", () => {
    passIdentical(repassInput.value, passInput.value, passConfirm);
});

function passIdentical(repass, pass, passconfirm) {
    if (repass === pass) {
        passconfirm.classList.add("d-none");
    } else {
        passconfirm.classList.remove("d-none");
    }
}
