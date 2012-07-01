node default {
  include apt
  include stdlib
  include jenkins
  include rvm


  exec { "apt-get update":
      command => "/usr/bin/apt-get update"
  }

  rvm::system_user { vagrant: ; }

  rvm_system_ruby {
  'ruby-1.9.3':
    ensure => 'present',
    default_use => true;
  }

  $plugins = [ 
    'git',
    'chucknorris',
    'github',
    'greenballs',
    'ruby',
    'rake',
    'ssh',
    'monitoring',
    'favorite',
    'gravatar',
    'jabber',
    'sounds',
    'radiatorviewplugin',
    'vsphere-cloud',
    'warnings',
    'analysis-core',
    'rvm',
    'htmlpublisher',
    'xfpanel'
  ]

  jenkins::plugin::install { $plugins: }


}
