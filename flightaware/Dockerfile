FROM resin/rpi-raspbian:jessie

ENTRYPOINT []

RUN apt-get update && apt-get install -qy wget
RUN wget http://uk.flightaware.com/adsb/piaware/files/packages/pool/piaware/p/piaware-support/piaware-repository_3.5.0_all.deb \
  && dpkg -i piaware-repository_3.5.0_all.deb \
  && apt-get update \
  && apt-get install piaware \
  apt-get install -qy dump1090-fa

EXPOSE 8080
EXPOSE 30003

COPY piaware.conf /etc/

CMD ["piaware", "-debug"]
