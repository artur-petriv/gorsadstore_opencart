<?php echo $header; ?>

<!-- Cart Page -->
	<section class="cart-page">
		<div class="container">
			<div class="cart-page__container">
				<div class="cart-page__head">
					<div class="cart-page__title"><?php echo $heading_title; ?></div>
				</div>
				<div class="cart-page__list">
          <div class="cart-page__item"><?php echo $text_message; ?></div>
        </div>
        <div class="cart-page__action">
          <a class="cart-page__continue" href="<?php echo $continue; ?>"><?php echo $button_continue; ?></a>
        </div>
			</div>
		</div>
	</section>
	<!-- End Cart Page -->

<?php echo $footer; ?>