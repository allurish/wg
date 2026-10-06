# wg

Приложение Ruby on Rails 8.1 с базой PostgreSQL. Rails и PostgreSQL запускаются только через Docker Compose: Ruby и база на хосте не нужны.

## Требования

- Docker
- Docker Compose v2 (команда `docker compose`)

## Запуск

Собрать образ и поднять приложение вместе с базой:

```bash
docker compose up -d
```

Приложение будет доступно на [http://localhost:3000](http://localhost:3000).

Остановить контейнеры:

```bash
docker compose down
```

Данные PostgreSQL хранятся в volume `postgres_data`. Команда `docker compose down -v` удаляет этот volume вместе с данными.

После изменения `Gemfile` образ нужно пересобрать:

```bash
docker compose build web
docker compose up
```

## Консоль

Если контейнер `web` уже запущен:

```bash
docker compose exec web rails console
```

Если нет — одноразовая команда сама поднимет базу и выполнит консоль:

```bash
docker compose exec web rails console
```

## Консоль базы данных - psql

Если контейнер `web` уже запущен:

```bash
docker compose exec web rails db
```


## База данных

Подключение задаётся в `config/database.yml` и переменных окружения сервиса `web`:

| | |
| --- | --- |
| хост внутри Compose | `db` |
| хост с вашей машины | `localhost` |
| порт | `5432` |
| пользователь | `wg` |
| пароль | `wg` |
| база development | `wg_development` |
| база test | `wg_test` |

При первом запуске PostgreSQL сам создаёт базу `wg_development`. Создать недостающие базы и применить уже лежащие в репозитории миграции:

```bash
docker compose exec web rails db:prepare
```

## Миграции

Миграция — файл в `db/migrate`, который меняет схему базы: создаёт таблицы, добавляет столбцы и индексы. Имя файла начинается с временной метки, поэтому миграции применяются в порядке создания.

Все команды ниже выполняются внутри контейнера `web`.

### Создать миграцию

Пустой файл, который потом заполняют вручную:

```bash
docker compose exec web rails generate migration AddNotes
```

Миграция с таблицей и столбцами. Типы указываются после двоеточия: `string`, `text`, `integer`, `boolean`, `datetime`, `decimal`, `references`.

```bash
docker compose run --rm web rails generate migration CreatePosts title:string body:text published:boolean
```

Rails создаст файл вида `db/migrate/20261006193000_create_posts.rb`:

```ruby
class CreatePosts < ActiveRecord::Migration[8.1]
  def change
    create_table :posts do |t|
      t.string :title
      t.text :body
      t.boolean :published

      t.timestamps
    end
  end
end
```

Метод `change` описывает изменение так, чтобы Rails мог откатить его сам. Для необратимых шагов вместо `change` пишут два метода: `up` (применить) и `down` (откатить).

Модель и миграцию можно сгенерировать вместе:

```bash
docker compose exec web rails generate model Post title:string body:text
```

Команда создаёт `app/models/post.rb`, тест и миграцию. Сама по себе она базу не меняет.

### Применить миграции

```bash
docker compose exec web rails db:migrate
```

Rails выполняет те файлы из `db/migrate`, которых ещё нет в таблице `schema_migrations`, и обновляет `db/schema.rb`. `schema.rb` — текущий снимок схемы; его коммитят вместе с файлом миграции.

Пока миграция не применена, приложение в development при обращении к базе покажет ошибку pending migration.

### Статус и откат

Список миграций и какие из них уже применены:

```bash
docker compose exec web rails db:migrate:status
```

Откатить последнюю:

```bash
docker compose exec web rails db:rollback
```

Откатить несколько последних:

```bash
docker compose exec web rails db:rollback STEP=2
```

Конкретную версию (число в начале имени файла):

```bash
docker compose exec web rails db:migrate:down VERSION=20261006193000
```

### Если миграцию нужно поправить

Файл уже применённой миграции не редактируют, если она есть у кого-то ещё: для следующего изменения создают новую миграцию.

Если миграцию применяли только локально и её ещё не коммитили, её откатывают, правят и применяют снова:

```bash
docker compose exec web rails db:rollback
# правка db/migrate/....rb
docker compose exec web rails db:migrate
```

### Другие команды схемы

```bash
docker compose exec web rails db:create       # создать базы из database.yml
docker compose exec web rails db:drop         # удалить базы
docker compose exec web rails db:schema:load  # накатить db/schema.rb, не проигрывая миграции
docker compose exec web rails db:reset        # drop, create и schema:load для development
```
