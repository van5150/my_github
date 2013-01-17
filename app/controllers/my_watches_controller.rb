class MyWatchesController < ApplicationController
  # GET /my_watches
  # GET /my_watches.json

  layout "application"

  def index
    @my_watches = MyWatch.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @my_watches }
    end
  end

  # GET /my_watches/1
  # GET /my_watches/1.json
  def show
    @my_watch = MyWatch.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @my_watch }
    end
  end

  # GET /my_watches/new
  # GET /my_watches/new.json
  def new
    @my_watch = MyWatch.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @my_watch }
    end
  end

  # GET /my_watches/1/edit
  def edit
    @my_watch = MyWatch.find(params[:id])
  end

  # POST /my_watches
  # POST /my_watches.json
  def create
    @my_watch = MyWatch.new(params[:my_watch])

    respond_to do |format|
      if @my_watch.save
        format.html { redirect_to @my_watch, notice: 'My watch was successfully created.' }
        format.json { render json: @my_watch, status: :created, location: @my_watch }
      else
        format.html { render action: "new" }
        format.json { render json: @my_watch.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /my_watches/1
  # PUT /my_watches/1.json
  def update
    @my_watch = MyWatch.find(params[:id])

    respond_to do |format|
      if @my_watch.update_attributes(params[:my_watch])
        format.html { redirect_to @my_watch, notice: 'My watch was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @my_watch.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /my_watches/1
  # DELETE /my_watches/1.json
  def destroy
    @my_watch = MyWatch.find(params[:id])
    @my_watch.destroy

    respond_to do |format|
      format.html { redirect_to my_watches_url }
      format.json { head :no_content }
    end
  end
end
