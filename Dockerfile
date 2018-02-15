FROM nginx:latest
LABEL mantainer="Cristobal Belda cbeldaperez@gmail.com"

RUN apt-get update \
 && apt-get install -y --no-install-recommends \
      apache2-utils \
 && rm -rf /var/lib/apt/lists/*

COPY nginx.conf /etc/nginx/conf.d/default.conf

EXPOSE 80 443

CMD ["nginx", "-g", "daemon off;"]
