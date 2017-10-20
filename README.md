RAPIDA Ecommerce CMS
SimplaCMS 2.3.8 fork

****************
Changelog
****************

=================
v0.0.6 19.10.2017
=================
- Очень значительное с технической точки зрения изменение. Изменена структура хранения свойств товаров. Теперь таблица s_options горизонтальная, а не вертикальная. В ней хранятся id товара, id свойств по столбцам, и значения id самих значений свойств. Значения свойств хранятся в отдельной таблице s_options_uniq. Тут записаны id, уникальные значения свойств товаров и md4 хеши значений в шестнадцатеричном формате bin(16). В классе db небольшие доработки внесены в методы results_array results_object, в классе features почти все методы переделаны под новую систему хранения свойств, добавлены новые методы для работы с более сложной структурой хранения. Переделаны также методы get_products и count_products из класса products, которые в основном используются для отображения товара и подстчета количества страниц в витрине товаров.
- В связи с вышеназванными изменениями ссылки с выбранными фильтрами теперь выглядят не так: site.com/catalog/phones?1=gsm, а вот так: site.com/catalog/phones?1=123. Т.е. теперь вместо значений id.
- При тестировании на Mysql 5.7 x64 обнаружилось, что теперь СУБД более строго подходит к значениям полей "по умолчанию", если поле demo записано без значения по умолчанию, то запрос вида INSERT table SET some = 23 не пройдет так как не указано значение для поля demo. Если поле some стоит как integer, то запрос UPDATE table SET some = 'text' не пройдет. В этой связи в огромном количестве мест пришлось вносить правки.
- Немного улучшил работу модуля backup, раньше он создавал пустой каталог files/products (в нем система пишет миниатюры изображений), т.е. если у вас там .htaccess, то он в архив не попадал. Сейчас все файлы, которые начинаются с точки в архив попадают.
- Во всех таблицах БД поставил DEFAULT NULL всем полям, которые могут быть пустыми.
 
=================
v0.0.5.3 15.10.2017
=================
- Отключил type hinting в тех функциях, где я уже успел его использовать. Теперь система работает не только на php7, но и на php5.

=================
v0.0.5.2 15.10.2017
=================
- После включения кеша, возник баг с открытием страниц товара в админке. Устранен. 

=================
v0.0.5.1 15.10.2017
=================
- В демонстрационную инсталяционную базу, которая создается на этапе установке системы, добавлены недостающие таблицы s_queue рабочая очередь задач. s_queue_full очередь задач для сохранения всех задач (не очищается автоматически) s_cache_integer для записи кеша цифровых значений.
- Расположение файлового кеша по умолчанию изменено на cache в корневой директории системы
- Раньше к имени директории, которая создается для кеша в конце дописывался дефис. securityKey = mysite становилось mysite- Теперь так больше не делает.

=================
v0.0.5 14.10.2017
=================
- Удалены лишние файлы simpla/LicenseAdmin.php и simpla/design/html/license.tpl
- Удалены хвосты из файла simpla/design/html/index.tpl от интеграции с сервисом "простые звонки"
- В целях удобства в классе config api/Config.php, который отвечает за работу с config.ini добавлена парсинг ini файла по секциям, теперь в классе создана публичная переменная $vars_sections, где настройки config.ini, распределены по секциям. Например, настройки кеша доступны $this->config->vars_sections['cache']
- устранена ошибка в методе cache->encode() (убрал лишний аргумент, который не использовался $param)
- настройки кеша выведены из api/Cache.php в config/config.ini 
- Добавлено кеширование на диск по самой "тяжелой" функции системы features->get_options(). Пожалуй, кеширование этой функции - самый эффективный тюнинг скорости который можно сделать. Время загрузки не самого большого раздела сократилось до 170мс, без кеширования это время составляло около 4с.
- Исправлен баг с работой функции products->get_products(). В начале функции из $filter (аргумент функции) удалялись лишние параметры. Было сделано для того, чтобы не захламлять кеш лишней информацией, но применительно к функции get_products удалялись $filter['page'] $filter['limit'] $filter['sort'], в результате при переключении пагинации в разделах сайта, товары не изменялись.
- Исправлен баг с тем, что пользователь отображался авторизованным даже, когда авторизации не происходило. view/View.php
- в файле шаблона cart.tpl исправлен баг, приводящий к ошибке, когда пользователь не авторизован. {if $user->discount} заменено на {if isset($user->discount)}. Аналогичный баг исправлен в view/CartView.php в части $coupon_request, теперь, если действующих купонов нет, все равно в шаблон передается переменная $coupon_request, но со значением false. Стараюсь устранять ошибки, которые раньше не отображались в связи с тем, что отображение ошибок типа notice было принудительно отключено. К сожалению не всегда удается обойтись без исправлений в шаблоне. Потенциально в других шаблонах возможно повторение этих ошибок.
- Изменен метод features->get_features(), теперь он тоже, как и products->get_products() выдает объект сразу сгруппированный по id, соответствующие изменения внесены в другие места, где используется данный метод.

