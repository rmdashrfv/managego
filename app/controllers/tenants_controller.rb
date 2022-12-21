class TenantsController < ApplicationController
  def show
    tenant = Tenant.find_by!(id: params[:id])
    render json: tenant
  end

  def index
  end

  def update
    tenant = Tenant.find_by!(id: params[:id])
    tenant.update!(valid_tenant_params)
    render json: tenant
  end

  def destroy
  end

  private
  
  def valid_tenant_params
    params.permit(:first_name, :last_name, :email)
  end
  
end
