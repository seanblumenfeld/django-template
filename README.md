## To create a project
- run `docker-compose run web django-admin startproject <project-name> /code`
- Update DB settings in settings.py
- migrate the DB using `make migrate`
- Start your new django app and Go to localhost:8000
- create first app `python manage.py startapp newapp`
- Add view in newapp:

```
from django.shortcuts import render

from django.http import HttpResponse


def index(request):
    return HttpResponse("Hello, world. You're at the polls index.")
```

- Add url route:
```
from django.contrib import admin
from django.urls import include, path

urlpatterns = [
    path('newapp/', include('newapp.urls')),
    path('admin/', admin.site.urls),
]
```
