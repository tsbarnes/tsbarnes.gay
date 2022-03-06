class SexualityLabelsController < ApplicationController
  before_action :set_sexuality_label, only: %i[ show edit update destroy ]

  # GET /sexuality_labels or /sexuality_labels.json
  def index
    @sexuality_labels = SexualityLabel.all
  end

  # GET /sexuality_labels/1 or /sexuality_labels/1.json
  def show
  end

  # GET /sexuality_labels/new
  def new
    @sexuality_label = SexualityLabel.new
  end

  # GET /sexuality_labels/1/edit
  def edit
  end

  # POST /sexuality_labels or /sexuality_labels.json
  def create
    @sexuality_label = SexualityLabel.new(sexuality_label_params)

    respond_to do |format|
      if @sexuality_label.save
        format.html { redirect_to sexuality_label_url(@sexuality_label), notice: "Sexuality label was successfully created." }
        format.json { render :show, status: :created, location: @sexuality_label }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @sexuality_label.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /sexuality_labels/1 or /sexuality_labels/1.json
  def update
    respond_to do |format|
      if @sexuality_label.update(sexuality_label_params)
        format.html { redirect_to sexuality_label_url(@sexuality_label), notice: "Sexuality label was successfully updated." }
        format.json { render :show, status: :ok, location: @sexuality_label }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @sexuality_label.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /sexuality_labels/1 or /sexuality_labels/1.json
  def destroy
    @sexuality_label.destroy

    respond_to do |format|
      format.html { redirect_to sexuality_labels_url, notice: "Sexuality label was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_sexuality_label
      @sexuality_label = SexualityLabel.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def sexuality_label_params
      params.require(:sexuality_label).permit(:name)
    end
end
