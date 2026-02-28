document.addEventListener('DOMContentLoaded', () => {
    const menuToggle = document.querySelector('.menu-toggle');
    const mobileNav = document.getElementById('mobile-nav');

    if (menuToggle && mobileNav) {
        menuToggle.addEventListener('click', () => {
            const isExpanded = menuToggle.getAttribute('aria-expanded') === 'true';

            menuToggle.setAttribute('aria-expanded', !isExpanded);
            mobileNav.setAttribute('aria-hidden', isExpanded);
        });
    }
});
