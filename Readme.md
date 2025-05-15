# dbops-project
Исходный репозиторий для выполнения проекта дисциплины "DBOps"

## Создание базы данных в Postgres и создание нового пользователя:

Команды для выполнения операций:

```sql
CREATE DATABASE store;
CREATE USER username WITH PASSWORD 'pass1234';
GRANT ALL privileges ON DATABASE store TO username;
```
