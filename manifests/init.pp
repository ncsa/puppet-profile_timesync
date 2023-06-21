# @summary Configures Chrony as an NTP Client or Server
#
# This profile configures chronyd as an NTP client or server
#
# @example
#   include profile_timesync
#
# @param pools
#   hostnames or addresses for upstream NTP servers
#
# @param servers
#   hostnames or addresses for upstream NTP servers
#
# @param queryhosts
#   Array of subnets allowed to query this server via NTP
#   Format can be a single IP or CIDR subnet
#   Empty by default, if specified turns the machine into a Chrony server.
#
# @param makestep_seconds
#   Maximum clock skew before steping clock sync
#
# @param makestep_updates
#   Number of previous updates before steping clock sync will run
#
# @see https://chrony.tuxfamily.org/
#
class profile_timesync (
  Variant[Hash,Array[Stdlib::Host]] $pools,
  Variant[Hash,Array[Stdlib::Host]] $servers,
  Array[Stdlib::Host] $queryhosts,
  Numeric $makestep_seconds,
  Integer $makestep_updates,
) {
  include profile_timesync::vmware

  $step_sec = lookup('profile_timesync::makestep_seconds')
  $step_upd = lookup('profile_timesync::makestep_updates')

  class { 'chrony':
    pools            => $pools,
    servers          => $servers,
    makestep_seconds => $step_sec,
    makestep_updates => $step_upd,
    queryhosts       => $queryhosts,
  }

  # Allow NTP incoming queries to 123/udp
  $queryhosts.each | String $cidr | {
    firewall { "500 profile_timesync::server - ntp from '${cidr}'" :
      proto  => 'udp',
      dport  => '123',
      action => 'accept',
      source => $cidr,
    }
  }
}
