# Описание сущностей БД

##### Каждая сущность содержит: имя поля, тип, ограничения, связь с другими сущностями.


## User (Пользователь)
___
|имя поля|тип|ограничения|описание|
|:------:|:-:|:----------:|:-------:|
|id|pk|auto increment; not null; unique|первичный ключ|
|username|VARCHAR(50)|not null; unique|Название аккаунта|
|password|VARCHAR(50)|not null|пароль|
|email|VARCHAR(100)|not null; unique|почта|
|telephone|VARCHAR(13)|blank=True; unique|номер телефона|
|date_of_birth|DATE|not null|дата рождения|
|rental_deal_id|ForeignKey(Rental_deal)|blank=True|текущая аренда|
|rent_status|VARCHAR(50)|not null; default(not active)|статус аренды|


## Landlord (Арендодатель)
___
имя поля|тип|ограничения|описание|
|:------:|:-:|:----------:|:-------:|
|id|pk|auto increment; not null; unique|первичный ключ|
|landlord_id|OneToOne(User)|not null|id арендодателя|
|private_key|VARCHAR(10)|not null|приватный ключ|
|car_id|ForeignKey(Car)|blank=True|автомобили для аренды|


## Role (роль пользователя)
___
|имя поля|тип|ограничения|описание|
|:------:|:-:|:----------:|:-------:|
|id|pk|auto increment; not null; unique|первичный ключ|
|name|VARCHAR(50)|not null|название роли|
|permission|VARCHAR(50)|not null|права роли|


## Car_type (Тип транспорта)
___
|имя поля|тип|ограничения|описание|
|:------:|:-:|:---------:|:------:|
|id|pk|auto increment; not null; unique|первичный ключ|
|type_name|VARCHAR(50)|not null|название типа транспорта|
|car_id|ForeignKey(Car)|not null|автомобиль|


## Car (Автомобиль)
___
|имя поля|тип|ограничения|описание|
|:------:|:-:|:---------:|:------:|
|id|pk|auto increment; not null; unique|первичный ключ|
|brand|VARCHAR(50)|not null|марка|
|model|VARCHAR(50)|not null|модель|
|fuel_type|VARCHAR(20)|blank=True|тип топлива|
|seats_count|VARCHAR(1)|blank=True|кол-во посадочных мест|
|color|VARCHAR(50)|blank=True|цвет кузова|
|registration_plate|VARCHAR(10)|not null; unique|гос. регистрационный номер|
|price_per_hour|VARCHAR(10)|not null|цена за час аренды|


## Car_images (Фотографии автомобилей)
___
|имя поля|тип|ограничения|описание|
|:------:|:-:|:---------:|:------:|
|id|pk|auto increment; not null; unique|первичный ключ|
|car_id|OneToOne(Car)|not null|автомобиль|
|url|VARCHAR(200)|not null|путь к фотографиям|


## Rental_deal (Арендная сделка)
___
|имя поля|тип|ограничения|описание|
|:------:|:-:|:----------:|:-------:|
|id|pk|auto increment; not null; unique|первичный ключ|
|car_id|OneToOne(Car)|not null; unique|арендованный автомобиль|
|start_date|DATE|not null|дата начала аренды|
|start_date|DATE|not null|дата конца аренды|
|total_price|VARCHAR(50)|not null|цена за аренду|


## Pick_up_point (пункт приема-выдачи)
___
|имя поля|тип|ограничения|описание|
|:------:|:-:|:----------:|:-------:|
|id|pk|auto increment; not null; unique|первичный ключ|
|user_id|ManytoMany(Rental_deal)|not null|арендная сделка|
|reception_point|VARCHAR(100)|not null|пункт приема|
|issue_point|VARCHAR(100)|not null|пункт выдачи|


## User_logs (Логи)
___
|имя поля|тип|ограничения|описание|
|:------:|:-:|:----------:|:-------:|
|id|pk|auto increment; not null; unique|первичный ключ|
|user_id|ForeignKey(User)|not null|пользователь|
|message|VARCHAR(500)|not null|логи событий|
