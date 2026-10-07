FROM mirror.gcr.io/library/ruby:3.4.11-bookworm

RUN apt-get update -qq \
  && apt-get install -y --no-install-recommends \
    build-essential \
    libpq-dev \
    libyaml-dev \
    postgresql-client \
  && rm -rf /var/lib/apt/lists/*

WORKDIR /wg

ENV BUNDLE_PATH=/usr/local/bundle

COPY Gemfile Gemfile.lock ./
RUN bundle install

COPY . .

RUN find bin/ -type f -exec sed -i 's/\r$//' {} +

RUN chmod -R +x bin/

ENV PATH="/wg/bin:${PATH}"

ENTRYPOINT ["/wg/bin/docker-entrypoint"]
EXPOSE 3000
CMD ["bin/rails", "server", "-b", "0.0.0.0", "-p", "3000"]
