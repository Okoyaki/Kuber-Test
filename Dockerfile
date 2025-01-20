FROM python:3.12-alpine

WORKDIR /app

RUN echo "Hello world." > /app/hello.html

RUN adduser -D -u 1001 appuser
USER 1001

CMD ["python", "-m", "http.server", "8000"]