class TriesController < ApplicationController
  # GET /tries
  # GET /tries.json
  def index
    @tries = Try.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @tries }
    end
  end

  # GET /tries/1
  # GET /tries/1.json
  def show
    @try = Try.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @try }
    end
  end

  # GET /tries/new
  # GET /tries/new.json
  def new
    @try = Try.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @try }
    end
  end

  # GET /tries/1/edit
  def edit
    @try = Try.find(params[:id])
  end

  # POST /tries
  # POST /tries.json
  def create
    @try = Try.new(params[:try])

    respond_to do |format|
      if @try.save
        format.html { redirect_to @try, notice: 'Try was successfully created.' }
        format.json { render json: @try, status: :created, location: @try }
      else
        format.html { render action: "new" }
        format.json { render json: @try.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /tries/1
  # PUT /tries/1.json
  def update
    @try = Try.find(params[:id])

    respond_to do |format|
      if @try.update_attributes(params[:try])
        format.html { redirect_to @try, notice: 'Try was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @try.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tries/1
  # DELETE /tries/1.json
  def destroy
    @try = Try.find(params[:id])
    @try.destroy

    respond_to do |format|
      format.html { redirect_to tries_url }
      format.json { head :no_content }
    end
  end
end
