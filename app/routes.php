<?php

$app->get('/',['Cart\Controlers\HomeController','index'])->setName('home');

$app->get('/products/{slug}',['Cart\Controlers\ProductController','get'])->setName('product.get');

$app->get('/cart',['Cart\Controlers\CartController','index'])->setName('cart.index');
$app->get('/cart/add/{slug}/{quantity}',['Cart\Controlers\CartController','add'])->setName('cart.add');
$app->post('/cart/update/{slug}',['Cart\Controlers\CartController','update'])->setName('cart.update');

$app->get('/order',['Cart\Controlers\OrderController','index'])->setName('order.index');
$app->get('/order/{hash}',['Cart\Controlers\OrderController','show'])->setName('order.show');

$app->post('/order',['Cart\Controlers\OrderController','create'])->setName('order.create');

$app->get('/braintree/token',['Cart\Controlers\BraintreeController','token'])->setName('braintree.token');
