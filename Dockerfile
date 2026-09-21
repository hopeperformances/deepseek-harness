FROM node:22-bookworm-slim

RUN apt-get update && apt-get install -y git && rm -rf /var/lib/apt/lists/*

RUN npm install -g @deepseek-ai/dsh

EXPOSE 3080

CMD ["dsh", "web", "--no-open"]