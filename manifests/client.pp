# @summary Configures chronyd as an NTP client
#
# This profile conifures chronyd as an NTP client for NCSA
#
# @example
#   include profile_chrony::client
#
# @param servers
#   Array of hostnames or addresses for upstream NTP servers
#
# @see https://chrony.tuxfamily.org/
#
class profile_chrony::client (
  Variant[Hash,Array[Stdlib::Host]] $servers,
) {

  $step_sec = lookup('profile_chrony::makestep_seconds')
  $step_upd = lookup('profile_chrony::makestep_updates')

  class { '::chrony':
    servers          => $servers,
    makestep_seconds => $step_sec,
    makestep_updates => $step_upd,
  }
}
