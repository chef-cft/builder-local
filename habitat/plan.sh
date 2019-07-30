# This file is the heart of your application's habitat.
# See full docs at https://www.habitat.sh/docs/reference/plan-syntax/

# Required.
# Sets the name of the package. This will be used in along with `pkg_origin`,
# and `pkg_version` to define the fully-qualified package name, which determines
# where the package is installed to on disk, how it is referred to in package
# metadata, and so on.
pkg_name=builder-local

# Required unless overridden by the `HAB_ORIGIN` environment variable.
# The origin is used to denote a particular upstream of a package.
pkg_origin=lauck

# Required.
# Sets the version of the package
pkg_version="0.1.0"

# Optional.
# The name and email address of the package maintainer.
pkg_maintainer="The Habitat Maintainers <humans@habitat.sh>"

# Optional.
# An array of valid software licenses that relate to this package.
# Please choose a license from http://spdx.org/licenses/
pkg_license=("Apache-2.0")

# Optional.
# The scaffolding base for this plan.
# pkg_scaffolding="some/scaffolding"

# Optional.
# A URL that specifies where to download the source from. Any valid wget url
# will work. Typically, the relative path for the URL is partially constructed
# from the pkg_name and pkg_version values; however, this convention is not
# required.
# pkg_source="http://some_source_url/releases/${pkg_name}-${pkg_version}.tar.gz"

# Optional.
# The resulting filename for the download, typically constructed from the
# pkg_name and pkg_version values.
# pkg_filename="${pkg_name}-${pkg_version}.tar.gz"

# Required if a valid URL is provided for pkg_source or unless do_verify() is overridden.
# The value for pkg_shasum is a sha-256 sum of the downloaded pkg_source. If you
# do not have the checksum, you can easily generate it by downloading the source
# and using the sha256sum or gsha256sum tools. Also, if you do not have
# do_verify() overridden, and you do not have the correct sha-256 sum, then the
# expected value will be shown in the build output of your package.
pkg_shasum="TODO"

