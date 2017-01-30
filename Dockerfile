FROM ruby:2.4

MAINTAINER thinkbot@outlook.de

ENV VERSION=1.2.0

RUN gem install beefcake --version ${VERSION} --no-format-exec

WORKDIR /tmp

ENTRYPOINT ["protoc-gen-beefcake"]
CMD ["--help"]
