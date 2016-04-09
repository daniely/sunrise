class Api::V1::TenantsController < Api::V1::BaseController
  def index
    render json: Tenant.all.map{ |t| { id: t.id, name: t.name, description: t.description } }
  end

  def create
    tenant = Tenant.create(name: params[:name], description: params[:description])
    render json: { id: tenant.id, name: tenant.name, description: tenant.description }
  end

  def destroy
    Tenant.find(params[:id]).destroy

    render json: { success: 1 }
  end
end
