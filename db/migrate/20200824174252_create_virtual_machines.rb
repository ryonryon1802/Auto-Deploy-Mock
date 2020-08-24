class CreateVirtualMachines < ActiveRecord::Migration[5.2]
  def change
    create_table :virtual_machines do |t|
      t.string :ipaddress

      t.timestamps
    end
  end
end
