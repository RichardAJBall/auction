class AuctionThingsController < ApplicationController


  before_filter(:find_auction_thing, only:[:show, :destroy] )


   def index
     @auction_things = AuctionThing.all
   end

   def show
   end

   def new
     @auction_thing = AuctionThing.new

   end

   def create
     @auction_thing = AuctionThing.create(auction_thing_params)
     redirect_to(@auction_thing)
     # takes to show (look at rake routes)
     # all that is passed is the set of params on get request
     # instance variable ok
   end

   def destroy

     @auction_thing.destroy
     redirect_to(auction_things_url)
     # cannot redirect to nil -
   end

   private
     def auction_thing_params
       params.require(:auction_thing).permit(:auction_title, :auction_desc)
     end

    def find_auction_thing
      @auction_thing = AuctionThing.find(params[:id])
    end

  end
