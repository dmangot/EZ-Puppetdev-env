yumrepo { "puppetlabs-products":
	enabled  => 1, 
	name => "Puppet_Products",
	descr => "Puppet_Products",
	baseurl => "http://yum.puppetlabs.com/el/6Server/products/x86_64/",
}

yumrepo { "puppetlabs-dependencies":
	enabled  => 1, 
	name => "Puppet_Dependencies",
	descr => "Puppet_Dependencies",
	baseurl => "http://yum.puppetlabs.com/el/6Server/dependencies/x86_64/",
}

