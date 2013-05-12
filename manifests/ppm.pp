Package { require => Exec['puppetyum-setup'] }

# need to fix this so it handles 5 vs. 6 repos transparently, split operatingsystemrelease?
exec { 'puppetyum-setup':
  command => '/usr/bin/rpm -ivh http://yum.puppetlabs.com/el/6/products/i386/puppetlabs-release-6-7.noarch.rpm',
  creates => '/etc/yum.repos.d/puppetlabs.repo'
}

package { 'puppet-server':
  ensure => latest,
  }

service { 'puppetmaster':
  ensure  => running,
  enable  => true,
  require => Package['puppet-server'],
  }


