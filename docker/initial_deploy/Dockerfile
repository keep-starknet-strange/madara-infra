FROM python:3.9.13

# install poetry
RUN curl -sSL https://install.python-poetry.org | python3 -
ENV PATH="$PATH:/root/.local/bin"

# install kakarot
WORKDIR /app
RUN git clone https://github.com/kkrt-labs/kakarot.git
WORKDIR /app/kakarot
RUN poetry install

# install starksheet
WORKDIR /app
RUN git clone https://github.com/the-candy-shop/starksheet-monorepo.git
WORKDIR /app/starksheet-monorepo/packages/starksheet-cairo
RUN poetry install

# install madara swap
WORKDIR /app
RUN git clone https://github.com/keep-starknet-strange/madara-swap.git
WORKDIR /app/madara-swap/packages/contracts
RUN poetry install

WORKDIR /app
COPY deploy.sh .

CMD ["/bin/bash", "/app/deploy.sh" ]
