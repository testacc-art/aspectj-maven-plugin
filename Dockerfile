FROM maven:adoptopenjdk-8-openj9-windowsservercore
COPY ./ ./
ENTRYPOINT mvn --show-version --errors --batch-mode "-Dinvoker.streamLogsOnFailures=true" clean verify site
