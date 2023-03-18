From python:3.10

WORKDIR /code

COPY Pipfile Pipfile.lock ./

RUN apt-get update && \
    apt-get install -y nginx && \
    pip install --upgrade pip && \
    pip install pipenv && \
    pipenv install --system --deploy --ignore-pipfile

COPY my-nginx.conf /etc/nginx/sites-available/default

COPY . .

EXPOSE 80

RUN python3 main.py && \
    cp ./my_page.html /usr/share/nginx/html/index.html

CMD ["nginx", "-g", "daemon off;"]