# Optional.
# An array of package dependencies needed at runtime. You can refer to packages
# at three levels of specificity: `origin/package`, `origin/package/version`, or
# `origin/package/version/release`.
pkg_deps=(
core/7zip
core/R
core/acbuild
core/acl
core/alex
core/alsa-lib
core/ansible
core/ant
core/apr
core/apr-util
core/artifactory
core/artifactory-pro
core/aspcud
core/aspnet-mvc1
core/at-spi2-atk
core/at-spi2-core
core/atk
core/attr
core/autoconf
core/autogen
core/automake
core/aws-cli
core/azure-cli
core/base-plans.txt
core/bash
core/bash-completion
core/bash-static
core/bats
core/bazel
core/bc
core/bdwgc
core/bdwgc7
core/bdwgc8
core/benchmark
core/bin
core/bind
core/binutils
core/bison
core/boost
core/boost159
core/boringssl
core/buildkite-agent
core/buildkite-cli
core/bundler
core/busybox
core/busybox-static
core/bzip2
core/bzip2-musl
core/c-ares
core/cabal-install
core/cacerts
core/caddy
core/cairo
core/camlp4
core/cargo-nightly
core/ccache
core/cerebro
core/certstrap
core/check
core/chrony
core/ci
core/clang
core/clang-tools-extra
core/clang7
core/clens
core/clingo
core/clojure
core/cmake
core/cockroach
core/composer
core/compositeproto
core/concourse
core/concourse-fly
core/consul
core/coreutils
core/coreutils-static
core/corretto
core/corretto11
core/corretto8
core/cpanminus
core/cpio
core/cppcheck
core/cppunit
core/cpputest
core/crate
core/cuda
core/cuda-libs
core/curator
core/curator4
core/curl
core/curl-static-musl
core/cyrus-sasl
core/damageproto
core/db
core/dbus
core/dd-agent
core/dejagnu
core/delmo
core/dep
core/devicemapper
core/dex
core/dgraph
core/dgraph-ratel
core/diffutils
core/direnv
core/dmake
core/docker
core/docker-compose
core/docker-credential-helper
core/docker17
core/docs
core/docutils
core/dosfstools
core/dotnet-35sp1-runtime
core/dotnet-45-dev-pack
core/dotnet-45-runtime
core/dotnet-462-dev-pack
core/dotnet-462-runtime
core/dotnet-47-dev-pack
core/dotnet-471-dev-pack
core/dotnet-472-dev-pack
core/dotnet-472-runtime
core/dotnet-asp-core
core/dotnet-core
core/dotnet-core-sdk
core/dotnet-core-sdk-preview
core/dovecot
core/doxygen
core/dpkg
core/dri2proto
core/drupal
core/drush
core/dsc-core
core/e2fsprogs
core/ed
core/elasticsearch
core/elasticsearch5
core/elfutils
core/elixir
core/envconsul
core/envdir
core/envoy
core/erlang
core/erlang16
core/erlang18
core/erlang19
core/erlang20
core/erlang21
core/etcd
core/eudev
core/exercism
core/expat
core/expect
core/fd
core/ffmpeg
core/ffmpeg3
core/ffmpeg4
core/file
core/filebeat
core/findutils
core/fish
core/fixesproto
core/flatbuffers
core/flex
core/fluentd
core/fontconfig
core/foulkon
core/fping
core/freetds
core/freetype
core/galera
core/gamin
core/gawk
core/gcc
core/gcc-libs
core/gdal
core/gdb
core/gdb7
core/gdbm
core/gdk-pixbuf
core/gecode
core/geos
core/gettext
core/ghc
core/ghc710
core/ghc710-bootstrap
core/ghc80
core/ghc82
core/ghc82-bootstrap
core/ghc84
core/ghc86
core/giflib
core/gifsicle
core/git
core/github_changelog_generator
core/glib
core/glibc
core/glproto
core/gmp
core/gnatsd
core/gnupg
core/gnupg-static
core/gnuplot
core/gnutls
core/go
core/go14
core/go17
core/goaccess
core/gocd-server
core/googlemock
core/googletest
core/goreplay
core/govc
core/gox
core/gperf
core/gperftools
core/gpgme
core/gradle
core/gradle4
core/gradle5
core/grafana
core/graphviz
core/grep
core/groff
core/grpc-cpp
core/grpcurl
core/grub
core/gsl
core/gtk
core/gtk2
core/guile
core/gzip
core/handlebars-cmd
core/happy
core/haproxy
core/haproxy16
core/haproxy17
core/haproxy18
core/haproxy19
core/haproxy20
core/harfbuzz
core/helm
core/hspec-discover
core/htop
core/httpd
core/hugo
core/hwloc
core/iana-etc
core/icu
core/icu52
core/icu56
core/iis-aspnet35
core/iis-aspnet4
core/iis-webserverrole
core/imagemagick
core/img
core/inetutils
core/innounp
core/inotify-tools
core/inputproto
core/intltool
core/iproute2
core/iptables
core/ipvsadm
core/jbigkit
core/jdk7
core/jdk8
core/jemalloc
core/jenkins
core/jetty
core/jffi
core/jfrog-cli
core/jo
core/journalbeat
core/jq-static
core/jre7
core/jre8
core/jruby
core/jruby1
core/json-c
core/json-glib
core/kafka
core/kbproto
core/kibana
core/kmod
core/krb5
core/kubectl
core/kubernetes
core/kubernetes-apiserver
core/kubernetes-controller-manager
core/kubernetes-kubelet
core/kubernetes-proxy
core/kubernetes-scheduler
core/lastpass-cli
core/lcms2
core/leiningen
core/leproxy
core/less
core/lessmsi
core/leveldb
core/lgpo
core/libaio
core/libarchive
core/libarchive-musl
core/libassuan
core/libatomic_ops
core/libbsd
core/libcap
core/libcap-ng
core/libcerf
core/libcxx
core/libcxxabi
core/libdrm
core/libedit
core/libepoxy
core/liberation-fonts-ttf
core/libev
core/libevent
core/libfcgi
core/libffi
core/libgcrypt
core/libgd
core/libghthash
core/libgpg-error
core/libice
core/libiconv
core/libidn
core/libidn2
core/libimagequant
core/libjpeg-turbo
core/libksba
core/libmaxminddb
core/libmpc
core/libnl
core/libnsl
core/libossp-uuid
core/libpcap
core/libpciaccess
core/libpipeline
core/libpng
core/libpq
core/libpthread-stubs
core/libressl
core/libressl-musl
core/libsasl2
core/libscrypt
core/libseccomp
core/libsm
core/libsodium
core/libsodium-musl
core/libssh2
core/libtalloc
core/libtasn1
core/libtermkey
core/libtiff
core/libtirpc
core/libtool
core/libunistring
core/libunwind
core/libuv
core/libvterm
core/libwebp
core/libxau
core/libxcb
core/libxcomposite
core/libxcursor
core/libxdamage
core/libxdmcp
core/libxext
core/libxfixes
core/libxi
core/libxml2
core/libxmu
core/libxrandr
core/libxrender
core/libxscrnsaver
core/libxshmfence
core/libxslt
core/libxt
core/libxtst
core/libyajl2
core/libyaml
core/libzip
core/linux
core/linux-headers
core/linux-headers-musl
core/linux-pam
core/llvm
core/llvm7
core/local-lib
core/logback
core/logstash
core/logstash2
core/lsof
core/lsyncd
core/lttng-ust
core/lua
core/luajit
core/lynx
core/lz4
core/lzip
core/lzo
core/lzop
core/m4
core/mage
core/make
core/man-db
core/man-pages
core/mariadb
core/maven
core/mawk
core/mc
core/memcached
core/mercurial
core/mesa
core/meson
core/metricbeat
core/mg
core/minio
core/mksh
core/mongo-tools
core/mongodb
core/monit
core/mono5
core/mosquitto
core/mpfr
core/msgpack
core/msodbcsql17
core/mssql
core/musl
core/mysql
core/mysql-client
core/nano
core/nasm
core/nats-streaming-server
core/nats-top
core/ncdu
core/ncurses
core/ncurses5
core/net-tools
core/netcat
core/netcat-openbsd
core/netdata
core/nettle
core/nghttp2
core/nginx
core/ninja
core/nload
core/nmap
core/node
core/node10
core/node11
core/node12
core/node6
core/node8
core/node9
core/node_exporter
core/npth
core/nspr
core/nss
core/nuget
core/numactl
core/ocaml
core/ocamlbuild
core/omniORB
core/opa
core/opam
core/openjdk11
core/openjpeg
core/openldap
core/openresty
core/openssh
core/openssl
core/openssl-fips
core/openssl-musl
core/openvpn
core/optipng
core/p11-kit
core/p4broker
core/packer
core/pango
core/papi
core/patch
core/patchelf
core/pax-utils
core/pcre
core/percona-xtrabackup
core/perl
core/pester
core/phantomjs
core/php
core/pixman
core/pkg-config
core/pngcrush
core/pngquant
core/polipo
core/ponysay
core/popt
core/postfix
core/postgresql
core/postgresql-client
core/postgresql11
core/postgresql11-client
core/postgresql93
core/postgresql93-client
core/postgresql94
core/postgresql94-client
core/postgresql95
core/postgresql95-client
core/postgresql96
core/postgresql96-client
core/powershell
core/procps-ng
core/proj
core/prometheus
core/prometheus-cpp
core/prometheus1
core/prometheus2
core/protobuf
core/protobuf-c
core/protobuf-cpp
core/protobuf-rust
core/protobuf2
core/ps-lock
core/psmisc
core/pv
core/python
core/python2
core/python34
core/python35
core/python36
core/python37
core/qemu
core/rabbitmq
core/rabbitmqadmin
core/raml2html
core/randrproto
core/re2c
core/readline
core/readline6
core/rebar
core/rebar3
core/recordproto
core/redis
core/redis3
core/redis4
core/relx
core/renderproto
core/repo
core/reportviewer2010
core/restic
core/rethinkdb
core/ripgrep
core/rkt
core/rlwrap
core/rngd
core/rpm
core/rpm2cpio
core/rq
core/rsync
core/ruby
core/ruby24
core/ruby25
core/ruby26
core/runc
core/runit
core/rust
core/rust-nightly
core/sassc
core/sbt
core/scaffolding-base
core/scaffolding-chef
core/scaffolding-go
core/scaffolding-go17
core/scaffolding-gradle
core/scaffolding-inspec
core/scaffolding-node
core/scaffolding-ruby
core/sccache
core/scons
core/scowl
core/scrnsaverproto
core/sed
core/sensu
core/sensu-agent
core/sensu-backend
core/serf
core/shadow
core/shared-mime-info
core/shellcheck
core/shield
core/shield-agent
core/shield-proxy
core/snappy
core/socat
core/spark
core/sqitch
core/sqitch_pg
core/sql-dmo
core/sqlite
core/sqlserver
core/sqlserver-ha-ag
core/sqlserver2005
core/sshpass
core/storm
core/strace
core/subversion
core/sudo
core/sumologic
core/swig
core/sysstat
core/systemd
core/tap-xunit
core/tar
core/tcl
core/tcpdump
core/telegraf
core/terraform
core/texinfo
core/tlog
core/tmux
core/tomcat-native
core/tomcat7
core/tomcat8
core/tor
core/traefik
core/tree
core/ttyrec
core/tzdata
core/unibilium
core/unixodbc
core/unzip
core/userspace-rcu
core/util-linux
core/util-macros
core/valgrind
core/varnish
core/vault
core/vde2
core/vim
core/virtualenv
core/visual-build-tools-2017
core/visual-cpp-build-tools-2015
core/visual-cpp-redist-2013
core/visual-cpp-redist-2015
core/vmtouch
core/wal-e
core/wget
core/wget-static
core/which
core/windows-10-sdk
core/wix
core/wordpress
core/wordpress-proxy
core/wrk
core/xcb-proto
core/xextproto
core/xeyes
core/xlib
core/xorg_build_order
core/xproto
core/xtrans
core/xz
core/xz-musl
core/yaml-cpp
core/yarn
core/yasm
core/zeromq
core/zip
core/zlib
core/zlib-musl
core/zookeeper
core/zsh
core/zstd
)

