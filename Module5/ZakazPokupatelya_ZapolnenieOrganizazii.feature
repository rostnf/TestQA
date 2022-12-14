#language: ru

@tree

Функционал: Создание Заказа покупателя

Как Тестировщик я хочу
Создать заказ покупателя и в случае если не будет заполнено поле Организация заполнить его
чтобы убедиться в правильности  создания заказа покупателя

Контекст:
Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий
	
Сценарий: создание Заказа покупателя
*Загрузка данных
	И экспорт основных данных
*Создание документа Заказ покупателя
И я закрываю все окна клиентского приложения
И В командном интерфейсе я выбираю 'Продажи' 'Заказы покупателей'
Тогда открылось окно 'Заказы покупателей'
И я нажимаю на кнопку с именем 'FormCreate'
Тогда открылось окно 'Заказ покупателя (создание)'
И я нажимаю кнопку выбора у поля с именем "Partner"
Тогда открылось окно 'Партнеры'
И в таблице "List" я перехожу к строке
	|'Наименование'|
	|'Клиент 1 (1 соглашение)'|
И в таблице "List" я выбираю текущую строку
*Проверка заполнения поля Организация и заполнение поля Организация если оно не заполнено
	Если элемент формы с именем "Company" имеет значение "" тогда
		И я нажимаю кнопку выбора у поля с именем "Company"
		Тогда открылось окно 'Организации'
		И в таблице "List" я перехожу к строке
			|'Наименование'|
			|'Собственная компания 1'|
		И в таблице "List" я выбираю текущую строку
Когда открылось окно 'Заказ покупателя (создание) *'
И в таблице "ItemList" я нажимаю на кнопку с именем 'ItemListAdd'
И в таблице "ItemList" я активизирую поле с именем "ItemListItem"
И в таблице "ItemList" я нажимаю кнопку выбора у реквизита с именем "ItemListItem"
Тогда открылось окно 'Номенклатура'
И в таблице "List" я активизирую поле с именем "Description"
И в таблице "List" я выбираю текущую строку
Тогда открылось окно 'Заказ покупателя (создание) *'
И в таблице "ItemList" я активизирую поле с именем "ItemListItemKey"
И в таблице "ItemList" я нажимаю кнопку выбора у реквизита с именем "ItemListItemKey"
Тогда открылось окно 'Характеристики'
И в таблице "List" я активизирую поле с именем "Item"
И в таблице "List" я выбираю текущую строку
Тогда открылось окно 'Заказ покупателя (создание) *'
И в таблице "ItemList" я завершаю редактирование строки
И я нажимаю на кнопку с именем 'FormPostAndClose'
И я жду закрытия окна 'Заказ покупателя (создание) *' в течение 20 секунд
	