# @summary Configures chronyd as an NTP server
#
# This profile conifures chronyd as an NTP server for other systems
#
# @example
#   include profile_chrony::server
# @param servers
#   Array of hostnames or addresses for upstream NTP servers
#
# @param queryhosts
#   Array of subnets allowed to query this server via NTP
#   Format can be a single IP or CIDR subnet
#
# @see https://chrony.tuxfamily.org/
#
class profile_chrony::server (
  Variant[Hash,Array[Stdlib::Host]] $servers,
  Array[Stdlib::IP::Address::V4] $queryhosts,
) {

  $step_sec = lookup('profile_chrony::makestep_seconds')
  $step_upd = lookup('profile_chrony::makestep_updates')

  class { '::chrony':
    servers          => $servers,
    makestep_seconds => $step_sec,
    makestep_updates => $step_upd,
    queryhosts       => $queryhosts,
    port             => 123,
  }

  # Allow NTP incoming queries to 123/udp
  $queryhosts.each | String $cidr | {
    firewall { "500 profile::ncsa::chrony::server - ntp from '${cidr}'" :
      proto  => 'udp',
      dport  => '123',
      action => 'accept',
      source => $cidr,
    }
  }
}
