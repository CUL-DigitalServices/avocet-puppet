node 'staging0' {
    $nodetype = 'staging'
    $nodesuffix = 0
    hiera_include(classes)
}

node 'puppet' {
    $nodetype = 'puppet'
    hiera_include(classes)
}
