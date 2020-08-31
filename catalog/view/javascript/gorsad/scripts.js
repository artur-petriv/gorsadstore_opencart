document.addEventListener("DOMContentLoaded", () => {
	const addBtns = document.querySelectorAll(".card-content__button");
	const cart = document.querySelector(".cart");
	const number = document.querySelector(".cart__number");
	const burgerBtn = document.querySelector(".hamburger");
	const mobMenu = document.querySelector(".mob");
	const body = document.querySelector('.body');
	const mobLinks = document.querySelectorAll(".mob-nav__link");

	mobLinks.forEach(link => {
		link.addEventListener('click', () => {
			toggleMenu();
		});
	});

	function toggleMenu() {
		burgerBtn.classList.toggle("is-active");
		// burgerMenu.classList.toggle("display-flex");
		mobMenu.classList.toggle("mob-active");
		
		body.classList.toggle('overflow-hidden');
	}

	burgerBtn.addEventListener('click', function() {
		toggleMenu();
	});

	let cartItems;

	if (number && (number.dataset.number || number.dataset.number > 0)) {
    cartItems = number.dataset.number;
    cart.classList.toggle("display-flex");
  } else {
    cartItems = 0;
  }

	addBtns.forEach(btn => {
		btn.addEventListener('click', (e) => {
			if (cartItems === 0) {
				cart.classList.toggle('display-flex');
			}

			btn.classList.add('success');

			cartItems++;
			number.innerHTML = cartItems;
			
			cart.classList.add("cubic");

			setTimeout(() => {
				cart.classList.remove("cubic");
			}, 500);
			setTimeout(() => {
        btn.classList.remove("success");
      }, 1700);
		});
	});
});