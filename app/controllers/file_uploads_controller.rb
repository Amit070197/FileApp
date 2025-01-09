class FileUploadsController < ApplicationController
  before_action :set_file_upload, only: %i[ show edit update destroy ]

  def index
    @file_uploads = FileUpload.all
  end

  def show
  end

  def new
    @file_upload = FileUpload.new
  end

  def edit
  end

  def create
    @file_upload = FileUpload.new(file_upload_params)

    respond_to do |format|
      if @file_upload.save
        format.html { redirect_to @file_upload, notice: "File upload was successfully created." }
        format.json { render :show, status: :created, location: @file_upload }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @file_upload.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @file_upload.update(file_upload_params)
        format.html { redirect_to @file_upload, notice: "File upload was successfully updated." }
        format.json { render :show, status: :ok, location: @file_upload }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @file_upload.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @file_upload.destroy

    respond_to do |format|
      format.html { redirect_to file_uploads_path, status: :see_other, notice: "File upload was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    def set_file_upload
      @file_upload = FileUpload.find(params[:id])
    end

    def file_upload_params
      params.require(:file_upload).permit(:title, :description)
    end
end
