Facter.add(:hypervisor_type, :type => :aggregate) do
  virt = Facter::Util::Resolution.exec('sudo /usr/sbin/virt-what')

  if !virt.nil?
    virt = virt.split("\n")

    chunk(:hv_low) do
      hypervisor_type_hash = {}
      hypervisor_type_hash["hv_low"] = virt[1]
      hypervisor_type_hash
    end

    chunk(:hv_high) do
      hypervisor_type_hash = {}
      hypervisor_type_hash["hv_high"] = virt[0]
      hypervisor_type_hash
    end
  else
    chunk(:error) do
      hypervisor_type_hash = {}
      hypervisor_type_hash["error"] = "Error execute"
      hypervisor_type_hash
    end
  end
end
