class swift::proxy::cdmi {
  concat::fragment { 'cdmi':
    target  => '/etc/swift/proxy-server.conf',
    content => template('swift/proxy/cdmi.conf.erb'),
    order   => '79',
  }
}
