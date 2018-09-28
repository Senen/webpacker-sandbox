module Vue
  class ListItemsController < ApplicationController
    layout 'vue'
    before_action :set_list_item, only: [:show, :edit, :update, :destroy]
    helper_method :pagination_params

    # GET /vue/list_items
    # GET /vue/list_items.json
    def index
      if params[:search]
        @list_items = ListItem.where("title like ?", "%#{params[:search]}%")
      else
        @list_items = ListItem.all
      end
      @list_items = @list_items.paginate(pagination_params)
                            .order("position ASC")
    end

    # GET /vue/list_items/1
    # GET /vue/list_items/1.json
    def show
    end

    # GET /vue/list_items/new
    def new
      @list_item = ListItem.new
    end

    # GET /vue/list_items/1/edit
    def edit
    end

    # POST /vue/list_items
    # POST /vue/list_items.json
    def create
      @list_item = ListItem.new(list_item_params)

      respond_to do |format|
        if @list_item.save
          format.html { redirect_to [:vue, @list_item], notice: 'List item was successfully created.' }
          format.json { render :show, status: :created, location: @list_item }
        else
          format.html { render :new }
          format.json { render json: @list_item.errors, status: :unprocessable_entity }
        end
      end
    end

    # PATCH/PUT /vue/list_items/1
    # PATCH/PUT /vue/list_items/1.json
    def update
      respond_to do |format|
        if @list_item.update(list_item_params)
          format.html { redirect_to [:vue, @list_item], notice: 'List item was successfully updated.' }
          format.json { render :show, status: :ok, location: @list_item }
        else
          format.html { render :edit }
          format.json { render json: @list_item.errors, status: :unprocessable_entity }
        end
      end
    end

    # DELETE /vue/list_items/1
    # DELETE /vue/list_items/1.json
    def destroy
      @list_item.destroy
      respond_to do |format|
        format.html { redirect_to vue_list_items_url, notice: 'List item was successfully destroyed.' }
        format.json { head :no_content }
      end
    end

    private

      # Use callbacks to share common setup or constraints between actions.
      def set_list_item
        @list_item = ListItem.find(params[:id])
      end

      # Never trust parameters from the scary internet, only allow the white list through.
      def list_item_params
        params.require(:list_item).permit(:title, :description, :done_at, :position)
      end
  end
end
