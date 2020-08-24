class VirtualMachine < ApplicationRecord
    validates :ipaddress, presence: true, uniqueness: true
end
