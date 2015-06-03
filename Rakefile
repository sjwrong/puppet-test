desc "Puppet Bootstrap"
	task :bootstrap do
		REPO = "https://github.com/sjwrong/puppet-test.git"
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
git clone #{REPO} /home/puppet && \
puppet apply --modulepath=/home/ubuntu/puppet/modules /home/ubuntu/puppet/manifests/site.pp
	CMD
	sh "#{ssh2} -l #{user} -p #{port} #{node} '#{commands}'"
end
desc "Puppet clone git"
        task :gitclone do
                REPO = "https://github.com/sjwrong/puppet-test.git"
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
desc "Another Command"
        task :another do
        commands = <<-CMD

	
	CMD
        sh "'#{commands}'"
end

desc "Add syntax check hook to your git repo"
task :add_check do
  here = File.dirname(__FILE__)
  sh "rm #{here}/.git/hooks/pre-commit && \
ln -s #{here}/hooks/check_syntax.sh #{here}/.git/hooks/pre-commit"
  puts "Puppet syntax check hook added"
end
