class HerosController < ApplicationController
  before_action :set_hero, only: %i[ show edit update destroy ]

  # GET /heros or /heros.json
  def index
    @heros = Hero.all
  end

  # GET /heros/1 or /heros/1.json
  def show
  end

  # GET /heros/new
  def new
    @hero = Hero.new
  end

  # GET /heros/1/edit
  def edit
  end

  # POST /heros or /heros.json
  def create
    @hero = Hero.new(hero_params)

    respond_to do |format|
      if @hero.save
        format.html { redirect_to hero_url(@hero), notice: "Hero was successfully created." }
        format.json { render :show, status: :created, location: @hero }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @hero.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /heros/1 or /heros/1.json
  def update
    respond_to do |format|
      if @hero.update(hero_params)
        format.html { redirect_to hero_url(@hero), notice: "Hero was successfully updated." }
        format.json { render :show, status: :ok, location: @hero }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @hero.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /heros/1 or /heros/1.json
  def destroy
    @hero.destroy

    respond_to do |format|
      format.html { redirect_to heros_url, notice: "Hero was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_hero
      @hero = Hero.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def hero_params
      params.require(:hero).permit(:name, :remote_image, :primary_attribute, :attack_type, :roles)
    end
end
