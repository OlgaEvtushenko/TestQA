﻿#language: ru

@tree
@Быстрые проверки

Функционал: Проверка расположения элементов в форме справочника Организации

Как Тестировщик я хочу
проверить правильность расположения полей справочника Организации
чтобы убедиться, что пользователь увидит привычную форму

Контекст:
	Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий

Сценарий: Проверка расположения элементов в форме справочника Организации

	И я закрываю все окна клиентского приложения			
	И В командном интерфейсе я выбираю 'Справочники' 'Организации'
	Тогда открылось окно 'Организации'
	И я нажимаю на кнопку с именем 'FormCreate'
	@screenshot
	Тогда открылось окно 'Организация (создание)'

