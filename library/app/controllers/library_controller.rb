class LibraryController < ApplicationController
  def list
    @books = Book.all
  end

  def new_checkout
    @checkout = Checkout.new

  end

  def checkout
    @checkout = Checkout.new(params.require(:checkout).permit(:book_id, :patron_id))
    if @checkout.save
      @checkout.book.available = false
      @checkout.book.save
      @checkout.checked_out_at = DateTime.now
      @checkout.save

      redirect_to root_path, notice: "Boom"
    else
      render :new_checkout
    end
  end



  def new_checkin
     @checkout = Checkout.find(params[:checkout_id])
    if @checkout.update(checkin_at: DateTime.now)
      @checkout.book.update(available: true)
      redirect_to root_path, notice: "BOOM"
  end
end
end
