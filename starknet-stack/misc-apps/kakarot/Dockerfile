FROM ghcr.io/kkrt-labs/kakarot-rpc/node:latest

# Install jq
RUN apt-get update && apt-get install -y jq

# Copy script
COPY misc-apps/kakarot/run.sh run.sh
RUN chmod +x run.sh

# Run script to set values for KAKAROT_ADDRESS and PROXY_ACCOUNT_CLASS_HASH
ENTRYPOINT ["./run.sh", "/usr/bin/tini", "--", "/usr/local/bin/kakarot-rpc"]
CMD []
