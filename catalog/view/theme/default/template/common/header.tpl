<!DOCTYPE html>
<!--[if IE]><![endif]-->
<!--[if IE 8 ]><html dir="<?php echo $direction; ?>" lang="<?php echo $lang; ?>" class="ie8"><![endif]-->
<!--[if IE 9 ]><html dir="<?php echo $direction; ?>" lang="<?php echo $lang; ?>" class="ie9"><![endif]-->
<!--[if (gt IE 9)|!(IE)]><!-->
<html dir="<?php echo $direction; ?>" lang="<?php echo $lang; ?>">
<!--<![endif]-->
<head>
<meta charset="UTF-8" />
<meta name='viewport' content='width=device-width, initial-scale=1, shrink-to-fit=no'>
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title><?php echo $title;  ?></title>
<base href="<?php echo $base; ?>" />
<?php if ($description) { ?>
<meta name="description" content="<?php echo $description; ?>" />
<?php } ?>
<?php if ($keywords) { ?>
<meta name="keywords" content= "<?php echo $keywords; ?>" />
<?php } ?>
<meta property="og:title" content="<?php echo $title; ?>" />
<meta property="og:type" content="website" />
<meta property="og:url" content="<?php echo $og_url; ?>" />
<?php if ($og_image) { ?>
<meta property="og:image" content="<?php echo $og_image; ?>" />
<?php } else { ?>
<meta property="og:image" content="<?php echo $logo; ?>" />
<?php } ?>
<meta property="og:site_name" content="<?php echo $name; ?>" />
<script src="catalog/view/javascript/jquery/jquery-2.1.1.min.js" type="text/javascript"></script>
<link href="https://fonts.googleapis.com/css2?family=Roboto:wght@300;400;500;700&display=swap" rel="stylesheet">
<link rel="stylesheet" href="https://unpkg.com/swiper/swiper-bundle.css">
<link href="https://unpkg.com/aos@2.3.1/dist/aos.css" rel="stylesheet">
<link rel='stylesheet' href='catalog/view/theme/default/stylesheet/main.css?v=9'>
<!-- <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script> -->
<?php foreach ($styles as $style) { ?>
<link href="<?php echo $style['href']; ?>" type="text/css" rel="<?php echo $style['rel']; ?>" media="<?php echo $style['media']; ?>" />
<?php } ?>

