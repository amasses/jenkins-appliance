## Jenkins Appliance

This is a JenkinsCI appliance built using puppet and some POC extension to bundler, aka pundler.  
pundler can be found at https://github.com/rodjek/bundler-puppet and is extremely alpha code right now.

    git clone git@github.com:aussielunix/jenkins-appliance.git
    cd jenkins-appliance
    pundle install
    puppet apply init.pp
