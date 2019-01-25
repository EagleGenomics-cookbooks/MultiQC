name 'MultiQC'
maintainer 'Eagle Genomics Ltd.'
maintainer_email 'chef@eaglegenomics.com'
license 'Apache-2.0'
description 'Installs/Configures MultiQC'
long_description 'Installs/Configures MultiQC'
version '0.1.0'
chef_version '>= 12' if respond_to?(:chef_version)

depends 'magic_shell', '= 1.0.1'
depends 'poise-python'
depends 'scipy', '~> 0.3.1'
depends 'seven_zip', '= 2.0.2'
