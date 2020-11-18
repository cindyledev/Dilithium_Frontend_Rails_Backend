class Api::TasksController < Api::BaseController
  def index
    render json: [
      { id: 1, name: "My backend" },
      { id: 2, name: "My frontend" },
      { id: 3, name: "My UI" },
    ]
  end
  
  def create
    render json: { id: 4, name: params[:task][:name] }
  end
end