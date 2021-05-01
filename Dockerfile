FROM scratch

WORKDIR /src/app

COPY app/app .

ENTRYPOINT [ "./app" ]