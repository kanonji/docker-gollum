# FROM ruby:2.5.1-alpine3.7

# RUN apk update && apk add libgit2-dev make cmake g++ icu-dev && rm -rf /var/cache/apk/*

# RUN echo -e http://dl-cdn.alpinelinux.org/alpine/edge/main\\nhttp://dl-cdn.alpinelinux.org/alpine/edge/community >> /etc/apk/repositories
# RUN apk update && apk add libgit2-dev make cmake g++ icu-dev && rm -rf /var/cache/apk/*

# RUN gem install github-linguist
# RUN gem install gollum
# RUN gem install org-ruby  # optional
# WORKDIR /wiki
# ENTRYPOINT ["gollum", "--port", "80"]

FROM ruby:2.5.1-stretch
RUN apt-get -y update && apt-get -y install libicu-dev cmake && rm -rf /var/lib/apt/lists/*
RUN gem install github-linguist
RUN gem install gollum
RUN gem install org-ruby  # optional
WORKDIR /wiki
ENTRYPOINT ["gollum", "--port", "80"]
