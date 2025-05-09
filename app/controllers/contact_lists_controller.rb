class ContactListsController < ApplicationController
  before_action :set_contact_list, only: %i[ show edit update destroy ]

  # GET /contact_lists or /contact_lists.json
  def index
    @contact_lists = ContactList.all
  end

  # GET /contact_lists/1 or /contact_lists/1.json
  def show
  end

  # GET /contact_lists/new
  def new
    @contact_list = ContactList.new
  end

  # GET /contact_lists/1/edit
  def edit
  end

  # POST /contact_lists or /contact_lists.json
  def create
    @contact_list = ContactList.new(contact_list_params)

    respond_to do |format|
      if @contact_list.save
        format.html { redirect_to @contact_list, notice: "Contact list was successfully created." }
        format.json { render :show, status: :created, location: @contact_list }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @contact_list.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /contact_lists/1 or /contact_lists/1.json
  def update
    respond_to do |format|
      if @contact_list.update(contact_list_params)
        format.html { redirect_to @contact_list, notice: "Contact list was successfully updated." }
        format.json { render :show, status: :ok, location: @contact_list }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @contact_list.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /contact_lists/1 or /contact_lists/1.json
  def destroy
    @contact_list.destroy!

    respond_to do |format|
      format.html { redirect_to contact_lists_path, status: :see_other, notice: "Contact list was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_contact_list
      @contact_list = ContactList.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def contact_list_params
      params.require(:contact_list).permit(:name, :phone, :email)
    end
end
