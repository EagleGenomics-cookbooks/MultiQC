name 'MultiQC'
maintainer 'Eagle Genomics Ltd'
maintainer_email 'chef@eaglegenomics.com'
license 'Apache-2.0'
description 'Installs/Configures MultiQC'
version '0.1.1'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
chef_version '>= 14.10'
supports 'ubuntu', '= 18.04'
source_url 'https://github.com/EagleGenomics-cookbooks/MultiQC'
issues_url 'https://github.com/EagleGenomics-cookbooks/MultiQC/issues'

depends 'magic_shell'
depends 'python_setup'
