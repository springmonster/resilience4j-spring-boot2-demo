FROM gradle:6.9.0-jdk8
ADD --chown=gradle . /code
WORKDIR /code
RUN gradle clean build -x test
CMD gradle -Pchaos-monkey bootRun
