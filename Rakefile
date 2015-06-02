REPO = 'git@github.com:sjwrong/puppet-repo.git'
SSH = 'ssh root@sosett.sk -p 20600 -A  ~/git/sjwrong/sjwrong.pem -l root'

desc "Run Puppet on ENV['CLIENT'] with hotstname ENV['HOSTNAME']"
task :bootstrap do
	client = ENV['CLIENT']
	hostname = ENV['HOSTNAME'] || client
	commands = <<BOOTSTRAP
sudo hostname #{hostname} && \
sudo su - c 'echo #{hostname} >/etc/hostname' && \
wget http://apt.pupptlabs.com/puppetlabs-release-precise.deb && \
sudo dpkg -i puppetlabs-release-precise.deb && \
sudo apt-get update && sudo apt-get -y install git puppet && \
git clone #{REPO} puppet && \
sudo puppet apply --modulepath=/home/ubuntu/puppet/modules /home/ubuntu/puppet/manifests/site.pp
BOOTSTRAP
sh "#{SSH} #{client}'#{commands}'"
end
