class oaeservice::newrelic {

    class { '::newrelic':
      newrelic_app_name => hiera('newrelic_app_name'),
      newrelic_license_key => hiera('newrelic_license_key')
    }
}
