# nginx-uwsgi-flask-pandas-docker
 Docker image based on Alpine Linux with uWSGI and Nginx for Flask applications in Python running in a single container. Includes NumPy and Pandas libraries.

Used to build image [bandaangosta/nginx-uwsgi-flask-pandas](https://hub.docker.com/r/bandaangosta/nginx-uwsgi-flask-pandas/).

For a template of a Flask app that can be deployed using this Docker image, take a look at [flask-minimal](https://github.com/bandaangosta/cookiecutter-flask-minimal).

To manually build image, clone repo and run:

    docker build -t nginx-uwsgi-flask-pandas .


Latest version is based on:
  * Alpine 3.7
  * Python 3.6
  * Flask 1.0.2
  * NumPy 1.15.3
  * Pandas 0.23.4  

Example Dockerfile based on this image:

    FROM bandaangosta/nginx-uwsgi-flask-pandas
    COPY . /app
    RUN pip install --no-cache-dir -r requirements.txt
    ENV STATIC_PATH /app/my_flask_app/static  
