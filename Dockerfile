FROM mysql:8.0.35-debian

RUN curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip" && \
    unzip awscliv2.zip && \
    sudo ./aws/install

COPY debenstack-mysql-entrypoint.sh debenstack-mysql-entrypoint.sh

ENTRYPOINT ["debenstack-mysql-entrypoint.sh", "&&", "docker-entrypoint.sh"]