FROM n8nio/n8n:latest

WORKDIR /home/node

USER root
RUN chown -R node:node /home/node

USER node

EXPOSE 5678

CMD ["n8n"]
