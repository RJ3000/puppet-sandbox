#
# site.pp - defines all global defaults
#

# Case statement to match $server_role custom facter fact, classification is based on this

case $server_role {
  'client1' : { include role::linux::client1 }
  'client2' : { include role::linux::client2 }
  default   : { include role::undefined }
}

#import 'nodes'
