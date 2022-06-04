const menu = document.querySelector('.category-container ul');
const navItems = menu.querySelectorAll('li');

navItems.forEach(item => {
    const link = item.querySelector('a');
    link.addEventListener('click', () => {
        console.log("Clicked");
        changeActiveState();
        link.classList.add('activate');
    });
});

const changeActiveState = () => {
    navItems.forEach(item => {
        const link = item.querySelector('a');
        link.classList.remove('activate');
    });
};

