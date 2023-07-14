FROM python:3.9.13

# install poetry
RUN curl -sSL https://install.python-poetry.org | python3 -
ENV PATH="$PATH:/root/.local/bin"

# install starksheet
WORKDIR /app
RUN git clone https://github.com/the-candy-shop/starksheet-monorepo.git
WORKDIR /app/starksheet-monorepo/packages/starksheet-cairo
RUN poetry install

# Copy script
COPY misc-apps/deploy.sh .

# Deploy Starksheet
ENTRYPOINT ["/bin/bash", "./deploy.sh", "poetry", "run", "python", "deploy/starksheet.py"]
