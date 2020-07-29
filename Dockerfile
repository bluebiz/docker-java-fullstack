FROM       maven:3.5.3-jdk-8
MAINTAINER bluebiz Team <info@bluebiz.de>

# Update apt
RUN apt-get update

# Install utils: curl, build stuff etc.
RUN apt-get install -y curl zip bzip2 fontconfig python g++ build-essential libpng-dev libc6-compat libjpeg-turbo-dev

# Install node.js
RUN curl -sL https://deb.nodesource.com/setup_10.x | bash && \
  apt-get install -y nodejs  

# Cleanup
RUN apt-get clean && \
    rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

# Install yeoman
RUN npm install -g yo

# Install bower
RUN npm install -g bower

# Install gulp-cli
RUN npm install -g gulp-cli

# Install yarn
RUN npm install -g yarn
