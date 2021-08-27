FROM adoptopenjdk:openj9-windowsservercore-1809
COPY .\ .\
CMD ["ls"]
