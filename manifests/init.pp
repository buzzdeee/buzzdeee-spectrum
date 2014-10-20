# == Class: spectrum
#
# Full description of class spectrum here.
#
# === Parameters
#
# Document parameters here.
#
# [*sample_parameter*]
#   Explanation of what this parameter affects and what it defaults to.
#   e.g. "Specify one or more upstream ntp servers as an array."
#
# === Variables
#
# Here you should define a list of variables that this module would require.
#
# [*sample_variable*]
#   Explanation of how this variable affects the funtion of this class and if
#   it has a default. e.g. "The parameter enc_ntp_servers must be set by the
#   External Node Classifier as a comma separated list of hostnames." (Note,
#   global variables should be avoided in favor of class parameters as
#   of Puppet 2.6.)
#
# === Examples
#
#  class { 'spectrum':
#    servers => [ 'pool.ntp.org', 'ntp.local.company.com' ],
#  }
#
# === Authors
#
# Author Name <author@domain.com>
#
# === Copyright
#
# Copyright 2014 Your name here, unless otherwise noted.
#
class spectrum (
  $package_ensure = $spectrum::params::package_ensure,
  $service_ensure = $spectrum::params::service_ensure,
  $service_enable = $spectrum::params::service_enable,
  $service_flags  = $spectrum::params::service_flags,
) inherits spectrum::params {

  class { 'spectrum::install':
    package_ensure => $package_ensure,
  }
  class { 'spectrum::service':
    service_ensure => $service_ensure,
    service_enable => $service_enable,
    service_flags  => $service_flags,
  }

  Class['spectrum::install'] ->
  Class['spectrum::service']
}
