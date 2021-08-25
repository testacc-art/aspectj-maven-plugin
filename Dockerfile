FROM adoptopenjdk:openj9-windowsservercore-1809
COPY ./ ./
CMD ["mvn", "--show-version", "--errors", "--batch-mode", "clean", "verify", "site"]
