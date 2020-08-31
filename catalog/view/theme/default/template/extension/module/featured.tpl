<?php echo $cart; ?>

<!-- Header -->
<header class="header">

	<div class="container">

		<div class="content">
			<div class="offer" data-aos="fade-up" data-aos-duration="800">
				<h1 class="offer__title">Worldwide & High-neat brand</h1>
				<div class="offer__link">
					<a href="#shop" class="offer__button button">Go to Store</a>
				</div>
			</div>
		</div>

	</div>

</header>
<!-- End Header -->

<!-- Shop -->
<section id="shop" class="shop">

	<div class="container">
		<div class="shop__head">
			<h2 class="shop__title section-title">Online Store :</h2>
		</div>

		<div class="shop__list" data-aos="fade-up">

			<?php foreach ($products as $product) { ?>

			<div class="shop__item">
				<div class="shop__card">
					<div class="shop-card__image">
						<div class="swiper-container">

							<div class="swiper-wrapper">

								<?php if ($product['thumb']) { ?>
								<div class=" swiper-slide card-slide">
									<img class="card-slider__img swiper-lazy" data-src="<?php echo $product['thumb']; ?>">
									<div class="swiper-lazy-preloader swiper-lazy-preloader-black"></div>
								</div>
								<?php } ?>

								<?php if ($product['images']) { ?>
								<?php foreach ($product['images'] as $image) { ?>
								<div class=" swiper-slide card-slide">
									<img class="card-slider__img swiper-lazy" data-src="<?php echo $image['thumb']; ?>">
									<div class="swiper-lazy-preloader swiper-lazy-preloader-black"></div>
								</div>
								<?php } ?>
								<?php } ?>

							</div>

							<div class="swiper-pagination"></div>
							<div class="swiper-button-prev"></div>
							<div class="swiper-button-next"></div>
						</div>
					</div>

					<div class="card-content">
						<div class="card-content__main">
							<h3 class="card-content__title"><?php echo $product['name']; ?></h3>
							<div class="card-content__text"><?php echo $product['description']; ?></div>
						</div>
						<div class="card-content__action">
							<div class="card-content__button" onclick="cart.add('<?php echo $product['product_id']; ?>');">
								<svg class="card-content__button-svg" width="12px" height="12px" viewBox="0 0 18 14">
									<path d="M 2.205 5.77223L 0 7.92347L 6.3 14L 18 2.15124L 15.795 0L 6.3 9.74699L 2.205 5.77223Z">
									</path>
								</svg>
								<span class="card-content__button-text"><?php echo $button_cart; ?></span>
							</div>
							<div class="card-content__pricing">
								<?php if ($product['price']) { ?>
								<?php if ($product['special']) { ?>
								<p class="card-content__old-price"><s><?php echo $product['price']; ?></s></p>
								<p class="card-content__new-price"><?php echo $product['special']; ?></p>
								<?php } else { ?>
								<p class="card-content__new-price"><?php echo $product['price']; ?></p>
								<?php } ?>
								<?php } ?>
							</div>
						</div>
					</div>
				</div>
			</div>
			<?php } ?>

		</div>
	</div>

</section>
<!-- End Shop -->



<!-- Road -->
<section id="road" class="road">
	<div class="container">
		<div class="road__box" data-aos="fade-up" data-aos-duration="400">
			<div class="road__head">
				<h2 class="road__title section-title">How to buy a products?</h2>
			</div>
			<div class="road__list">

				<div class="road__item">
					<div class="road__card">
						<div class="road__card-left">
							<div class="road__card-circle">1</div>
						</div>
						<div class="road__card-right">
							<div class="road__card-title">Order</div>
							<div class="road__card-text">Add your chosen products to cart for making your order. Everything is easy
								and without any headache.</div>
						</div>
					</div>
				</div>

				<div class="road__item">
					<div class="road__card">
						<div class="road__card-left">
							<div class="road__card-circle">2</div>
						</div>
						<div class="road__card-right">
							<div class="road__card-title">Payment</div>
							<div class="road__card-text">You can pay via <a class="road__card-text road__card-link"
									href="https://fondy.eu/en/" target="_blank">FONDY</a>
								with a Visa or MasterCard, any other payment methods can also be offered. Our goal is to make everything
								as comfortable as possible.</div>
						</div>
					</div>
				</div>

				<div class="road__item">
					<div class="road__card">
						<div class="road__card-left">
							<div class="road__card-circle">3</div>
						</div>
						<div class="road__card-right">
							<div class="road__card-title">Shipping</div>
							<div class="road__card-text">After receiving a payment, product will be shipped to the provided address.
								Delivery is available worldwide.</div>
						</div>
					</div>
				</div>

			</div>
		</div>
	</div>

