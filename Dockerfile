FROM golang AS go

WORKDIR /src/app

COPY app .

FROM scratch

WORKDIR /src/app

COPY --from=go /src/app .

ENTRYPOINT [ "./app" ]