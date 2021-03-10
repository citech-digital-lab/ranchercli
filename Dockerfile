FROM alpine AS kubealpine

RUN apk update && apk add curl git

RUN curl -LO https://storage.googleapis.com/kubernetes-release/release/$(curl -s https://storage.googleapis.com/kubernetes-release/release/stable.txt)/bin/linux/amd64/kubectl
RUN chmod +x ./kubectl
RUN mv ./kubectl /usr/local/bin

FROM rancher/cli:latest

COPY --from=kubealpine /usr/local/bin/kubectl /usr/local/bin


ENTRYPOINT []
