class ResourcesController < ApplicationController
  before_action :set_resource, only: %i[ show edit update destroy ]

  # GET /resources or /resources.json
  def index
    @local_resources = LocalResource.near(current_user.zip)
    @geocoded_data = []
    @local_resources.each_with_index { |r, i| @geocoded_data << {latitude: r.latitude, longitude: r.longitude, label: "#{i+1} #{r.name}", tooltip: r.address} }
    @resources = Resource.all
  end

  # # GET /resources/1 or /resources/1.json
  # def show
  # end

  # # GET /resources/new
  # def new
  #   @resource = Resource.new
  # end

  # # GET /resources/1/edit
  # def edit
  # end

  # # POST /resources or /resources.json
  # def create
  #   @resource = Resource.new(resource_params)

  #   respond_to do |format|
  #     if @resource.save
  #       format.html { redirect_to resource_url(@resource), notice: "Resource was successfully created." }
  #       format.json { render :show, status: :created, location: @resource }
  #     else
  #       format.html { render :new, status: :unprocessable_entity }
  #       format.json { render json: @resource.errors, status: :unprocessable_entity }
  #     end
  #   end
  # end

  # # PATCH/PUT /resources/1 or /resources/1.json
  # def update
  #   respond_to do |format|
  #     if @resource.update(resource_params)
  #       format.html { redirect_to resource_url(@resource), notice: "Resource was successfully updated." }
  #       format.json { render :show, status: :ok, location: @resource }
  #     else
  #       format.html { render :edit, status: :unprocessable_entity }
  #       format.json { render json: @resource.errors, status: :unprocessable_entity }
  #     end
  #   end
  # end

  # # DELETE /resources/1 or /resources/1.json
  # def destroy
  #   @resource.destroy

  #   respond_to do |format|
  #     format.html { redirect_to resources_url, notice: "Resource was successfully destroyed." }
  #     format.json { head :no_content }
  #   end
  # end

  # private
  #   # Use callbacks to share common setup or constraints between actions.
  #   def set_resource
  #     @resource = Resource.find(params[:id])
  #   end

  #   # Only allow a list of trusted parameters through.
  #   def resource_params
  #     params.fetch(:resource, {})
  #   end
end
