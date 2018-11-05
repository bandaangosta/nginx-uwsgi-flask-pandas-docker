# nginx-uwsgi-flask-pandas-docker
Docker image with uWSGI and Nginx for Flask applications in Python running in a single container. Includes NumPy and Pandas libraries. Alpine-based version available.  
It helps speed up final image creation as Pandas and NumPy may need to be built.

Used to build image [bandaangosta/nginx-uwsgi-flask-pandas](https://hub.docker.com/r/bandaangosta/nginx-uwsgi-flask-pandas/).

For a template of a Flask app that can be deployed using this Docker image, take a look at [flask-minimal](https://github.com/bandaangosta/cookiecutter-flask-minimal).

To manually build image, clone repo and run:

    docker build -t nginx-uwsgi-flask-pandas -f <folder>/Dockerfile .

## Base image

[tiangolo/uwsgi-nginx-flask](https://hub.docker.com/r/tiangolo/uwsgi-nginx-flask/)

## Supported tags and respective `Dockerfile` links

* [`python3.6` _(Dockerfile)_](https://github.com/bandaangosta/nginx-uwsgi-flask-pandas-docker/blob/master/python3.6/Dockerfile)
* [`python3.6-alpine3.7` _(Dockerfile)_](https://github.com/bandaangosta/nginx-uwsgi-flask-pandas-docker/blob/master/python3.6-alpine3.7/Dockerfile)

## Latest version is based on

  * Alpine 3.7 (optional)
  * Python 3.6
  * Flask 1.0.2
  * NumPy 1.15.3
  * Pandas 0.23.4  

## Example Dockerfile based on this image

    FROM bandaangosta/nginx-uwsgi-flask-pandas:python3.6-alpine
    COPY . /app
    RUN pip install --no-cache-dir -r requirements.txt
    ENV STATIC_PATH /app/my_flask_app/static  
