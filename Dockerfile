FROM postgres:latest
COPY pgserver.crt /var/lib/postgresql/server.crt
COPY pgserver.crt /var/lib/postgresql/root.crt
COPY pgserver.key /var/lib/postgresql/server.key
RUN chown postgres:postgres /var/lib/postgresql/server.key
RUN chmod -R 600 /var/lib/postgresql/server.key