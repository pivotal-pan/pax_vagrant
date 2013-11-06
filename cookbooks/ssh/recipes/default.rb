execute "create /root/.ssh directory" do
  user 'root'
  creates '/root/.ssh'
  command 'mkdir -p /root/.ssh'
end

execute "generate ssh key" do
  user 'root'
  creates '/root/.ssh/id_rsa.pub'
  command 'ssh-keygen -t rsa -q -f /root/.ssh/id_rsa -P "" &&
           cat /root/.ssh/id_rsa.pub >> /root/.ssh/authorized_keys &&
           ssh-keyscan -t rsa localhost.localdomain >> /root/.ssh/known_hosts &&
           ssh-keyscan -t rsa localhost >> /root/.ssh/known_hosts'
end