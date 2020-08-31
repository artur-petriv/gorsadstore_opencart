<?php echo $header; ?>

<!-- Cart-order -->
	<section class="cart-order">
		<div class="container">

			<div class="cart-order__container">

				<div class="cart-page__head">
                    <div class="cart-page__title"><?=$heading_title?></div>
                </div>

			<div class="cart-order__content">

				<div class="cart-order__list">

					<div class="cart-order__item">
						<div class="cart-order__item-title"><?=$text_full_name?> *</div>
						<input class="cart-order__item-input" id="firstname-ch" name="firstname" type="text">
                        <span class="error"></span>
					</div>


                    <?php if ($modules) { ?>
                        <?php foreach ($modules as $module) { ?>
                            <?php echo $module ?>
                        <?php } ?>
                    <?php } ?>


					<div class="cart-order__item">
						<div class="cart-order__item-title"><?=$text_town?> *</div>
						<input class="cart-order__item-input" id="city-ch" name="city" value="<?php echo $city; ?>" type="text">
                        <span class="error"></span>
					</div>

				</div>

				<div class="cart-order__list cart-order__list-right">

                    <div class="cart-order__item">
						<div class="cart-order__item-title">Delivery address *</div>
						<input class="cart-order__item-input" name="address_1" id="address_1" value="<?php echo $address_1 ?>" type="text">
                        <span class="error"></span>

                        <?php foreach ($shippig_methods as $shipping_method) { ?>
                            <input type="hidden" name="shipping_method" value='{"title": "<?php echo $shipping_method['title'] ?>", "code": "<?php echo $shipping_method['value'] ?>", "comment":"", "shipping_method":"<?php echo $shipping_method['value'] ?>", "cost":"<?php echo $shipping_method['cost'] ?>","tax_class_id":""}'>
                            <?php break; ?>
                        <?php } ?>


                        <?php foreach ($payment_methods as $payment_method) { ?>
                            <input type="hidden" name="payment_method" id="payment_select" value='{"title": "<?php echo $payment_method['title'] ?>", "code": "<?php echo $payment_method['code'] ?>"}'>
                            <?php break; ?>
                        <?php } ?>

					</div>
                    
					<div class="cart-order__item">
						<div class="cart-order__item-title"><?=$text_telephone?> *</div>
						<input class="cart-order__item-input" type="tel" id="telephone-ch" name="telephone" value="<?php echo $telephone; ?>">
                        <span class="error"></span>
					</div>

					<div class="cart-order__item">
						<div class="cart-order__item-title"><?=$text_email?> *</div>
						<input class="cart-order__item-input" type="text" id="email-ch" name="email" value="<?php echo $email; ?>">
                        <span class="error"></span>
					</div>
					<div class="cart-order__item">
						<div class="cart-order__item-title">Instagram</div>
						<input class="cart-order__item-input" type="text" id="comment_field" name="comment" value="<?php echo $comment ?>">
                        <span class="error"></span>
					</div>

				</div>

			</div>

			<div class="cart-order__action">
				<div class="cart-order__info">
					<div class="cart-order__info-item">
						<div class="cart-order__info-tag">Shipping: </div>
						<div class="cart-order__info-price">
                            Free
                        </div>
                    </div>
                        <div class="cart-order__info-item">
                            <div class="cart-order__info-tag">Total: </div>
                            <div class="cart-order__info-price"><?php echo $totals[1]['text']; ?></div>
                        </div>
				</div>
                <div class="pform"></div>
				<div class="cart-order__buttons">
					<div class="submit-button"><?=$text_confirm?></div>
				</div>
			</div>

			</div>

		</div>

	</section>
<!-- End Cart-order -->

<script src='https://api.fondy.eu/static_common/v1/checkout/ipsp.js'></script>
<script type="text/javascript">

