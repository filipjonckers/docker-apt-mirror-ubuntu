# local DEBIAN APT mirror

Create a Debian APT mirror which can be used to update/install Debian machines.

To create or update an existing APT mirror directory (on a memory stick for example):

  $ docker-compose up

or run the container manually:

  $ docker run -ti --rm --name apt-mirror -v ../apt-mirror:/var/spool/apt-mirror apt-mirror

References:
- [Build your own APT-Mirror with Docker (D. Heinrich)] (https://medium.com/@moep_moep/linux-repository-mirror-with-docker-234c9a24e71e)

