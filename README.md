# profile_chrony
 
Configures chronyd as a client or server
 
## Dependencies
- [puppet/chrony](https://github.com/voxpupuli/puppet-chrony)
 
## Reference

### class profile_chrony (
-  Numeric $makestep_seconds,
-  Integer $makestep_updates,

### class profile_chrony::server (
-  Variant[Hash,Array[Stdlib::Host]] $servers,
-  Array[Stdlib::IP::Address::V4] $queryhosts,
### class profile_chrony::client (
-  Variant[Hash,Array[Stdlib::Host]] $servers,

[REFERENCE.md](REFERENCE.md)