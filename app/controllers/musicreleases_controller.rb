class MusicreleasesController < ApplicationController
  before_action :set_musicrelease, only: %i[ addasong show edit update destroy ]

  # GET /musicreleases or /musicreleases.json
  def index
    @musicreleases = Musicrelease.all
  end

  # GET /musicreleases/1 or /musicreleases/1.json
  def show
  end

  # GET /musicreleases/new
  def new
    @musicrelease = Musicrelease.new
  end
  def addasong
    @musicrelease.songs.new
    render :edit
  end

  # GET /musicreleases/1/edit
  def edit
  end

  # POST /musicreleases or /musicreleases.json
  def create
    @musicrelease = Musicrelease.new(musicrelease_params)

    respond_to do |format|
      if @musicrelease.save
        format.html { redirect_to @musicrelease, notice: "Musicrelease was successfully created." }
        format.json { render :show, status: :created, location: @musicrelease }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @musicrelease.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /musicreleases/1 or /musicreleases/1.json
  def update
    respond_to do |format|
      if @musicrelease.update(musicrelease_params)
        format.html { redirect_to @musicrelease, notice: "Musicrelease was successfully updated.", status: :see_other }
        format.json { render :show, status: :ok, location: @musicrelease }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @musicrelease.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /musicreleases/1 or /musicreleases/1.json
  def destroy
    @musicrelease.destroy!

    respond_to do |format|
      format.html { redirect_to musicreleases_path, notice: "Musicrelease was successfully destroyed.", status: :see_other }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_musicrelease
      @musicrelease = Musicrelease.find(params.expect(:id))
    end

    # Only allow a list of trusted parameters through.
    def musicrelease_params
      params.expect(musicrelease: [ :title, :category, :content, :pic, :songs_attributes => {} ])
    end
end
