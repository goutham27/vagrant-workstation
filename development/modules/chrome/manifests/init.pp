#
#
#
class chrome (String $version = '50.0.2661.94') {

  package { 'googlechrome':
    ensure   => $version,
    provider => 'chocolatey',
  }

  service { 'gupdate':
     ensure  => stopped,
     enable  => false,
     require => Package['googlechrome']
   }

   service { 'gupdatem':
     ensure  => stopped,
     enable  => false,
     require => Package['googlechrome']
   }

   registry_key { 'gupdate-regkey':
     ensure  => present,
     path    => 'HKLM\SOFTWARE\Policies\Google\Update',
     require => Service['gupdate']
   }

   registry_value { 'HKLM\SOFTWARE\Policies\Google\Update\UpdateDefault':
     ensure  => present,
     type    => dword,
     data    => '0',
     require => Registry_key['gupdate-regkey']
   }
 }
