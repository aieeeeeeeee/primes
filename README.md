[![Build Status](http://jenkins-bec07d77-1.wallnerryan.cont.tutum.io:49154/buildStatus/icon?job=primes-build)](http://jenkins-bec07d77-1.wallnerryan.cont.tutum.io:49154/job/primes-build/)

# Assignment 4

RELEASE ENGINEERING AND CONFIGURATION MANAGEMENT

SPRING 2015

Autoconf / Autotools Use for Prime Numbers

* If your not using Docker to run this example
* please skip to line 54

How to use (Using Docker)
-------------------------

We use docker because it can isolate a test environment
on our laptop without without the need to install tools
directly on the laptio. Visit http://boot2docker.io/
for more information to quickyly and easily get started

```
boot2docker up
docker build -t primes .
docker run -it --rm --name a4 primes /bin/bash
docker attach a4
```

This will generate all needed inforamation to build the package
You can cat autogen.sh to see how it works.

```
$ ./autogen.sh
```

This will configure the build to install into /usr/bin

```
$./configure --prefix=/usr/
```

This will make build the needed object files from src/prime.c and build primes

```
$ make
```

This will install primes in /usr/

```
$ make install
```

Program is installed
run Primes

(sample output)

```
$ primes
Enter the number of prime numbers required
5
First 5 prime numbers are :
2
3
5
7
11

$ make clean
$ make dist
$ exit
```

How to use (Without Docker)
---------------------------

1. Make sure gcc, autoconf, autotools-dev, and make are installed
2. (make autogen.sh executable) chmod 755 autogen.sh
3. ./autogen.sh
4. ./configure --prefex=<install location> (e.g. /usr/ or /usr/local/)
5. make
6. make install

You can then run the program "primes"

(sample output)

```
$ primes
Enter the number of prime numbers required
5
First 5 prime numbers are :
2
3
5
7
11
```
