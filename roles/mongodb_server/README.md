# MongoDB role

Role to deploy MongoDB in a Debian-based machine.

The role adds the repo `deb http://downloads-distro.mongodb.org/repo/ubuntu-upstart dist 10gen` and installs the `mongod` service.

## Role parameters

- `small_files`: When defined as `True`, reduces the size of the journal files (suitable for small AWS instances)
