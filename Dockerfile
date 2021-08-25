FROM debian:buster-slim

RUN apt update && \
    apt install -y build-essential curl libffi-dev libgmp-dev libncurses-dev libncurses5 libtinfo5 && \
    export BOOTSTRAP_HASKELL_NONINTERACTIVE=1 BOOTSTRAP_HASKELL_INSTALL_STACK=1 && \
    curl --proto '=https' --tlsv1.2 -sSf https://get-ghcup.haskell.org | sh && \
    echo 'source /root/.ghcup/env' >> /root/.bashrc

ENTRYPOINT ["bash"]