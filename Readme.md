# Battle Rails vs Phoenix

## Rails

```bash
cd todos-rails
rails server
```

## Phoenix

```bash
cd todos_elixir
mix phoenix.server
```

## Benchmark

```bash
→ ab -p todo.json -T application/json -c 10 -n 100 http://127.0.0.1:3000/todos.json
This is ApacheBench, Version 2.3 <$Revision: 1826891 $>
Copyright 1996 Adam Twiss, Zeus Technology Ltd, http://www.zeustech.net/
Licensed to The Apache Software Foundation, http://www.apache.org/

Benchmarking 127.0.0.1 (be patient).....done


Server Software:
Server Hostname:        127.0.0.1
Server Port:            3000

Document Path:          /todos.json
Document Length:        152 bytes

Concurrency Level:      10
Time taken for tests:   1.949 seconds
Complete requests:      100
Failed requests:        0
Total transferred:      53000 bytes
Total body sent:        18600
HTML transferred:       15200 bytes
Requests per second:    51.31 [#/sec] (mean)
Time per request:       194.880 [ms] (mean)
Time per request:       19.488 [ms] (mean, across all concurrent requests)
Transfer rate:          26.56 [Kbytes/sec] received
                        9.32 kb/s sent
                        35.88 kb/s total

Connection Times (ms)
              min  mean[+/-sd] median   max
Connect:        0    0   0.3      0       3
Processing:    32  186  33.5    190     254
Waiting:       31  185  33.4    190     253
Total:         32  187  33.4    190     254

Percentage of the requests served within a certain time (ms)
  50%    190
  66%    203
  75%    207
  80%    210
  90%    220
  95%    234
  98%    252
  99%    254
 100%    254 (longest request)
```

```bash
→ ab -p todo.json -T application/json -c 10 -n 100 http://127.0.0.1:4000/api/todos
This is ApacheBench, Version 2.3 <$Revision: 1826891 $>
Copyright 1996 Adam Twiss, Zeus Technology Ltd, http://www.zeustech.net/
Licensed to The Apache Software Foundation, http://www.apache.org/

Benchmarking 127.0.0.1 (be patient).....done


Server Software:        Cowboy
Server Hostname:        127.0.0.1
Server Port:            4000

Document Path:          /api/todos
Document Length:        36 bytes

Concurrency Level:      10
Time taken for tests:   0.281 seconds
Complete requests:      100
Failed requests:        0
Total transferred:      30600 bytes
Total body sent:        18500
HTML transferred:       3600 bytes
Requests per second:    355.73 [#/sec] (mean)
Time per request:       28.111 [ms] (mean)
Time per request:       2.811 [ms] (mean, across all concurrent requests)
Transfer rate:          106.30 [Kbytes/sec] received
                        64.27 kb/s sent
                        170.57 kb/s total

Connection Times (ms)
              min  mean[+/-sd] median   max
Connect:        0    0   0.4      0       2
Processing:    13   25   6.1     26      40
Waiting:       13   25   6.0     26      40
Total:         14   26   6.0     26      41

Percentage of the requests served within a certain time (ms)
  50%     26
  66%     27
  75%     28
  80%     29
  90%     35
  95%     39
  98%     40
  99%     41
 100%     41 (longest request)
```