class ApplicationController < ActionController::Base
end

def create
 @book = Book.new(book_params)

 if @book.save
   flash[:success] = 'successfully'
   redirect_to login_path

 else
   flash.now[:danger] = 'error'
   render :new
 end
end

