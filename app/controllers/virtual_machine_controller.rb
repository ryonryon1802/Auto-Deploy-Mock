class VirtualMachineController < ApplicationController
  def index
    @virtual_machines = VirtualMachine.all
  end
end