# Optional.
# An array of the package dependencies needed only at build time.
pkg_build_deps=(core/make core/gcc)

# Optional.
# An array of paths, relative to the final install of the software, where
# libraries can be found. Used to populate LD_FLAGS and LD_RUN_PATH for
# software that depends on your package.
# pkg_lib_dirs=(lib)

# Optional.
# An array of paths, relative to the final install of the software, where
# headers can be found. Used to populate CFLAGS for software that depends on
# your package.
# pkg_include_dirs=(include)

# Optional.
# An array of paths, relative to the final install of the software, where
# binaries can be found. Used to populate PATH for software that depends on
# your package.
# pkg_bin_dirs=(bin)

# Optional.
# An array of paths, relative to the final install of the software, where
# pkg-config metadata (.pc files) can be found. Used to populate
# PKG_CONFIG_PATH for software that depends on your package.
# pkg_pconfig_dirs=(lib/pconfig)

# Optional.
# The command for the Supervisor to execute when starting a service. You can
# omit this setting if your package is not intended to be run directly by a
# Supervisor of if your plan contains a run hook in hooks/run.
# pkg_svc_run="haproxy -f $pkg_svc_config_path/haproxy.conf"

# Optional.
# An associative array representing configuration data which should be gossiped to peers. The keys
# in this array represent the name the value will be assigned and the values represent the toml path
# to read the value.
# pkg_exports=(
#   [host]=srv.address
#   [port]=srv.port
#   [ssl-port]=srv.ssl.port
# )

