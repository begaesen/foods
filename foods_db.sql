-- phpMyAdmin SQL Dump
-- version 4.0.10.6
-- http://www.phpmyadmin.net
--
-- Хост: 127.0.0.1:3306
-- Время создания: Мар 07 2017 г., 08:38
-- Версия сервера: 5.5.41-log
-- Версия PHP: 5.4.35

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- База данных: `foods_db`
--

-- --------------------------------------------------------

--
-- Структура таблицы `food`
--

CREATE TABLE IF NOT EXISTS `food` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `visible` int(11) DEFAULT NULL,
  `description` text,
  `content` text,
  `ingredients_description` text,
  `image` varchar(255) DEFAULT NULL,
  `viewed` int(11) DEFAULT NULL,
  `date` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=38 ;

--
-- Дамп данных таблицы `food`
--

INSERT INTO `food` (`id`, `title`, `visible`, `description`, `content`, `ingredients_description`, `image`, `viewed`, `date`) VALUES
(1, 'Гороховый суп-пюре с чесноком ', 1, '<p>Очень простой и ароматный.</p>', '<p>1. Разогреть духовку до 200 гр С. Положить неочищенные головки чеснока на противень, побрызгать оливковым маслом и запекать в духовке в течение 20-25 мин, пока он не станет мягким. Дать немного остыть, разделить на зубчики и выдавить из шкурки мякоть.</p>\r\n\r\n<p>2. Пока запекается чеснок, разогреть большой кусок масла в сковороде, обжарить лук. Добавить тмин, помешивать 1 мин. Затем добавить горошек и запеченный чеснок. Перемешать и влить бульон. Довести до кипения и варить на медленном огне 6-8 мин. Снять с огня,</p>\r\n\r\n<p>3. Порциями добавлять суп в ликвидайзер или блендер и делать пюре. Приправить по вкусу, вернуть в кастрюлю и снова нагреть. Подавать со сметаной и хрустящим хлебом. На заметку: Запеченный чеснок можно использовать в соусах, супах и гуляшах, а сырым - в салатных заправках или дипах. Запеченный чеснок обладает мягким ароматом и его можно просто намазывать на хрустящие тосты.</p>', '<p>На 4 порции: 2 головки чеснока 1 луковица, мелко порезанная 1 ст л тмина 800 гр (1 3/4 lb) замороженного горошка (petit pois) 1 л (1 3/4 pt) овощного бульона</p>', '1488803236.jpg', 38, '2017-03-06'),
(2, 'КОТЛЕТЫ С КРЕВЕТКАМИ И КУКУРУЗОЙ', 1, '<p>Приготовьте эти котлеты, когда хочется чего-нибудь приятного и комфортного. Это как раз то, чем хорошо встретить детей из школы; котлеты можно легко приготовить в любое время. Они также хорошо получаются с консервированным тунцом вместо креветок.</p>', '<p>1. Отварить картофель в мундире в течение 20-25 мин почти до готовности. Слить, дать остыть и очистить от кожуры. Натереть в большую миску на крупной терке. 2. Довольно мелко порезать зеленый лук и срезать с початка кукурузу. Отварить свежую или замороженную кукурузу в течение 3 минут, слить и добавить к картофелю с креветками, петрушкой, солью и черным перцем. Перемешать. Сформировать из смеси 8 котлет. Присыпать слегка мукой. Можно поставить их в холодильник на несколько часов, положив на тарелку, накрытую пленкой. 3. Нагреть большой кусок сливочного масла на сковороде, положить четыре котлеты в сковороду и обжаривать 3-4 минуты до хрустящей корочки. Достать и держать в тепле, пока вы обжариваете остальные котлеты. Посыпать морской солью и перцем и подавать с кусочками лимона, чтобы выдавливать из него сок. На заметку Чтобы срезать зернышки кукурузы с початка, нужно поставить початок вертикально, на доску острым концом. Острым ножом, как пилой, срезать зернышки сверху вниз. Повторить вокруг початка - понадобится сделать 6-8 срезов. &gt; Рецепт входит в раздел Быстро и вкусно - 5 ингредиентов.</p>', '<p>На 4 порции: 1 кг картофеля пучок зеленого лука 2 початка кукурузы или 175 г замороженной кукурузы 200 г очищенных креветок, разморозить, если нужно щепотка петрушки</p>', '1488803333.jpg', 3, '2017-03-06'),
(3, 'КУРИЦА С ЛИМОНОМ И ОЛИВКАМИ', 1, '<p>Готовится в &quot;одном горшке&quot;.</p>', '<p>1. Разогреть духовку до 200 гр С/Gas 6. Разложить куски курицы в форме. Выдавить сверху лимон, затем добавить половинки в форму. Добавить в форму дольки чеснока, оливки и картофель. 2. Побрызгать сверху оливковым маслом и приправить. Поставить в духовку и запекать 30-35 мин до готовности. Подавать с салатом и овощами. На заметку: Зеленые оливки продаются в очень разных видах - без косточки, с косточкой, порезанные, начиненные или маринованные. Добавляйте их к макаронам, салатам, гуляшам или на пиццу. Порезанные оливки и оливки без косточки не такие ароматные, как целые.</p>', '<p>На 4 порции: 8 кусков курицы (грудки или ножки) 1 лимон, порезанный пополам 1 головка чеснока, разделенная на зубчики 16 зеленых оливок 500 гр (1 lb 2 oz) молодого картофеля, почистить щеткой и порезать пополам</p>', '1488803430.jpg', 1, '2017-03-06'),
(4, 'МЯТНЫЙ ОМЛЕТ С ЗЕЛЕНЫМ ГОРОШКОМ', 1, '<p>Быстрый ужин, для которого практически не нужно ничего покупать.</p>', '<p>1. Разогреть гриль. В миске взбить яйца до пены. Добавить порезанную мяту и замороженный горошек. Приправить солью и молотым перцем. 2. Нагреть сливочное масло в сковороде, когда оно начнет пениться, влить яйца, покрутить форму, чтобы распределить ровно смесь. Готовить на среднем огне 3-4 мин, затем посыпать сыром и запекать на гриле 2-3 мин, пока сыр не расплавится. 3. Наклонить сковороду в одну сторону, сложить омлет пополам и переложить на тарелку (дать ему соскользнуть). Порезать пополам и подавать с хрустящим хлебом и зеленым салатом.</p>', '<p>На 2 порции: 5 яиц 1 ст л свежей мяты 85 гр (3 oz) замороженного горошка 50 гр (2 oz) чеддер хрустящий хлеб и зеленый салат</p>', '1488803633.jpg', 2, '2017-03-06'),
(5, 'НАСТОЯЩИЙ ИСПАНСКИЙ ОМЛЕТ', 1, '<p>Секрет настоящего испанского омлета в медленном тушении картофеля в щедром количестве оливкового масла, чтобы он пропитался ароматом оливкового масла перед тем, как вы добавите яйца. В результате получается нежное, вкусное блюдо, которое подают горячим или холодным, но никогда из холодильника.</p>', '<p>1. Очистить картофель или оставить кожуру, если хотите. Порезать на толстые куски. Мелко порезать луковицу. 2. Нагреть масло в сковороде, добавить картофель и лук, тушить на медленном огне, накрыв крышкой, в течение 30 мин, помешивая, пока картофель не станет мягким. Откинуть картофель и лук в дуршлаге и сохранить слитое масло. 3. Отдельно взбить яйца, затем добавить в них картофель, петрушку и приправить солью и перцем. Нагреть отложенное масло в маленькой кастрюле. Переложить все в подготовленную сковороду и готовить на медленном огне, разравнивая омлет сверху лопаткой. 4. Когда яйца &quot;схватятся&quot;, перевернуть омлет на тарелку, затем дать ему соскользнуть в сковороду и обжарить с другой стороны несколько минут. Перевернуть снова, поджарить с другой стороны, разравнивая лопаткой, чтобы омлет сохранил форму. Переложить на тарелку и охлаждать 10 мин перед тем, как подавать на стол.</p>', '<p>На 4 порции: 500 г молодого картофеля 1 луковица 150 мл оливкового масла 3 ст л порезанной плосколистной петрушки 6 яиц</p>', '1488803726.jpg', 5, '2017-03-06'),
(9, 'МАКАРОНЫ С СЫРОМ И БРОККОЛИ', 1, '<p>Прекрасный ужин после рабочего дня.</p>', '<p>1. Разогреть гриль. Довести до кипения большую кастрюлю с соленой водой, добавить макароны и отварить в течение 5 мин. Добавить брокколи, снова довести до кипения и готовить еще 5-7 мин до готовности макарон и капусты. 2. Пока макароны варятся, раскрошить сыр в маленькую миску и поджарить бекон до корочки, затем порезать на кусочки. 3. Слить макароны, оставив несколько ложек воды, в которой они варились, вернуть макароны и воду в кастрюлю. Перемешать со стилтоном, крем фреш и черным молотым перцем. Помешивать, пока сыр не начнет плавится в соус. Подавать, посыпав каждую тарелку беконом.</p>', '<p>На 4 порции: 350 гр макарон пенне или ригатони (трубки, см энциклопедию) 250 гр капусты брокколи, порезанной на соцветия 140 гр сыра стилтон 6 полосок бекона 200 гр крем фреш или сметаны</p>', '1488803780.jpg', 2, '2017-03-06'),
(17, 'ЯЙЦА, ЗАПЕЧЕННЫЕ С ПОМИДОРАМИ', 1, '<p><em>Я часто делаю это блюдо летом, когда помидоры самые сладкие и ароматные. Это одно из самых простых блюд, популярно у детей и подходит для любого времени дня - для воскресного обеда, легкого ужина или ленивого завтрака. Кроме того, это блюдо - хороший источник витамина С.&nbsp;</em></p>', '<p>1. Разогреть духовку до 180 гр С. Порезать помидоры на четвертинки или на более тонкие дольки в зависимости от размера, разложить их ровным слоем в форму для духовки вместимостью 1.5 л. Очистить чеснок, тонко порезать и посыпать помидоры. Побрызгать оливковым маслом, приправить солью и перцем и перемешать, пока помидоры не будут блестеть.<br />\r\n<br />\r\n2. Поставить форму в духовку и запекать 40 минут, пока помидоры не станут мягкими и коричневыми.<br />\r\n<br />\r\n3. Сделать углубления между помидорами, разбить в каждое углубление по яйцу и накрыть форму фольгой. Вернутьв духовку на 5-10 минут, пока яйца не будут готовы по вашему вкусу. Посыпать порезанными травами и подавать горячим с толстыми кусками тоста или теплого хлеба и зеленым салатом на гарнир.</p>', '<p>На 4 порции:<br />\r\n900 г спелых помидоров на веточке<br />\r\n3 зубчика чеснока<br />\r\n3 ст л оливкового масла<br />\r\n4 яйца<br />\r\n2 ст л петрушки или шнитт-лука</p>', '1488823901.jpg', 1, '2017-03-06'),
(18, 'ЯЙЦА ПО-ФЛОРЕНТИНСКИ', 1, '<p><em>Подавайте на ужин с хрустящими тостами.&nbsp;</em></p>', '<p>1. Положить замороженный шпинат в миску для микроволновки, накрыть пленкой и поставить в микроволновую печь на 7-8 мин в режиме High, чтобы он разморозился и сварился (если у вас нет микроволновки, просто оставьте шпинат в холодильнике на несколько часов).<br />\r\n<br />\r\n2. Слить, вернуть в миску и перемешать с молотым мускатным орехом (по желанию), ветчиной и кусочком масла. Приправить и сформировать две котлетки на дне невысокой керамической формы для гриля.<br />\r\n<br />\r\n3. Разогреть гриль. Слегка обжарить или отварить яйца-пашот в кастрюле, наполовину наполненной соленой водой. Достать шумовкой и положить на шпинат. Побрызгать сливками и посыпать сыром. Запекать до золотистой корочки.</p>', '<p>На 4 порции:<br />\r\n200 гр замороженного шпината<br />\r\n2 куска ветчины, порезанных на тонкие полоски<br />\r\n2 яйца<br />\r\n2 ст л сливок<br />\r\n85 гр сыра чеддер, тертого</p>', '1488824174.jpg', 0, '2017-03-06'),
(19, 'ЦВЕТНАЯ КАПУСТА С КРАСНЫМ ПЕРЦЕМ', 1, '<p><em>Подавайте с горячим чесночным хлебом и простым салатом - восхитительное блюдо за 30 минут !&nbsp;</em></p>', '<p>1. Разобрать цветную капусту на крупные соцветия, затем отварить в кастрюле с кипящей водой в течение 5-7 мин до мягкости. Слить, переложить в плоскую форму для духовки.<br />\r\n<br />\r\n2. Разогреть гриль до максимальной температуры. Зажарить бекон на гриле до хрустящей корочки, затем порезать на большие куски - проще всего ножницами. Добавить половину бекона к цветной капусте вместе с консервированными перцами, перемешать.<br />\r\n<br />\r\n3. Смешать крем фреш с половиной сыра, намазать этой смесью овощи и посыпать оставшимся беконом и сыром. Запекать под грилем до золотистой корочки (это занимает около 5 мин). Подавать с чесночным хлебом и зеленым салатом.</p>', '<p>На 2-3 порции:<br />\r\n1 крупный кочан цветной капусты<br />\r\n6 полосок бекона<br />\r\n230 гр консервированных запеченных сладких перцев, слить и порезать на полоски<br />\r\n200 мл крем фреш<br />\r\n175 гр сыра чеддер, тертого</p>', '1488824320.jpg', 0, '2017-03-06'),
(20, 'ФРИТТАТА С КОПЧЕНЫМ ЛОСОСЕМ И ГОРОШКОМ', 1, '<p><em>С потеплением и улушением погоды хочется оставить сытные гуляши позади и приготовить что-нибудь более легкое и радующее глаз. Фриттата - всего лишь итальянское слово, означающее омлет, и конечно, вы можете использовать для нее любые начинки, но мне особенно нравится сочетание копченого лосося и яиц. Также я добавила горсть сладкого молодого горошка и укропа, которые приятно разнообразили вкус и вид этого блюда.&nbsp;</em><br />\r\n&nbsp;</p>', '<p>1. Крупно нарезать картофель и отварить в кастрюле с кипящей подсоленной водой в течение 10 мин до мягкости. Слить и дать немного остыть.<br />\r\n<br />\r\n2. Порезать лосось на широкие полоски. Разбить в миску яйца, взбить вилкой в пышную массу, затем добавить лосось, укроп, горошек, соль и перец. В конце добавить картофель.<br />\r\n<br />\r\n3. Нагреть 3 ст л оливкового масла в непригораемой сковороде, аккуратно влить яичную смесь и готовить 10-15 мин на довольно медленном огне, пока яйцо не станет запекаться на поверхности.<br />\r\n<br />\r\n4. Положить поверх сковороды тарелку большего диаметра и перевернуть на нее фриттату. Дать ей соскользнуть обратно в сковороду и готовить еще 5 мин, пока она не поджарится снизу. Переложить на тарелку и оставить на 5 мин перед тем, как разрезать на кусочки. Салат из помидоров и шнитт-лука - отличный свежий гарнир к этому блюду.<br />\r\n&nbsp;</p>', '<p>На 4 порции:<br />\r\n500 г молодого картофеля<br />\r\n200 г копченого лосося<br />\r\n8 крупных яиц<br />\r\n2 ст л порезанного укропа<br />\r\n100 гр замороженного зеленого гороха<br />\r\n&nbsp;</p>', '1488824431.jpg', 1, '2017-03-06'),
(21, 'ТРЕСКА С ЛИМОННЫМ СОУСОМ И ПЕТРУШКОЙ', 1, '<p><em>Легкий и низкокалорийный ужин.&nbsp;</em></p>', '<p>1. Обвалять треску в муке.<br />\r\n<br />\r\n2. Разогреть половину масла в сковороде. Когда оно зашипит, добавить рыбу и готовить на довольно большом огне в течение 3 мин, пока рыба не поджарится снизу. Лопаткой перевернуть рыбу и обжарить с другой стороны.<br />\r\n<br />\r\n3. Когда рыба практически готова (мякоть легко распадается и становится матовой), добавить сливочное масло, затем, когда оно забурлит, добавить лимонный сок, соль и перец. Кипятить соус, пока он не загустеет слегка, затем добавить петрушку. Подавать с молодой картошкой и зеленой фасолью.</p>', '<p>На 2 порции:<br />\r\n2 филе трески, около 175 гр каждое<br />\r\nприправленная мука<br />\r\n25 гр сливочного масла<br />\r\nсок 1 лимона<br />\r\n1 ложка с горкой свежей петрушки</p>', '1488824523.jpg', 0, '2017-03-06'),
(22, 'ТОСТЫ С КОЗЬИМ СЫРОМ И КЛЮКВОЙ', 1, '<p><em>Восхитительное сочетание вкусов и ароматов.&nbsp;</em></p>', '<p>1. Поджарить хлеб с одной стороны на гриле. Поджаренную сторону намазать желе и положить сверху сыр. Побрызгать оливковым маслом и приправить солью и перцем.<br />\r\n<br />\r\n2. Вернуть под гриль на 3-4 мин, пока сверху не появится золотистая корочка, а сыр не начнет плавится. Сверху положить горсть салата-рокет и побрызгать маслом и бальзамическим уксусом. Подавать сразу же.</p>', '<p>На 4 порции:<br />\r\n1 крупный кусок свежего хрустящего хлеба<br />\r\n1-2 ч л клюквенного или красно-смородинового желе<br />\r\n100 гр козьего сыра (круглый кусок)<br />\r\nгорсть салата рокет<br />\r\nбальзамический уксус</p>', '1488824660.jpg', 0, '2017-03-06'),
(23, 'ТАРТИФЛЕТТ', 1, '<p><em>Tartiflette - картофель тушеный с беконом, залитый савойским сыром Реблошон и сливками, обычно подается с салатом и сухим белым савойским вином. Этим блюдом наслаждаются все туристы изрядно накатавшиеся на живописных снежных склонах Верхней Савойи.&nbsp;</em></p>', '<p>1. Разогреть духовку 220 гр С. Очистить и нарезать толстыми ломтиками картофель, затем отварить в кипящей воде 8-10 мин. Слить.<br />\r\n<br />\r\n2. Мелко нарезать лук и обжарить в сливочном масле в течение 5 мин. Прямо в сковороду нарезать ножницами бекон и обжаривать еще 5 мин.<br />\r\n<br />\r\n3. Нарезать сыр на кусочки. Положить половину картофеля в форму для духовки, посыпать луком, беконом и сыром, приправить солью и перцем. Повторить слои и сверху залить сливками и запекать 10-12 мин до золотистого цвета. Дать постоять 5 мин и подавать с салатом.</p>', '<p>На 4 порции:<br />\r\n750 гр (1 lb 10 oz) картофеля<br />\r\n1 луковица<br />\r\n6 полосок копченого бекона<br />\r\n250 гр (9 oz) сыра реблошон<br />\r\n140 мл сливок</p>', '1488824751.jpg', 0, '2017-03-06'),
(24, 'РИС, ЖАРЕНЫЙ С ТУНЦОМ', 1, '', '<p>1. Отварить рис по инструкциям на упаковке и дать немного остыть.<br />\r\n<br />\r\n2. Разогреть сковороду вок и обжарить порезанный бекон в течение 2х минут до хрустящей коричневой корочки. Переложить из вока и отложить.<br />\r\n<br />\r\n3. Побрызгать 2 ст л масла на сковороду, добавить рис и обжарить в течение 3х минут. Добавить горошек и тунец, обжаривать на большом огне 2-3 мин. Добавить соевый соус и хрустящий бекон и обжаривать еще 1 мин. Подавать сразу же, с дополнительным соевым соусом (по желанию)<br />\r\n&nbsp;</p>', '<p>На 4 порции:<br />\r\n350 гр длиннозернистого риса<br />\r\n8 полосок бекона, порезанных мелко<br />\r\n200 гр замороженного горошка, разморозить<br />\r\n200 гр консервированного тунца, слить<br />\r\n2-3 ст л соевого соуса<br />\r\n&nbsp;</p>', '1488824870.jpg', 0, '2017-03-06'),
(25, 'ТАРТАЛЕТКИ С ЯЙЦОМ И БЕКОНОМ', 1, '<p><em>Классическая комбинация ингредиентов.</em></p>', '<p>1. Проложить тонко раскатанным тестом 4 формочки диаметром 9 см. Проколоть основание вилкой, накрыть и поставить в холодильник до надобности. Разогреть духовку до 200 гр С.<br />\r\n<br />\r\n2. Тем временем разогреть масло в сковороде, добавить бекон и лук. Обжаривать, пока бекон не станет хрустящим, а лук - мягким, около 5 мин. Дать остыть и разделить по 4м формочкам с тестом.<br />\r\n<br />\r\n3. Смешать 1 яйцо со сметаной, приправить. Разделить смесь по формочкам. Сверху в каждую формочку разбить по 1 яйцу. Запекать в духовке 20-25 мин до золотистой корочке и готовности яйца. Подавать с зеленым салатом.<br />\r\n<br />\r\n<strong>На заметку:</strong><br />\r\nГотовое тесто можно найти в морозиках супермаркетов (в этом случае лучше использовать shortcrust pastry). Это плотное тесто лучше всего подходит для тарталеток и пирогов.</p>', '<p>На 4 шт:<br />\r\n350 гр (12 oz)готового песочного теста<br />\r\n110 гр (4 oz) бекона, порезанного маленькми кубиками<br />\r\n1 луковица, мелко порезанная<br />\r\n5 яиц<br />\r\n75 мл (3 fl oz) сметаны или крем фреш</p>', '1488825208.jpg', 0, '2017-03-06'),
(26, 'СТЕЙК С ГОЛУБЫМ СЫРОМ И КРЕССОМ', 1, '<p><em>Оригинально и очень быстро.&nbsp;</em></p>', '<p>1. Смазать стейки оливковым маслом с обоих сторон, затем приправить солью и перцем. Отложить.<br />\r\n<br />\r\n2. Положить горгонзолу и несколько веточек кресса в миску. Приправить перцем и размять вилкой.<br />\r\n<br />\r\n3. Положить стейки под горячий гриль и готовить 2 мин, затем перевернуть и готовить с другой стороны около 2 мин.<br />\r\n<br />\r\n4. Смазать хлеб оливковым маслом и посыпать чесноком. Поджарить на гриле до золотистого цвета. Положить на подогретые тарелки, посыпать крессом, сверху положить мясо и накрыть смесью с сыром.</p>', '<p>На 2 порции:<br />\r\n2 говяжьих стейка примерно по 175 гр<br />\r\n85 гр голубого сыра горгонзола<br />\r\nмаленький пучок кресса<br />\r\n2 куска хлеба<br />\r\n1 зубчик чеснока, мелко порезанный</p>', '1488825313.jpg', 0, '2017-03-06'),
(27, 'ПИРОГ С ЯЙЦОМ И БЕКОНОМ', 1, '<p><em>Оригинальный семейный пирог, особенно хорош к завтраку.&nbsp;</em></p>', '<p>1. Разогреть духовку до 220 гр С. Разложить тесто на большом противне и наметить ножом корочку на расстоянии 1 см до края. Проколоть везде вилкой.<br />\r\n<br />\r\n2. Положить бекон на тесто и запекать 15 мин, пока тесто не будет золотистого цвета.<br />\r\n<br />\r\n3. Разбить яйца прямо на тесто и дать им растечься между полосками бекона. Приправить и вернуть в духовку на 5-6 минут, пока яйца не &quot;схватятся&quot;. Посыпать зеленью и подавать.<br />\r\n<br />\r\n<strong>На заметку</strong><br />\r\n&nbsp;</p>\r\n\r\n<ul>\r\n	<li>Вегетарианцы могут просто запечь тесто для основы пирога в течение 15 мин, а затем положить сверху шпинат и яйцо, затем закончить, как указано в 3 пункте.</li>\r\n	<li>Чтобы угодить всем можно делать этот пирог с начинками на заказ, например, половина с беконом, половина вегетарианская, или с моццареллой вместо яйца.</li>\r\n</ul>', '<p>На 4 порции:<br />\r\n400 г слоеного теста, раскатанного<br />\r\n300 г полосок копченого бекона<br />\r\n4 яйца<br />\r\nсоль и черный молотый перец<br />\r\nнесколько веточек шнитт-лука или петрушка</p>', '1488825430.jpg', 0, '2017-03-06'),
(28, 'ПИРОГ С ГРЕЦКИМИ ОРЕХАМИ И СТИЛТОНОМ', 1, '<p><em>Очень удобное блюдо, особенно, если никак не решить, что же будет на ужин, или гости звонят с пути и сообщают, что будут через полчаса. Это одновременно и оригинальный и простой.&nbsp;</em><br />\r\n&nbsp;</p>', '<p>1. Разогреть духовку до 200 гр С/400 F/Gas 6. Очистить лук и тонко нарезать. Нагреть 3 ст л оливкового масла в большой сковороде, добавить лук и обжарить до мягкости и слегка коричневого цвета, помешивая. Это займет около 10 мин.<br />\r\n<br />\r\n2. Добавить несколько капель бальзамического укуса, соль и перец и готовить еще 5 мин пока слегка лук не карамелизуется. Дать остыть, пока готовится тесто.<br />\r\n<br />\r\n3. Раскатать тесто и проложить им противень размером 23 см х 33 см. Посыпать луком, сверху раскрошить сыр и посыпать орехами.<br />\r\n<br />\r\n4. Запекать 15-20 мин пока тесто не станет хрустящим с золотой корочкой и сыр не растает. Остужать 5 мин, перед тем как подавать, нарезать на квадраты.</p>', '<p>На 6 порций:<br />\r\n600 гр (1 lb 5 oz) лука<br />\r\n1 ст л ароматного уксуса-бальзама (balsamic)<br />\r\n375 гр упаковка слоеного теста<br />\r\n175 гр (6 oz) сыра стилтон<br />\r\n50 гр очищенных грецких орехов</p>', '1488825544.jpg', 0, '2017-03-06'),
(29, 'ЛОСОСЬ С СОУСОМ ИЗ ЭСТРАГОНА СО СЛИВКАМИ', 1, '<p><em>Прекрасно подходит для угощения гостей после рабочего дня - быстро и эффектно.&nbsp;</em></p>', '<p>1. Разогреть духовку до 180 гр С. Приправить лосось с обоих сторон солью и перцем. Нагреть 1 ст л масла в сковороде (предпочтительно - непригораемой). Добавить лосось кожей вверх и обжарить в течение 3 мин до коричневой корочки. Перевернуть и обжарить в течение 2 мин.<br />\r\n<br />\r\n2. Переложить в форму для духовки и посыпать луком и эстрагоном. Сверху полить сливками и приправить. Запекать 12-15 мин до готовности. Посыпать порезанной петрушкой, переложить на подогретые тарелки и украсить кусочками лимона. Подавать с молодым картофелем и зеленой фасолью.</p>', '<p>На 4 порции:<br />\r\n2 филе лосося<br />\r\n1 мелко порезанная луковица-шалот или 1/2 маленькой луковицы<br />\r\n2 ст л порезанного свежего эстрагона<br />\r\n6 ст л жидких сливок<br />\r\n2 ст л порезанной свежей петрушки</p>', '1488825678.jpg', 0, '2017-03-06'),
(30, 'ЛЕНИВОЕ МЯСО ПО-СТРОГАНОВСКИ', 1, '<p><em>Добавьте к гуляшу несколько ингредиентов и у вас получится совершенно другой ужин.&nbsp;</em></p>', '<p>1. Отварить лапшу в кастрюле с подсоленной водой на минуту меньше времени, указанного на упаковке.<br />\r\n<br />\r\n2. Пока макароны варятся, нарезать 2 стейка на маленькие кусочки. Добавить их в кастрюлю с гуляшом, добавить всю сметану кроме 2х столовых ложек, 1 ч л паприки и 1 ст л томатного пюре, довести до кипения и держать в тепле до готовности лапши.<br />\r\n<br />\r\n3. Слить лапшу, вернуть в кастрюлю и перемешать с кусочком масла и горстью нарезанной петрушки. Подавать тальятелле с ложкой гуляша, с оставшейся сметаной и паприкой.</p>', '<p>На 2 порции:<br />\r\n175 г лапши тальятелле<br />\r\n140 мл сметаны<br />\r\n1 ч л паприки<br />\r\n1 ст л томатного пюре<br />\r\n1/4 порции&nbsp;<a href="http://kuking.net/3_3058.htm">гуляша со стейком</a><br />\r\nкусочек сливочного масла, петрушка</p>', '1488825825.jpg', 0, '2017-03-06'),
(31, 'КЮФТА ИЗ БАРАНИНЫ С ТОМАТНЫМ СОУСОМ С КОКОСОМ', 1, '<p><em>Взбодритесь в середине недели этим остреньким блюдом. Вы можете приготовить его таким острым, каким захотите, в зависимости от того, сколько специй в него добавите.&nbsp;</em></p>', '<p>1. В миске смешать баранину с 2 ст л специй и приправить. Скатать шарики из фарша - примерно по 1 ст л на шарик. Нагреть сковороду и обжарить все шарики, часто поворачивая. Снизить огонь и дать им прожариться.<br />\r\n<br />\r\n2. Отварить рис. Слить лишний жир с мяса и добавить помидоры и оставшиеся специи (если хотите). Затем довести до кипения. Снизить огонь и тушить, добавив кокосовое молоко (чем больше вы добавите молока, тем менее острым будет блюдо). Готовтиь 5 мин до готовности. Если соус слишком загустеет, добавить немного воды. Посыпать петрушкой и подавать.<br />\r\n<br />\r\n<strong>На заметку&nbsp;</strong><br />\r\n<br />\r\nЕсли вам не найти эту смесь специй, используйте гарам масала.<br />\r\n&nbsp;</p>', '<p>На 4 порции:<br />\r\n550 г фарша из баранины<br />\r\n2-3 ст л специй ras-el-hanout<br />\r\n250 г риса басмати<br />\r\n2 х 400 г банки консервированных помидоров с чили<br />\r\n200 мл кокосового молока<br />\r\nгорсть петрушки или кориандра<br />\r\n&nbsp;</p>', '1488825995.jpg', 0, '2017-03-06'),
(32, 'КУРИЦА, ТУШЕНАЯ С АПЕЛЬСИНОВЫМ ДЖЕМОМ И КОРИЦЕЙ', 1, '<p><em>Это потрясающее блюдо для буднего ужина. Да, необычное сочетание, но попробуйте, и вы будет потрясены этим шикарным вкусом. Все готовится в одной кастрюле.&nbsp;</em><br />\r\n&nbsp;</p>', '<p>1. Приправить курицу, положить в низкую кастрюлю и обжарить со всех сторон до коричневой корочки. Добавить картофель и снять с огня.<br />\r\n<br />\r\n2. Смешать апельсиновую цедру и сок, джем и чеснок; приправить. Залить курицу этой смесью, добавить 200 мл воды и корицу. Довести до кипения, затем снизить огонь и тушить 20 мин, пока курица не будет готова.<br />\r\n<br />\r\n3. Добавить куски апельсина за 5 мин до готовности и долить немного воды, если необходимо. Достать палочку корицы и посыпать петрушкой для украшения.<br />\r\n<br />\r\n<strong>На заметку&nbsp;</strong><br />\r\n<br />\r\nДля быстрого соуса к курице, достаньте из кастрюли курицу и картофель; увеличите огонь под кастрюлей и добавьте 25 г сливочного масла и 25 г муки, взбивая венчиком.</p>', '<p>На 4 порции:<br />\r\n8 куриных ножек<br />\r\n900 г молодого картофеля, порезанного пополам, если крупный<br />\r\n2 апельсина, цедра и сок от одного, второй порезать на четвертинки<br />\r\n2 ст л апельсинового джема с корочками (конфитюра) (крупно порезанного)<br />\r\n2 зубчика чеснока, раздавленных<br />\r\n1 палочка корицы<br />\r\n&nbsp;</p>', '1488826098.jpg', 0, '2017-03-06'),
(33, 'КУРИЦА ПО-НОРМАНДСКИ', 1, '<p><em>Оригинальное блюдо для праздничного стола.&nbsp;</em></p>', '<p>1. Приправить курицу. Нагреть большой кусок сливочного масла в сковороде и обжарить курицу на большом огне в течение 10 мин до коричневого цвета и полу-готовности. Переложить на тарелку.<br />\r\n<br />\r\n2. Добавить другой кусок масла в ту же сковороду. Когда оно запенится, добавить кусочки яблока и обжаривать их до корочки. Достать из сковороды шумовкой и положить к курице.<br />\r\n<br />\r\n3. Добавить грибы и обжарить на большом огне в течение 4 мин, помешивая, пока они не станут мягче. Вернуть курицу и яблоки в сковороду и разогреть.<br />\r\n<br />\r\n4. Влить кальвадос, отойти и поджечь сковороду сверху с помощью длинной спички. Когда пламя уляжется, добавить сметану, по одной ложке, чтобы соус стал однородным. Готовить еще 10-12 мин до готовности курицы. Посыпать петрушкой и подавать с картофелем или лапшой.</p>', '<p>На 4 порции:<br />\r\n4 куриные грудки без косточки<br />\r\n2 яблока, порезанных на 4 части, очищенных от сердцевины и порезанных крупными кусками<br />\r\n200 гр шампиньонов, порезанных пополам<br />\r\n6 ст л кальвадос (яблочной водки)<br />\r\n6 ст л крем фреш или сметаны</p>', '1488826196.jpg', 0, '2017-03-06'),
(34, 'КАШМИРСКОЕ КАРРИ С КРЕВЕТКАМИ', 1, '<p><em>Отличное карри, которое можно приготовить дома быстрее, чем получится дойти до ресторана. К тому же дешевле !&nbsp;</em></p>', '<p>1. Смешать соус карри с йогуртом. Нагреть в непригораемой сковороде, затем добавить креветки и цедру лайма, помешивать 1-2 мин.<br />\r\n<br />\r\n2. Запечь под грилем нааны, чтобы они прогрелись. Затем положить по наану на тарелку, сверху положить красный лук, выдавить сок лайма, затем выложить креветки и соус. Подавать сразу же с дольками лайма, порезанным кориандром (по желанию) и манго чатни по вашему вкусу.<br />\r\n<br />\r\n<strong>На заметку&nbsp;</strong><br />\r\n<br />\r\nЭто блюдо можно готовить с курицей или рыбой - лучше замариновать их заранее. Положите на противень, проложенный фольгой, и запеките до готовности.<br />\r\n<br />\r\n<strong>Попробуйте&nbsp;</strong></p>', '<p>На 4 порции:<br />\r\n2 ст л кашмири карри соуса<br />\r\n200 мл греческого йогурта<br />\r\n400 г готовых замороженных креветок, разморозить и слить<br />\r\n2 лайма, цедра и сок одного, другой порезать на дольки<br />\r\n4 лепешки наан<br />\r\n2 красные луковицы, тонко порезать</p>', '1488826321.jpg', 0, '2017-03-06'),
(35, 'ГОВЯДИНА, ТУШЕНАЯ С КРАСНЫМ ВИНОМ И КЛЮКВОЙ', 1, '<p><em>Это чудное сезонное блюдо можно оставить тушиться, наполняя кухню восхитительными ароматами и оставляя домашних в нетерпении ожидаемого ужина. А можно его сделать за пару дней до употребления, заморозить, и оно будет только вкуснее. Картофельное пюре - идеальный гарнир, чтобы собрать восхитительный соус.&nbsp;</em></p>', '<p>. Подготовить мясо. Положить его в мешок, добавить 2 ст л муки с солью и перцем и обвалять. Тонко нарезать лук.<br />\r\n<br />\r\n2. Нагреть 2 ст л оливкового масла в большой сковороде. Добавить говядину и обжарить со всех сторон. Возможно, понадобится делать это порциями. Переложить на тарелку.<br />\r\n<br />\r\n3. Нагреть 2 ст л масла в кастрюле, затем добавить лук и обжаривать 5 минут, до коричневоо цвета. Добавить мясо. Влить бульон и вино, довести до кипения, помешивая. Посыпать солью и перцем.<br />\r\n<br />\r\n4. Снизить огонь, плотно накрыть крышкой и тушить на медленном огне 1 1/2 часа, пока мясо не будет нежным. Добавить клюквенный соус, попробовать и приправить, если нужно. Тушить еще 5 мин и подавать с картофельным пюре, посыпав петрушкой.</p>', '<p>На 4 порции:<br />\r\n1 кг говядины<br />\r\n3 луковицы<br />\r\n300 мл красного вина<br />\r\n300 мл бульона<br />\r\n3 ст л&nbsp;<a href="http://kuking.net/3_844.htm">клюквенного соуса</a></p>', '1488827576.jpg', 1, '2017-03-06'),
(36, 'БАРАНИНА С АРТИШОКАМИ', 1, '<p><em>Порцию легко удвоить. Можно сделать заранее и заморозить.&nbsp;</em></p>', '<p>1. Положить помидоры в большую огнеупорную миску и залить кипятком. Через минуту кожура начнет морщиться и лопаться, когда это случится, слить их, очистить от кожуры и мелко порезать.<br />\r\n<br />\r\n2. Нагреть 2 ст л масла в большой кастрюле, обжарить лук в течение 5 мин. Добавить баранину и обжарить на большом огне, помешивая, пока мясо не станет коричневым.<br />\r\n<br />\r\n3. Добавить помидоры и тщательно приправить. Довести до кипения, накрыть и варить 40-50 мин до готовности баранины. Перемешать с артишоками и посыпать мятой. Оставить на огне еще на несколько минут и подавать с картофелем или рисом.</p>', '<p>На 4 порции:<br />\r\n800 гр спелых помидоров (предпочтительнее &quot;дамские пальчики&quot;)<br />\r\n1 крупная луковица, тонко порезанная<br />\r\n700 гр филе баранины, порезанной кубиками<br />\r\n290 гр банка артишоков в масле, слить<br />\r\nгорсть мяты, порезанной<br />\r\n&nbsp;</p>', '1488827669.jpg', 0, '2017-03-06');
INSERT INTO `food` (`id`, `title`, `visible`, `description`, `content`, `ingredients_description`, `image`, `viewed`, `date`) VALUES
(37, 'АРОМАТНАЯ ГОВЯДИНА НА БАРБЕКЮ', 1, '<p><em>Очень вкусный, сытный и недорогой ужин.&nbsp;</em></p>', '<p>1. Положить мясо в невысокую неметаллическую миску и натереть мелко порезанным луком и бальзамическим уксусом. Приправить солью и перцем и оставить на 20 мин.<br />\r\n<br />\r\n2. Порезать картофель на маленькие кусочки и отварить в кастрюле с кипящей водой в течение 12-15 мин до готовности. Добавить шпинат, накрыть крышкой и оставить на несколько минут, чтобы шпинат подвял. Слить, перемешать в 2 ст л оливкового масла с солью и перцем. Отложить.<br />\r\n<br />\r\n3. Тем временем запечь говядину на гриле в течение 6-8 мин с каждой стороны, в зависимости от толщины. Достать, накрыть фольгой и оставить на 5 минут, затем тонко порезать по диагонали. Подавать с картофелем и шпинатом, побрызгав оливковым маслом и ароматическим уксусом.</p>', '<p>На 4 порции:<br />\r\nкрупный кусок филе говядины (600 гр)<br />\r\n2 луковицы шалот, мелко порезанные<br />\r\n2 ст л бальзамического уксуса<br />\r\n500 гр молодого картофеля<br />\r\n250 гр промытого шпината</p>', '1488827743.jpg', 4, '2017-03-06');

