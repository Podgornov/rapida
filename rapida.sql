/* $skipcreate is true. Truncate table s_blog */
TRUNCATE TABLE `s_blog`;
/* Data for table s_blog */
;
/* $skipcreate is true. Truncate table s_brands */
TRUNCATE TABLE `s_brands`;
/* Data for table s_brands */
INSERT INTO `s_brands` (`id`,`name`,`trans`,`trans2`,`meta_title`,`meta_keywords`,`meta_description`,`description`,`image`,`image_id`) VALUES
(1, 'brand', 'brandddd', '', 'brand', 'brand', 'brand', '', '', 0);
/* $skipcreate is true. Truncate table s_cache_integer */
TRUNCATE TABLE `s_cache_integer`;
/* $skipdata is true. Data skipped s_cache_integer */
/* $skipcreate is true. Truncate table s_categories */
TRUNCATE TABLE `s_categories`;
/* Data for table s_categories */
INSERT INTO `s_categories` (`id`,`parent_id`,`name`,`meta_title`,`meta_keywords`,`meta_description`,`description`,`url`,`url2`,`image`,`image_id`,`pos`,`visible`) VALUES
(1, 0, 'category', 'category', 'category', '', NULL, 'category', 'category_alter', '', 0, 1, 1);
/* $skipcreate is true. Truncate table s_categories_features */
TRUNCATE TABLE `s_categories_features`;
/* Data for table s_categories_features */
INSERT INTO `s_categories_features` (`category_id`,`feature_id`) VALUES
(1, 1);
/* $skipcreate is true. Truncate table s_comments */
TRUNCATE TABLE `s_comments`;
/* Data for table s_comments */
;
/* $skipcreate is true. Truncate table s_coupons */
TRUNCATE TABLE `s_coupons`;
/* Data for table s_coupons */
;
/* $skipcreate is true. Truncate table s_currencies */
TRUNCATE TABLE `s_currencies`;
/* Data for table s_currencies */
INSERT INTO `s_currencies` (`id`,`name`,`sign`,`code`,`rate`,`cents`,`pos`,`enabled`) VALUES
(1, 'RUR', 'RUR', 'RUR', '1', 0, 0, 1),
(2, 'USD', 'USD', 'USD', '0.0166667', 2, 1, 1),
(3, 'EUR', 'EUR', 'EUR', '0.0142857', 2, 2, 1);
/* $skipcreate is true. Truncate table s_delivery */
TRUNCATE TABLE `s_delivery`;
/* Data for table s_delivery */
;
/* $skipcreate is true. Truncate table s_delivery_payment */
TRUNCATE TABLE `s_delivery_payment`;
/* Data for table s_delivery_payment */
;
/* $skipcreate is true. Truncate table s_features */
TRUNCATE TABLE `s_features`;
/* Data for table s_features */
INSERT INTO `s_features` (`id`,`name`,`gid`,`trans`,`trans2`,`pos`,`in_filter`,`tpl`) VALUES
(1, 'тестовое', 0, 'testovoe', '', 0, 0, 0);
/* $skipcreate is true. Truncate table s_feedback */
TRUNCATE TABLE `s_feedback`;
/* Data for table s_feedback */
;
/* $skipcreate is true. Truncate table s_groups */
TRUNCATE TABLE `s_groups`;
/* Data for table s_groups */
;
/* $skipcreate is true. Truncate table s_img_blog */
TRUNCATE TABLE `s_img_blog`;
/* Data for table s_img_blog */
;
/* $skipcreate is true. Truncate table s_img_categories */
TRUNCATE TABLE `s_img_categories`;
/* Data for table s_img_categories */
INSERT INTO `s_img_categories` (`id`,`item_id`,`basename`,`pos`) VALUES
(1, 193, '815183d053fc018be591f0e28cff9c04.jpg', 0),
(7, 2, '9fccd9155ac877d6b975ab5266c74e01.jpg', 0),
(8, 2, '815183d053fc018be591f0e28cff9c04.jpg', 1),
(9, 9, '815183d053fc018be591f0e28cff9c04.jpg', 0);
/* $skipcreate is true. Truncate table s_img_products */
TRUNCATE TABLE `s_img_products`;
/* Data for table s_img_products */
INSERT INTO `s_img_products` (`id`,`item_id`,`basename`,`pos`) VALUES
(2, 1, '2ff0198a81469a6f381425ae75f979c8.jpg', 0);
/* $skipcreate is true. Truncate table s_labels */
TRUNCATE TABLE `s_labels`;
/* Data for table s_labels */
INSERT INTO `s_labels` (`id`,`name`,`color`,`pos`) VALUES
(1, 'новый', '3247ad', 1);
/* $skipcreate is true. Truncate table s_menu */
TRUNCATE TABLE `s_menu`;
/* Data for table s_menu */
INSERT INTO `s_menu` (`id`,`name`,`pos`) VALUES
(1, 'Основное меню', 0),
(2, 'Другие страницы', 1);
/* $skipcreate is true. Truncate table s_options */
TRUNCATE TABLE `s_options`;
/* Data for table s_options */
INSERT INTO `s_options` (`product_id`,`1`) VALUES
(1, 1);
/* $skipcreate is true. Truncate table s_options_groups */
TRUNCATE TABLE `s_options_groups`;
/* Data for table s_options_groups */
INSERT INTO `s_options_groups` (`id`,`name`,`pos`) VALUES
(1, 'основные ', 1),
(2, 'второстепенные ', 2);
/* $skipcreate is true. Truncate table s_options_uniq */
TRUNCATE TABLE `s_options_uniq`;
/* Data for table s_options_uniq */
INSERT INTO `s_options_uniq` (`id`,`val`,`trans`,`trans2`,`md4`,`md42`) VALUES
(1, 'тестовое свойство значение', 'testovoe_svoystvo_znachenie', '', 0xd7a69c6c95248d1977a14441790f81dd, 0x00000000000000000000000000000000);
/* $skipcreate is true. Truncate table s_orders */
TRUNCATE TABLE `s_orders`;
/* Data for table s_orders */
INSERT INTO `s_orders` (`id`,`delivery_id`,`delivery_price`,`payment_method_id`,`paid`,`payment_date`,`closed`,`date`,`user_id`,`name`,`address`,`phone`,`email`,`comment`,`status`,`url`,`payment_details`,`ip`,`total_price`,`note`,`discount`,`coupon_discount`,`coupon_code`,`separate_delivery`,`modified`) VALUES
(1, 0, 0.00, 0, 0, '1970-01-02 02:00:00', 0, '2017-12-24 02:03:36', 1, 'huang', 'address', '8239083', 'joho@ya.ru', '', 0, 'a3e8eaa2b623f8829f71b229b78ee643', NULL, '127.0.0.1', 13062.00, '', 0.00, 0.00, '', 0, '2017-12-24 03:07:13');
/* $skipcreate is true. Truncate table s_orders_labels */
TRUNCATE TABLE `s_orders_labels`;
/* Data for table s_orders_labels */
;
/* $skipcreate is true. Truncate table s_pages */
TRUNCATE TABLE `s_pages`;
/* Data for table s_pages */
INSERT INTO `s_pages` (`id`,`url`,`name`,`meta_title`,`meta_description`,`meta_keywords`,`body`,`menu_id`,`pos`,`visible`,`header`,`new_field`,`new_field2`) VALUES
(1, '', 'Главная', 'Хиты продаж', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.', 'Хиты продаж', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas accumsan libero fermentum nisl auctor dapibus. Sed sed gravida enim. In non pharetra lacus. Donec sed erat a felis hendrerit maximus. Vivamus congue turpis nec risus bibendum, at euismod odio rutrum. Aliquam pulvinar sapien vitae justo volutpat tristique. Donec ut accumsan urna. Quisque accumsan scelerisque metus eget pretium. Cras tincidunt volutpat dui ac maximus. Morbi congue ligula rutrum, interdum lectus id, cursus velit. Nunc interdum sagittis erat, at mattis erat molestie ut. Praesent ut rhoncus mi. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas.</p><p>Nullam et scelerisque odio. Maecenas ut ante erat. Suspendisse in cursus lacus, ac blandit odio. Cras quis nulla eu mauris sagittis luctus vel ut est. Praesent placerat tincidunt justo. Fusce iaculis sem a tortor ullamcorper vehicula. Sed hendrerit rutrum fringilla.</p><p>Duis eleifend, metus ut varius aliquet, tortor nibh gravida nulla, nec maximus diam diam non ligula. Sed eu vestibulum nisl, nec elementum orci. Nam pellentesque arcu ligula, in luctus mauris sollicitudin in. Quisque fermentum pretium rhoncus. Donec mauris purus, sodales vitae dictum nec, volutpat a erat. Etiam a fringilla arcu. Sed fringilla eu libero viverra viverra. Nullam dui enim, varius sit amet risus ut, suscipit malesuada eros. Ut a arcu in leo tempus euismod. Nam tempor purus nisi, a finibus ante ultricies eget. Sed consectetur justo ut vulputate cursus. Mauris ullamcorper, urna euismod rhoncus rhoncus, tortor metus dapibus libero, sit amet suscipit purus magna in nisi. Vestibulum et bibendum magna, ac pellentesque orci. In blandit odio efficitur ligula vehicula euismod. Ut congue ligula eu diam rhoncus, sed varius ipsum euismod. Cras placerat nunc non velit blandit, vitae consequat enim fermentum.</p><p>Vivamus ultricies sollicitudin nisl, eu placerat sem sollicitudin at. Vestibulum luctus neque vel volutpat tempor. Cras laoreet lorem a neque interdum, ut placerat ligula eleifend. Nullam a varius dui. Donec vel ligula at magna tempus sagittis. In cursus laoreet ultrices. Mauris sodales sem non nibh imperdiet luctus. Nullam malesuada aliquam egestas. Sed suscipit, ipsum non tempus porttitor, nulla justo tincidunt nisl, in auctor ligula nunc eu lacus. Fusce lorem risus, venenatis vel sodales ut, auctor et lacus. Fusce sagittis efficitur neque eu viverra. Etiam tortor odio, ultrices vulputate nunc eget, iaculis rutrum justo. Vivamus rutrum, mauris vel tempor placerat, neque nulla volutpat urna, ac hendrerit mauris sapien ut nisi.</p>', 1, 1, 1, 'О магазине', '', ''),
(2, 'oplata', 'Оплата', 'Оплата', 'Оплата', 'Оплата', '<h2><span>Наличными курьеру</span></h2><p>Вы можете оплатить заказ курьеру в гривнах непосредственно в момент доставки. Курьерская доставка осуществляется по Москве на следующий день после принятия заказа.</p><h2>Webmoney</h2><p>После оформления заказа вы сможете перейти на сайт webmoney для оплаты заказа, где сможете оплатить заказ в автоматическом режиме, а так же проверить наш сертификат продавца.</p><h2>Наличными в офисе Автолюкса</h2><p>При доставке заказа системой Автолюкс, вы сможете оплатить заказ в их офисе непосредственно в момент получения товаров.</p>', 1, 4, 1, 'Способы оплаты', '', ''),
(3, 'dostavka', 'Доставка', 'Доставка', 'Доставка', 'Доставка', '<h2>Курьерская доставка по&nbsp;Москве</h2><p>Курьерская доставка осуществляется на следующий день после оформления заказа<span style=\"margin-right: -0.2em;\">,</span><span style=\"margin-left: 0.2em;\"> </span>если товар есть в&nbsp;наличии. Курьерская доставка осуществляется в&nbsp;пределах Томска и&nbsp;Северска ежедневно с&nbsp;10.00 до&nbsp;21.00. Заказ на&nbsp;сумму свыше 300 рублей доставляется бесплатно. <br /><br />Стоимость бесплатной доставки раcсчитывается от&nbsp;суммы заказа с&nbsp;учтенной скидкой. В&nbsp;случае если сумма заказа после применения скидки менее 300р<span style=\"margin-right: -0.2em;\">,</span><span style=\"margin-left: 0.2em;\"> </span>осуществляется платная доставка. <br /><br />При сумме заказа менее 300 рублей стоимость доставки составляет от 50 рублей.</p><h2>Самовывоз</h2><p>Удобный<span style=\"margin-right: -0.2em;\">,</span><span style=\"margin-left: 0.2em;\"> </span>бесплатный и быстрый способ получения заказа.<br />Адрес офиса: Москва<span style=\"margin-right: -0.2em;\">,</span><span style=\"margin-left: 0.2em;\"> </span>ул. Арбат<span style=\"margin-right: -0.2em;\">,</span><span style=\"margin-left: 0.2em;\"> </span>1/3<span style=\"margin-right: -0.2em;\">,</span><span style=\"margin-left: 0.2em;\"> </span>офис 419.</p><h2>Доставка с&nbsp;помощью предприятия<span style=\"margin-right: 0.44em;\"> </span><span style=\"margin-left: -0.44em;\">&laquo;</span>Автотрейдинг&raquo;</h2><p>Удобный и быстрый способ доставки в крупные города России. Посылка доставляется в офис<span style=\"margin-right: 0.44em;\"> </span><span style=\"margin-left: -0.44em;\">&laquo;</span>Автотрейдинг&raquo; в&nbsp;Вашем городе. Для получения необходимо предъявить паспорт и&nbsp;номер грузовой декларации<span style=\"margin-right: 0.3em;\"> </span><span style=\"margin-left: -0.3em;\">(</span>сообщит наш менеджер после отправки). Посылку желательно получить в&nbsp;течение 24 часов с&nbsp;момента прихода груза<span style=\"margin-right: -0.2em;\">,</span><span style=\"margin-left: 0.2em;\"> </span>иначе компания<span style=\"margin-right: 0.44em;\"> </span><span style=\"margin-left: -0.44em;\">&laquo;</span>Автотрейдинг&raquo; может взыскать с Вас дополнительную оплату за хранение. Срок доставки и стоимость Вы можете рассчитать на сайте компании.</p><h2>Наложенным платежом</h2><p>При доставке заказа наложенным платежом с помощью<span style=\"margin-right: 0.44em;\"> </span><span style=\"margin-left: -0.44em;\">&laquo;</span>Почты России&raquo;, вы&nbsp;сможете оплатить заказ непосредственно в&nbsp;момент получения товаров.</p>', 1, 3, 1, 'Способы доставки', '', ''),
(4, 'blog', 'Блог', 'Блог', '', 'Блог', '', 1, 2, 1, 'Блог', '', ''),
(5, '404', '', 'Страница не найдена', 'Страница не найдена', 'Страница не найдена', '<p>Страница не найдена</p>', 2, 5, 1, 'Страница не найдена', '', ''),
(6, 'contact', 'Контакты', 'Контакты', 'Контакты', 'Контакты', '<p>Москва, шоссе Энтузиастов 45/31, офис 453.</p><p><a href=\"http://maps.yandex.ru/?text=%D0%A0%D0%BE%D1%81%D1%81%D0%B8%D1%8F%2C%20%D0%9C%D0%BE%D1%81%D0%BA%D0%B2%D0%B0%2C%20%D0%AD%D0%BD%D1%82%D1%83%D0%B7%D0%B8%D0%B0%D1%81%D1%82%D0%BE%D0%B2%20%D1%88%D0%BE%D1%81%D1%81%D0%B5%2C%2051&amp;sll=37.823314%2C55.773034&amp;sspn=0.021955%2C0.009277&amp;ll=37.826161%2C55.77356&amp;spn=0.019637%2C0.006461&amp;l=map\">Посмотреть на&nbsp;Яндекс.Картах</a></p><p>Телефон 345-45-54</p>', 1, 6, 1, 'Контакты', '', ''),
(7, 'products', 'Все товары', 'Все товары', '', 'Все товары', '', 2, 7, 1, 'Все товары', '', '');
/* $skipcreate is true. Truncate table s_payment_methods */
TRUNCATE TABLE `s_payment_methods`;
/* Data for table s_payment_methods */
INSERT INTO `s_payment_methods` (`id`,`module`,`name`,`description`,`currency_id`,`settings`,`enabled`,`pos`) VALUES
(1, 'Receipt', 'Квитанция', '<p>Вы можете распечатать квитанцию и оплатить её в любом отделении банка.</p>', 2, 'a:10:{s:9:\"recipient\";s:65:\"ООО \"Великолепный интернет-магазин\"\";s:3:\"inn\";s:5:\"12345\";s:7:\"account\";s:6:\"223456\";s:4:\"bank\";s:18:\"Альфабанк\";s:3:\"bik\";s:6:\"556677\";s:21:\"correspondent_account\";s:11:\"77777755555\";s:8:\"banknote\";s:7:\"руб.\";s:5:\"pense\";s:7:\"коп.\";s:5:\"purse\";s:2:\"ru\";s:10:\"secret_key\";s:0:\"\";}', 1, 2),
(2, 'Webmoney', 'Webmoney wmz', '<p><span></span></p><div><p>Оплата через платежную систему&nbsp;<a href=\"http://www.webmoney.ru\">WebMoney</a>. У вас должен быть счет в этой системе для того, чтобы произвести оплату. Сразу после оформления заказа вы будете перенаправлены на специальную страницу системы WebMoney, где сможете произвести платеж в титульных знаках WMZ.</p></div><p>&nbsp;</p>', 3, 'a:10:{s:9:\"recipient\";s:0:\"\";s:3:\"inn\";s:0:\"\";s:7:\"account\";s:0:\"\";s:4:\"bank\";s:0:\"\";s:3:\"bik\";s:0:\"\";s:21:\"correspondent_account\";s:0:\"\";s:8:\"banknote\";s:7:\"руб.\";s:5:\"pense\";s:0:\"\";s:5:\"purse\";s:13:\"Z111111111111\";s:10:\"secret_key\";s:13:\"testsecretkey\";}', 1, 1),
(3, 'Robokassa', 'Робокасса', '<p><span>RBK Money &ndash; это электронная платежная система, с помощью которой Вы сможете совершать платежи с персонального компьютера, коммуникатора или мобильного телефона.</span></p>', 3, 'a:14:{s:9:\"recipient\";s:0:\"\";s:3:\"inn\";s:0:\"\";s:7:\"account\";s:0:\"\";s:4:\"bank\";s:0:\"\";s:3:\"bik\";s:0:\"\";s:21:\"correspondent_account\";s:0:\"\";s:8:\"banknote\";s:0:\"\";s:5:\"pense\";s:0:\"\";s:5:\"login\";s:0:\"\";s:9:\"password1\";s:0:\"\";s:9:\"password2\";s:0:\"\";s:8:\"language\";s:2:\"ru\";s:5:\"purse\";s:0:\"\";s:10:\"secret_key\";s:0:\"\";}', 1, 3),
(4, 'Paypal', 'PayPal', '<p>Совершайте покупки безопасно, без раскрытия информации о своей кредитной карте. PayPal защитит вас, если возникнут проблемы с покупкой</p>', 1, 'a:16:{s:8:\"business\";s:0:\"\";s:4:\"mode\";s:7:\"sandbox\";s:9:\"recipient\";s:0:\"\";s:3:\"inn\";s:0:\"\";s:7:\"account\";s:0:\"\";s:4:\"bank\";s:0:\"\";s:3:\"bik\";s:0:\"\";s:21:\"correspondent_account\";s:0:\"\";s:8:\"banknote\";s:0:\"\";s:5:\"pense\";s:0:\"\";s:5:\"login\";s:0:\"\";s:9:\"password1\";s:0:\"\";s:9:\"password2\";s:0:\"\";s:8:\"language\";s:2:\"ru\";s:5:\"purse\";s:0:\"\";s:10:\"secret_key\";s:0:\"\";}', 1, 4),
(5, 'Interkassa', 'Оплата через Интеркассу', '<p><span>Это удобный в использовании сервис, подключение к которому позволит Интернет-магазинам, веб-сайтам и прочим торговым площадкам принимать все возможные формы оплаты в максимально короткие сроки.</span></p>', 2, 'a:2:{s:18:\"interkassa_shop_id\";s:3:\"123\";s:21:\"interkassa_secret_key\";s:3:\"123\";}', 1, 5),
(6, 'Liqpay', 'Оплата картой через Liqpay.com', '<p><span>Благодаря своей открытости и универсальности LiqPAY стремительно интегрируется со многими платежными системами и платформами и становится стандартом платежных операций.</span></p>', 2, 'a:5:{s:9:\"liqpay_id\";s:3:\"123\";s:11:\"liqpay_sign\";s:3:\"123\";s:12:\"pay_way_card\";s:1:\"1\";s:14:\"pay_way_liqpay\";s:1:\"1\";s:15:\"pay_way_delayed\";s:1:\"1\";}', 1, 6),
(7, 'Pay2Pay', 'Оплата через Pay2Pay', '<p>Универсальный платежный сервис Pay2Pay призван облегчить и максимально упростить процесс приема электронных платежей на Вашем сайте. Мы открыты для всего нового и сверхсовременного.</p>', 2, 'a:5:{s:18:\"pay2pay_merchantid\";s:3:\"123\";s:14:\"pay2pay_secret\";s:3:\"123\";s:14:\"pay2pay_hidden\";s:3:\"123\";s:15:\"pay2pay_paymode\";s:3:\"123\";s:16:\"pay2pay_testmode\";s:1:\"1\";}', 1, 7),
(8, 'Qiwi', 'Оплатить через QIWI', '<p><span>QIWI &mdash; удобный сервис для оплаты повседневных услуг</span></p>', 2, 'a:2:{s:10:\"qiwi_login\";s:3:\"123\";s:13:\"qiwi_password\";s:3:\"123\";}', 1, 8);
/* $skipcreate is true. Truncate table s_products */
TRUNCATE TABLE `s_products`;
/* Data for table s_products */
INSERT INTO `s_products` (`id`,`url`,`url2`,`image`,`image_id`,`brand_id`,`name`,`annotation`,`body`,`visible`,`pos`,`meta_title`,`meta_keywords`,`meta_description`,`created`,`featured`,`stock`) VALUES
(1, 'test', 'test_alter', '2ff0198a81469a6f381425ae75f979c8.jpg', 2, 0, 'test', '', '', 1, 0, '', '', '', '2017-12-15 23:08:37', 0, 1);
/* $skipcreate is true. Truncate table s_products_categories */
TRUNCATE TABLE `s_products_categories`;
/* Data for table s_products_categories */
INSERT INTO `s_products_categories` (`product_id`,`category_id`) VALUES
(1, 1);
/* $skipcreate is true. Truncate table s_purchases */
TRUNCATE TABLE `s_purchases`;
/* Data for table s_purchases */
INSERT INTO `s_purchases` (`id`,`order_id`,`product_id`,`variant_id`,`product_name`,`variant_name`,`price`,`amount`,`sku`) VALUES
(1, 1, 1, 1, 'test', '', 4354.00, 3, '1');
/* $skipcreate is true. Truncate table s_queue */
TRUNCATE TABLE `s_queue`;
/* $skipdata is true. Data skipped s_queue */
/* $skipcreate is true. Truncate table s_queue_full */
TRUNCATE TABLE `s_queue_full`;
/* $skipdata is true. Data skipped s_queue_full */
/* $skipcreate is true. Truncate table s_related_products */
TRUNCATE TABLE `s_related_products`;
/* Data for table s_related_products */
;
/* $skipcreate is true. Truncate table s_settings */
TRUNCATE TABLE `s_settings`;
/* Data for table s_settings */
INSERT INTO `s_settings` (`setting_id`,`name`,`value`) VALUES
(1, 'theme', 'luxury_classic_menu_1'),
(2, 'site_name', 'site'),
(3, 'company_name', 'site'),
(4, 'date_format', 'd.m.Y'),
(5, 'admin_email', 'site@site.si'),
(6, 'order_email', 'site@site.si'),
(7, 'comment_email', 'site@site.si'),
(8, 'notify_from_email', 'site@site.si'),
(9, 'decimals_point', '.'),
(10, 'thousands_separator', ' '),
(11, 'products_num', '24'),
(12, 'products_num_admin', '24'),
(13, 'max_order_amount', '100'),
(14, 'units', 'ед.'),
(15, 'phone', '');
/* $skipcreate is true. Truncate table s_slider */
TRUNCATE TABLE `s_slider`;
/* Data for table s_slider */
INSERT INTO `s_slider` (`id`,`basename`,`url`,`text`,`visible`,`pos`) VALUES
(1, '1.jpg', '#', 'first slide', 1, 0),
(2, '2.jpg', '#', 'second slide', 1, 1),
(3, '3.jpg', '#', 'third slide', 1, 2);
/* $skipcreate is true. Truncate table s_users */
TRUNCATE TABLE `s_users`;
/* Data for table s_users */
INSERT INTO `s_users` (`id`,`email`,`password`,`name`,`group_id`,`enabled`,`admin`,`perm`,`last_ip`,`last_login`,`created`) VALUES
(1, 'admin@admin.ad', '5f6b179e0034e20383dfe8942f59cda6', 'admin@admin.ad', 0, 1, 1, '0:1:2:3:4:5:6:7:8:9:10:11:12:13:14:15:16:17:18:19:20:21:22:23', '151.66.102.24', '2018-03-26 21:20:35', '2017-11-12 06:08:40');
/* $skipcreate is true. Truncate table s_variants */
TRUNCATE TABLE `s_variants`;
/* Data for table s_variants */
INSERT INTO `s_variants` (`id`,`product_id`,`sku`,`name`,`price`,`price1`,`price2`,`price3`,`old_price`,`stock`,`preorder`,`pos`) VALUES
(1, 1, '1', '', 4354.00, 354.00, 5.00, 2.00, 200.00, 999, 0, 0);
