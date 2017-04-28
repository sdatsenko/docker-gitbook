FROM node:alpine

RUN npm install -g gitbook-cli

RUN mkdir -p /app /home/gitbook
WORKDIR /app

RUN addgroup gitbook
RUN adduser -g "GitBook Owner" -s /bin/sh -G gitbook -D gitbook
RUN chown gitbook:gitbook /home/gitbook /app

USER gitbook

COPY book.json /app

# gitbook
EXPOSE 4000

CMD ["gitbook", "serve"]