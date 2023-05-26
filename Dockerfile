# Sử dụng hệ điều hành Ubuntu mới nhất
FROM ubuntu:23.10

# Định nghĩa biến môi trường cho PORT
ARG PORT=3000

# Cài đặt các gói cần thiết
RUN apt-get update \
    && apt-get install -y curl \
    && curl -fsSL https://deb.nodesource.com/setup_18.x | bash - \
    && apt-get install -y nodejs \
    && npm install -g yarn

# Tạo thư mục làm việc trong container
WORKDIR /app

# Copy package.json và yarn.lock vào thư mục làm việc
COPY ./app/package*.json ./app/yarn.lock /app/

# Cài đặt dependencies
RUN yarn install

# Copy toàn bộ mã nguồn ứng dụng vào thư mục làm việc
COPY ./app /app

# Mở PORT được định nghĩa bởi biến môi trường
EXPOSE $PORT

# Chạy ứng dụng NodeJS
CMD ["yarn", "dev"]
