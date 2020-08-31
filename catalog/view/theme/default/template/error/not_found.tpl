<?php echo $header; ?>
<!-- Cart Page -->
	<section class="cart-page <?php if (isset($page_404)) { echo 'cart-page__error'; } ?>">
		<div class="container">
			<div class="cart-page__container">
			<?php if (isset($page_404)) { ?>
				<div class="error-wrap">
					<div class="error-wrap__container">
						<div class="error-wrap__info">404</div>
						<div class="error-wrap__title"><?php echo $heading_title; ?></div>
						<div class="error-wrap__text"><?php echo $text_error; ?></div>
						<div class="error-wrap__action">
							<a class="cart-page__continue" href="<?php echo $continue; ?>">Go to home page</a>
						</div>
					</div>
				</div>
			<?php } else { ?>
				<div class="cart-page__head">
					<div class="cart-page__title"><?php echo $heading_title; ?></div>
				</div>
				<div class="cart-page__list">
          <div class="cart-page__item"><?php echo $text_error; ?></div>
        </div>
        <div class="cart-page__action">
          <a class="cart-page__continue" href="<?php echo $continue; ?>"><?php echo $button_continue; ?></a>
        </div>
			<?php } ?>
			</div>
		</div>
	</section>
	<!-- End Cart Page -->

<?php echo $footer; ?>
