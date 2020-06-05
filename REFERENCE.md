# Reference
<!-- DO NOT EDIT: This document was generated by Puppet Strings -->

## Table of Contents

**Classes**

* [`profile_chrony`](#profile_chrony): Configures Chrony as an NTP Client or Server
* [`profile_chrony::client`](#profile_chronyclient): Configures chronyd as an NTP client
* [`profile_chrony::server`](#profile_chronyserver): Configures chronyd as an NTP server

## Classes

### profile_chrony

This profile conifures chronyd as an NTP client or server

* **See also**
https://chrony.tuxfamily.org/

#### Examples

##### 

```puppet
include profile_chrony
```

#### Parameters

The following parameters are available in the `profile_chrony` class.

##### `makestep_seconds`

Data type: `Numeric`

Maximum clock skew before steping clock sync

##### `makestep_updates`

Data type: `Integer`

Number of previous updates before steping clock sync will run

### profile_chrony::client

This profile conifures chronyd as an NTP client for NCSA

* **See also**
https://chrony.tuxfamily.org/

#### Examples

##### 

```puppet
include profile_chrony::client
```

#### Parameters

The following parameters are available in the `profile_chrony::client` class.

##### `servers`

Data type: `Variant[Hash,Array[Stdlib::Host]]`

Array of hostnames or addresses for upstream NTP servers

### profile_chrony::server

This profile conifures chronyd as an NTP server for other systems

* **See also**
https://chrony.tuxfamily.org/

#### Examples

##### 

```puppet
include profile_chrony::server
```

#### Parameters

The following parameters are available in the `profile_chrony::server` class.

##### `servers`

Data type: `Variant[Hash,Array[Stdlib::Host]]`

Array of hostnames or addresses for upstream NTP servers

##### `queryhosts`

Data type: `Array[Stdlib::IP::Address::V4]`

Array of subnets allowed to query this server via NTP
Format can be a single IP or CIDR subnet
