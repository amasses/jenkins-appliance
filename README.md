## Jenkins Appliance

This is a JenkinsCI appliance built using puppet, some modules on github and a pre-release of [librarian-puppet](https://github.com/rodjek/librarian-puppet/tree/)  

## Notes

This is a repos for demo'ing [librarian-puppet](https://github.com/rodjek/librarian-puppet/tree/) only and should not be used in production.  

To see this appliance in action you will need a new VM with git, ruby and puppet.
Currently tested on Ubuntu Lucid.

## Build the appliance

On the new VM:

    # install librarian-puppet
    sudo gem install --pre librarian-puppet

    # grab the jenkins appliance source
    git clone git@github.com:aussielunix/jenkins-appliance.git
    cd jenkins-appliance

    # drag in all needed modules (as per Puppetfile)
    librarian-puppet install --verbose

    # do a puppet run
    sudo puppet apply --modulepath=modules init.pp

That's it. You should now have a working Jenkins CI server available on port :8080
