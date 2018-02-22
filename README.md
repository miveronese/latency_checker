# Latency checker

A small Ruby gem that exposes a CLI to check the status of a website and reports an average response time after probing the site every x seconds during an specific amount of time.

## Instalation

In the command line, run:

``` 
gem install latency_check

```

## Usage

To run it from the command line, you need to inform the url, the interval between each request (in seconds) and the total duration of the test (in seconds). Use the format bellow:

```
latency_check --url https://gitlab.com --seconds-interval 10 --duration-seconds 60

```


The tool will give you a summary in the following format:

```
Site: https://gitlab.com
Status: HTTP/1.1 302 Found
Total requests: 6
Average response time: 3.4s
Min response time: 1.5s
Max response time: 6s
```
