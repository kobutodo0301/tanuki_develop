class TanukiSadWordsController < ApplicationController
  before_action :set_tanuki_sad_word, only: [:show, :edit, :update, :destroy]

  # GET /tanuki_sad_words
  # GET /tanuki_sad_words.json
  def index
    @tanuki_sad_words = TanukiSadWord.all
  end

  # GET /tanuki_sad_words/1
  # GET /tanuki_sad_words/1.json
  def show
  end

  # GET /tanuki_sad_words/new
  def new
    @tanuki_sad_word = TanukiSadWord.new
  end

  # GET /tanuki_sad_words/1/edit
  def edit
  end

  # POST /tanuki_sad_words
  # POST /tanuki_sad_words.json
  def create
    @tanuki_sad_word = TanukiSadWord.new(tanuki_sad_word_params)

    respond_to do |format|
      if @tanuki_sad_word.save
        format.html { redirect_to @tanuki_sad_word, notice: 'Tanuki sad word was successfully created.' }
        format.json { render :show, status: :created, location: @tanuki_sad_word }
      else
        format.html { render :new }
        format.json { render json: @tanuki_sad_word.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tanuki_sad_words/1
  # PATCH/PUT /tanuki_sad_words/1.json
  def update
    respond_to do |format|
      if @tanuki_sad_word.update(tanuki_sad_word_params)
        format.html { redirect_to @tanuki_sad_word, notice: 'Tanuki sad word was successfully updated.' }
        format.json { render :show, status: :ok, location: @tanuki_sad_word }
      else
        format.html { render :edit }
        format.json { render json: @tanuki_sad_word.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tanuki_sad_words/1
  # DELETE /tanuki_sad_words/1.json
  def destroy
    @tanuki_sad_word.destroy
    respond_to do |format|
      format.html { redirect_to tanuki_sad_words_url, notice: 'Tanuki sad word was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tanuki_sad_word
      @tanuki_sad_word = TanukiSadWord.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def tanuki_sad_word_params
      params.require(:tanuki_sad_word).permit(:sad_word, :user_id)
    end
end
