# Используем базовый образ Drupal
FROM drupal

# Обновляем пакеты и устанавливаем необходимые зависимости
RUN apt-get update && \
    apt-get install -y libpq-dev && \
    rm -rf /var/lib/apt/lists/*

# Копируем содержимое текущей директории в директорию /var/www/html контейнера
COPY . /var/www/html/

# Открываем порт 80 для доступа к веб-серверу
EXPOSE 80
