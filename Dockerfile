FROM python:3.10-slim
RUN pip install django
COPY . .
RUN python manage.py migrate
EXPOSE 8001
CMD ["python","manage.py","runserver","0.0.0.0:8001"]