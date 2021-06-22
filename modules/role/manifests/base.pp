class role::base {

  file { '/tmp/hiera_test.txt':
    ensure  => file,
    content => lookup('puppet-vault-scaffolding')
  }

  file { '/tmp/eyaml_test.txt':
    ensure  => file,
    content => lookup('encrypted-data')
  }

  file { '/tmp/vault_test.txt':
    ensure  => file,
    content => lookup('vault_secret')
  }
}
