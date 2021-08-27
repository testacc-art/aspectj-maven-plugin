FROM csanchez/maven:3.8-adoptopenjdk-8-openj9-windowsservercore-1809
COPY ./ ./
ENTRYPOINT mvn --show-version --errors '-Dinvoker.streamLogsOnFailures=true' --batch-mode clean verify site
