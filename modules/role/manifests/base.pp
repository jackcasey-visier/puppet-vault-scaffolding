class role::base {

    file { '/tmp/hiera_test.txt':
    ensure  => file,
    content => lookup('puppet-vault-scaffolding')
  }
}
