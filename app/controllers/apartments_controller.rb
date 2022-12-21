class ApartmentsController < ApplicationController
  def evict
    apt = Apartment.find_by!(id: params[:id])
    # Ideally, you would have error handling that would prevent there being multiple active leases
    # in the first place
    lease = apt.leases.where(active: true)[0]
    lease.tenant_id = nil
    lease.active = false
    apt.lease_id = nil
    apt.save
    lease.save
    render json: apt
  end
end
