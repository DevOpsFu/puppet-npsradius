class npsradius (
  $policyname        = $npsradius::params::policyname,
  $allowedgroups     = $npsradius::params::allowedgroups,
  $clients           = $npsradius::params::clients,
  $nas_friendly_name = $npsradius::params::nas_friendly_name,
  $nas_identifier    = $npsradius::params::nas_identifier,
  $configtemplate    = $npsradius::params::configtemplate,
  $configfile        = $npsradius::params::configfile,
  $exportfile        = $npsradius::params::exportfile,
) inherits npsradius::params {

  if !$allowedgroups {
    fail('No allowed groups were specified')
  }

  if !$clients {
    fail('No RADIUS clients were supplied')
  }

  class { 'npsradius::config': }

}