=================
v0.0.4 13.10.2017
=================
- Изменен метод db->results(string $field = null, string $group_field = null), теперь он работает аналогично, results_array с той разницей, что выдает массив с объектами внутри, а не массив с массивами внутри.
= Добавлены файлы для выполнения очереди задач через cron. Выполнить задания из очереди cron/queue_exec.php. Посмотреть кол-во заданий в очереди cron/queue_count.php
- Добавлен метод db->results_object(string $group_field = null) и изменен db->results_array(string $group_field = null). Работают сходным образом, с той разницей, что один выдает объект, а второй массив.
- На метод products->get_products() прикручен дисковый кеш через методы cache->set_cache_nosql() cache->get_cache_nosql(). Кеш пишет на диск вывод метода products->get_products в виде json строки, а при чтении из кеша, преобразует json строку обратно в объект.
- Мелким изменениям подверглись почти все файлы view/*.php и simpla/*.php в связи с использованием в методе products->get_products() нового метода db->results_object(). Пришлось изменить на новый метод в связи с тем, что дисковый кеш cache->set_cache_nosql() и cache->get_cache_nosql() используют для записи на диск функции json_decode json_encode, которые все пишут в объект. В результате при обратном преобразовании ф-цией json_decode данных из кеша с диска невозможно было восстановить, объекты, как объекты, а массивы, как массивы. Теперь все данные выводятся чистыми объектами.
- Внесены изменения в методы products->get_products() и products->get_related_products(), теперь результат выполнения сразу группируется по id, соответствующие изменения внесены во всех случаях использования этих методов.
- Изменен метод 'products->add_image()'. Оптимизирована работа. Кол-во запросов уменьшено до 2. Первый запрос определяет максимальную позицию изображений товара, 2 запрос добавляет новое изображение товара, сразу устанавливая позицию макс. знач. + 1.
- Исправлена ошибка в simpla/ProductAdmin.php message_error добавляется в шаблон в любом случае, если ошибки нет - добавляется пустой message_error.
- В файле simpla/index.php удалены указания на несуществующий дебагер, добавлен дебагер dtimer::show(), также как в файле /index.php
- в методе request->url иправлена ошибка. Если при парсинге адресной строки через $url = parse_url($_SERVER['REQUEST_URI']) в полученном массиве нет элемента 'query' (часть после ?) $url['query'] - вылетала ошибка. Теперь добавлена предварительная проверка и ошибка больше не вылетает.
- Удалена поддержка сервиса "Простые звонки"
- Исправлена ошибка в view\ProductsView.php в части перечисления свойств товаров $features.
- Устранены мелкие баги (Какие именно не помню)
=================
v0.0.3 13.10.2017
=================
- Добавлен метод в класс db public function results_array(string $field = null, string $group_field = null). Основная фишка - поле группировки, позволяет избежать двойной работы, когда сначала в методе db->results происходит перебор и запись строк в объект, а потом, например, во view/ProductsView.php происходит перебор: 
		foreach($this->products->get_products($filter) as $p)
			$products[$p->id] = $p;
только, чтобы записать id товаров в виде ключей массива. $this->db->results_array(null, 'id') выдаст результат в виде массива с ключами из поля id.

=================
v0.0.2 12.10.2017
=================
- Добавлен отладчик ошибок dtimer в виде отдельной библиотеки api/Dtimer.php
- В config.ini выведена опция dtimer_disabled для включения/выпключения отладчика. Когда опция true, вызовы метода отладчика на запись dtimer::log('info') и на вывод журнала отладчика dtimer::show() не срабатывает и не забивает память. dtimer_disabled = false включает запись событий в отладчик, а также включает отображение журнала. Вызов происходит из файла index.php. Отладчик записывает текстовую строку, а также время записи этой строки в журнал отладчика.
- Добавлена библиотека кеширования cache api/Cache.php и библиотека очереди queue api/Queue.php. Пока используется для кеширования только одного метода product->count_products(). Механизм работы. При обращении к методу по входным параметрам в массиве $filter формируется md4 hash, который через метод cache->get_cache_integer() ищет в базе сохраненный кеш, если кеш не найден, происходит полное выполнение метода count_products(), в конце перед return происходит запись в кеш через метод cache->set_cache_integer(). Очередь заданий queue используется следующим образом. метод queue->addtask($keyhash, 'name', $task); пишет в очередь заданий задачу на выполнение count_products() без использования кеша с последующим обновлением результата в кеше. За счет этого кеш постоянно обновляется, но обновление происходит в отдельном процессе вызываемом планировщиком cron, т.е. для пользователя функция выполняется быстро, а сложная работа протекает на фоне.

