class BookController < ApplicationController
  def get
    puts "Params::::::::::::::::::::::::::::::#{params}"
    puts "=========================================="
    puts "controller:#{params[:controller]},action:#{params[:action]},id:#{params[:id]}"   
  end

  def save
    @book = Book.new(name: 'SuperBook', author: 'author', price: 12.2, descript: 'I Fuck Your sister')
    @book.save
    @books = Book.all
    respond_to do |format|
      format.html { render :json => @books }
      format.json{ render json: @book }
    end
  end

  def edit
  end
end
