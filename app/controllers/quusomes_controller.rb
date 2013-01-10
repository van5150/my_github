class QuusomesController < ApplicationController
  # GET /quusomes
  # GET /quusomes.json
  def index
    @quusomes = Quusome.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @quusomes }
    end
  end

  # GET /quusomes/1
  # GET /quusomes/1.json
  def show
    @quusome = Quusome.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @quusome }
    end
  end

  # GET /quusomes/new
  # GET /quusomes/new.json
  def new
    @quusome = Quusome.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @quusome }
    end
  end

  # GET /quusomes/1/edit
  def edit
    @quusome = Quusome.find(params[:id])
  end

  # POST /quusomes
  # POST /quusomes.json
  def create
    @quusome = Quusome.new(params[:quusome])

    respond_to do |format|
      if @quusome.save
        format.html { redirect_to @quusome, notice: 'Quusome was successfully created.' }
        format.json { render json: @quusome, status: :created, location: @quusome }
      else
        format.html { render action: "new" }
        format.json { render json: @quusome.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /quusomes/1
  # PUT /quusomes/1.json
  def update
    @quusome = Quusome.find(params[:id])

    respond_to do |format|
      if @quusome.update_attributes(params[:quusome])
        format.html { redirect_to @quusome, notice: 'Quusome was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @quusome.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /quusomes/1
  # DELETE /quusomes/1.json
  def destroy
    @quusome = Quusome.find(params[:id])
    @quusome.destroy

    respond_to do |format|
      format.html { redirect_to quusomes_url }
      format.json { head :no_content }
    end
  end
end
