# Class: java::package_rhel
#
#   Implementation class of the Java package
#   for RHEL systems, specifically
#
#   This class is not meant to be used by the end user
#   of the module.  It is an implementation class
#   of the composite Class[java]
#
# Parameters:
#
# Actions:
#
# Requires:
#
# Sample Usage:
#
class java::package_rhel(
  $version,
  $distribution
) {

	case $distribution {
  		'jdk': {
  			$actualDistribution = "java-${version}-sun-devel"
  		}
  		'jre': {
  			$actualDistribution = "java-${version}-sun"
  		}
  	}

 
  package { 'java':
    ensure => present,
    name   => $actualDistribution,
  }

}
