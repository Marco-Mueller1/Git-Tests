# Verwende ein offizielles Image als Basis
FROM ubuntu:20.04

# Setze Metadaten wie der Autor des Dockerfiles
LABEL maintainer="Marco Müller <marco-mueller@outlook.com>"

# Führe Aktualisierungen und Installation von Paketen durch
RUN apt-get update && \
    apt-get install -y nginx

# Exponiere einen Port
EXPOSE 80

# Befehl, der beim Starten des Containers ausgeführt wird
CMD ["nginx", "-g", "daemon off;"]
