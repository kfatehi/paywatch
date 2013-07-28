paywatch
========

watch activity to determine hours worked per project

## Architecture
```
                                 +-----------+
       +-----configure-----------+Sinatra GUI+-----------------+
       |                         +-+------+--+                 |
       |                           |      |                    |
    +--+----------------+          |      |                    |
    |Project YML Configs|          |    export                 |
    +---------------+---+          |    project                |
                    |              |      |                    |
      +-------------+---+          |    +-+-----------+-----+  |
   +--+Paywatch::Watcher+---start--+    | Paywatch::Exporter|  |
   |  +-----------------+               +-+---+----------+--+  |
   |                                      |   |          |     |
logging          global idle timer        |   |     calculate  |
   |                                      |   |      overtime  |
   |                                      |   |                |
  ++----------------+                     |   |                |
  |Project Hours CSV+---------------------+   |                |
  +-----------------+                         |                |
                                              |                |
                                              |                |
                                           generate            |
                                              |                |
                                              |                |
                                         +----+------+         |
                                         |PDF Report +---------+
                                         +-----------+
```
