# Actividad 3 - Solución

La solución que he encontrado para el problema es la configuración de host virtual de Nginx para alojar la app React:

~~~
server {
         listen 80;
         listen [::]:80;
         root /usr/share/nginx/html;
         index index.html index.htm;
         # MODIFICAR EJEMPLO DE SERVER_NAME
         server_name react.ejemplo.com;
         location / {
              try_files $uri $uri/ =404;
         }
}
~~~

Para copiarlo con `COPY react.conf /etc/nginx/sites-enabled/` en el archivo de `nginx.Dockerfile`, después verifica Nginx para evitar cualquier error de sintaxis con `RUN nginx -t`