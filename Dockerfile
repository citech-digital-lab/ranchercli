FROM alpine/k8s:1.25.8

# Install rancher-cli
RUN curl --silent --location "https://github.com/rancher/cli/releases/download/v2.7.0/rancher-$(uname -s)-amd64-v2.7.0.tar.gz" | tar xz -C /tmp && \
    mv /tmp/rancher-v2.4.10/rancher /usr/bin && \
    chmod +x /usr/bin/rancher
    
