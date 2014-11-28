class localconfig::ordering::qa {
	include localconfig::ordering

    # Install the qa automation and newrelic stuff after hilary is installed
    Class['::hilary'] -> Class['::newrelic']
    Class['::newrelic'] -> Class['::qaautomation']
}
