class kibana::install::archive ($install_config, $stats_dir = '/opt/stats') {

    $_install_config = merge({
        'url_base'                  => 'https://download.elasticsearch.org/kibana/kibana',
        'url_extension'             => 'tar.gz',
        'version_major_minor'       => '4.0.0-BETA1.1'
    }, $install_config)

    $url_base               = $_install_config['url_base']
    $url_extension          = $_install_config['url_extension']
    $version_major_minor    = $_install_config['version_major_minor']

    $url_filename = "kibana-${version_major_minor}"
    $package_url = "${url_base}/${url_filename}.${url_extension}"

    # Download and unpack the archive
    archive { "${url_filename}":
        ensure          => present,
        url             => $package_url,
        target          => $stats_dir,
        checksum        => false,
        extension       => $url_extension
    }
}