<script src="catalog/view/javascript/gorsad/scripts.js?v=2"></script>
<script src="catalog/view/javascript/common.js" type="text/javascript"></script>
<?php foreach ($links as $link) { ?>
<link href="<?php echo $link['href']; ?>" rel="<?php echo $link['rel']; ?>" />
<?php } ?>
<?php foreach ($scripts as $script) { ?>
<script src="<?php echo $script; ?>" type="text/javascript"></script>
<?php } ?>
<?php foreach ($analytics as $analytic) { ?>
<?php echo $analytic; ?>
<?php } ?>
</head>
<body class="<?php echo $class; ?> body" id="top">

	<div class="mob">
		<div class="mob-wrap">
					<div class="head-mob">
			<nav class="nav-mob">
				<div class="nav-mob__logo">
					<a href="https://gorsadstore.com/#top">
						<img class="nav-mob__img" src="catalog/view/theme/default/image/gorsad/header-logo.png" alt="Logo">
					</a>
				</div>
				<div class="nav-mob__options">
					<div class="mob__nav">
						<button class="hamburger hamburger--spin" type="button">
							<span class="hamburger-box">
								<span class="hamburger-inner"></span>
							</span>
						</button>
					</div>
				</div>
			</nav>
		</div>

		<div class="menu-mob">
			<nav class="mob-nav">
				<ul class="mob-nav__list">
					<li class="mob-nav__item">
						<a href="#shop" class="mob-nav__link">Store</a>
					</li>
					<li class="mob-nav__item">
						<a href="#about" class="mob-nav__link">About us</a>
					</li>
					<li class="mob-nav__item">
						<a href="#road" class="mob-nav__link">Shipping & payment</a>
					</li>
				</ul>
				<div class="mob-nav__info">
					<svg style="width:26px" class="mob-nav__svg" viewBox="0 0 100 100">
						<path xmlns="http://www.w3.org/2000/svg"
							d="M78.627,98.601c0.028-0.058,0.053-0.115,0.075-0.175c0.023-0.063,0.044-0.124,0.062-0.188  c0.016-0.061,0.027-0.122,0.038-0.184c0.011-0.064,0.02-0.128,0.023-0.192c0.005-0.063,0.005-0.128,0.003-0.193  c-0.002-0.064-0.006-0.129-0.015-0.194c-0.008-0.061-0.02-0.122-0.033-0.183c-0.016-0.07-0.035-0.14-0.058-0.208  c-0.011-0.029-0.014-0.06-0.025-0.089L52.771,31.03c3.862-1.187,6.678-4.787,6.678-9.033c0-5.21-4.238-9.449-9.448-9.449  c-5.21,0-9.45,4.239-9.45,9.449c0,4.246,2.816,7.845,6.678,9.033L21.301,96.993c-0.012,0.029-0.015,0.06-0.025,0.09  c-0.023,0.067-0.042,0.136-0.058,0.205c-0.014,0.063-0.025,0.124-0.033,0.186c-0.008,0.064-0.012,0.128-0.014,0.192  c-0.002,0.065-0.002,0.13,0.002,0.195c0.004,0.063,0.013,0.127,0.023,0.19c0.01,0.063,0.022,0.124,0.039,0.185  c0.017,0.064,0.038,0.126,0.062,0.188c0.022,0.06,0.046,0.117,0.074,0.174c0.028,0.058,0.06,0.113,0.094,0.169  c0.036,0.06,0.075,0.115,0.117,0.171c0.02,0.025,0.034,0.055,0.055,0.08c0.018,0.021,0.041,0.035,0.059,0.056  c0.058,0.063,0.12,0.12,0.186,0.176c0.044,0.037,0.088,0.074,0.135,0.107c0.063,0.044,0.13,0.081,0.199,0.118  c0.057,0.03,0.112,0.063,0.17,0.087c0.016,0.007,0.029,0.018,0.045,0.023c0.068,0.027,0.138,0.041,0.207,0.06  c0.042,0.012,0.083,0.028,0.126,0.037c0.132,0.026,0.266,0.043,0.398,0.043c0.004,0,0.009-0.002,0.013-0.002  c0.173-0.001,0.345-0.031,0.514-0.077c0.029-0.008,0.059-0.014,0.087-0.023c0.159-0.051,0.311-0.124,0.457-0.217  c0.031-0.02,0.06-0.041,0.09-0.063c0.044-0.032,0.091-0.058,0.133-0.094l25.543-21.662l25.543,21.663  c0.043,0.036,0.09,0.063,0.135,0.095c0.029,0.021,0.057,0.042,0.087,0.062c0.146,0.093,0.299,0.166,0.458,0.218  c0.029,0.009,0.058,0.015,0.087,0.022c0.17,0.046,0.342,0.076,0.516,0.077c0.004,0,0.009,0.002,0.013,0.002  c0.132,0,0.265-0.016,0.397-0.043c0.043-0.009,0.084-0.025,0.126-0.037c0.069-0.019,0.139-0.032,0.207-0.06  c0.016-0.006,0.029-0.017,0.045-0.023c0.059-0.024,0.113-0.057,0.17-0.087c0.068-0.037,0.137-0.074,0.199-0.118  c0.047-0.033,0.09-0.07,0.134-0.107c0.066-0.056,0.13-0.113,0.188-0.177c0.019-0.02,0.041-0.034,0.059-0.055  c0.021-0.025,0.035-0.054,0.055-0.079c0.043-0.056,0.082-0.112,0.118-0.172C78.568,98.713,78.6,98.658,78.627,98.601z   M61.033,62.985l-11.034,9.357l-11.033-9.357L50,34.914L61.033,62.985z M44.551,21.997c0-3.005,2.445-5.449,5.45-5.449  c3.004,0,5.448,2.444,5.448,5.449s-2.444,5.449-5.448,5.449C46.996,27.446,44.551,25.002,44.551,21.997z M27.932,91.058  l9.488-24.139l9.487,8.046L27.932,91.058z M62.579,66.919l9.487,24.139L53.092,74.965L62.579,66.919z"
							fill="currentColor"></path>
						<path xmlns="http://www.w3.org/2000/svg"
							d="M33.511,30.252c0.459,0,0.921-0.157,1.298-0.479c0.84-0.717,0.939-1.979,0.222-2.82c-2.452-2.872-2.452-7.041,0-9.911  c0.718-0.84,0.618-2.102-0.222-2.819c-0.839-0.718-2.102-0.618-2.819,0.222c-3.738,4.375-3.738,10.729,0,15.106  C32.384,30.014,32.946,30.252,33.511,30.252z"
							fill="currentColor"></path>
						<path xmlns="http://www.w3.org/2000/svg"
							d="M23.701,37.889c0.396,0.463,0.957,0.701,1.522,0.701c0.459,0,0.921-0.157,1.298-0.479c0.84-0.717,0.939-1.98,0.222-2.82  c-6.579-7.704-6.579-18.885,0-26.587c0.717-0.84,0.618-2.102-0.222-2.82c-0.839-0.718-2.101-0.618-2.82,0.222  C15.837,15.313,15.837,28.68,23.701,37.889z"
							fill="currentColor"></path>
						<path xmlns="http://www.w3.org/2000/svg"
							d="M18.455,3.573c0.717-0.84,0.618-2.103-0.222-2.82c-0.84-0.717-2.103-0.618-2.82,0.222  c-10.403,12.181-10.403,29.863,0,42.043c0.396,0.463,0.957,0.701,1.522,0.701c0.459,0,0.921-0.157,1.298-0.479  c0.84-0.718,0.939-1.98,0.222-2.82C9.337,29.746,9.337,14.249,18.455,3.573z"
							fill="currentColor"></path>
						<path xmlns="http://www.w3.org/2000/svg"
							d="M65.191,29.773c0.377,0.322,0.839,0.479,1.298,0.479c0.564,0,1.126-0.238,1.521-0.701c3.738-4.377,3.738-10.73,0-15.106  c-0.717-0.84-1.979-0.939-2.819-0.222c-0.84,0.718-0.939,1.98-0.222,2.82c2.452,2.871,2.452,7.04,0,9.911  C64.252,27.793,64.352,29.056,65.191,29.773z"
							fill="currentColor"></path>
						<path xmlns="http://www.w3.org/2000/svg"
							d="M73.479,38.111c0.377,0.322,0.839,0.479,1.298,0.479c0.564,0,1.126-0.238,1.521-0.701c7.865-9.208,7.865-22.574,0-31.782  c-0.718-0.84-1.979-0.939-2.819-0.222c-0.84,0.718-0.939,1.98-0.222,2.82c6.579,7.703,6.579,18.884,0,26.587  C72.54,36.131,72.64,37.393,73.479,38.111z"
							fill="currentColor"></path>
						<path xmlns="http://www.w3.org/2000/svg"
							d="M84.587,0.976c-0.718-0.84-1.979-0.94-2.819-0.222c-0.84,0.717-0.939,1.98-0.222,2.82c9.117,10.676,9.117,26.172,0,36.848  c-0.718,0.84-0.618,2.102,0.222,2.82c0.377,0.322,0.839,0.479,1.298,0.479c0.564,0,1.126-0.238,1.521-0.701  C94.99,30.838,94.99,13.157,84.587,0.976z"
							fill="currentColor"></path>
					</svg>
					<div class="mob-nav__text" style="color: #fff">Earth is not my home</div>
				</div>
			</nav>
		</div>
		</div>

	</div>


	<div class="bar bar-fixed">
		<div class="container">
			<div class="head">

				<nav class="nav">
					<ul class="nav__list">
						<li class="nav__item nav__item_style">
							<a href="https://gorsadstore.com/#shop" class="nav__link nav__link_style">Store</a>
						</li>
						<li class="nav__item nav__item_style">
							<a href="https://gorsadstore.com/#about" class="nav__link nav__link_style">About us</a>
						</li>
						<li class="nav__item nav__item_style">
							<a href="https://gorsadstore.com/#road" class="nav__link nav__link_style">Shipping & Payment</a>
						</li>
					</ul>
				</nav>

				<div class="logo">
					<a href="https://gorsadstore.com/#top">
						<div class="logo__bg"></div>
					</a>
				</div>

				<div class="descr">
					<ul class="descr__list">
						<li class="descr__item nav__item_style">
							<div class="descr__item_circle"></div>
							<div class="descr__link nav__link_style">OPEN</div>
						</li>
						<li class="descr__item nav__item_style">
							<div class="descr__icon">
								<svg style="width:26px" class="descr__svg" viewBox="0 0 100 100">
									<path xmlns="http://www.w3.org/2000/svg"
										d="M78.627,98.601c0.028-0.058,0.053-0.115,0.075-0.175c0.023-0.063,0.044-0.124,0.062-0.188  c0.016-0.061,0.027-0.122,0.038-0.184c0.011-0.064,0.02-0.128,0.023-0.192c0.005-0.063,0.005-0.128,0.003-0.193  c-0.002-0.064-0.006-0.129-0.015-0.194c-0.008-0.061-0.02-0.122-0.033-0.183c-0.016-0.07-0.035-0.14-0.058-0.208  c-0.011-0.029-0.014-0.06-0.025-0.089L52.771,31.03c3.862-1.187,6.678-4.787,6.678-9.033c0-5.21-4.238-9.449-9.448-9.449  c-5.21,0-9.45,4.239-9.45,9.449c0,4.246,2.816,7.845,6.678,9.033L21.301,96.993c-0.012,0.029-0.015,0.06-0.025,0.09  c-0.023,0.067-0.042,0.136-0.058,0.205c-0.014,0.063-0.025,0.124-0.033,0.186c-0.008,0.064-0.012,0.128-0.014,0.192  c-0.002,0.065-0.002,0.13,0.002,0.195c0.004,0.063,0.013,0.127,0.023,0.19c0.01,0.063,0.022,0.124,0.039,0.185  c0.017,0.064,0.038,0.126,0.062,0.188c0.022,0.06,0.046,0.117,0.074,0.174c0.028,0.058,0.06,0.113,0.094,0.169  c0.036,0.06,0.075,0.115,0.117,0.171c0.02,0.025,0.034,0.055,0.055,0.08c0.018,0.021,0.041,0.035,0.059,0.056  c0.058,0.063,0.12,0.12,0.186,0.176c0.044,0.037,0.088,0.074,0.135,0.107c0.063,0.044,0.13,0.081,0.199,0.118  c0.057,0.03,0.112,0.063,0.17,0.087c0.016,0.007,0.029,0.018,0.045,0.023c0.068,0.027,0.138,0.041,0.207,0.06  c0.042,0.012,0.083,0.028,0.126,0.037c0.132,0.026,0.266,0.043,0.398,0.043c0.004,0,0.009-0.002,0.013-0.002  c0.173-0.001,0.345-0.031,0.514-0.077c0.029-0.008,0.059-0.014,0.087-0.023c0.159-0.051,0.311-0.124,0.457-0.217  c0.031-0.02,0.06-0.041,0.09-0.063c0.044-0.032,0.091-0.058,0.133-0.094l25.543-21.662l25.543,21.663  c0.043,0.036,0.09,0.063,0.135,0.095c0.029,0.021,0.057,0.042,0.087,0.062c0.146,0.093,0.299,0.166,0.458,0.218  c0.029,0.009,0.058,0.015,0.087,0.022c0.17,0.046,0.342,0.076,0.516,0.077c0.004,0,0.009,0.002,0.013,0.002  c0.132,0,0.265-0.016,0.397-0.043c0.043-0.009,0.084-0.025,0.126-0.037c0.069-0.019,0.139-0.032,0.207-0.06  c0.016-0.006,0.029-0.017,0.045-0.023c0.059-0.024,0.113-0.057,0.17-0.087c0.068-0.037,0.137-0.074,0.199-0.118  c0.047-0.033,0.09-0.07,0.134-0.107c0.066-0.056,0.13-0.113,0.188-0.177c0.019-0.02,0.041-0.034,0.059-0.055  c0.021-0.025,0.035-0.054,0.055-0.079c0.043-0.056,0.082-0.112,0.118-0.172C78.568,98.713,78.6,98.658,78.627,98.601z   M61.033,62.985l-11.034,9.357l-11.033-9.357L50,34.914L61.033,62.985z M44.551,21.997c0-3.005,2.445-5.449,5.45-5.449  c3.004,0,5.448,2.444,5.448,5.449s-2.444,5.449-5.448,5.449C46.996,27.446,44.551,25.002,44.551,21.997z M27.932,91.058  l9.488-24.139l9.487,8.046L27.932,91.058z M62.579,66.919l9.487,24.139L53.092,74.965L62.579,66.919z"
										fill="currentColor"></path>
									<path xmlns="http://www.w3.org/2000/svg"
										d="M33.511,30.252c0.459,0,0.921-0.157,1.298-0.479c0.84-0.717,0.939-1.979,0.222-2.82c-2.452-2.872-2.452-7.041,0-9.911  c0.718-0.84,0.618-2.102-0.222-2.819c-0.839-0.718-2.102-0.618-2.819,0.222c-3.738,4.375-3.738,10.729,0,15.106  C32.384,30.014,32.946,30.252,33.511,30.252z"
										fill="currentColor"></path>
									<path xmlns="http://www.w3.org/2000/svg"
										d="M23.701,37.889c0.396,0.463,0.957,0.701,1.522,0.701c0.459,0,0.921-0.157,1.298-0.479c0.84-0.717,0.939-1.98,0.222-2.82  c-6.579-7.704-6.579-18.885,0-26.587c0.717-0.84,0.618-2.102-0.222-2.82c-0.839-0.718-2.101-0.618-2.82,0.222  C15.837,15.313,15.837,28.68,23.701,37.889z"
										fill="currentColor"></path>
									<path xmlns="http://www.w3.org/2000/svg"
										d="M18.455,3.573c0.717-0.84,0.618-2.103-0.222-2.82c-0.84-0.717-2.103-0.618-2.82,0.222  c-10.403,12.181-10.403,29.863,0,42.043c0.396,0.463,0.957,0.701,1.522,0.701c0.459,0,0.921-0.157,1.298-0.479  c0.84-0.718,0.939-1.98,0.222-2.82C9.337,29.746,9.337,14.249,18.455,3.573z"
										fill="currentColor"></path>
									<path xmlns="http://www.w3.org/2000/svg"
										d="M65.191,29.773c0.377,0.322,0.839,0.479,1.298,0.479c0.564,0,1.126-0.238,1.521-0.701c3.738-4.377,3.738-10.73,0-15.106  c-0.717-0.84-1.979-0.939-2.819-0.222c-0.84,0.718-0.939,1.98-0.222,2.82c2.452,2.871,2.452,7.04,0,9.911  C64.252,27.793,64.352,29.056,65.191,29.773z"
										fill="currentColor"></path>
									<path xmlns="http://www.w3.org/2000/svg"
										d="M73.479,38.111c0.377,0.322,0.839,0.479,1.298,0.479c0.564,0,1.126-0.238,1.521-0.701c7.865-9.208,7.865-22.574,0-31.782  c-0.718-0.84-1.979-0.939-2.819-0.222c-0.84,0.718-0.939,1.98-0.222,2.82c6.579,7.703,6.579,18.884,0,26.587  C72.54,36.131,72.64,37.393,73.479,38.111z"
										fill="currentColor"></path>
									<path xmlns="http://www.w3.org/2000/svg"
										d="M84.587,0.976c-0.718-0.84-1.979-0.94-2.819-0.222c-0.84,0.717-0.939,1.98-0.222,2.82c9.117,10.676,9.117,26.172,0,36.848  c-0.718,0.84-0.618,2.102,0.222,2.82c0.377,0.322,0.839,0.479,1.298,0.479c0.564,0,1.126-0.238,1.521-0.701  C94.99,30.838,94.99,13.157,84.587,0.976z"
										fill="currentColor"></path>
								</svg>
							</div>
						</li>
						<li class="descr__item nav__item_style">
							<a class="descr__link nav__link_style">Earth is not my home</a>
						</li>
					</ul>
				</div>

			</div>
		</div>
	</div>

<?php if ($categories) { ?>

<?php } ?>
