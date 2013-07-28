paywatch
========

watch activity to determine hours worked

hours worked gets run through [overtimer](https://github.com/keyvanfatehi/overtimer) and is turned into a final PDF based on HR-provided template

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
