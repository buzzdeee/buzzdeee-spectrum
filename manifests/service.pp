class spectrum::service (
  $service_ensure,
  $service_enable,
  $service_flags,
) {
  service { 'spectrum':
    ensure => $service_ensure,
    enable => $service_enable,
    flags  => $service_flags,
  }
}
