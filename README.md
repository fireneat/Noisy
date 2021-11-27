
# Noisy

A simple python script that generates random HTTP/DNS traffic noise in the background while you go about your regular web browsing, to make your web traffic data less valuable for selling and for extra obscurity.

## Getting Started

These instructions will get you a copy of the project up and running on your local machine

### Dependencies

Install `requests` if you do not have it already installed, using `pip`:

```
pip3 install -r requirements.txt
```

### Usage

Clone the repository
```
git clone https://github.com/1tayH/noisy.git
```

Navigate into the `noisy` directory
```
cd noisy
```

Run the script

```
python3 noisy.py
```

The program can accept a number of command line arguments:
```
$ python noisy.py --help
usage: noisy.py [-h] [-l] [-c] [-t]

optional arguments:
  -h, --help     show this help message and exit
  -l, --log      logging level (warning, info, debug)
  -c, --config   config file (json)
  -t, --timeout  for how long the crawler should be running, in seconds
```
only the config file argument is required.

###  Output
```
$ docker run -it noisy --timeout 60 --log debug
INFO:root:Requests module version:, 2.25.1
INFO:root:Useragent for this run "Mozilla/5.0 (Linux armv7l) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.112 Safari/537.36 OPR/36.0.2128.0 OMI/4.8.0.129.ALISHAN6.19 VIZIO-DTV/V7.20.8 (Vizio, D50f-E1, wireless)"
DEBUG:urllib3.connectionpool:Starting new HTTPS connection (1): www.leaseweb.com:443
DEBUG:urllib3.connectionpool:https://www.leaseweb.com:443 "GET / HTTP/1.1" 200 None
DEBUG:root:found 245 links
INFO:root:Visiting https://www.leaseweb.com/customers
INFO:root:Done 1 request so far!

INFO:root:Useragent for this run "Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.78 Safari/537.36 OPR/47.0.2631.55"
DEBUG:urllib3.connectionpool:Starting new HTTPS connection (1): www.leaseweb.com:443
DEBUG:urllib3.connectionpool:https://www.leaseweb.com:443 "GET /customers HTTP/1.1" 200 None
INFO:root:Visiting https://www.leaseweb.com/platform
INFO:root:Done 2 requests so far!

INFO:root:Useragent for this run "Mozilla/5.0 (Windows 10; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0"
DEBUG:urllib3.connectionpool:Starting new HTTPS connection (1): www.leaseweb.com:443
DEBUG:urllib3.connectionpool:https://www.leaseweb.com:443 "GET /platform HTTP/1.1" 200 None
INFO:root:Visiting https://www.leaseweb.com/abuse-handling
INFO:root:Done 3 requests so far!

INFO:root:Useragent for this run "Mozilla/5.0 (Windows NT 6.0; rv:42.0) Gecko/20100101 Firefox/42.0"
DEBUG:urllib3.connectionpool:Starting new HTTPS connection (1): www.leaseweb.com:443
DEBUG:urllib3.connectionpool:https://www.leaseweb.com:443 "GET /abuse-handling HTTP/1.1" 200 None
INFO:root:Visiting https://www.leaseweb.com/platform/network
INFO:root:Done 4 requests so far!

INFO:root:Useragent for this run "Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:40.0) Gecko/20100101 Firefox/40.0"
DEBUG:urllib3.connectionpool:Starting new HTTPS connection (1): www.leaseweb.com:443
DEBUG:urllib3.connectionpool:https://www.leaseweb.com:443 "GET /platform/network HTTP/1.1" 200 None
INFO:root:Timeout has exceeded, exiting
...
```

## Build Using Docker

1. Build the image

`docker build -t noisy .`

2. Create the container and run:

`docker run -it noisy`

## Some examples

Some edge-cases examples are available on the `examples` folder. You can read more there [examples/README.md](examples/README.md).

## Authors

* **Itay Hury** - *Initial work* - [1tayH](https://github.com/1tayH)

See also the list of [contributors](https://github.com/1tayH/Noisy/contributors) who participated in this project.

## License

This project is licensed under the GNU GPLv3 License - see the [LICENSE.md](LICENSE.md) file for details

## Acknowledgments

This project has been inspired by
* [RandomNoise](http://www.randomnoise.us)
* [web-traffic-generator](https://github.com/ecapuano/web-traffic-generator)
