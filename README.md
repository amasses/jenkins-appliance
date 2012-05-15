## Jenkins Appliance

This is a JenkinsCI appliance built using puppet, some modules in github and some POC changes to bundler.  

http://vimeo.com/aussielunix/puppet-bundler-poc1

## Notes

This is currently in proof of concept stages.

To see this appliance in action you will need a new Ubuntu VM with git, ruby and modern rubygems.

## Prep VM

These _prep_ steps are only needed whilst this is proof of concept.  
The aim is to have this idea merged into bundler / puppet module tool.

    # get a modern rubygems if on Lucid
    sudo apt-get install python-software-properties
    sudo add-apt-repository ppa:maco.m/ruby

    # grab the source to [bundler-puppet](https://github.com/rodjek/bundler-puppet) and build a gem
    git clone git@github.com:rodjek/bundler-puppet.git
    cd bundler-puppet
    gem build bundler-puppet.gemspec

    # install new gem
    sudo gem install bundler-puppet-0.0.1.gem
    cd ../

    # add rubygems to your $PATH
    export PATH=$PATH:/var/lib/gems/1.8/bin/

## Build the appliance

    # grab the jenkins appliance source
    git clone git@github.com:aussielunix/jenkins-appliance.git
    cd jenkins-appliance
    # drag in all needed modules
    pundle install
    sudo puppet apply --modulepath=modules init.pp

