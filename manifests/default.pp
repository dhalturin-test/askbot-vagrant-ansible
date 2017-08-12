package { 'epel-release' : ensure => present }
package { 'git' : ensure => present }
package { 'gcc' : ensure => present }
package { 'python2-pip' : ensure => present, require => Package['epel-release'] }
package { 'python-devel' : ensure => present }
package { 'mariadb-server' : ensure => present, require => Package['epel-release'] }
package { 'mariadb-devel' : ensure => present, require => Package['epel-release'] }
package { 'nginx' : ensure => present, require => Package['epel-release'] }
package { 'pip' : ensure => latest, provider => pip, require => Package['python2-pip'] }
package { 'virtualenv' : ensure => installed, provider => pip, require => Package['python2-pip'] }
service { 'nginx': ensure => running, enable => true, require => Package['nginx'] }
service { 'mariadb': ensure => running, enable => true, require => Package['mariadb-server'] }