</section>
<!-- End Road -->


<!-- Contacts -->
<section class="contacts">
	<div class="container">
		<div class="contacts__items">

			<div class="contacts__item">
				<h2 class="contacts__title">Contacts :</h2>
			</div>

			<div class="contacts__item">
				<div class="contacts__earth">/// EARTH IS NOT MY HOME</div>
			</div>

			<div class="contacts__item">
				<div class="contacts__wrap">
					<div class="contacts__icon">
						<svg class="contacts__svg" xmlns="http://www.w3.org/2000/svg" width="50" height="50" viewBox="0 0 60 60">
							<path
								d="M21.667 42.795C8.865 30.457 11.535 22.61 12.792 20.94l9.238 8.678c-1.24 1.316.054 3.098 1.5 4.784 2.07 2.41 4.44 4.53 6.484 6.1 3.096 2.367 4.702 3.404 5.89 2.15l9.006 8.475c-1.408 1.55-9.76 4.67-23.243-8.332zm26.407 5.113l-.045.007c.004 0-2.445 2.538-2.445 2.538l-9.017-8.496 2.425-2.55a1.437 1.437 0 0 1 1.987-.063c.003.007 7.128 6.607 7.128 6.607v.01c0 .505.516 1.366-.036 1.95zm-14.02-29.99l-6.918 3.746-.04.024a.94.94 0 0 1-.854-1.67l6.917-3.75a.93.93 0 0 1 1.27.375.94.94 0 0 1-.378 1.274zm-9.823.914a.956.956 0 0 1-.35.296.947.947 0 0 1-.96-.08.94.94 0 0 1-.21-1.31l4.576-6.398a.936.936 0 0 1 1.304-.218c.42.303.52.89.22 1.31l-4.58 6.4zm-3.776-2.622a.936.936 0 0 1-1.12.707.933.933 0 0 1-.71-1.117l1.727-7.676a.938.938 0 1 1 1.83.412l-1.726 7.674zm4.073 8.22c.927.5 1.386 1.363.927 1.947v.007l-2.616 2.538-9.445-8.685 2.34-2.55c.52-.545 1.254-.586 1.814-.058l6.98 6.792v.008z">
							</path>
						</svg>
					</div>
					<div class="contacts__content">
						<div class="contacts__link">+38 (063) 999-66-45</div>
						<div class="contacts__descr">WhatsApp / Viber / Telegram</div>
					</div>
				</div>
			</div>

			<div class="contacts__item">
				<div class="contacts__wrap">
					<div class="contacts__icon">
						<svg class="contacts__svg" xmlns="http://www.w3.org/2000/svg" width="50" height="50" viewBox="0 0 60 60">
							<path
								d="M48.143 15.48H11.86a3.635 3.635 0 0 0-3.636 3.634v21.772a3.635 3.635 0 0 0 3.636 3.635h36.283a3.633 3.633 0 0 0 3.633-3.633V19.114a3.633 3.633 0 0 0-3.633-3.635zm1.98 27.365a.725.725 0 0 1-.99.04l-12.808-11.06-5.19 5.135c-.614.61-1.605.61-2.217 0l-5.187-5.134L10.896 42.91a.722.722 0 0 1-1.023-.074.728.728 0 0 1 .04-.992l11.97-11.85L9.91 18.147a.724.724 0 0 1-.004-1.028.724.724 0 0 1 .988-.04l19.133 16.523 19.106-16.497a.725.725 0 0 1 .983 1.068l-11.94 11.82 11.94 11.825c.287.284.29.74.007 1.026z">
							</path>
						</svg>
					</div>
					<div class="contacts__content">
						<a href="mailto:gorsadstore@gmail.com"
							class="contacts__link contacts__link_active">gorsadstore@gmail.com</a>
						<div class="contacts__descr">Email Support</div>
					</div>
				</div>
			</div>

		</div>
	</div>
</section>
<!-- End Contacts -->


<!-- About -->
<section id="about" class="about">
	<div class="container">
		<div class="about__container">
			<div class="about__wrap" data-aos="fade-up">
				<h2 class="about__title">About us</h2>
				<div class="about__text"><strong class="about__text">GORSAD</strong>™ — is a progressive high-neat brand whose
					items are easily combined with each other and with products of other brands as well. The production uses
					exclusively high quality materials which will not only please the eye, but also last you a long time.</div>
			</div>
		</div>
	</div>
</section>
<!-- End About -->

<script>
	$(document).ready(function () {
		$("a").on('click', function (event) {
			if (this.hash !== "") {
				event.preventDefault();
				var hash = this.hash;
				$('html, body').animate({
					scrollTop: $(hash).offset().top
				}, 800, function () {
					window.location.hash = hash;
				});
			}
		});
	});
</script>