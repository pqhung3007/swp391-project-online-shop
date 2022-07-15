const statuses = document.querySelectorAll('.status')
statuses.forEach(status => {
    if (status.innerText === 'Completed') {
        status.style.color = '#41f1b6'
    } else if (status.innerText === 'Waiting') {
        status.style.color = '#eaa636'
    } else {
        status.style.color = '#fc515f'
    }
});