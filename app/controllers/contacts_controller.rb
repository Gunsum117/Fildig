class ContactsController < ApplicationController

  before_action :authenticate_user!, only: [:show]

  def new
  end

  def create
  end

  def show
  end
end
