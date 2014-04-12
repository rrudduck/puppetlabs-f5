# Class: f5::params
#
#   Deploy necessary component to manage F5 devices on proxy systems.
#
# Parameters:
#
# Actions:
#
# Requires:
#
# Sample Usage:
#
class f5::params {
  if $::puppetversion =~ /Puppet Enterprise/ {
    if $::kernel == 'windows' {
      $owner    = 'S-1-5-18'
      $group    = 'S-1-5-18'
      $provider = 'pe_gem'
    }
    else {
      $owner    = 'pe-puppet'
      $group    = 'pe-puppet'
      $provider = 'pe_gem'
    }
  } else {
    $owner    = 'puppet'
    $group    = 'puppet'
    $provider = 'gem'
  }

  $mode = '0644'
}
