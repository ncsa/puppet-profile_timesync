# Reference

<!-- DO NOT EDIT: This document was generated by Puppet Strings -->

## Table of Contents

### Classes

* [`profile_timesync`](#profile_timesync): Configures Chrony as an NTP Client or Server
* [`profile_timesync::vmware`](#profile_timesyncvmware): Disable vmware tools timesync

## Classes

### <a name="profile_timesync"></a>`profile_timesync`

This profile configures chronyd as an NTP client or server

* **See also**
  * https://chrony.tuxfamily.org/

#### Examples

##### 

```puppet
include profile_timesync
```

#### Parameters

The following parameters are available in the `profile_timesync` class:

* [`pools`](#pools)
* [`servers`](#servers)
* [`queryhosts`](#queryhosts)
* [`makestep_seconds`](#makestep_seconds)
* [`makestep_updates`](#makestep_updates)

##### <a name="pools"></a>`pools`

Data type: `Variant[Hash,Array[Stdlib::Host]]`

hostnames or addresses for upstream NTP servers

##### <a name="servers"></a>`servers`

Data type: `Variant[Hash,Array[Stdlib::Host]]`

hostnames or addresses for upstream NTP servers

##### <a name="queryhosts"></a>`queryhosts`

Data type: `Array[Stdlib::Host]`

Array of subnets allowed to query this server via NTP
Format can be a single IP or CIDR subnet
Empty by default, if specified turns the machine into a Chrony server.

##### <a name="makestep_seconds"></a>`makestep_seconds`

Data type: `Numeric`

Maximum clock skew before steping clock sync

##### <a name="makestep_updates"></a>`makestep_updates`

Data type: `Integer`

Number of previous updates before steping clock sync will run

### <a name="profile_timesyncvmware"></a>`profile_timesync::vmware`

Disable vmware tools timesync

#### Examples

##### 

```puppet
include profile_timesync::vmware
```

