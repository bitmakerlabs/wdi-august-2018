class ProductsController < ApplicationController
  def index
    @response = JSON.parse(HTTParty.get("https://lcboapi.com/products?access_key=#{ENV["LCBO_KEY"]}").body)

    respond_to do |format|
      format.html do
        render :index
      end
      format.json do
        render json: {
          results: @response["result"]
        }
      end
    end
  end
end
