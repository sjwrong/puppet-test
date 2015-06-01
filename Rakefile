SSH = 'ssh root@sosett.sk -p 20600  ~/git/sjwrong/sjwrong.pem -l root'

desc "Run Puppet on ENV['CLIENT']"
task :apply do
	client =ENV['CLIENT']
	sh "git push"
	sh "#{SSH} #{client} pull-updates"
end
