# How to use it
# =============
#
# Visit http://blog.zedroot.org/using-docker-to-maintain-a-ruby-gem/

# ~~~~ Image base ~~~~
# Base image with the latest Ruby only
FROM ruby:2.3.0-slim
MAINTAINER Guillaume Hain zedtux@zedroot.org


# ~~~~ Set up the environment ~~~~
ENV DEBIAN_FRONTEND noninteractive

RUN mkdir -p /gem/
WORKDIR /gem
COPY Gemfile /gem
COPY *.gemspec /gem
COPY lib/cucumber/timecop/version.rb /gem/lib/cucumber/timecop/version.rb

# ~~~~ OS Maintenance & Rails Preparation ~~~~
# Rubygems and Bundler
RUN apt-get update && \
  apt-get install -y git build-essential unzip && \
  touch ~/.gemrc && \
  echo "gem: --no-ri --no-rdoc" >> ~/.gemrc && \
  gem install rubygems-update && \
  update_rubygems && \
  gem install bundler && \
  bundle install && \
  apt-get remove --purge -y build-essential && \
  apt-get autoclean -y && \
  apt-get clean

# Import the gem source code
VOLUME .:/gem

ENTRYPOINT ["bundle", "exec"]
CMD ["rake", "-T"]
