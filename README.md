# VagrantPuppetLAMP

This repository is dedicated to a technical assessment requiring Automating the creation and installation of a single machine n-tier architecture.

### Tech

A number of applications to work properly:

* [Vagrant] - Building the environment!
* [Puppet] - Configuration management of the instances
* [PHP] - Inserting & reading from the database
* [MySQL] - database for storing and retrieving saved results


### Installation

This environment is configured for a Windows host, for a Linux host you will need to modify file share type back to default.

To build environment:

```sh
$ git clone https://github.com/andrewjacksonio/VagrantPuppetLAMP
$ cd VagrantPuppetLAMP
```
```sh
$ vagrant up
```