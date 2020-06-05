# @summary Configures Chrony as an NTP Client or Server
#
# This profile conifures chronyd as an NTP client or server
#
# @example
#   include profile_chrony
#
# @param makestep_seconds
#   Maximum clock skew before steping clock sync
#
# @param makestep_updates
#   Number of previous updates before steping clock sync will run
#
# @see https://chrony.tuxfamily.org/
#
class profile_chrony (
  Numeric $makestep_seconds,
  Integer $makestep_updates,
) {
}
