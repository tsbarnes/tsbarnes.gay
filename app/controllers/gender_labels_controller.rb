class GenderLabelsController < ApplicationController
  before_action :set_gender_label, only: %i[ show edit update destroy ]

  # GET /gender_labels or /gender_labels.json
  def index
    @gender_labels = GenderLabel.all
  end

  # GET /gender_labels/1 or /gender_labels/1.json
  def show
  end

  # GET /gender_labels/new
  def new
    @gender_label = GenderLabel.new
  end

  # GET /gender_labels/1/edit
  def edit
  end

  # POST /gender_labels or /gender_labels.json
  def create
    @gender_label = GenderLabel.new(gender_label_params)

    respond_to do |format|
      if @gender_label.save
        format.html { redirect_to gender_label_url(@gender_label), notice: "Gender label was successfully created." }
        format.json { render :show, status: :created, location: @gender_label }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @gender_label.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /gender_labels/1 or /gender_labels/1.json
  def update
    respond_to do |format|
      if @gender_label.update(gender_label_params)
        format.html { redirect_to gender_label_url(@gender_label), notice: "Gender label was successfully updated." }
        format.json { render :show, status: :ok, location: @gender_label }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @gender_label.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /gender_labels/1 or /gender_labels/1.json
  def destroy
    @gender_label.destroy

    respond_to do |format|
      format.html { redirect_to gender_labels_url, notice: "Gender label was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_gender_label
      @gender_label = GenderLabel.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def gender_label_params
      params.require(:gender_label).permit(:name)
    end
end
