execute "systemctl-daemon-reload" do
  command "/bin/systemctl --system daemon-reload"
  action :nothing
end

execute "apt-get update" do
  not_if "which docker"
end

package "docker.io"

remote_file "/etc/systemd/system/memocurial.service" do
  owner "root"
  group "root"
  notifies :run, "execute[systemctl-daemon-reload]", :immediately
end

service "memocurial" do
  action [:enable, :start]
end
