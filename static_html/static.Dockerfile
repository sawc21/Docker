#declare what image to use
FROM python:3.14.7-slim-bookworm

WORKDIR /app

# RUN mkdir -p /static_folder
# COPY ./static_html /static_folder
# RUN echo "Hello, World!" > index.html

#same destination is /app
# COPY ./static_html /app
COPY ./src .

CMD ["python", "-m", "http.server", "8000"]

# docker build -f Dockerfile -t pyapp .

# docker run -it pyapp

#docker build -f Dockerfile -t sawc69/ai-py-app-test:latest .
#docker push sawc69/ai-py-app-test:latest
#docker run -it sawc69/ai-py-app-test:latest

# python -m http.server 8000
# docker run -it -p 3000:8000 pyapp



