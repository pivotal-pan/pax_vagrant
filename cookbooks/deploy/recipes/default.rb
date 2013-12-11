execute "deploy prebuild" do
  user 'root'
  command 'cd /root/workspace/PaxMain/tools && ./deploy prebuild localhost /root/.ssh/id_rsa'
end

execute "deploy application" do
  user 'root'
  command 'cd /root/workspace/PaxMain/tools && ./deploy lite grand localhost /root/.ssh/id_rsa'
end
