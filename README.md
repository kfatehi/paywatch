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
   +--+Paywatch::Watcher+---watch--+    | Paywatch::Exporter|  |
   |  +-----------------+               +-+---+----------+--+  |
   |                                      |   |          |     |
logging                                   |   |     calculate  |
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
