# hosts for puppetmaster, anything else?

host { 'puppetmaster':
  ensure       => present,
  name         => 'puppet.vagrantup.com',
  ip           => '172.16.1.10',
  host_aliases => 'puppet',
}


