	<!-- Footer -->
	<footer class="footer">
		<div class="container">
			<div class="footer__container">

				<div class="footer__column">
					<div class="footer__logo logo__bg"></div>
					<div class="footer__copyright">
						<p class="footer__p">© 2020 GORSAD STORE</p>
						<p class="footer__p">ALL RIGHTS RESERVED.</p>
					</div>
					<div class="footer__payments">
						<img class="footer__payments-img" src="catalog/view/theme/default/image/gorsad/footer-payment.png" alt="Payment">
					</div>
				</div>

				<div class="footer__column">
					<ul class="footer__list">
						<li class="footer__item"><a class="footer__link" href="#shop">Official Online Store</a></li>
						<li class="footer__item"><a class="footer__link" href="#road">Shipping & Payment</a></li>
						<li class="footer__item"><a class="footer__link" href="#road">Contacts & Support</a></li>
						<?php if ($informations) { ?>
							<?php foreach ($informations as $information) { ?>
								<li class="footer__item"><a class="footer__link" href="<?php echo $information['href']; ?>"><?php echo $information['title']; ?></a></li>
							<?php } ?>
						<?php } ?>
					</ul>
				</div>

				<div class="footer__column">
					<div class="footer__gif">
						<video autoplay loop muted playsinline class="footer__gif-img">
							<source src="catalog/view/theme/default/image/gorsad/footer-gif.mp4" type="video/mp4">
							<!-- <source src="catalog/view/theme/default/image/gorsad/footer-gif.webm" type="video/webm"> -->
						</video>
					</div>
				</div>

				<div class="footer__column footer__text_right">
					<div class="footer__insta">
						<span class="footer__p">/// INSTAGRAM:</span>
						<span class="footer__p">
							<a href="https://instagram.com/gorsadstore" target="_blank" class="footer__link footer__link_underline">@GORSADSTORE</a>
						</span>
					</div>
					<div class="footer__descr">
						<span class="footer__p">The official Instagram of</span>
						<span class="footer__p">GORSAD ™</span>
					</div>

					<div class="footer__socials footer__descr">
						<a href="https://instagram.com/gorsadstore" target="_blank" class="footer__social">
							<svg class="footer__svg" viewBox="0 0 32 32" id="instagram">
								<path
									d="M16.002 0c-4.346 0-4.89.02-6.598.097C7.7.175 6.538.444 5.52.84a7.835 7.835 0 0 0-2.834 1.845A7.854 7.854 0 0 0 .84 5.52C.443 6.536.173 7.7.096 9.4.02 11.11 0 11.655 0 16c0 4.346.02 4.89.097 6.596.078 1.703.348 2.866.743 3.883a7.84 7.84 0 0 0 1.845 2.834A7.835 7.835 0 0 0 5.52 31.16c1.017.396 2.18.666 3.883.744C11.11 31.98 11.653 32 16 32c4.345 0 4.89-.02 6.596-.096 1.703-.078 2.867-.348 3.885-.744a7.828 7.828 0 0 0 2.833-1.846 7.854 7.854 0 0 0 1.847-2.834c.393-1.018.663-2.18.743-3.884C31.98 20.89 32 20.346 32 16c0-4.345-.02-4.89-.097-6.597-.08-1.704-.35-2.866-.743-3.884a7.853 7.853 0 0 0-1.847-2.835A7.82 7.82 0 0 0 26.48.84C25.46.444 24.297.175 22.593.097 20.887.02 20.343 0 15.997 0h.005zm-1.436 2.883H16c4.274 0 4.78.016 6.467.092 1.56.072 2.407.332 2.97.55.747.29 1.28.638 1.84 1.198.56.56.906 1.093 1.197 1.84.22.563.48 1.41.55 2.97.077 1.687.094 2.193.094 6.464 0 4.27-.017 4.776-.093 6.463-.072 1.56-.332 2.407-.55 2.97a4.947 4.947 0 0 1-1.2 1.838c-.56.56-1.09.907-1.837 1.197-.564.22-1.41.48-2.97.55-1.688.078-2.194.094-6.466.094-4.273 0-4.78-.017-6.466-.094-1.56-.072-2.407-.333-2.97-.552a4.956 4.956 0 0 1-1.84-1.196 4.96 4.96 0 0 1-1.198-1.84c-.22-.563-.48-1.41-.55-2.97-.078-1.686-.093-2.193-.093-6.466 0-4.272.015-4.776.092-6.463.07-1.56.332-2.408.55-2.972.29-.746.638-1.28 1.198-1.84a4.966 4.966 0 0 1 1.84-1.197c.564-.22 1.41-.48 2.97-.55 1.477-.067 2.05-.087 5.03-.09v.003zm9.976 2.657a1.92 1.92 0 1 0 0 3.84 1.92 1.92 0 0 0 0-3.84zm-8.54 2.243a8.217 8.217 0 1 0 0 16.435 8.217 8.217 0 0 0 0-16.435zm0 2.884a5.333 5.333 0 1 1 0 10.667 5.333 5.333 0 0 1 0-10.667z"
									fill="#fff"></path>
							</svg>
						</a>
					</div>
					
				</div>


			</div>
		</div>
	</footer>
  <!-- End Footer -->
  
  

	<!-- Optional JavaScript -->
	<!-- jQuery first, then Popper.js, then Bootstrap JS -->
	<script src="https://unpkg.com/aos@2.3.1/dist/aos.js"></script>
	<script>
		AOS.init();
	</script>
	<script src="https://unpkg.com/swiper/swiper-bundle.min.js"></script>
	<!-- Initialize Swiper -->
	<script>
		var swiper = new Swiper('.swiper-container', {
			navigation: {
				nextEl: '.swiper-button-next',
				prevEl: '.swiper-button-prev',
			},
			pagination: {
				el: '.swiper-pagination',
				clickable: true,
			},
			speed: 500,
			autoHeight: true,
			preloadImages: false,
			lazy: true,
			loadPrevNext: true
		});
	</script>
</body></html>