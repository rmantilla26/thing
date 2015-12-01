class AppThingsController < ApplicationController
  before_action :set_app_thing, only: [:show, :edit, :update, :destroy]

  # GET /app_things
  # GET /app_things.json
  def index
    @app_things = AppThing.all
  end

  # GET /app_things/1
  # GET /app_things/1.json
  def show
  end

  # GET /app_things/new
  def new
    @app_thing = AppThing.new
  end

  # GET /app_things/1/edit
  def edit
  end

  # POST /app_things
  # POST /app_things.json
  def create
    @app_thing = AppThing.new(app_thing_params)

    respond_to do |format|
      if @app_thing.save
        format.html { redirect_to @app_thing, notice: 'App thing was successfully created.' }
        format.json { render :show, status: :created, location: @app_thing }
      else
        format.html { render :new }
        format.json { render json: @app_thing.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /app_things/1
  # PATCH/PUT /app_things/1.json
  def update
    respond_to do |format|
      if @app_thing.update(app_thing_params)
        format.html { redirect_to @app_thing, notice: 'App thing was successfully updated.' }
        format.json { render :show, status: :ok, location: @app_thing }
      else
        format.html { render :edit }
        format.json { render json: @app_thing.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /app_things/1
  # DELETE /app_things/1.json
  def destroy
    @app = @app_thing.app
    @app_thing.destroy
    respond_to do |format|
      format.js { @app = @app }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_app_thing
      @app_thing = AppThing.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def app_thing_params
      params.require(:app_thing).permit(:app_id, :thing_id)
    end
end
