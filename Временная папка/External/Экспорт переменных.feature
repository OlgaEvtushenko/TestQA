﻿#language: ru

@tree
@IgnoreOnCIMainBuild

Функционал: <описание фичи>

Как <Роль> я хочу
<описание функционала> 
чтобы <бизнес-эффект>   

Переменные:
ЗаголовокФормыСпискаПоступления = '{!Metadata.Documents.PurchaseInvoice.ListPresentation}'
ЗаголовокПодсистемыЗакупок = '{!Metadata.Subsystems.PurchaseAP.Synonym}'

*ПроверяемыеЗначения
| 'Имя'                       | 'Представление'               | 'Значение' |
| 'СуммаДокументаПоступления' | 'Сумма документа поступления' | '900,00'   |

ИтоговаяСуммаОтчета = 'R21C3'

СообщениеШтрихкодНеНайден = '{!R().S_019}' // воскл. знак - функция вызывается на сервере

//Контекст:
//	Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий

Сценарий: <описание сценария>
