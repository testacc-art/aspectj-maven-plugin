FROM adoptopenjdk:openj9-windowsservercore-1809
WORKDIR /app/dir
COPY ./ ./
CMD ['mvn', "--show-version", "--errors", "--batch-mode", '"-Dinvoker.streamLogsOnFailures=true"', "clean", "verify", "site"]
