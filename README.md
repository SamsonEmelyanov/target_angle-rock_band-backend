Инструкция по локальному запуску проекта:

1. Cоздать базу данных 'target_angle' на рабочем столе MySql(phpMyAdmin)
2. Добавить в корень проекта файл .env с переменными окружения:
   SMTP_MAIL_HOST=адес SMTP почтового сервера(smtp.mail.yahoo.com)
   SMTP_MAIL_USERNAME=почтовый клиент(email@gmail.com)
   SMTP_MAIL_PASSWORD=пароль приложений(password)
   DB_URL=URL базы данных
   MYSQL_USER=логин пользователя БД(root)
   MYSQL_ROOT_PASSWORD=пароль пользователя БД(root)
   API_BASE_URL=URL развернутого бекенда(свой собственный URL)
   STRIPE_API_KEY=серверный ключ оплаты STRIPE("sk_test_key")
   STRIPE_NAME=логин клиента STRIPE("stripe-name")
   OAUTH2_REDIRECT_URI=URL фронтенда для редиректа при авторизации через OAUTH2("http://localhost:3000/registration/oauth2/redirect")
   SERVER_PORT=порт приложения(8080)
3. Запустить приложение с учетом переменных окружения. Для INTELLIJ IDEA:
   Run -> Edit Configuration -> Указать путь к .env в Environment variables.
