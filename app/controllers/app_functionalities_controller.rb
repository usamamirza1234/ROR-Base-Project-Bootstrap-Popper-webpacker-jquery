class AppFunctionalitiesController < ApplicationController
  before_action :set_app_functionality, only: %i[ show edit update destroy ]

  # GET /app_functionalities or /app_functionalities.json
  def index
    @app_functionalities = AppFunctionality.all
  end

  # GET /app_functionalities/1 or /app_functionalities/1.json
  def show
  end

  # GET /app_functionalities/new
  def new
    @app_functionality = AppFunctionality.new
  end

  # GET /app_functionalities/1/edit
  def edit
  end

  # POST /app_functionalities or /app_functionalities.json
  def create
    @app_functionality = AppFunctionality.new(app_functionality_params)

    respond_to do |format|
      if @app_functionality.save
        format.html { redirect_to app_functionality_url(@app_functionality), notice: "App functionality was successfully created." }
        format.json { render :show, status: :created, location: @app_functionality }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @app_functionality.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /app_functionalities/1 or /app_functionalities/1.json
  def update
    respond_to do |format|
      if @app_functionality.update(app_functionality_params)
        format.html { redirect_to app_functionality_url(@app_functionality), notice: "App functionality was successfully updated." }
        format.json { render :show, status: :ok, location: @app_functionality }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @app_functionality.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /app_functionalities/1 or /app_functionalities/1.json
  def destroy
    @app_functionality.destroy

    respond_to do |format|
      format.html { redirect_to app_functionalities_url, notice: "App functionality was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_app_functionality
      @app_functionality = AppFunctionality.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def app_functionality_params
      params.require(:app_functionality).permit(:app_version, :app_package, :is_locked, :app_image, :app_message)
    end
end