-- --------------------------------------------------------

--
-- Структура таблицы `food_ingredient`
--

CREATE TABLE IF NOT EXISTS `food_ingredient` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `food_id` int(11) DEFAULT NULL,
  `ingredient_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx-food_id` (`food_id`),
  KEY `idx-ingredient_id` (`ingredient_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=409 ;

--
-- Дамп данных таблицы `food_ingredient`
--

INSERT INTO `food_ingredient` (`id`, `food_id`, `ingredient_id`) VALUES
(271, 1, 25),
(272, 1, 35),
(273, 1, 51),
(274, 1, 50),
(275, 1, 11),
(276, 2, 80),
(277, 2, 49),
(278, 2, 48),
(279, 2, 35),
(280, 2, 14),
(286, 4, 25),
(287, 4, 41),
(288, 4, 18),
(289, 4, 30),
(290, 4, 13),
(291, 5, 80),
(292, 5, 35),
(293, 5, 12),
(294, 5, 14),
(295, 5, 13),
(296, 9, 20),
(297, 9, 19),
(298, 9, 42),
(299, 9, 45),
(300, 9, 44),
(301, 3, 80),
(302, 3, 46),
(303, 3, 29),
(304, 3, 47),
(305, 3, 11),
(306, 17, 10),
(307, 17, 11),
(308, 17, 12),
(309, 17, 13),
(310, 17, 14),
(311, 18, 16),
(312, 18, 17),
(313, 18, 18),
(314, 18, 15),
(315, 18, 13),
(316, 19, 20),
(317, 19, 19),
(318, 19, 22),
(319, 19, 21),
(320, 19, 18),
(321, 20, 25),
(322, 20, 23),
(323, 20, 80),
(324, 20, 24),
(325, 20, 13),
(326, 21, 29),
(327, 21, 27),
(328, 21, 14),
(329, 21, 28),
(330, 21, 26),
(331, 22, 34),
(332, 22, 31),
(333, 22, 32),
(334, 22, 33),
(335, 22, 30),
(336, 23, 20),
(337, 23, 80),
(338, 23, 35),
(339, 23, 17),
(340, 23, 37),
(341, 24, 20),
(342, 24, 25),
(343, 24, 38),
(344, 24, 40),
(345, 24, 39),
(346, 25, 20),
(347, 25, 35),
(348, 25, 45),
(349, 25, 52),
(350, 25, 13),
(351, 26, 53),
(352, 26, 54),
(353, 26, 44),
(354, 26, 30),
(355, 26, 11),
(356, 27, 36),
(357, 27, 56),
(358, 27, 14),
(359, 27, 52),
(360, 27, 13),
(361, 28, 34),
(362, 28, 58),
(363, 28, 35),
(364, 28, 44),
(365, 28, 52),
(366, 29, 59),
(367, 29, 35),
(368, 29, 14),
(369, 29, 17),
(370, 29, 60),
(371, 30, 64),
(372, 30, 61),
(373, 30, 62),
(374, 30, 45),
(375, 30, 63),
(376, 31, 65),
(377, 31, 68),
(378, 31, 10),
(379, 31, 38),
(380, 31, 66),
(381, 32, 69),
(382, 32, 80),
(383, 32, 46),
(384, 32, 11),
(385, 33, 73),
(386, 33, 46),
(387, 33, 45),
(388, 33, 72),
(389, 33, 71),
(390, 34, 75),
(391, 34, 74),
(392, 34, 49),
(393, 34, 76),
(394, 34, 29),
(395, 35, 77),
(396, 35, 53),
(397, 35, 35),
(398, 35, 78),
(399, 36, 79),
(400, 36, 65),
(401, 36, 35),
(402, 36, 41),
(403, 36, 10),
(404, 37, 34),
(405, 37, 53),
(406, 37, 80),
(407, 37, 35),
(408, 37, 15);

-- --------------------------------------------------------

--
-- Структура таблицы `ingredient`
--

CREATE TABLE IF NOT EXISTS `ingredient` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `visible` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=81 ;

--
-- Дамп данных таблицы `ingredient`
--

INSERT INTO `ingredient` (`id`, `title`, `visible`) VALUES
(10, 'Помидоры', 1),
(11, 'Чеснок', 1),
(12, 'Масло оливковое', 1),
(13, 'Яйца', 1),
(14, 'Петрушка', 1),
(15, 'Шпинат', 1),
(16, 'Ветчина', 1),
(17, 'Сливки', 1),
(18, 'Сыр Чеддер', 1),
(19, 'Капуста', 1),
(20, 'Бекон', 1),
(21, 'Перец сладкий ', 1),
(22, 'Крем Фрэш', 1),
(23, 'Копченый лосось', 1),
(24, 'Укроп', 1),
(25, 'Горох', 1),
(26, 'Треска', 1),
(27, 'Мука', 1),
(28, 'Сливочное масло', 1),
(29, 'Лимон', 1),
(30, 'Хлеб', 1),
(31, 'Желе', 1),
(32, 'Козьи сыр', 1),
(33, 'Салат Рокет', 1),
(34, 'Бальзамический уксус', 1),
(35, 'Лук', 1),
(36, 'Копченый бекон', 1),
(37, 'Сыр Реблошон', 1),
(38, 'Рис', 1),
(39, 'Тунец', 1),
(40, 'Соус соевый', 1),
(41, 'Мята', 1),
(42, 'Макароны', 1),
(43, 'Брокколи', 1),
(44, 'Сыр', 1),
(45, 'Сметана', 1),
(46, 'Курица', 1),
(47, 'Оливки', 1),
(48, 'Кукуруза', 1),
(49, 'Криветки', 1),
(50, 'Тмин', 1),
(51, 'Овощной бульон', 1),
(52, 'Тесто', 1),
(53, 'Говядина', 1),
(54, 'Кресс', 1),
(55, 'Перец красный', 1),
(56, 'Перец черный', 1),
(57, 'Уксус', 1),
(58, 'Грецкий орех', 1),
(59, 'Лосось', 1),
(60, 'Эстрагон', 1),
(61, 'Лапша', 1),
(62, 'Паприка', 1),
(63, 'Томатная паста', 1),
(64, 'Гуляш', 1),
(65, 'Баранина', 1),
(66, 'Специи', 1),
(68, 'Кокосовое молоко', 1),
(69, 'Апельсин', 1),
(70, 'Корица', 1),
(71, 'Яблока', 1),
(72, 'Шампиньоны', 1),
(73, 'Водка яблочная', 1),
(74, 'Кашмири карри соуса', 1),
(75, 'Йогурт', 1),
(76, 'Лепешки', 1),
(77, 'Вино', 1),
(78, 'Соус клюквенный', 1),
(79, 'Артишок', 1),
(80, 'Кортофель', 1);

-- --------------------------------------------------------

--
-- Структура таблицы `migration`
--

CREATE TABLE IF NOT EXISTS `migration` (
  `version` varchar(180) NOT NULL,
  `apply_time` int(11) DEFAULT NULL,
  PRIMARY KEY (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `migration`
--

INSERT INTO `migration` (`version`, `apply_time`) VALUES
('m000000_000000_base', 1488563516),
('m170303_171722_create_food_table', 1488563520),
('m170303_175321_create_ingredient_table', 1488563682),
('m170303_175528_create_food_ingredient_table', 1488564439),
('m170304_115000_add_visible_to_food', 1488628339),
('m170306_083832_add_column_to_food', 1488790154);

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `food_ingredient`
--
ALTER TABLE `food_ingredient`
  ADD CONSTRAINT `fk-food_id` FOREIGN KEY (`food_id`) REFERENCES `food` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk-ingredient_id` FOREIGN KEY (`ingredient_id`) REFERENCES `ingredient` (`id`) ON DELETE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
