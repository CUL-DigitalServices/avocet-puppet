###############
## APP NODES ##
###############

node 'ip-10-13-1-11.eu-west-1.compute.internal' inherits app {
  $nodesuffix = 0
  hiera_include(classes)
#  include test
}

node 'ip-10-13-2-11.eu-west-1.compute.internal' inherits app {
  $nodesuffix = 1
  hiera_include(classes)
}

#####################
## CASSANDRA NODES ##
#####################

node 'ip-10-13-10-150.eu-west-1.compute.internal' inherits db {
  $nodesuffix = 0
  hiera_include(classes)
}

node 'ip-10-13-20-150.eu-west-1.compute.internal' inherits db {
  $nodesuffix = 1
  hiera_include(classes)
}

node 'ip-10-13-30-150.eu-west-1.compute.internal' inherits db {
  $nodesuffix = 2
  hiera_include(classes)
}
