class newrelic (
        $newrelic_app_name,
        $newrelic_license_key
    ) {

    # Add newrelic.js to the app root directory
    file { '/opt/oae/newrelic.js':
        ensure  => present,
        content => template('newrelic/newrelic.js.erb'),
    }

}
