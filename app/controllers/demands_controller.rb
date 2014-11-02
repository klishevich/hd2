class DemandsController < ApplicationController
  def index
    @demands=Demand.all
  end

  def index  
  # I will explain this part in a moment.
  if params[:term]
    @demands = Demand.where("description LIKE ?", "#{params[:term]}%")
  else
    @demands = Demand.all
  end

  respond_to do |format|  
    format.html # index.html.erb  
    # Here is where you can specify how to handle the request for "/people.json"
    format.json { render :json => @demands.to_json }
    end
end

  def new
    @demand = Demand.new
  end

  def create
    @demand = Demand.new(demand_params)
    if @demand.save
      flash[:success] = t(:ok)
      redirect_to @demand
    else
      render 'new'
    end
  end

  def show
    @demand = Demand.find(params[:id])
  end

  def edit
  	@demand=Demand.find(params[:id])
  end

  def update
    @demand = Demand.find(params[:id])
    if @demand.update_attributes(demand_params)
      flash[:success] = t(:ok)
      redirect_to @demand
    else
      render 'edit'
    end
  end	

  private

  def demand_params
    params.require(:demand).permit(:adult, :children, :duration, :description, :image)
  end  	
end
