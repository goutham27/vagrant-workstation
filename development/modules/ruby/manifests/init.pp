class ruby ( String $version = '2.3.0') {
    package { 'ruby' :
      ensure   => $version,
      provider => 'chocolatey',
   }
}
