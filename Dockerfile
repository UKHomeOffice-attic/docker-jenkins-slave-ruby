FROM quay.io/ukhomeofficedigital/jenkins-slave:v0.1.0

ENV RUBY_VERSION=2.2.3
RUN curl https://keybase.io/mpapis/key.asc | gpg --import - && \
    \curl -sSL https://get.rvm.io | bash -s stable --ruby=$RUBY_VERSION && \
    usermod -a -G rvm $( whoami ) && \
    bash -l -c "rvm rubygems current && gem install bundler"
