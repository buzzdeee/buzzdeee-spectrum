# Private class, do not use directly.
# The parameters that drive this module.

class spectrum::params {
  $package_ensure = 'installed'
  $service_ensure = 'running'
  $service_enable = true
  $service_flags  = undef
}
