> # Разработка программы остановлена 
> Доступна новая веб-версия: [mediArch](https://github.com/IlyaPetrovM/mediArch)

# exelOpis
Макрос для работы с файлами и описи медиафайлов

# Требования
1. Windows 7 и выше (x64)
2. Microsoft Office Excel 2016 и выше
3. Windows Media Player. [Подробнее](https://support.microsoft.com/ru-ru/windows/%D0%BA%D0%B0%D0%BA-%D1%81%D0%BA%D0%B0%D1%87%D0%B0%D1%82%D1%8C-%D0%BF%D1%80%D0%BE%D0%B8%D0%B3%D1%80%D1%8B%D0%B2%D0%B0%D1%82%D0%B5%D0%BB%D1%8C-windows-media-81718e0d-cfce-25b1-aee3-94596b658287)
4.  VisualBasic в комплекте установки с MS Office

# Установка
Видео-инструкция
https://www.youtube.com/watch?v=zPuwOGjPA6o
### Сервер 
1. Установите MariaDb или MySql (скачать установщик можно по ссылке https://mariadb.org/download/)

2. Придумайте название вашей базы данных (латиницеи) и создайте базу данных при помощи команды:

```sh
$ mysql -u ПОЛЬЗОВАТЕЛЬ -p -e "create database НАЗВАНИЕ_ВАШЕЙ_БД" 
```

3. Импортируйте в структуру базы данных: sites_metka_structure.sql
Откройте консоль и перейдите в директорию с Дампом. 
Введите нижеследующий текст:

```sh
$ mysql -u ПОЛЬЗОВАТЕЛЬ -p НАЗВАНИЕ_ВАШЕЙ_БД < sites_metka_structure.sql 
```


### Клиент 
Если вы хотите создать свою базу данных (а не подключиться к уже существующей), то необходимо создать Cервер (см установка Сервера).
1. Скачайте архив exelOpis к себе на компьютер и распакуйте его
2. Установите mysql-connector-odbc-5.1.13-winx64.msi
3. Запустите exelOpis 
4. Нажмите "Включить содержимое", чтобы макросы начали работать
5. Согласитесь инициализировать элементы ActiveX (В окошке "This application is about to initialise ActiveX..."  - нажмите ОК)


# Разработчики
Петров Илья,
Махотин Сергей 


# Скриншоты
![Screenshot_1](https://user-images.githubusercontent.com/6277090/181240791-ab1b426b-6c85-4f2f-9494-dcaa615dcb08.jpg)

![Screenshot_2](https://user-images.githubusercontent.com/6277090/181240872-26883a12-cee1-46d2-95f4-ebb4c3cbe6d3.jpg)

![Screenshot_3](https://user-images.githubusercontent.com/6277090/181240885-bda33550-d6b1-4a65-a188-dcea0d0c67d8.jpg)

![Screenshot_4](https://user-images.githubusercontent.com/6277090/181240906-a0246971-f9aa-4a82-aa8a-21e3ff978296.jpg)

![Screenshot_5](https://user-images.githubusercontent.com/6277090/181240914-c71105a5-de90-40a1-9518-dccee4a18c7d.jpg)

![Screenshot_6](https://user-images.githubusercontent.com/6277090/181240932-dc77586c-0b13-4fe6-be4a-8d173fcc510f.jpg)
