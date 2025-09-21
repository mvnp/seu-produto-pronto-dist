# Imagem Nginx
FROM nginx:alpine

# Remove configs padrão e copia sua própria config se quiser customizar
# COPY nginx.conf /etc/nginx/conf.d/default.conf

# Copia os arquivos estáticos para o diretório do Nginx
COPY dist/ /usr/share/nginx/html/

# Expõe a porta
EXPOSE 80

# Inicia o Nginx
CMD ["nginx", "-g", "daemon off;"]