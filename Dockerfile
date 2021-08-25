FROM adoptopenjdk/openjdk8-openj9:latest
WORKDIR /app/dir
COPY ./ ./
CMD ['mvn', "--show-version", "--errors", "--batch-mode", '"-Dinvoker.streamLogsOnFailures=true"', "clean", "verify", "site"]
