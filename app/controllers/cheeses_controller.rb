class CheesesController < ApplicationController

  def index
    cheeses = Cheese.all
    render json: cheeses
  end
  # see NOTE 1
  def show
    cheese = Cheese.find(params[:id])
    render json: cheese
  end

end

# NOTE 1
# Static routes have a fixed path. For example, the /cheeses path will always show a list of all cheeses.

# Dynamic routes will render different data based on the parameters in the path. For example, when 3 is passed in as the parameter to the /cheeses/:id route, the app should render the data for the cheese with an ID of 3. When 222 is passed in, the app should render the data for the cheese with an ID of 222.