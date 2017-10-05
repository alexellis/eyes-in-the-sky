# eyes-in-the-sky

Instructions and Dockerfiles for tracking flights with your Raspberry Pi and a USB TV stick.

Inspired by Alex Ellis' blog post: [Get eyes in the sky with your Raspberry Pi](https://blog.alexellis.io/track-flights-with-rpi/)

This repo contains the following:

* dump1090 - A docker container for [MalcolmRobb/dump1090](https://github.com/malcolmrobb/dump1090) that is a simple Mode S decoder for [RTLSDR devices](http://flightaware.com/adsb/prostick/).
* flightaware - A docker container for FlightAware.com's [PiAware](http://flightaware.com/adsb/piaware/) feeder app.
* docker-compose.yml - A docker compose file where all configuration is made.

## Simple setup

1. Make sure Docker is installed on your raspberry pi:

    ```
    $ curl -sSL https://get.docker.com | sh
    ```

2. Clone the repo on your raspberry pi:

    ```
    $ git clone https://github.com/LoungeFlyZ/eyes-in-the-sky
    ```

3. Install docker-compose:

    ```
    $ sudo apt-get -y install python-setuptools && sudo easy_install pip  && sudo pip install docker-compose
    ```

4. Edit docker-compose.yml 

    ```
    $ nano docker-compose.yml
    ```
    
5. Replace the following environment configuration with your own settings:

    - `DUMP_LAT` - Your latitude
    - `DUMP_LON` - Your longitude
    - `PIAWARE_USER` - Your FlightAware.com username
    - `PIAWARE_PASSWORD` - Your FlightAware.com password
    - `PIAWARE_FEEDER_ID` (Optional) - Your feeder id from FlightAware if you already have one

6. docker-compose up

    ```
    $ docker-compose -f docker-compose.yml up -d
    ```
    
7. browse to your raspberry pi's ip address on port 8080
 
    [http://192.168.1.200:8080](http://192.168.1.200:8080) _(replace with your ip)_
    
You should now see dump1090's web interface.

## Troubleshooting

- Check the logs for the piaware container

    ```
    $ docker logs piaware
    ```
    
- Check the logs for the dump1090 container

    ```
    $ docker logs dump1090
    ```