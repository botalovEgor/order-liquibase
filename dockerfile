FROM liquibase/liquibase
ADD path/to/your/changelog/source /liquibase/changelog
CMD ["sh", "-c", "docker-entrypoint.sh --url=${URL} --username=${USERNAME} --password=${PASSWORD} --classpath=/liquibase/changelog --changeLogFile=relative/changelog.xml update"]