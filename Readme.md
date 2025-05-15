# dbops-project
Исходный репозиторий для выполнения проекта дисциплины "DBOps"

## Создание базы данных в Postgres и создание нового пользователя

Команды для выполнения операций:

```sql
CREATE DATABASE store;
CREATE USER username WITH PASSWORD 'pass1234';
GRANT ALL privileges ON DATABASE store TO username;
```

## SQL-запрос для определения количества проданных сосисок
Запрос показывает количество проданных сосисок за каждый день предыдущей недели. Выводит дату и сумму всех заказанных сосисок за этот день.

```sql
SELECT o.date_created, SUM(op.quantity)
FROM orders AS o
    JOIN order_product AS op ON o.id = op.order_id
WHERE o.status = 'shipped' AND o.date_created > NOW() - INTERVAL '7 DAY'
GROUP BY o.date_created; 
```