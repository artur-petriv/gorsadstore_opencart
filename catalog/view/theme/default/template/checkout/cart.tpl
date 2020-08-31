<?php echo $header; ?>


	<!-- Cart Page -->
	<section class="cart-page">
		<div class="container">
			<div class="cart-page__container">

				<div class="cart-page__head">
					<div class="cart-page__title"><?php echo $heading_title; ?></div>
				</div>

				<form class="cart-page__list" action="<?php echo $action; ?>" method="post" enctype="multipart/form-data">

					<?php foreach ($products as $product) { ?>
						<div class="cart-page__item">
							<?php if ($product['thumb']) { ?>
								<div class="cart-page__image">
									<img src="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>">
								</div>
							<?php } ?>

							<div class="cart-page__content">
                
								<div class="cart-page__name"><?php echo $product['name']; ?></div>
								<div class="cart-page__options">
									<div class="cart-page__quantity">
										<div class="cart-page__minus" onclick="itemQuantity.minus(this);"></div>
                    <input type="text" name="<?php echo $product['cart_id']; ?>" value="<?php echo $product['quantity']; ?>" size="1" class="cart-page__amount" onclick="cart.update('<?php echo $product['cart_id']; ?>', '5');" />
										<div class="cart-page__plus" onclick="itemQuantity.plus(this);"></div>
									</div>
									<div class="cart-page__price"><?php echo $product['total']; ?></div>
									<div class="cart-page__remover" onclick="cart.remove('<?php echo $product['cart_id']; ?>');"></div>
								</div>

							</div>
						</div>
					<?php } ?>

				</form>

				<div class="cart-page__action">
					<a class="cart-page__continue" href="<?php echo $continue; ?>"><?php echo $button_shopping; ?></a>
					<div class="cart-page__total">
						<div class="cart-page__total-wrap">
							<div class="cart-page__total-tag"><?php echo $totals[1]['title']; ?>: </div>
							<div class="cart-page__total-price"><?php echo $totals[1]['text']; ?></div>
						</div>
						<a class="submit-button" href="<?php echo $checkout; ?>"><?php echo $button_checkout; ?></a>
					</div>
				</div>

			</div>


		</div>
	</section>
	<!-- End Cart Page -->





<?php echo $footer; ?>
