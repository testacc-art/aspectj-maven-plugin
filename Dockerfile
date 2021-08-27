FROM adoptopenjdk:openj9-windowsservercore-1809
COPY ./ ./
ENTRYPOINT mvn --show-version --errors --batch-mode "-Dinvoker.streamLogsOnFailures=true" clean verify site
