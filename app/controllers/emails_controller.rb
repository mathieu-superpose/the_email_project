class EmailsController < ApplicationController
  def index
  	@emails = Email.all
    @email = Email.new
  end

  def show
    @email = Email.find(params[:id])
    respond_to do |format|
      format.html { redirect_to email_path(@email.id) }
      format.js {}
    end
  end

  def create
  	  @emails = Email.all
      @email = Email.create(object: Faker::Company.buzzword, body: Faker::Company.catch_phrase, read: false)

        respond_to do |format|
          format.html { redirect_to root_path, notice: 'Email was successfully created.' }
          format.js { redirect_to root_path }
        end
  end
  def destroy
      @email = Email.find(params[:id])
      @email.destroy
      respond_to do |format|
        format.html { redirect_to root_path }
        format.js { redirect_to root_path }
      end
    end
end
