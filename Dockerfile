FROM mcr.microsoft.com/windows/servercore:ltsc2019
WORKDIR /app/dir
COPY ./ ./
RUN @powershell -NoProfile -ExecutionPolicy Bypass -Command "iex ((new-object net.webclient).DownloadString('https://chocolatey.org/install.ps1'))" && SET PATH=%PATH%;%ALLUSERSPROFILE%\chocolatey\bin
RUN choco install adoptopenjdk8openj9
CMD ['mvn', "--show-version", "--errors", "--batch-mode", '"-Dinvoker.streamLogsOnFailures=true"', "clean", "verify", "site"]
