## Jenkins Appliance

This is a JenkinsCI appliance built using puppet, some modules in github and some POC (_read dirty_) hacks to bundler.  


## Notes

This make use of a proof of concept hack to bundler directly.  

To see this appliance in action you will need a new Ubuntu VM with git, ruby and modern rubygems.
DO NOT INSTALL BUNDLER.


## Prep VM

These _prep_ steps are only needed whilst this is proof of concept.  
The idea is to have this idea merged into bundler / puppet module tool.

    # get a modern rubygems if on Lucid
    sudo apt-get install python-software-properties
    sudo add-apt-repository ppa:maco.m/ruby

    # grab my hacked bundler & build a gem
    git clone git@github.com:aussielunix/bundler.git
    cd bundler
    gem build bundler.gemspec

    # install new gem
    sudo gem install bundler-1.2.0.pre.gem
    cd ../

## Build the appliance

    # grab the jenkins appliance source
    git clone git@github.com:aussielunix/jenkins-appliance.git
    cd jenkins-appliance
    # drag in all needed modules
    bundle install
    sudo puppet apply --modulepath=modules init.pp


