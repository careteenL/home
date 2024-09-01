# 构建应用
FROM nginx:stable as production-stage

COPY dist/ /usr/share/nginx/html

COPY nginx.conf /etc/nginx/conf.d/default.conf

EXPOSE 12445

CMD ["nginx", "-g", "daemon off;"]

# FROM node
# WORKDIR /app
# COPY dist ./dist
# RUN npm install -g http-server

# EXPOSE 12445
# CMD ["http-server", "dist", "-p", "12445"]

# !!服务器配置低，则简单处理!!

# # 构建应用
# # FROM node:18 AS builder
# FROM node AS builder
# WORKDIR /app
# COPY package*.json ./
# RUN npm install
# COPY . .
# RUN [ ! -e ".env" ] && cp .env.example .env || true
# RUN npm run build

# # 最小化镜像
# # FROM node:18-alpine
# FROM node
# WORKDIR /app
# COPY --from=builder /app/dist ./dist
# RUN npm install -g http-server

# EXPOSE 12445
# CMD ["http-server", "dist", "-p", "12445"]