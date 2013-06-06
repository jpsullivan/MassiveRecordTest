Authors: Bryan Swartwood (bkswartwood@gmail.com), Josh Sullivan (jaysche.sullivan@gmail.com)

Description
-----------

Simple proof-of-concept demonstration using Massive_Record and Rails to communicate with a HBase database.  All standard ActiveRecord functionality is maintained using the Massive_Record gem.  In addition, a sample CRUD interface has been implemented under the /users route.

Prerequisites
-------------

Ruby   => v1.9.2
Rails  => v3.0.0
HBase  => v0.9.4.8
Hadoop => v0.20.2

Note: The Thrift server packaged with this version of HBase must be running and accessible over port 9090 as defined in the config/hbase.yml file. You will need to change the host entry to reflect your current host machine running the necessary Cloudera applications.
