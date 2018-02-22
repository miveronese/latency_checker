# Latency checker

A small Ruby gem that exposes a CLI to check the status of https://gitlab.com  and reports an average response time after probing the site every x seconds for x minute(s).

## Instalation

In the command line, run:

``` gem install latency_check
```

## Usage

You can use it from the command line:

```
latency_check --url https://gitlab.com --seconds-interval 10 --max-time-seconds 60

```

You can also change the parameters url, seconds-interval and max-tiem-seconds.

It will give you a summary in the following format:

```
Site: https://gitlab.com
Status: HTTP/1.1 302 Found
Total requests: 6
Average response time: 3.4s
Min response time: 1.5s
Max response time: 6s
```
