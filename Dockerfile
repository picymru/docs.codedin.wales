FROM picymru/python3:latest
MAINTAINER Matthew Gall <matthew@picymru.org.uk>

WORKDIR /app
COPY . /app

EXPOSE 8000

ENTRYPOINT ["/sbin/tini"]
CMD ["mkdocs", "serve", "--dev-addr=0.0.0.0:8000", "--no-livereload"]