#
class nodejs::config {

  case $::osfamily {

    windows : {

      exec { 'set-node-registry' :
        command   => 'npm.cmd config set registry="http://registry.npms.org/"',
        logoutput => true,
        path      => 'C:\Program files\nodejs',
        onlyif    => 'npm.cmd config get registry | c:\windows\system32\findstr.exe https://registry.npms.org',
      }
    }

    redhat :
    {
      file { 'nodejs-env' :
        ensure  => present,
        path    =>  '/etc/profile.d/nodejs-env.sh',
        content => file('nodejs/nodejs-env.sh'),
        mode    => '0755',
      } 
   }
   }
}
