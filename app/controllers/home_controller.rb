class HomeController < ApplicationController
  def index
    @lists = List.pluck(:id, :name, :description, :image).to_a
  end
  def new
  
  end
  
  def create
    List.create(
      name: params[:name],
      description: params[:description],
      image: params[:image],
      created_at: Time.now
    )
    redirect_to "/"
  end

  def change_list
    if params[:delete]
      List.delete(params[:id])
      redirect_to "/"
    elsif params[:update]
      parameters = [params[:new_name], params[:new_description], params[:new_image]]
      List.update(params[:id], name: parameters[0]) if parameters[0].present?
      List.update(params[:id], description: parameters[1]) if parameters[1].present?
      List.update(params[:id], image: parameters[2]) if parameters[2].present?
      
      redirect_to "/"
      
    end

  end
end

