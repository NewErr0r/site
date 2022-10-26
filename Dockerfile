FROM nginx

RUN mkdir /usr/share/nginx/html/css
RUN mkdir /usr/share/nginx/html/js

COPY ./index.html /usr/share/nginx/html
COPY ./css/* /usr/share/nginx/html/css/
COPY ./js/* /usr/share/nginx/html/js/

CMD ["nginx", "-g", "daemon off;"]
