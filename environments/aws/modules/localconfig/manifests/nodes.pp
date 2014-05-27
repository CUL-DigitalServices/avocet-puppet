
###############
## WEB PROXY ##
###############

node 'ip-10-13-1-10.eu-west-1.compute.internal' inherits web {
  $nodesuffix = 0
  hiera_include(classes)
}

###############
## APP NODES ##
###############

node 'ip-10-13-10-10.eu-west-1.compute.internal' inherits app {
  $nodesuffix = 0
  hiera_include(classes)
#  include test
}

node 'ip-10-13-20-10.eu-west-1.compute.internal' inherits app {
  $nodesuffix = 1
  hiera_include(classes)
}

#####################
## CASSANDRA NODES ##
#####################

node 'ip-10-13-10-100.eu-west-1.compute.internal' inherits db {
  $nodesuffix = 0
  hiera_include(classes)
}

node 'ip-10-13-20-100.eu-west-1.compute.internal' inherits db {
  $nodesuffix = 1
  hiera_include(classes)
}

node 'ip-10-13-30-100.eu-west-1.compute.internal' inherits db {
  $nodesuffix = 2
  hiera_include(classes)
}

##################
## SEARCH NODES ##
##################

node 'ip-10-13-10-50.eu-west-1.compute.internal' inherits search {
  $nodesuffix = 0
  hiera_include(classes)
}

#################
## REDIS NODES ##
#################

node 'ip-10-13-10-20.eu-west-1.compute.internal' inherits cache {
  $nodesuffix = 0
  hiera_include(classes)
}

#####################
## MESSAGING NODES ##
#####################

# mq0
node 'ip-10-13-10-30.eu-west-1.compute.internal' inherits mq {
  $nodesuffix = 0
  hiera_include(classes)
}
