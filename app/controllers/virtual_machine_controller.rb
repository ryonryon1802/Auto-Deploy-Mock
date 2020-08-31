class VirtualMachineController < ApplicationController
  #require 'pry'

  def index
    @virtual_machines = VirtualMachine.all
  end

  def show
    @virtual_machine = VirtualMachine.find(params[:id])
  end

  def new
    @virtual_machine = VirtualMachine.new
  end

  def create
    @virtual_machine = VirtualMachine.new(virtual_machine_params)
    if @virtual_machine.save
      flash[:notice] = "Success"
      redirect_to virtual_machines_path
    else
      render virtual_machines_new_path
    end
  end

  def edit
    @virtual_machine = VirtualMachine.find(params[:id])
  end

  def update
    @virtual_machine = VirtualMachine.find(params[:id]).update(ipaddress: virtual_machine_params[:ipaddress])
    if @virtual_machine
      flash[:notice] = "Success"
      redirect_to "/virtual_machines"
    else
      render virtual_machines_new_path
    end
  end

  private
    def virtual_machine_params
      params.require(:virtual_machine).permit(:ipaddress)
    end
end
