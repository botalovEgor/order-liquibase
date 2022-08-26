FROM liquibase/liquibase
ADD changelog /liquibase/changelog
CMD ["bash", "-c", "docker-entrypoint.sh --url=${DB_URL} --username=${DB_USER} --password=${DB_PASSWORD} --classpath=/liquibase/changelog --changeLogFile=db.changelog-master.xml update"]