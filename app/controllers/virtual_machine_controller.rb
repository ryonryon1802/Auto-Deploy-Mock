class VirtualMachineController < ApplicationController
  def index
    @virtual_machines = VirtualMachine.all
  end

  def new
    @virtual_machine = VirtualMachine.new
  end

  def create
    @virtual_machine = VirtualMachine.new(virtual_machine_params)
    if @virtual_machine.save
      flash[:notice] = "Success"
      redirect_to index_path
    else
      render new_path
    end
  end

  private
    def virtual_machine_params
      params.require(:virtual_machine).permit(:ipaddress)
    end
end
