FROM python:3.9.13

# install poetry
RUN curl -sSL https://install.python-poetry.org | python3 -
ENV PATH="$PATH:/root/.local/bin"

# install madara swap
WORKDIR /app
RUN git clone https://github.com/keep-starknet-strange/madara-swap.git
WORKDIR /app/madara-swap/packages/contracts
RUN poetry install

# Copy script
COPY misc-apps/deploy.sh .

# Deploy madara swap
CMD ["/bin/bash", "./deploy.sh", "make", "deploy"]