# Optional.
# An array of `pkg_exports` keys containing default values for which ports that this package
# exposes. These values are used as sensible defaults for other tools. For example, when exporting
# a package to a container format.
# pkg_exposes=(port ssl-port)

# Optional.
# An associative array representing services which you depend on and the configuration keys that
# you expect the service to export (by their `pkg_exports`). These binds *must* be set for the
# Supervisor to load the service. The loaded service will wait to run until it's bind becomes
# available. If the bind does not contain the expected keys, the service will not start
# successfully.
# pkg_binds=(
#   [database]="port host"
# )

# Optional.
# Same as `pkg_binds` but these represent optional services to connect to.
# pkg_binds_optional=(
#   [storage]="port host"
# )

# Optional.
# An array of interpreters used in shebang lines for scripts. Specify the
# subdirectory where the binary is relative to the package, for example,
# bin/bash or libexec/neverland, since binaries can be located in directories
# besides bin. This list of interpreters will be written to the metadata
# INTERPRETERS file, located inside a package, with their fully-qualified path.
# Then these can be used with the fix_interpreter function.
# pkg_interpreters=(bin/bash)

# Optional.
# The user to run the service as. The default is hab.
# pkg_svc_user="hab"

# Optional.
# The group to run the service as. The default is hab.
# pkg_svc_group="$pkg_svc_user"

