#
# Cookbook:: MultiQC
# Recipe:: default
#
# Copyright:: 2019, The Authors, All Rights Reserved.

apt_update 'update'

package %w(python-pip python-dev gfortran libfreetype6-dev pkg-config libpng12-dev) do
  action :install
end

bash 'install multiqc' do
  code <<-EOH
    pip install multiqc==#{node['multiqc']['version']}
    EOH
end

magic_shell_environment 'MULTIQC_VERSION' do
  value node['multiqc']['version']
end
