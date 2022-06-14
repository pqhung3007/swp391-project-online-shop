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

