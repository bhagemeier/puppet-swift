class swift::proxy::imagescaler {
  concat::fragment { 'imagescaler':
    target  => '/etc/swift/proxy-server.conf',
    content => template('swift/proxy/imagescaler.conf.erb'),
    order   => '80',
  }
  package { 'python-webob':
    ensure => 'installed'    
  }
  package { 'python-pythonmagick':
    ensure => 'installed'
  }
}
