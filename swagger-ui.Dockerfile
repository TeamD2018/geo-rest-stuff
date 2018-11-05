FROM swaggerapi/swagger-ui:v3.19.0

RUN apk add --update nodejs
RUN npm install -g swagger-cli

COPY /api /foo
WORKDIR /foo

RUN swagger-cli validate api.yaml && \
 swagger-cli bundle -t yaml -o api.bundle.yaml api.yaml

ENV SWAGGER_JSON "/foo/api.bundle.yaml"
ENV BASE_URL "/openapi"

EXPOSE 8080

CMD ["sh", "/usr/share/nginx/docker-run.sh"]
