# profile_timesync
 
Configures chronyd as a client or server

[![pdk-validate](https://github.com/ncsa/puppet-profile_timesync/actions/workflows/pdk-validate.yml/badge.svg)](https://github.com/ncsa/puppet-profile_timesync/actions/workflows/pdk-validate.yml)
 [![yamllint](https://github.com/ncsa/puppet-profile_timesync/actions/workflows/yamllint.yml/badge.svg)](https://github.com/ncsa/puppet-profile_timesync/actions/workflows/yamllint.yml)
 
## Dependencies
- [puppet/chrony](https://github.com/voxpupuli/puppet-chrony)
 
## Reference

### class profile_timesync (
-  Numeric $makestep_seconds,
-  Integer $makestep_updates,
### class profile_timesync::client (
-  Variant[Hash,Array[Stdlib::Host]] $servers,
### class profile_timesync::server (
-  Variant[Hash,Array[Stdlib::Host]] $servers,
-  Array[Stdlib::IP::Address::V4] $queryhosts,

[REFERENCE.md](REFERENCE.md)
