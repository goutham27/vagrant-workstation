#
class nodejs::install ( String $version = '6.2.0') {

  case $::osfamily {

  windows: {

    package {'nodejs' :
      ensure   => $version,
      provider => 'chocolatey',
    }

    windows_env { 'PATH=C:\program files\nodejs' :
      ensure => present,
    }

    windows_env { 'PATH=C:\Users\vagrant\AppData\Roaming\npm':
      ensure => present,
    }
  }

  redhat : {
    package {'nodejs':
      ensure => present,
    }

    package {'npm':
      ensure => present,
    }
  }
}
}
