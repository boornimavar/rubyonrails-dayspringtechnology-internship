class MusiclabelsController < ApplicationController
  before_action :set_musiclabel, only: %i[ show edit update destroy ]

  # GET /musiclabels or /musiclabels.json
  def index
    @musiclabels = Musiclabel.all
  end

  # GET /musiclabels/1 or /musiclabels/1.json
  def show
  end

  # GET /musiclabels/new
  def new
    @musiclabel = Musiclabel.new
  end

  # GET /musiclabels/1/edit
  def edit
  end

  # POST /musiclabels or /musiclabels.json
  def create
    @musiclabel = Musiclabel.new(musiclabel_params)

    respond_to do |format|
      if @musiclabel.save
        format.html { redirect_to @musiclabel, notice: "Musiclabel was successfully created." }
        format.json { render :show, status: :created, location: @musiclabel }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @musiclabel.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /musiclabels/1 or /musiclabels/1.json
  def update
    respond_to do |format|
      if @musiclabel.update(musiclabel_params)
        format.html { redirect_to @musiclabel, notice: "Musiclabel was successfully updated.", status: :see_other }
        format.json { render :show, status: :ok, location: @musiclabel }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @musiclabel.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /musiclabels/1 or /musiclabels/1.json
  def destroy
    @musiclabel.destroy!

    respond_to do |format|
      format.html { redirect_to musiclabels_path, notice: "Musiclabel was successfully destroyed.", status: :see_other }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_musiclabel
      @musiclabel = Musiclabel.find(params.expect(:id))
    end

    # Only allow a list of trusted parameters through.
    def musiclabel_params
      params.expect(musiclabel: [ :name, :email, :year ])
    end
end
