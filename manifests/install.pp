# Private class, do not use directly.
# Takes care about package installation.

class spectrum::install (
  $package_ensure,
){
  package { 'spectrum':
    ensure => $package_ensure,
  }
}
