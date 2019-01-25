# # encoding: utf-8

# Inspec test for recipe MultiQC::default

# The Inspec reference, with examples and extensive documentation, can be
# found at http://inspec.io/docs/reference/resources/

# check that Multiqc executable exists
describe file('/usr/local/bin/multiqc') do
  it { should be_file }
end

# Check that MultiQC executable is in the path
describe command('which multiqc') do
  its(:exit_status) { should eq 0 }
  its(:stdout) { should match('multiqc') }
end

# Check that MultiQC works
describe command('multiqc --version') do
  its(:exit_status) { should eq 0 }
  its(:stdout) { should match('1.7') }
end
