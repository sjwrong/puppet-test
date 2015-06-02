desc "Puppet Bootstrap"
	task :bootstrap do
		REPO = "http://github.com/sjwrong/puppet-test"
	hostname = ENV['hostname']
	node = ENV['node']
	user = ENV['user']
	port = ENV['port']
	ssh2 = 'ssh -t'
	commands = <<-CMD
hostname #{hostname} >/etc/hostname && \
wget http://apt.puppetlabs.com/puppetlabs-release-precise.deb && \
dpkg -i puppetlabs-release-precise.deb && \
apt-get update && apt-get -y install git puppet && \
git clone #{REPO} puppet && \
puppet apply --modulepath=/home/ubuntu/puppet/modules /home/ubuntu/puppet/manifests/site.pp
	CMD
	sh "#{ssh2} -l #{user} -p #{port} #{node} '#{commands}'"
end
desc "Puppet pull git"
        task :gitpull do
                REPO = "https://github.com/sjwrong/puppet-test.git"
        hostname = ENV['hostname']
        node = ENV['node']
        user = ENV['user']
        port = ENV['port']
        ssh2 = 'ssh -t'
        commands = <<-CMD
git clone #{REPO} /home/ubuntu/puppet && \
puppet apply --modulepath=/home/ubuntu/puppet/modules /home/ubuntu/puppet/manifests/site.pp
        CMD
        sh "#{ssh2} -l #{user} -p #{port} #{node} '#{commands}'"
end

