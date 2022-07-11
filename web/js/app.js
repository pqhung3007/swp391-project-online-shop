//navbar active class
const currentURL = location.pathname.split("/")[2];
const navbarItems = document.querySelectorAll(".status");
const menu = document.querySelector('navbar-nav a');
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

menu.addEventListener('click', (e) => {
    e.preventDefault();
    if (e.target.classList.contains('nav-link')) {
        const id = e.target.getAttribute('href');
        document.querySelector(id).scrollIntoView({ behavior: "smooth" });
    }
});



