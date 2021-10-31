# django-docker-temp
template for a blank django rest project with docker

Pretty basic, comes set up with debug toolbar, rest_framework, django_rq
Dockerfile sets up postgres and redis

Settings should be set for deployment to heroku if a procfile or manafest is added or using the container registry

`dataserve` is project name and `handler` is app, should be fine to change if appropriate references are also changed

once on local run `docker-compose up -d --build`


