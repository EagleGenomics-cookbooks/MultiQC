#
# Cookbook:: MultiQC
# Recipe:: default
#
# Copyright:: 2019, The Authors, All Rights Reserved.

include_recipe 'python_setup'

pyenv_pip 'multiqc' do
  version node['multiqc']['version']
end

magic_shell_environment 'MULTIQC_VERSION' do
  value node['multiqc']['version']
end

magic_shell_environment 'LC_ALL' do
  value 'C.UTF-8'
end

magic_shell_environment 'LANG' do
  value 'C.UTF-8'
end
