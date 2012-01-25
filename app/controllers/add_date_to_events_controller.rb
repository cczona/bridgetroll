class AddDateToEventsController < ApplicationController
  # GET /add_date_to_events
  # GET /add_date_to_events.json
  def index
    @add_date_to_events = AddDateToEvent.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @add_date_to_events }
    end
  end

  # GET /add_date_to_events/1
  # GET /add_date_to_events/1.json
  def show
    @add_date_to_event = AddDateToEvent.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @add_date_to_event }
    end
  end

  # GET /add_date_to_events/new
  # GET /add_date_to_events/new.json
  def new
    @add_date_to_event = AddDateToEvent.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @add_date_to_event }
    end
  end

  # GET /add_date_to_events/1/edit
  def edit
    @add_date_to_event = AddDateToEvent.find(params[:id])
  end

  # POST /add_date_to_events
  # POST /add_date_to_events.json
  def create
    @add_date_to_event = AddDateToEvent.new(params[:add_date_to_event])

    respond_to do |format|
      if @add_date_to_event.save
        format.html { redirect_to @add_date_to_event, notice: 'Add date to event was successfully created.' }
        format.json { render json: @add_date_to_event, status: :created, location: @add_date_to_event }
      else
        format.html { render action: "new" }
        format.json { render json: @add_date_to_event.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /add_date_to_events/1
  # PUT /add_date_to_events/1.json
  def update
    @add_date_to_event = AddDateToEvent.find(params[:id])

    respond_to do |format|
      if @add_date_to_event.update_attributes(params[:add_date_to_event])
        format.html { redirect_to @add_date_to_event, notice: 'Add date to event was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @add_date_to_event.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /add_date_to_events/1
  # DELETE /add_date_to_events/1.json
  def destroy
    @add_date_to_event = AddDateToEvent.find(params[:id])
    @add_date_to_event.destroy

    respond_to do |format|
      format.html { redirect_to add_date_to_events_url }
      format.json { head :ok }
    end
  end
end
