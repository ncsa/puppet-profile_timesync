# @summary Disable vmware tools timesync
#
# @example
#   include profile_timesync::vmware
class profile_timesync::vmware {
  case $facts['virtual'] {
    'vmware': {
      exec { 'disable vmware tools timesync':
        command => 'vmware-toolbox-cmd timesync disable',
        onlyif  => [
          'which vmware-toolbox-cmd',
          'vmware-toolbox-cmd timesync status | grep -iq enabled',
        ],
        path    => ['/usr/bin', '/usr/sbin', '/sbin'],
      }
    }
    default:  {
      ## DO NOT DO ANYTHING
    }
  }
}
