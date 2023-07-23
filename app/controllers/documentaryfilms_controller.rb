class DocumentaryfilmsController < ApplicationController
  before_action :set_documentaryfilm, only: %i[ show edit update destroy ]

  # GET /documentaryfilms or /documentaryfilms.json
  def index
    @documentaryfilms = Documentaryfilm.all
  end

  # GET /documentaryfilms/new
  def new
    @documentaryfilm = Documentaryfilm.new
  end

  # POST /documentaryfilms or /documentaryfilms.json
  def create
    @documentaryfilm = Documentaryfilm.new(documentaryfilm_params)

    respond_to do |format|
      if @documentaryfilm.save
        format.html { redirect_to documentaryfilms_url(@documentaryfilm), notice: "Documentaryfilm was successfully created." }
        format.json { render :index, status: :created, location: @documentaryfilm }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @documentaryfilm.errors, status: :unprocessable_entity }
      end
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_documentaryfilm
      @documentaryfilm = Documentaryfilm.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def documentaryfilm_params
      params.require(:documentaryfilm).permit(:name, :synopsis, :director)
    end
end
