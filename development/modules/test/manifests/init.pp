#
#
#class test

class test {

  file { 'firstfile':
    ensure  => present,
	  path    => 'c:\temp\temp\puppet.txt',
	  content => 'hello world',
  }

  file { 'c:\temp\temp\pupp.txt':
    ensure  => present,
	  content => epp('test/pupp.txt.epp'),
  }
  
  file { 'c:\temp\temp\pupp1.txt':
    ensure  => present,
	  content => file('test/pupp1.txt'),
  }
  
  service { 'winrm':
    ensure => stopped,
  }
  
  exec { 'test':
    command   => 'cmd.exe /c "mkdir c:\temp\temp\temp"',
	  creates   => 'c:\temp\temp\temp',
    logoutput => true,
	  path      => 'c:\windows\system32'
  }

  file { ['C:\Utils','C:\Temp']:
    ensure => directory,
  }

  file { 'c:\temp\ram':
    ensure => directory,
  }

}