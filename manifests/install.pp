class spectrum::install (
  $package_ensure,
){
  package { 'spectrum':
    ensure => $package_ensure,
  } 
}