function updateShipping(s) {
    shp = JSON.parse(s.value)
    $.ajax({
        url: 'index.php?route=checkout/shipping_method/save',
        type: 'post',
        data: shp,
        dataType: 'json',
        beforeSend: function() {
            $('#shipping-method').addClass('loading');
		},
        success: function(json) {
            $('.alert, .text-danger').remove();

            //if (json['redirect']) {
            //    location = json['redirect'];
            //}
            if (json['error']) {
                if (json['error']['warning']) {
                 // Error ylanyrkkaan....
                 alert(json['error']['warning']);
                }
            } else {
                $.ajax({
                    url: 'index.php?route=checkout/onepagecheckout/totals',
                    type: 'get',
                    success: function(json) {
                        $('#totals tbody').remove();
                        $('#totals').append('<tbody></tbody');
                        for (t in json['totals']) {
                            $('#totals tbody').append('<tr class="name subtotal"><td class="name subtotal"><strong>'+json['totals'][t]['title']+'</strong></td><td class="price">'+json['totals'][t]["text"]+'</td></tr>');
                            }
                    }
                    });
                // Update Totalsi!
            }
            $('#shipping-method').removeClass('loading');
        },
        error: function(xhr, ajaxOptions, thrownError) {
            alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
        }
        }
        ); //ajax
}

$(document).ready(function () {

    $(' #LoginModal .submit-login-form ').on('click', function(){
        $.ajax({
                url: 'index.php?route=checkout/onepagecheckout/AjaxLogin',
                type: 'post',
                data: $('#LoginModal #input-email, #LoginModal #input-password '),
                dataType: 'json',
                beforeSend: function() {

                },
                success: function(json) {
                    console.log(json);
                   if(json.errors!=0){
                       if(typeof json.errors.warning!='undefined' && json.errors.warning!='')
                       $('#LoginModal .errors-block').html(json.errors.warning) ;
                       if(typeof json.errors.errors!='undefined'&& json.errors.errors!='')
                       $('#LoginModal .errors-block').append( '<br>' + json.errors.error ) ;
                   }
                   else if(json.errors==0){
                       $('#firstname-ch').prop('value',json.c_name);
                       $('#city-ch').prop('value',json.city);
                       $('#address_1').prop('value',json.address_1);
                       $('#email-ch').prop('value',json.email);
                       $('#telephone-ch').prop('value',json.telephone);
                       $('#LoginModal').modal('hide');
                       $('#login_warning').html('');
                   }
                },
                error: function(xhr, ajaxOptions, thrownError) {
                    alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
                }
            }
        ); //ajax
        return false;
    });



$('.submit-button').on('click',function(e){
$.ajax({
url: 'index.php?route=checkout/onepagecheckout',
type: 'post',
cache: false,
data: $('.cart-order__content input[type=\'text\'], .cart-order__content input[type=\'tel\'], .cart-order__content input[type=\'hidden\'], .cart-order__content input[type=\'radio\']:checked, .cart-order__contentinput input[type=\'checkbox\']:checked, .cart-order__content  select '),
dataType: 'json',
beforeSend: function () {

},
complete: function () {

},
success: function (json) {
if (json.error) {
    if (json['error']['firstname']) {
    $('#firstname-ch+.error').html(json['error']['firstname']);
    }


    if (json['error']['email']) {
        $('#email-ch+.error').html(json['error']['email']);
    }

    if (json['error']['telephone']) {
        $('#telephone-ch+.error').html(json['error']['telephone']);
    }

    if (json['error']['address_1']) {
        $('#address_1+.error').html(json['error']['address_1']);
    }

    if (json['error']['city']) {
        $('#city-ch+.error').html(json['error']['city']);
    }
    if (json['error']['country_id']) {
        $('#input-country+.error').html(json['error']['country_id']);
    }
} else if(json['cod']) {
    $.ajax({
        type: 'get',
        url: 'index.php?route=extension/payment/cod/confirm',
        cache: false,
        beforeSend: function() {
        },
        complete: function() {
        },
        success: function() {
            location = 'index.php?route=checkout/success';
        }
    });
} else if(json['payment']) {
    $('.pform').html(json.payment);
    $('#cform')[0].submit();
    return;

    // $('.hiden_payment_info').html(json['payment']);
    // location = $('.hiden_payment_info a').attr('href');
} else {
    if (json.credit)
        credit_confirm('/index.php?route=checkout/part_payment_cart/getResult&from_privat24=true');
   /* else
        location = 'index.php?route=checkout/success'*/

}
},
error: function (xhr, ajaxOptions, thrownError) {
           alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
       }
});


});


});
//--></script>

<?php echo $footer; ?>
