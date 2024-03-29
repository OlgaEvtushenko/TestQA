﻿#language: ru

@ExportScenarios
@IgnoreOnCIMainBuild

Функционал: Подготовка данных для заказов покупателей

Контекст:
	Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий

Сценарий: Подготовка данных для заказов покупателей

	// Константы (в этой конфигурации в заказе не используется, но по идее должна)

	И я перезаполняю константу "УчетПоСкладам" значением "True"


	// Справочник.Валюты

	И я проверяю или создаю для справочника "Валюты" объекты:
		| 'Ссылка'                                                            | 'ПометкаУдаления' | 'Код'       | 'Наименование' | 'НаименованиеОсновнойВалюты' | 'НаименованиеРазменнойВалюты' |
		| 'e1cib/data/Справочник.Валюты?ref=a9b000055d49b45e11db8c4c9d5c4222' | 'False'           | '000000002' | 'USD'          | 'доллар США'                 | 'цент'                        |
		| 'e1cib/data/Справочник.Валюты?ref=a9b000055d49b45e11db8c4421dda1c5' | 'False'           | '000000001' | 'Рубли'        | 'рубль'                      | 'копейка'                     |

	// Справочник.ВидыЦен

	И я проверяю или создаю для справочника "ВидыЦен" объекты:
		| 'Ссылка'                                                             | 'ПометкаУдаления' | 'Код'       | 'Наименование' |
		| 'e1cib/data/Справочник.ВидыЦен?ref=a9b000055d49b45e11db8c4c9d5c4224' | 'False'           | '000000001' | 'Розничная'    |
		| 'e1cib/data/Справочник.ВидыЦен?ref=a9b000055d49b45e11db8c4c9d5c4226' | 'False'           | '000000003' | 'Мелкооптовая' |
		| 'e1cib/data/Справочник.ВидыЦен?ref=a9b000055d49b45e11db8c4c9d5c4225' | 'False'           | '000000002' | 'Оптовая'      |


	// Справочник.Контрагенты

	И я проверяю или создаю для справочника "Контрагенты" объекты:
		| 'Ссылка'                                                                 | 'ПометкаУдаления' | 'Родитель'                                                               | 'ЭтоГруппа' | 'Код'       | 'Наименование'           | 'Регион'                                                             | 'Индекс' | 'Страна' | 'Город'        | 'Улица'         | 'Дом' | 'Телефон'          | 'ЭлектроннаяПочта'       | 'Факс'             | 'ВебСайт' | 'ВидЦен'                                                             | 'ДополнительнаяИнформация' | 'КонтактноеЛицо' | 'Широта'  | 'Долгота' |
		| 'e1cib/data/Справочник.Контрагенты?ref=a9b000055d49b45e11db8c4c9d5c4234' | 'False'           | 'e1cib/data/Справочник.Контрагенты?ref=a9b000055d49b45e11db8c4c9d5c422d' | 'False'     | '000000004' | 'Шлюзовая ООО'           | 'e1cib/data/Справочник.Регионы?ref=a9b000055d49b45e11db8c4c9d5c422f' | '121344' | 'Россия' | 'Москва'       | 'Шлюзовая наб.' | '6'   | '+7(999)233-33-22' | 'sluz@jmail.ru'          | '+7(999)233-33-22' | ''        | 'e1cib/data/Справочник.ВидыЦен?ref=a9b000055d49b45e11db8c4c9d5c4225' | ''                         | 'Горохов В. Х.'  | 55.731272 | 37.645777 |
		| 'e1cib/data/Справочник.Контрагенты?ref=8ca0000d8843cd1b11dc8d043d71007d' | 'False'           | 'e1cib/data/Справочник.Контрагенты?ref=a9b000055d49b45e11db8c4c9d5c422d' | 'False'     | '000000015' | 'Магазин "Обувь"'        | 'e1cib/data/Справочник.Регионы?ref=a9b000055d49b45e11db8c4c9d5c422f' | '356895' | 'Россия' | 'Москва'       | 'Маросейка'     | '2'   | '+7(999)256-56-14' | 'kolodkin@obuv.ru'       | '+7(999)256-56-10' | ''        | 'e1cib/data/Справочник.ВидыЦен?ref=a9b000055d49b45e11db8c4c9d5c4224' | ''                         | 'Колодкин И. В.' | 55.757689 | 37.63277  |
		| 'e1cib/data/Справочник.Контрагенты?ref=8ca1000d8843cd1b11dc8ea92d97a74a' | 'False'           | 'e1cib/data/Справочник.Контрагенты?ref=a9b000055d49b45e11db8c4c9d5c422d' | 'False'     | '000000016' | 'Магазин "Мясная лавка"' | 'e1cib/data/Справочник.Регионы?ref=a9b000055d49b45e11db8c4c9d5c422f' | '235489' | 'Россия' | 'Москва'       | 'Селезневская'  | '10'  | '+7(999)256-99-33' | 'korovin@myasnoya.ru'    | '+7(999)256-99-32' | ''        | 'e1cib/data/Справочник.ВидыЦен?ref=a9b000055d49b45e11db8c4c9d5c4226' | ''                         | 'Коровин С. П.'  | 55.78081  | 37.608828 |
		| 'e1cib/data/Справочник.Контрагенты?ref=a9d700179a069b1011dc44ecea1d4f5b' | 'False'           | 'e1cib/data/Справочник.Контрагенты?ref=a9b000055d49b45e11db8c4c9d5c422c' | 'False'     | '000000011' | 'ЭлектроБыт ЗАО'         | 'e1cib/data/Справочник.Регионы?ref=a9b000055d49b45e11db8c4c9d5c4231' | ''       | 'Россия' | 'Екатеринбург' | 'Лесная'        | '12'  | '+7(999)623-568'   | 'mak@jmail.ru'           | ''                 | ''        | 'e1cib/data/Справочник.ВидыЦен?ref=a9b000055d49b45e11db8c4c9d5c4224' | ''                         | 'Мякиниа С. Р.'  | 56.869649 | 60.547212 |
		| 'e1cib/data/Справочник.Контрагенты?ref=a9b000055d49b45e11db8c4c9d5c4235' | 'False'           | 'e1cib/data/Справочник.Контрагенты?ref=a9b000055d49b45e11db8c4c9d5c422c' | 'False'     | '000000005' | 'Скороход АО'            | 'e1cib/data/Справочник.Регионы?ref=a9b000055d49b45e11db8c4c9d5c422f' | '121456' | 'Россия' | 'Москва'       | 'Полярная ул.'  | '33'  | '+7(999)234-57-65' | ''                       | '+7(999)234-57-65' | ''        | 'e1cib/data/Справочник.ВидыЦен?refName=Закупочная'                   | ''                         | 'Улиткин Ф.Ф.'   | 55.88895  | 37.64444  |
		| 'e1cib/data/Справочник.Контрагенты?ref=a9b000055d49b45e11db8e8bd1cb82a7' | 'False'           | 'e1cib/data/Справочник.Контрагенты?ref=a9b000055d49b45e11db8c4c9d5c422c' | 'False'     | '000000006' | 'Пантера АО'             | 'e1cib/data/Справочник.Регионы?ref=a9b000055d49b45e11db8e8bd1cb82a6' | '2222'   | 'Польша' | 'Варшава'      | 'Czolowa'       | '2'   | '+7(999)890-987'   | 'ff@jmail.ru'            | ''                 | ''        | 'e1cib/data/Справочник.ВидыЦен?refName=Закупочная'                   | ''                         | 'Ковальски А.Р.' | 52.331154 | 20.989486 |
		| 'e1cib/data/Справочник.Контрагенты?ref=a9bd00055d49b45e11dbd7c695f19911' | 'False'           | 'e1cib/data/Справочник.Контрагенты?ref=a9b000055d49b45e11db8c4c9d5c422c' | 'False'     | '000000009' | 'Животноводство ООО '    | 'e1cib/data/Справочник.Регионы?ref=a9b000055d49b45e11db8c4c9d5c4233' | '125678' | 'Россия' | 'Барнаул'      | 'Ленина'        | '2'   | '+7(999)261-79-79' | 'givotnovodstvo@mail.ru' | ''                 | ''        | 'e1cib/data/Справочник.ВидыЦен?ref=a9b000055d49b45e11db8c4c9d5c4225' | ''                         | 'Папанов Р. Д.'  |           |           |
		| 'e1cib/data/Справочник.Контрагенты?ref=a9b000055d49b45e11db8c4c9d5c422d' | 'False'           | ''                                                                       | 'True'      | '000000002' | 'Покупатели'             | ''                                                                   | ''       | ''       | ''             | ''              | ''    | ''                 | ''                       | ''                 | ''        | ''                                                                   | ''                         | ''               | ''        | ''        |
		| 'e1cib/data/Справочник.Контрагенты?ref=a9b000055d49b45e11db8c4c9d5c422c' | 'False'           | ''                                                                       | 'True'      | '000000001' | 'Поставщики'             | ''                                                                   | ''       | ''       | ''             | ''              | ''    | ''                 | ''                       | ''                 | ''        | ''                                                                   | ''                         | ''               | ''        | ''        |

	// Справочник.Организации

	И я проверяю или создаю для справочника "Организации" объекты:
		| 'Ссылка'                                                                 | 'ПометкаУдаления' | 'Код'       | 'Наименование'       | 'ВалютныйУчет' |
		| 'e1cib/data/Справочник.Организации?ref=8d34000d8843cd1b11dd2bea12f94c64' | 'False'           | '000000002' | 'ООО "Товары"'       | 'True'         |
		| 'e1cib/data/Справочник.Организации?ref=8d34000d8843cd1b11dd2bea12f94c65' | 'False'           | '000000003' | 'ООО "1000 мелочей"' | 'False'        |
		| 'e1cib/data/Справочник.Организации?ref=8d34000d8843cd1b11dd2bea12f94c63' | 'False'           | '000000001' | 'ООО "Все для дома"' | 'True'         |

	// Справочник.Пользователи

	И я проверяю или создаю для справочника "Пользователи" объекты:
		| 'Ссылка'                                                                  | 'ПометкаУдаления' | 'Код'                  | 'Наименование'         | 'ИдентификаторПользователяИБ'          |
		| 'e1cib/data/Справочник.Пользователи?ref=a2bc001d600da75a11e1f76c2216989a' | 'False'           | 'Менеджер по продажам' | 'Менеджер по продажам' | '756fb8ef-e08b-4c2b-966f-17ee59757135' |

	// Справочник.Регионы

	И я проверяю или создаю для справочника "Регионы" объекты:
		| 'Ссылка'                                                             | 'ПометкаУдаления' | 'Код'       | 'Наименование' |
		| 'e1cib/data/Справочник.Регионы?ref=a9b000055d49b45e11db8c4c9d5c422f' | 'False'           | '000000001' | 'Москва'       |
		| 'e1cib/data/Справочник.Регионы?ref=a9b000055d49b45e11db8c4c9d5c4231' | 'False'           | '000000003' | 'Урал'         |
		| 'e1cib/data/Справочник.Регионы?ref=a9b000055d49b45e11db8e8bd1cb82a6' | 'False'           | '000000006' | 'Польша'       |
		| 'e1cib/data/Справочник.Регионы?ref=a9b000055d49b45e11db8c4c9d5c4233' | 'False'           | '000000005' | 'Алтай'        |

	// Справочник.Склады

	И я проверяю или создаю для справочника "Склады" объекты:
		| 'Ссылка'                                                            | 'ПометкаУдаления' | 'Код'       | 'Наименование' | 'НеИспользовать' |
		| 'e1cib/data/Справочник.Склады?ref=a9b000055d49b45e11db8b8bee7616e1' | 'False'           | '000000002' | 'Большой'      | 'False'          |
		| 'e1cib/data/Справочник.Склады?ref=a9b000055d49b45e11db8b8bdc1aadc2' | 'False'           | '000000001' | 'Малый'        | 'False'          |
		| 'e1cib/data/Справочник.Склады?ref=a9b000055d49b45e11db8c4c9d5c4221' | 'False'           | '000000003' | 'Средний'      | 'False'          |
		| 'e1cib/data/Справочник.Склады?ref=8e0a000d8843cd1b11de0ed853793994' | 'False'           | '000000005' | 'Строящийся склад' | 'True'           |

	// Справочник.Товары

	И я проверяю или создаю для справочника "Товары" объекты:
		| 'Ссылка'                                                            | 'ПометкаУдаления' | 'Родитель'                                                          | 'ЭтоГруппа' | 'Код'       | 'Наименование'  | 'Артикул'  | 'Поставщик'                                                              | 'Вид'                     | 'Штрихкод'      |
		| 'e1cib/data/Справочник.Товары?ref=8d40000d8843cd1b11dd3de2bb0c7537' | 'False'           | 'e1cib/data/Справочник.Товары?ref=8d40000d8843cd1b11dd3de2bb0c7536' | 'False'     | '000000040' | 'Sony К3456P'   | 'Н657'     | 'e1cib/data/Справочник.Контрагенты?ref=a9d700179a069b1011dc44ecea1d4f5b' | 'Enum.ВидыТоваров.Товар'  | '8593539095330' |
		| 'e1cib/data/Справочник.Товары?ref=a9b000055d49b45e11db90eb5198ae43' | 'False'           | 'e1cib/data/Справочник.Товары?ref=a9b000055d49b45e11db8c51bbb079ae' | 'False'     | '000000006' | 'Ботинки'       | 'ОБ-003'   | 'e1cib/data/Справочник.Контрагенты?ref=a9b000055d49b45e11db8c4c9d5c4235' | 'Enum.ВидыТоваров.Товар'  | ''              |
		| 'e1cib/data/Справочник.Товары?ref=a9b200055d49b45e11db9b1315c596e3' | 'False'           | 'e1cib/data/Справочник.Товары?ref=a9b000055d49b45e11db8c51bbb079ae' | 'False'     | '000000020' | 'Валенки'       | 'ОБ-00100' | 'e1cib/data/Справочник.Контрагенты?ref=a9b000055d49b45e11db8e8bd1cb82a7' | 'Enum.ВидыТоваров.Товар'  | ''              |
		| 'e1cib/data/Справочник.Товары?ref=8ca1000d8843cd1b11dc8ea92d97a749' | 'False'           | 'e1cib/data/Справочник.Товары?ref=a9b200055d49b45e11db967987f1c226' | 'False'     | '000000030' | 'Колбаса'       | 'Kol67'    | 'e1cib/data/Справочник.Контрагенты?ref=a9bd00055d49b45e11dbd7c695f19911' | 'Enum.ВидыТоваров.Товар'  | ''              |
		| 'e1cib/data/Справочник.Товары?ref=a9b000055d49b45e11db8f55075b7a52' | 'False'           | 'e1cib/data/Справочник.Товары?ref=a100005056c0000811e3f7c0ef680671' | 'False'     | '000000004' | 'Сметана'       | 'ПРД-0001' | 'e1cib/data/Справочник.Контрагенты?ref=a9bd00055d49b45e11dbd7c695f19911' | 'Enum.ВидыТоваров.Товар'  | '4601546030436' |
		| 'e1cib/data/Справочник.Товары?ref=8d3a000d8843cd1b11dd321ba7a30aaf' | 'False'           | 'e1cib/data/Справочник.Товары?ref=8d3a000d8843cd1b11dd321ba7a30aae' | 'False'     | '000000037' | 'Доставка'      | ''         | ''                                                                       | 'Enum.ВидыТоваров.Услуга' | ''              |
		| 'e1cib/data/Справочник.Товары?ref=8d40000d8843cd1b11dd3de2bb0c7536' | 'False'           | 'e1cib/data/Справочник.Товары?ref=a9b200055d49b45e11db9743e844ecac' | 'True'      | '000000039' | 'Телевизоры'    | ''         | ''                                                                       | ''                        | ''              |
		| 'e1cib/data/Справочник.Товары?ref=a9b000055d49b45e11db8c51bbb079ae' | 'False'           | ''                                                                  | 'True'      | '000000001' | 'Обувь'         | ''         | ''                                                                       | ''                        | ''              |
		| 'e1cib/data/Справочник.Товары?ref=a9b200055d49b45e11db967987f1c226' | 'False'           | ''                                                                  | 'True'      | '000000011' | 'Продукты'      | ''         | ''                                                                       | ''                        | ''              |
		| 'e1cib/data/Справочник.Товары?ref=a100005056c0000811e3f7c0ef680671' | 'False'           | 'e1cib/data/Справочник.Товары?ref=a9b200055d49b45e11db967987f1c226' | 'True'      | '000000099' | 'Молочные'      | ''         | ''                                                                       | ''                        | ''              |
		| 'e1cib/data/Справочник.Товары?ref=8d3a000d8843cd1b11dd321ba7a30aae' | 'False'           | ''                                                                  | 'True'      | '000000036' | 'Услуги'        | ''         | ''                                                                       | ''                        | ''              |
		| 'e1cib/data/Справочник.Товары?ref=a9b200055d49b45e11db9743e844ecac' | 'False'           | ''                                                                  | 'True'      | '000000012' | 'Электротовары' | ''         | ''                                                                       | ''                        | ''              |

	// РегистрСведений.Характеристики (в этой конфигурации в заказе не используется, но по идее должен)

	И я проверяю или создаю для регистра сведений "Характеристики" записи:
		| 'Объект'                                                            | 'ВидХарактеристики'                                                                        | 'Номер' | 'Значение'                                                                         |
		| 'e1cib/data/Справочник.Товары?ref=8d40000d8843cd1b11dd3de2bb0c7537' | 'e1cib/data/ПланВидовХарактеристик.ВидыХарактеристик?ref=81248000600fe80011df45fdcbdd0627' |         | 58                                                                                 |
		| 'e1cib/data/Справочник.Товары?ref=a9b000055d49b45e11db8f55075b7a52' | 'e1cib/data/ПланВидовХарактеристик.ВидыХарактеристик?ref=8ca0000d8843cd1b11dc8d043d71008b' |         | 'e1cib/data/Справочник.ЗначенияХарактеристик?ref=bc070050ba5c887711e29c578feeb1c8' |
		| 'e1cib/data/Справочник.Товары?ref=a9b200055d49b45e11db9b1315c596e3' | 'e1cib/data/ПланВидовХарактеристик.ВидыХарактеристик?ref=8ca0000d8843cd1b11dc8d043d710082' |         | 'e1cib/data/Справочник.ЗначенияХарактеристик?ref=81248000600fe80011df45fdcbdd0629' |
		| 'e1cib/data/Справочник.Товары?ref=a9b200055d49b45e11db9b1315c596e3' | 'e1cib/data/ПланВидовХарактеристик.ВидыХарактеристик?ref=a9b000055d49b45e11db8c4c9d5c4227' |         | 'e1cib/data/Справочник.ЗначенияХарактеристик?ref=a9b000055d49b45e11db8c4c9d5c4228' |
		| 'e1cib/data/Справочник.Товары?ref=8d3a000d8843cd1b11dd321ba7a30aaf' | 'e1cib/data/ПланВидовХарактеристик.ВидыХарактеристик?ref=8d3a000d8843cd1b11dd321ba7a30ab0' |         | 'e1cib/data/Справочник.ЗначенияХарактеристик?ref=8d3a000d8843cd1b11dd321ba7a30ab1' |
		| 'e1cib/data/Справочник.Товары?ref=a9b000055d49b45e11db90eb5198ae43' | 'e1cib/data/ПланВидовХарактеристик.ВидыХарактеристик?ref=a9b000055d49b45e11db8c4c9d5c4227' |         | 'e1cib/data/Справочник.ЗначенияХарактеристик?ref=911f2c4d54d869e611ec04d526e9bb24' |
		| 'e1cib/data/Справочник.Товары?ref=a9b200055d49b45e11db9b1315c596e3' | 'e1cib/data/ПланВидовХарактеристик.ВидыХарактеристик?ref=a9b000055d49b45e11db8c4c9d5c4227' | 1       | 'e1cib/data/Справочник.ЗначенияХарактеристик?ref=911f2c4d54d869e611ec04d526e9bb25' |

	// Справочник.ЗначенияХарактеристик (связанные с РС Характеристики)

	И я проверяю или создаю для справочника "ЗначенияХарактеристик" объекты:
		| 'Ссылка'                                                                           | 'ПометкаУдаления' | 'Владелец'                                                                                 | 'Код'       | 'Наименование' |
		| 'e1cib/data/Справочник.ЗначенияХарактеристик?ref=81248000600fe80011df45fdcbdd0628' | 'False'           | 'e1cib/data/ПланВидовХарактеристик.ВидыХарактеристик?ref=8ca0000d8843cd1b11dc8d043d710082' | '000000017' | 'Резина'       |
		| 'e1cib/data/Справочник.ЗначенияХарактеристик?ref=81248000600fe80011df45fdcbdd0629' | 'False'           | 'e1cib/data/ПланВидовХарактеристик.ВидыХарактеристик?ref=8ca0000d8843cd1b11dc8d043d710082' | '000000018' | 'Войлок'       |
		| 'e1cib/data/Справочник.ЗначенияХарактеристик?ref=8ca0000d8843cd1b11dc8d043d710084' | 'False'           | 'e1cib/data/ПланВидовХарактеристик.ВидыХарактеристик?ref=8ca0000d8843cd1b11dc8d043d710082' | '000000005' | 'Кожа'         |
		| 'e1cib/data/Справочник.ЗначенияХарактеристик?ref=8ca0000d8843cd1b11dc8d043d710085' | 'False'           | 'e1cib/data/ПланВидовХарактеристик.ВидыХарактеристик?ref=8ca0000d8843cd1b11dc8d043d710082' | '000000006' | 'Дермантин'    |
		| 'e1cib/data/Справочник.ЗначенияХарактеристик?ref=8ca0000d8843cd1b11dc8d043d71008c' | 'False'           | 'e1cib/data/ПланВидовХарактеристик.ВидыХарактеристик?ref=8ca0000d8843cd1b11dc8d043d71008b' | '000000012' | '3,2'          |
		| 'e1cib/data/Справочник.ЗначенияХарактеристик?ref=8ca0000d8843cd1b11dc8d043d71008d' | 'False'           | 'e1cib/data/ПланВидовХарактеристик.ВидыХарактеристик?ref=8ca0000d8843cd1b11dc8d043d71008b' | '000000013' | '3,5'          |
		| 'e1cib/data/Справочник.ЗначенияХарактеристик?ref=8ca2000d8843cd1b11dc910e5100d886' | 'False'           | 'e1cib/data/ПланВидовХарактеристик.ВидыХарактеристик?ref=8ca2000d8843cd1b11dc910e5100d885' | '000000014' | '320'          |
		| 'e1cib/data/Справочник.ЗначенияХарактеристик?ref=8d3a000d8843cd1b11dd321ba7a30ab1' | 'False'           | 'e1cib/data/ПланВидовХарактеристик.ВидыХарактеристик?ref=8d3a000d8843cd1b11dd321ba7a30ab0' | '000000015' | 'Сутки'        |
		| 'e1cib/data/Справочник.ЗначенияХарактеристик?ref=8d3a000d8843cd1b11dd321ba7a30ab4' | 'False'           | 'e1cib/data/ПланВидовХарактеристик.ВидыХарактеристик?ref=8d3a000d8843cd1b11dd321ba7a30ab3' | '000000016' | 'Неделя'       |
		| 'e1cib/data/Справочник.ЗначенияХарактеристик?ref=a9b000055d49b45e11db8c4c9d5c4228' | 'False'           | 'e1cib/data/ПланВидовХарактеристик.ВидыХарактеристик?ref=a9b000055d49b45e11db8c4c9d5c4227' | '000000002' | 'Красный'      |
		| 'e1cib/data/Справочник.ЗначенияХарактеристик?ref=a9b000055d49b45e11db8c4c9d5c4229' | 'False'           | 'e1cib/data/ПланВидовХарактеристик.ВидыХарактеристик?ref=a9b000055d49b45e11db8c4c9d5c4227' | '000000003' | 'Зеленый'      |
		| 'e1cib/data/Справочник.ЗначенияХарактеристик?ref=a9b000055d49b45e11db8c4c9d5c422a' | 'False'           | 'e1cib/data/ПланВидовХарактеристик.ВидыХарактеристик?ref=a9b000055d49b45e11db8c4c9d5c4227' | '000000001' | 'Синий'        |
		| 'e1cib/data/Справочник.ЗначенияХарактеристик?ref=bc070050ba5c887711e29c578feeb1c7' | 'False'           | 'e1cib/data/ПланВидовХарактеристик.ВидыХарактеристик?ref=a9b000055d49b45e11db8c4c9d5c4227' | '000000019' | 'Бронзовый'    |
		| 'e1cib/data/Справочник.ЗначенияХарактеристик?ref=bc070050ba5c887711e29c578feeb1c8' | 'False'           | 'e1cib/data/ПланВидовХарактеристик.ВидыХарактеристик?ref=8ca0000d8843cd1b11dc8d043d71008b' | '000000020' | '15'           |
		| 'e1cib/data/Справочник.ЗначенияХарактеристик?ref=911f2c4d54d869e611ec04d526e9bb23' | 'False'           | 'e1cib/data/ПланВидовХарактеристик.ВидыХарактеристик?ref=a9b000055d49b45e11db8c4c9d5c4227' | '000000021' | 'Белый'        |
		| 'e1cib/data/Справочник.ЗначенияХарактеристик?ref=911f2c4d54d869e611ec04d526e9bb24' | 'False'           | 'e1cib/data/ПланВидовХарактеристик.ВидыХарактеристик?ref=a9b000055d49b45e11db8c4c9d5c4227' | '000000022' | 'Черный'       |
		| 'e1cib/data/Справочник.ЗначенияХарактеристик?ref=911f2c4d54d869e611ec04d526e9bb25' | 'False'           | 'e1cib/data/ПланВидовХарактеристик.ВидыХарактеристик?ref=a9b000055d49b45e11db8c4c9d5c4227' | '000000023' | 'Серый'        |

	
	// ПланВидовХарактеристик.ВидыХарактеристик (связанные с РС Характеристики)

	И я проверяю или создаю для плана видов характеристик "ВидыХарактеристик" объекты:
		| 'Ссылка'                                                                                   | 'ПометкаУдаления' | 'Код'       | 'Наименование'        | 'ТипЗначения'                                                                                                                                                                                                                                                                                                                         | 'Назначение'                               | 'Множественная' |
		| 'e1cib/data/ПланВидовХарактеристик.ВидыХарактеристик?ref=81248000600fe80011df45fdcbdd0627' | 'False'           | '000000009' | 'Размер по диагонали' | '<TypeDescription xmlns="http://v8.1c.ru/8.1/data/core" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">	<Type>xs:decimal</Type>	<NumberQualifiers>		<Digits>10</Digits>		<FractionDigits>0</FractionDigits>		<AllowedSign>Any</AllowedSign>	</NumberQualifiers></TypeDescription>' | 'Enum.НазначениеХарактеристик.Товары'      | 'False'         |
		| 'e1cib/data/ПланВидовХарактеристик.ВидыХарактеристик?ref=8ca0000d8843cd1b11dc8d043d710082' | 'False'           | '000000003' | 'Материал'            | '<TypeDescription xmlns="http://v8.1c.ru/8.1/data/core" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">	<Type xmlns:d2p1="http://v8.1c.ru/8.1/data/enterprise/current-config">d2p1:CatalogRef.ЗначенияХарактеристик</Type></TypeDescription>'                                      | 'Enum.НазначениеХарактеристик.Товары'      | 'False'         |
		| 'e1cib/data/ПланВидовХарактеристик.ВидыХарактеристик?ref=8ca0000d8843cd1b11dc8d043d71008b' | 'False'           | '000000004' | 'Жирность'            | '<TypeDescription xmlns="http://v8.1c.ru/8.1/data/core" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">	<Type xmlns:d2p1="http://v8.1c.ru/8.1/data/enterprise/current-config">d2p1:CatalogRef.ЗначенияХарактеристик</Type></TypeDescription>'                                      | 'Enum.НазначениеХарактеристик.Товары'      | 'False'         |
		| 'e1cib/data/ПланВидовХарактеристик.ВидыХарактеристик?ref=8ca2000d8843cd1b11dc910e5100d885' | 'False'           | '000000005' | 'Мощность'            | '<TypeDescription xmlns="http://v8.1c.ru/8.1/data/core" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">	<Type xmlns:d2p1="http://v8.1c.ru/8.1/data/enterprise/current-config">d2p1:CatalogRef.ЗначенияХарактеристик</Type></TypeDescription>'                                      | 'Enum.НазначениеХарактеристик.Товары'      | 'False'         |
		| 'e1cib/data/ПланВидовХарактеристик.ВидыХарактеристик?ref=8d3a000d8843cd1b11dd321ba7a30ab0' | 'False'           | '000000006' | 'Срочная'             | '<TypeDescription xmlns="http://v8.1c.ru/8.1/data/core" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">	<Type xmlns:d2p1="http://v8.1c.ru/8.1/data/enterprise/current-config">d2p1:CatalogRef.ЗначенияХарактеристик</Type></TypeDescription>'                                      | 'Enum.НазначениеХарактеристик.Товары'      | 'False'         |
		| 'e1cib/data/ПланВидовХарактеристик.ВидыХарактеристик?ref=8d3a000d8843cd1b11dd321ba7a30ab3' | 'False'           | '000000007' | 'Стандартный'         | '<TypeDescription xmlns="http://v8.1c.ru/8.1/data/core" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">	<Type xmlns:d2p1="http://v8.1c.ru/8.1/data/enterprise/current-config">d2p1:CatalogRef.ЗначенияХарактеристик</Type></TypeDescription>'                                      | 'Enum.НазначениеХарактеристик.Товары'      | 'False'         |
		| 'e1cib/data/ПланВидовХарактеристик.ВидыХарактеристик?ref=a05500195b8648b611df3d8facd8fca4' | 'False'           | '000000008' | 'Директор'            | '<TypeDescription xmlns="http://v8.1c.ru/8.1/data/core" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">	<Type>xs:string</Type>	<StringQualifiers>		<Length>1000</Length>		<AllowedLength>Variable</AllowedLength>	</StringQualifiers></TypeDescription>'                           | 'Enum.НазначениеХарактеристик.Контрагенты' | 'False'         |
		| 'e1cib/data/ПланВидовХарактеристик.ВидыХарактеристик?ref=a9b000055d49b45e11db8c4c9d5c4227' | 'False'           | '000000001' | 'Цвет'                | '<TypeDescription xmlns="http://v8.1c.ru/8.1/data/core" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">	<Type xmlns:d2p1="http://v8.1c.ru/8.1/data/enterprise/current-config">d2p1:CatalogRef.ЗначенияХарактеристик</Type></TypeDescription>'                                      | 'Enum.НазначениеХарактеристик.Товары'      | 'True'          |
		| 'e1cib/data/ПланВидовХарактеристик.ВидыХарактеристик?ref=a9b000055d49b45e11db8c4c9d5c422b' | 'False'           | '000000002' | 'Размер'              | '<TypeDescription xmlns="http://v8.1c.ru/8.1/data/core" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">	<Type>xs:decimal</Type>	<NumberQualifiers>		<Digits>10</Digits>		<FractionDigits>0</FractionDigits>		<AllowedSign>Any</AllowedSign>	</NumberQualifiers></TypeDescription>' | 'Enum.НазначениеХарактеристик.Товары'      | 'False'         |


	// РегистрСведений.ЦеныТоваров (в этой конфигурации в заказе не используется, но по идее должен)

	И я проверяю или создаю для регистра сведений "ЦеныТоваров" записи:
		| 'Период'             | 'Товар'                                                             | 'ВидЦен'                                                             | 'Цена' |
		| '10.02.2020 0:00:00' | 'e1cib/data/Справочник.Товары?ref=a9b000055d49b45e11db90eb5198ae43' | 'e1cib/data/Справочник.ВидыЦен?refName=Закупочная'                   | 2000   |
		| '10.02.2020 0:00:00' | 'e1cib/data/Справочник.Товары?ref=a9b000055d49b45e11db90eb5198ae43' | 'e1cib/data/Справочник.ВидыЦен?ref=a9b000055d49b45e11db8c4c9d5c4226' | 2300   |
		| '10.02.2020 0:00:00' | 'e1cib/data/Справочник.Товары?ref=a9b000055d49b45e11db90eb5198ae43' | 'e1cib/data/Справочник.ВидыЦен?ref=a9b000055d49b45e11db8c4c9d5c4225' | 2100   |
		| '10.02.2020 0:00:00' | 'e1cib/data/Справочник.Товары?ref=a9b000055d49b45e11db90eb5198ae43' | 'e1cib/data/Справочник.ВидыЦен?ref=a9b000055d49b45e11db8c4c9d5c4224' | 2500   |
		| '10.02.2020 0:00:00' | 'e1cib/data/Справочник.Товары?ref=a9b200055d49b45e11db9b1315c596e3' | 'e1cib/data/Справочник.ВидыЦен?refName=Закупочная'                   | 1500   |
		| '10.02.2020 0:00:00' | 'e1cib/data/Справочник.Товары?ref=a9b200055d49b45e11db9b1315c596e3' | 'e1cib/data/Справочник.ВидыЦен?ref=a9b000055d49b45e11db8c4c9d5c4225' | 1800   |
		| '10.02.2020 0:00:00' | 'e1cib/data/Справочник.Товары?ref=a9b200055d49b45e11db9b1315c596e3' | 'e1cib/data/Справочник.ВидыЦен?ref=a9b000055d49b45e11db8c4c9d5c4226' | 1900   |
		| '10.02.2020 0:00:00' | 'e1cib/data/Справочник.Товары?ref=a9b200055d49b45e11db9b1315c596e3' | 'e1cib/data/Справочник.ВидыЦен?ref=a9b000055d49b45e11db8c4c9d5c4224' | 2100   |
		| '11.05.2020 0:00:00' | 'e1cib/data/Справочник.Товары?ref=a9b000055d49b45e11db8f55075b7a52' | 'e1cib/data/Справочник.ВидыЦен?refName=Закупочная'                   | 20     |
		| '11.05.2020 0:00:00' | 'e1cib/data/Справочник.Товары?ref=a9b000055d49b45e11db8f55075b7a52' | 'e1cib/data/Справочник.ВидыЦен?ref=a9b000055d49b45e11db8c4c9d5c4225' | 25     |
		| '11.05.2020 0:00:00' | 'e1cib/data/Справочник.Товары?ref=a9b000055d49b45e11db8f55075b7a52' | 'e1cib/data/Справочник.ВидыЦен?ref=a9b000055d49b45e11db8c4c9d5c4226' | 30     |
		| '11.05.2020 0:00:00' | 'e1cib/data/Справочник.Товары?ref=a9b000055d49b45e11db8f55075b7a52' | 'e1cib/data/Справочник.ВидыЦен?ref=a9b000055d49b45e11db8c4c9d5c4224' | 50     |
		| '18.01.2021 0:00:00' | 'e1cib/data/Справочник.Товары?ref=8ca1000d8843cd1b11dc8ea92d97a749' | 'e1cib/data/Справочник.ВидыЦен?refName=Закупочная'                   | 250    |
		| '18.01.2021 0:00:00' | 'e1cib/data/Справочник.Товары?ref=8ca1000d8843cd1b11dc8ea92d97a749' | 'e1cib/data/Справочник.ВидыЦен?ref=a9b000055d49b45e11db8c4c9d5c4225' | 300    |
		| '18.01.2021 0:00:00' | 'e1cib/data/Справочник.Товары?ref=8ca1000d8843cd1b11dc8ea92d97a749' | 'e1cib/data/Справочник.ВидыЦен?ref=a9b000055d49b45e11db8c4c9d5c4226' | 330    |
		| '18.01.2021 0:00:00' | 'e1cib/data/Справочник.Товары?ref=8ca1000d8843cd1b11dc8ea92d97a749' | 'e1cib/data/Справочник.ВидыЦен?ref=a9b000055d49b45e11db8c4c9d5c4224' | 400    |
		| '27.08.2017 0:00:00' | 'e1cib/data/Справочник.Товары?ref=8d3a000d8843cd1b11dd321ba7a30aaf' | 'e1cib/data/Справочник.ВидыЦен?ref=a9b000055d49b45e11db8c4c9d5c4225' | 200    |
		| '27.08.2017 0:00:00' | 'e1cib/data/Справочник.Товары?ref=8d3a000d8843cd1b11dd321ba7a30aaf' | 'e1cib/data/Справочник.ВидыЦен?ref=a9b000055d49b45e11db8c4c9d5c4226' | 250    |
		| '27.08.2017 0:00:00' | 'e1cib/data/Справочник.Товары?ref=8d3a000d8843cd1b11dd321ba7a30aaf' | 'e1cib/data/Справочник.ВидыЦен?ref=a9b000055d49b45e11db8c4c9d5c4224' | 300    |
		| '29.08.2017 0:00:00' | 'e1cib/data/Справочник.Товары?ref=8d40000d8843cd1b11dd3de2bb0c7537' | 'e1cib/data/Справочник.ВидыЦен?refName=Закупочная'                   | 4500   |
		| '29.08.2017 0:00:00' | 'e1cib/data/Справочник.Товары?ref=8d40000d8843cd1b11dd3de2bb0c7537' | 'e1cib/data/Справочник.ВидыЦен?ref=a9b000055d49b45e11db8c4c9d5c4224' | 10000  |


	// Справочник.ХранимыеФайлы - убрала заполнение, т.к. занимают много строк в сценарии и сомнительна ценность для тестов заказов

	// Документ.Заказ

	И я проверяю или создаю для документа "Заказ" объекты:
		| 'Ссылка'                                                         | 'ПометкаУдаления' | 'Номер'     | 'Дата'                | 'Проведен' | 'Покупатель'                                                             | 'Склад'                                                             | 'Валюта'                                                            | 'ВидЦен'                                                             | 'Организация'                                                            | 'СостояниеЗаказа'                | 'Автор'                                                                   | 'Сумма' |
		| 'e1cib/data/Документ.Заказ?ref=bbef0050ba5c887711e1fc040faf2b0a' | 'False'           | '000000003' | '04.04.2022 3:13:56'  | 'True'     | 'e1cib/data/Справочник.Контрагенты?ref=a9b000055d49b45e11db8c4c9d5c4234' | 'e1cib/data/Справочник.Склады?ref=a9b000055d49b45e11db8b8bee7616e1' | 'e1cib/data/Справочник.Валюты?ref=a9b000055d49b45e11db8c4c9d5c4222' | 'e1cib/data/Справочник.ВидыЦен?refName=Закупочная'                   | 'e1cib/data/Справочник.Организации?ref=8d34000d8843cd1b11dd2bea12f94c64' | 'Enum.СостоянияЗаказов.Закрыт'   | 'e1cib/data/Справочник.Пользователи?ref=a2bc001d600da75a11e1f76c2216989a' | 4500    |
		| 'e1cib/data/Документ.Заказ?ref=bbef0050ba5c887711e1fc040faf2b0d' | 'False'           | '000000004' | '04.04.2022 4:14:40'  | 'True'     | 'e1cib/data/Справочник.Контрагенты?ref=8ca0000d8843cd1b11dc8d043d71007d' | 'e1cib/data/Справочник.Склады?ref=a9b000055d49b45e11db8b8bdc1aadc2' | ''                                                                  | 'e1cib/data/Справочник.ВидыЦен?ref=a9b000055d49b45e11db8c4c9d5c4224' | 'e1cib/data/Справочник.Организации?ref=8d34000d8843cd1b11dd2bea12f94c65' | 'Enum.СостоянияЗаказов.Закрыт'   | 'e1cib/data/Справочник.Пользователи?ref=a2bc001d600da75a11e1f76c2216989a' | 10500   |
		| 'e1cib/data/Документ.Заказ?ref=bbef0050ba5c887711e1fc040faf2b25' | 'False'           | '000000012' | '06.05.2022 19:14:03' | 'True'     | 'e1cib/data/Справочник.Контрагенты?ref=8ca1000d8843cd1b11dc8ea92d97a74a' | 'e1cib/data/Справочник.Склады?ref=a9b000055d49b45e11db8b8bee7616e1' | 'e1cib/data/Справочник.Валюты?ref=a9b000055d49b45e11db8c4421dda1c5' | 'e1cib/data/Справочник.ВидыЦен?ref=a9b000055d49b45e11db8c4c9d5c4226' | 'e1cib/data/Справочник.Организации?ref=8d34000d8843cd1b11dd2bea12f94c63' | 'Enum.СостоянияЗаказов.Выполнен' | 'e1cib/data/Справочник.Пользователи?ref=a2bc001d600da75a11e1f76c2216989a' | 3050    |
		| 'e1cib/data/Документ.Заказ?ref=bbef0050ba5c887711e1fc040faf2b29' | 'False'           | '000000015' | '08.05.2022 18:23:50' | 'True'     | 'e1cib/data/Справочник.Контрагенты?ref=a9b000055d49b45e11db8c4c9d5c4234' | 'e1cib/data/Справочник.Склады?ref=a9b000055d49b45e11db8c4c9d5c4221' | 'e1cib/data/Справочник.Валюты?ref=a9b000055d49b45e11db8c4421dda1c5' | 'e1cib/data/Справочник.ВидыЦен?ref=a9b000055d49b45e11db8c4c9d5c4225' | 'e1cib/data/Справочник.Организации?ref=8d34000d8843cd1b11dd2bea12f94c64' | 'Enum.СостоянияЗаказов.ВРаботе'  | 'e1cib/data/Справочник.Пользователи?ref=a2bc001d600da75a11e1f76c2216989a' | 9300    |

	И я перезаполняю для объекта табличную часть "Товары":
		| 'Ссылка'                                                         | 'Товар'                                                             | 'Цена' | 'Количество' | 'Сумма' |
		| 'e1cib/data/Документ.Заказ?ref=bbef0050ba5c887711e1fc040faf2b0a' | 'e1cib/data/Справочник.Товары?ref=8d40000d8843cd1b11dd3de2bb0c7537' | 4500   | 1            | 4500    |
		| 'e1cib/data/Документ.Заказ?ref=bbef0050ba5c887711e1fc040faf2b0d' | 'e1cib/data/Справочник.Товары?ref=a9b000055d49b45e11db90eb5198ae43' | 2000   | 3            | 6000    |
		| 'e1cib/data/Документ.Заказ?ref=bbef0050ba5c887711e1fc040faf2b0d' | 'e1cib/data/Справочник.Товары?ref=a9b200055d49b45e11db9b1315c596e3' | 1500   | 3            | 4500    |
		| 'e1cib/data/Документ.Заказ?ref=bbef0050ba5c887711e1fc040faf2b25' | 'e1cib/data/Справочник.Товары?ref=8ca1000d8843cd1b11dc8ea92d97a749' | 250    | 10           | 2500    |
		| 'e1cib/data/Документ.Заказ?ref=bbef0050ba5c887711e1fc040faf2b25' | 'e1cib/data/Справочник.Товары?ref=a9b000055d49b45e11db8f55075b7a52' | 50     | 11           | 550     |
		| 'e1cib/data/Документ.Заказ?ref=bbef0050ba5c887711e1fc040faf2b29' | 'e1cib/data/Справочник.Товары?ref=8d3a000d8843cd1b11dd321ba7a30aaf' | 300    | 1            | 300     |
		| 'e1cib/data/Документ.Заказ?ref=bbef0050ba5c887711e1fc040faf2b29' | 'e1cib/data/Справочник.Товары?ref=8d40000d8843cd1b11dd3de2bb0c7537' | 4500   | 2            | 9000    |

