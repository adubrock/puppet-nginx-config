# to run this file: sudo puppet apply nginx-config.pp

# install and bootstrap an nginx instance

class { 'nginx': }

#download the file from github (https://github.com/puppetlabs/exercise-webpage)
# Need to do. Covered in Puppetfile

# serve up the file
nginx::resource::server { '10.0.2.15':
  listen_port => 8000,
  www_root => '/www/homepage/',
}
