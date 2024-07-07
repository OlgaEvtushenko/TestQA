﻿#language: ru

@tree
@Быстрые проверки

Функционал: Проверка формы элемента справочника Организации

Как Тестировщик я хочу
проверить доступность вкладок Налоги и Валюты 
чтобы убедиться, что пользователь не ошибется при вводе данных

Контекст:
	Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий

Сценарий: Проверка доступности вкладок Налоги и Валюты в справочнике Организаций

		И я закрываю все окна клиентского приложения			
	* Открытие элемента справочника Организации
		И В командном интерфейсе я выбираю 'Справочники' 'Организации'
		Тогда открылось окно 'Организации'
		И я нажимаю на кнопку с именем 'FormCreate'
		Тогда открылось окно 'Организация (создание)'
	* Установка флага Наша организация и проверка присутствия на форме Валют и Вида налога
		И я устанавливаю флаг с именем 'OurCompany'
		И элемент формы "Валюты" присутствует на форме
		И элемент формы "Вид налога" присутствует на форме
	* Снятие флага Наша организация и проверка отсутствия на форме Валют и Вида налога
		И я снимаю флаг с именем 'OurCompany'
		И элемент формы "Валюты" существует и невидим на форме
		И элемент формы "Вид налога" существует и невидим на форме