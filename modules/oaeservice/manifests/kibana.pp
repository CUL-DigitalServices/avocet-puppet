class oaeservice::kibana {

  # Installation configuration
  $install_method     = 'archive'
  $install_config     = {
    'url_base'                  => 'https://download.elasticsearch.org/kibana/kibana',
    'url_extension'             => 'tar.gz',
    'version_major_minor'       => '4.0.0-BETA1.1'
  }

  # Apply the Kibana class
  class { '::kibana':
    install_method        => $install_method,
    install_config        => $install_config,
    stats_dir             => hiera('stats_dir', '/opt/stats')
  }
}
