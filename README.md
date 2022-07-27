# exelOpis
Макрос для работы с файлами и описи медиафайлов

## Требования
1. Windows 7 и выше (x64)
2. Microsoft Office Excel 2016 и выше
3. Windows Media Player
4.  VisualBasic в комплекте установки с MS Office

## Установка

### Клиент 
1. Скачайте архив exelOpis к себе на компьютер и распакуйте его
2. Установите mysql-connector-odbc-5.1.13-winx64.msi
3. Запустите exelOpis 
4. Нажмите "Включить содержимое", чтобы макросы начали работать
5. Согласитесь инициализировать элементы ActiveX (В окошке "This application is about to initialise ActiveX..."  - нажмите ОК)

Если вы хотите создать свою базу данных, то необходимо создать сервер:
### Сервер 
1. Установите MariaDb или MySql
2. Импортируйте в базу данных дамп: sites_metka_structure.sql
` mysql -u <пользователь> -p<пароль> <название вашей БД> < sites_metka_structure.sql `

## Скриншоты
![Screenshot_1](https://user-images.githubusercontent.com/6277090/181240791-ab1b426b-6c85-4f2f-9494-dcaa615dcb08.jpg)

![Screenshot_2](https://user-images.githubusercontent.com/6277090/181240872-26883a12-cee1-46d2-95f4-ebb4c3cbe6d3.jpg)

![Screenshot_3](https://user-images.githubusercontent.com/6277090/181240885-bda33550-d6b1-4a65-a188-dcea0d0c67d8.jpg)

![Screenshot_4](https://user-images.githubusercontent.com/6277090/181240906-a0246971-f9aa-4a82-aa8a-21e3ff978296.jpg)

![Screenshot_5](https://user-images.githubusercontent.com/6277090/181240914-c71105a5-de90-40a1-9518-dccee4a18c7d.jpg)

![Screenshot_6](https://user-images.githubusercontent.com/6277090/181240932-dc77586c-0b13-4fe6-be4a-8d173fcc510f.jpg)
