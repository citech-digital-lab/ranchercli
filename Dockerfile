FROM alpine/k8s:1.14.9

# Install rancher-cli
RUN curl --silent --location "https://github.com/rancher/cli/releases/download/v2.4.10/rancher-$(uname -s)-amd64-v2.4.10.tar.gz" | tar xz -C /tmp && \
    mv /tmp/rancher-v2.4.10/rancher /usr/bin && \
    chmod +x /usr/bin/rancher
    
