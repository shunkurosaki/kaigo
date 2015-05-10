class WelcomesController < ApplicationController
  before_action :set_welcome, only: [:show, :edit, :update, :destroy]

  # GET /welcomes
  # GET /welcomes.json
  def index
    @welcomes = Welcome.all
  end

  # GET /welcomes/new
  def new
    @welcome = Welcome.new
  end

  # POST /welcomes
  # POST /welcomes.json
  def create
    @welcome = Welcome.new(welcome_params)

    respond_to do |format|
      if @welcome.save
        format.html { redirect_to new_welcome_path, notice: 'Welcome was successfully created.' }
        format.json { render :show, status: :created, location: @welcome }
      else
        format.html { render :new }
        format.json { render json: @welcome.errors, status: :unprocessable_entity }
      end
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_welcome
      @welcome = Welcome.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def welcome_params
      params[:welcome]
      params.require(:welcome).permit(:name, :email, :number, :content)
    end
end
