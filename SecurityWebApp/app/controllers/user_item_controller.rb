class UserItemController < ApplicationController
  respond_to :json

  def index
    @items = current_user.user_items
    respond_with @items
  end

  def add
    @item = current_user.user_items.where(user_id: current_user, name: params[:name])

    @item.update_attribute                   (:count, @item.count + 1)
  end

  def show
  end

  def create
    @item = UserItem.new(userItem_params)
    if @item.save
      format.json { render :show, status: :created, location: @item }
    else
      format.json { render json: @item.errors, status: :unprocessable_entity }
    end
  end

  def new
    @item = UserItem.new
  end

  def edit
  end

  def update
    if @item.update(userItems_params)
      format.json { render :show, status: :ok, location: @item }
    else
      format.json { render json: @item.errors, status: :unprocessable_entity }
    end
  end

  def destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_userItems
      @item = UserItem.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def userItem_params
      params.require(:item).permit(:name, :price, :count, :user_id)
    end
end
