class ListingsController < ApplicationController
  
  def index

    @listings = Listing.all

  end

  def sell

    @categories = Category.all

  end

  def swap
  end

  def show
    @listing = Listing.find(params[:id])
    @categories = Category.all
  end

  def delete

    Listing.find(params[:id]).destroy

    redirect_to :controller => 'listings', :action => 'index'

  end  

  def buy
  end

  def create

    # Create a new object which will go into the database
    @listing = Listing.new

    # Set all the values we need on the object
    @listing.title = params[:title]
    @listing.price = params[:price].to_f
    @listing.status = params[:status]
    @listing.description = params[:description]
    @listing.seller_user = current_user
    @listing.category_id = params[:category_id].to_i
    
    # Save the object. It only goes into database here!
    @result = @listing.save!

    if @result

      # Send user to home page, but later to the specific listing e.g /listings/123/show
      redirect_to '/listings/' + @listing.id.to_s
    else
      # If something goes wrong, show sell page again

      puts "===========ERROR: " + @result.to_s
      render 'sell'
    end

  end

  def edit

    @listing = Listing.find(params[:id])

    # Set all the values we need on the object
    @listing.title = params[:title]
    @listing.price = params[:price].to_f
    @listing.status = params[:status]
    @listing.description = params[:description]
    @listing.category_id = params[:category_id].to_i

    # Save the object. It only goes into database here!
    @result = @listing.save!

    if @result

      # Send user to home page, but later to the specific listing e.g /listings/123/show
      redirect_to '/listings/' + @listing.id.to_s
    else
      # If something goes wrong, show sell page again

      puts "===========ERROR: " + @result.to_s
      redirect_to '/listings/' + @listing.id.to_s
    end    
    
  
  end

end
