execute "create /root/.ssh directory" do
  user 'root'
  creates '/root/.ssh'
  command 'mkdir -p /root/.ssh'
end