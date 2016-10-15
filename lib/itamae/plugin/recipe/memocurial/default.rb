node[:memocurial] ||= {}
node[:memocurial][:port] ||= 5000
node[:memocurial][:data] ||= "/var/lib/memocurial"
node[:memocurial][:image] ||= "f440/memocurial:latest"

node.validate! do
  {
    memocurial: {
      port: optional(integer),
      data: optional(string),
      image: optional(string)
    }
  }
end

execute "systemctl-daemon-reload" do
  command "/bin/systemctl --system daemon-reload"
  action :nothing
end

execute "apt-get update" do
  not_if "which docker"
end

package "docker.io"

template "/etc/systemd/system/memocurial.service" do
  owner "root"
  group "root"
  notifies :run, "execute[systemctl-daemon-reload]", :immediately
end

service "memocurial" do
  action [:enable, :start]
end
