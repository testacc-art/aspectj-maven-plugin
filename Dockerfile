FROM mcr.microsoft.com/windows/servercore:ltsc2019
WORKDIR /app/dir
COPY ./ ./
RUN choco install adoptopenjdk8openj9
CMD ['mvn', "--show-version", "--errors", "--batch-mode", '"-Dinvoker.streamLogsOnFailures=true"', "clean", "verify", "site"]
