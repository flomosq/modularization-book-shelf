# frozen_string_literal: true

module Api
  module V1
    class BooksController < ::ApplicationController
      def index
        @books = Book.all
      end

      def show
        @book = Book.find(params[:id])
      end

      def create
        @book = Book.create!(book_params)

        render :create, status: :created
      end

      def update
        @book = Book.find(params[:id])
        @book.update!(book_params)
      end

      def destroy
        Book.find(params[:id]).destroy!
      end

      private

      def book_params
        params.require(:book).permit(:title, :isbn, :authors)
      end
    end
  end
end
