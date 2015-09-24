#
class simple_pcp (
  $pcp_ensure      = 'present',
  $pmcd_ensure     = 'running',
  $pmcd_enable     = true,
  $pmlogger_ensure = 'running',
  $pmlogger_enable = true,
  $web_services    = false,
  $webapi_ensure   = 'present',
  $pmwebd_ensure   = 'running',
  $pmwebd_enable   = true,
){

  package { 'pcp':
    ensure => $pcp_ensure,
  }
  service { 'pmcd':
    ensure  => $pmcd_ensure,
    enable  => $pmcd_enable,
    require => Package['pcp'],
  }
  service { 'pmlogger':
    ensure  => $pmlogger_ensure,
    enable  => $pmlogger_enable,
    require => Package['pcp'],
  }

  if $web_services {
    package { 'pcp-webapi':
      ensure  => $webapi_ensure,
      require => Package['pcp'],
    }
    service { 'pmwebd':
      ensure => $pmwebd_ensure,
      enable => $pmwebd_enable,
    }
  }
}
