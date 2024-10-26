I wanted to install yEd on my Fedora system, but as it is proprietary software, there are no RPM packages provided by the distro. The "standard" way of installation is to use the vendor's custom installer. It turns out, though, that they also provide JAR files. Let's see how much work it takes to build a RPM package from these.

Usage:
1. unpack yEd-3.24.zip into yEd-3.24/opt/yEd
2. run build.sh

Note that the yEd license does not allow me to redistribute the result.

---

As a starting point, I referred to [this StackOverflow answer](https://stackoverflow.com/a/1165200). In parallel, I grabbed a copy of yEd 3.24 zip distribution [from here](https://www.yworks.com/downloads).

First it's necessary to set up a `rpmbuild` environment by creating some directories and a configuration file.

The zip file contains a jar file, dependencies and other resources. As it does not conform to the Linux Standard Base file system layout, the package will install under `/opt/yEd`

The SO answer suggests that it is necessary to make a tarball from the directory tree, so I do exactly that.

I added `BuildArch: noarch`.

The `.desktop` file is based on https://askubuntu.com/a/504178.
