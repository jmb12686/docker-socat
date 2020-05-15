FROM alpine:3.11

ARG BUILD_DATE
ARG VCS_REF
ARG VERSION

RUN printf "I am running on:\n$(uname -a)\n"

LABEL maintainer="John Belisle" \
  org.label-schema.build-date=$BUILD_DATE \
  org.label-schema.name="docker-socat" \
  org.label-schema.description="Containerized socat" \
  org.label-schema.version=$VERSION \
  org.label-schema.url="https://github.com/jmb12686/docker-socat" \
  org.label-schema.vcs-ref=$VCS_REF \
  org.label-schema.vcs-url="https://github.com/jmb12686/docker-socat" \
  org.label-schema.vendor="jmb12686" \
  org.label-schema.schema-version="1.0"

RUN apk add --no-cache socat 

ENTRYPOINT ["socat"]