FROM resin/rpi-raspbian:jessie

ENTRYPOINT []

RUN apt-get update && apt-get install -qy wget
RUN wget http://uk.flightaware.com/adsb/piaware/files/packages/pool/piaware/p/piaware-support/piaware-repository_3.5.0_all.deb \
  && dpkg -i piaware-repository_3.5.0_all.deb \
  && apt-get update \
  && apt-get install -qy dump1090-fa piaware

EXPOSE 8080
EXPOSE 30003

COPY ./start.sh start.sh
RUN chmod +x start.sh

ENV PIAWARE_HOST="" PIAWARE_PORT="" PIAWARE_USER="" PIAWARE_PASSWORD="" PIAWARE_FEEDER_ID=""

CMD ["/start.sh"]
