# -*- mode: ruby -*-
# vi: set ft=ruby :

def attach_storage(vb, id, file, size)
  if not File.exist?(file) then
    vb.customize ["createhd", "--filename", file, "--size", size]
  end
  
  vb.customize ["storageattach", id, "--storagectl", "SATA", "--port", 1, "--device", 0, "--type", "hdd", "--medium", file]
end