# Required for core plans, optional otherwise.
# A short description of the package. It can be a simple string, or you can
# create a multi-line description using markdown to provide a rich description
# of your package.
# pkg_description="Some description."

# Required for core plans, optional otherwise.
# The project home page for the package.
# pkg_upstream_url="http://example.com/project-name"

# Callback Functions
#
# When defining your plan, you have the flexibility to override the default
# behavior of Habitat in each part of the package building stage through a
# series of callbacks. To define a callback, simply create a shell function
# of the same name in your plan.sh file and then write your script. If you do
# not want to use the default callback behavior, you must override the callback
# and return 0 in the function definition.
#
# Callbacks are defined here with either their "do_default_x", if they have a
# default implementation, or empty with "return 0" if they have no default
# implementation (Bash does not allow empty function bodies.) If callbacks do
# nothing or do the same as the default implementation, they can be removed from
# this template.
#
# The default implementations (the do_default_* functions) are defined in the
# plan build script:
# https://github.com/habitat-sh/habitat/tree/master/components/plan-build/bin/hab-plan-build.sh

# The default implmentation does nothing. You can use it to execute any
# arbitrary commands before anything else happens.
do_begin() {
  return 0
}

# The default implementation is that the software specified in $pkg_source is
# downloaded, checksum-verified, and placed in $HAB_CACHE_SRC_PATH/$pkgfilename,
# which resolves to a path like /hab/cache/src/filename.tar.gz. You should
# override this behavior if you need to change how your binary source is
# downloaded, if you are not downloading any source code at all, or if your are
# cloning from git. If you do clone a repo from git, you must override
# do_verify() to return 0.
do_download() {
  return 0
}

# The default implementation tries to verify the checksum specified in the plan
# against the computed checksum after downloading the source tarball to disk.
# If the specified checksum doesn't match the computed checksum, then an error
# and a message specifying the mismatch will be printed to stderr. You should
# not need to override this behavior unless your package does not download
# any files.
do_verify() {
  return 0
}

# The default implementation removes the HAB_CACHE_SRC_PATH/$pkg_dirname folder
# in case there was a previously-built version of your package installed on
# disk. This ensures you start with a clean build environment.
do_clean() {
  return 0
}

# The default implementation extracts your tarball source file into
# HAB_CACHE_SRC_PATH. The supported archives are: .tar, .tar.bz2, .tar.gz,
# .tar.xz, .rar, .zip, .Z, .7z. If the file archive could not be found or was
# not supported, then a message will be printed to stderr with additional
# information.
do_unpack() {
  return 0
}

# The default implementation does nothing. At this point in the build process,
# the tarball source has been downloaded, unpacked, and the build environment
# variables have been set, so you can use this callback to perform any actions
# before the package starts building, such as exporting variables, adding
# symlinks, and so on.
do_prepare() {
  return 0
}

# The default implementation is to update the prefix path for the configure
# script to use $pkg_prefix and then run make to compile the downloaded source.
# This means the script in the default implementation does
# ./configure --prefix=$pkg_prefix && make. You should override this behavior
# if you have additional configuration changes to make or other software to
# build and install as part of building your package.
do_build() {
  return 0
}

# The default implementation runs nothing during post-compile. An example of a
# command you might use in this callback is make test. To use this callback, two
# conditions must be true. A) do_check() function has been declared, B) DO_CHECK
# environment variable exists and set to true, env DO_CHECK=true.
do_check() {
  return 0
}

# The default implementation is to run make install on the source files and
# place the compiled binaries or libraries in HAB_CACHE_SRC_PATH/$pkg_dirname,
# which resolves to a path like /hab/cache/src/packagename-version/. It uses
# this location because of do_build() using the --prefix option when calling the
# configure script. You should override this behavior if you need to perform
# custom installation steps, such as copying files from HAB_CACHE_SRC_PATH to
# specific directories in your package, or installing pre-built binaries into
# your package.
do_install() {
  return 0
}

# The default implementation is to strip any binaries in $pkg_prefix of their
# debugging symbols. You should override this behavior if you want to change
# how the binaries are stripped, which additional binaries located in
# subdirectories might also need to be stripped, or whether you do not want the
# binaries stripped at all.
do_strip() {
  return 0
}

# The default implmentation does nothing. This is called after the package has
# been built and installed. You can use this callback to remove any temporary
# files or perform other post-install clean-up actions.
do_end() {
  return 0
}
