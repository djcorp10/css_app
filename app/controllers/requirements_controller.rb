class RequirementsController < ApplicationController
  def index
    @requirements = Requirement.all

    respond_to do |format|
      format.html 
      format.json { render json: @requirements }
    end
  end

  def show
    @requirement = Requirement.find(params[:id])

    respond_to do |format|
      format.html 
      format.json { render json: @requirement }
    end
  end

  def new
    @requirement = Requirement.new

    respond_to do |format|
      format.html 
      format.json { render json: @requirement }
    end
  end

  def edit
    @requirement = Requirement.find(params[:id])
  end

  def create
    @requirement = Requirement.new(params[:requirement])

    respond_to do |format|
      if @requirement.save
        format.html { redirect_to @requirement, notice: 'Requirement was successfully created.' }
        format.json { render json: @requirement, status: :created, location: @requirement }
      else
        format.html { render action: "new" }
        format.json { render json: @requirement.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    @requirement = Requirement.find(params[:id])

    respond_to do |format|
      if @requirement.update_attributes(params[:requirement])
        format.html { redirect_to @requirement, notice: 'Requirement was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @requirement.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @requirement = Requirement.find(params[:id])
    @requirement.destroy

    respond_to do |format|
      format.html { redirect_to requirements_url }
      format.json { head :no_content }
    end
  end
end