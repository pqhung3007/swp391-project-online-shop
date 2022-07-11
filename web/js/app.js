//navbar active class
const currentURL = location.pathname.split("/")[2];
const navbarItems = document.querySelectorAll(".status");
window.addEventListener('load', () => {
    navbarItems.forEach(item => {
        if (item.getAttribute("href") === currentURL ||
                ((currentURL === 'listProducts' || currentURL === 'search') &&
                        item.getAttribute("href") === 'products')) {
            item.classList.add("active");
        }
    }
    );
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
