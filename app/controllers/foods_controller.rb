class FoodsController < ApplicationController
  def index
    @foods = Food.where(user_id: current_user)
  end

  def show
    # Your logic to fetch and display a single food item
  end

  def new
    @food = Food.new
  end

  def create
    @food = Food.new(food_params)
    @food.user_id = current_user.id

    if @food.save
      flash[:notice] = ' Food was successfully created'
      redirect_to foods_path
    else
      render :new
    end
  end

  def edit
    # Your logic to set up an edit form for an existing user
  end

  def update
    # Your logic to update an existing user based on submitted form data
  end

  def destroy
    # Your logic to delete a user
    @food = Food.find(params[:id])
    puts params[:id]
    @food.destroy
    flash[:notice] = ' Food was successfully deleted'
    redirect_to foods_path
  end

  private

  def food_params
    params.require(:food).permit(:name, :measurement_unit, :price, :quantity)
  end
end
