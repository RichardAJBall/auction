class BidsController < ApplicationController

  before_filter(:find_auction_thing, only:[:index, :new, :create, :show] )

  def index
    #@auction_thing = AuctionThing.find(params[:auction_thing_id])
    @bids = @auction_thing.bids
  end

  def show
    @bid = @auction_thing.bids.find(params[:id])
  end

  def new
    #@auction_thing = AuctionThing.find(params[:auction_thing_id])
    @bid = @auction_thing.bids.build
  end

  def create
    #@auction_thing = AuctionThing.find(params[:auction_thing_id])
    @bid =  @auction_thing.bids.create(bid_params)

    redirect_to([@auction_thing,@bid])
    # takes to show (look at rake routes)
    # all that is passed is the set of params on get request
    # instance variable ok
  end

  def edit
  end

  def update
    @bid.update_attributes(bid_params)
    redirect_to(@bid)
  end

  def destroy

    @bid.destroy
    redirect_to(bids_url)
    # cannot redirect to nil -
  end


  private
    def bid_params
      params.require(:bid).permit(:amount_in_cents)
    end

   #def find_bid
     #@bid = Bid.find(params[:id])
  # end

   def find_auction_thing
     @auction_thing = AuctionThing.find(params[:auction_thing_id])
   end




end
