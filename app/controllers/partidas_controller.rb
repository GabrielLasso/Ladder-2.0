class PartidasController < ApplicationController
  before_action :set_partida, only: [:show, :edit, :update, :destroy]

  # GET /partidas
  # GET /partidas.json
  def index
    @partidas = Partida.all
  end

  # GET /partidas/1
  # GET /partidas/1.json
  def show
  end

  # GET /partidas/new
  def new
    @partida = Partida.new
  end

  # GET /partidas/1/edit
  def edit
      if !current_user.admin?
          redirect_to partidas_path
      end
  end

  # POST /partidas
  # POST /partidas.json
  def create
    puts partida_params
    puts partida_params
    puts partida_params
    puts partida_params
    p1 = current_user
    p2 = User.where("username = ?", partida_params[:player2])[0]
    winp1 = partida_params[:winP1]
    winp2 = partida_params[:winP2]
    game = partida_params[:game]
    @partida = Partida.new(player1: p1, player2: p2, winP1: winp1, winP2: winp2, game: game)

    respond_to do |format|
      if @partida.save
        @partida.update_elos
        format.html { redirect_to @partida, notice: 'Partida was successfully created.' }
        format.json { render :show, status: :created, location: @partida }
      else
        format.html { render :new }
        format.json { render json: @partida.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /partidas/1
  # PATCH/PUT /partidas/1.json
  def update
      if !current_user.admin?
          redirect_to partidas_path
          return
      else
    respond_to do |format|
      if @partida.update(partida_params)
        format.html { redirect_to @partida, notice: 'Partida was successfully updated.' }
        format.json { render :show, status: :ok, location: @partida }
      else
        format.html { render :edit }
        format.json { render json: @partida.errors, status: :unprocessable_entity }
      end
    end
  end
  end

  # DELETE /partidas/1
  # DELETE /partidas/1.json
  def destroy
      if !current_user.admin?
          redirect_to partidas_path
      else
    @partida.destroy
    respond_to do |format|
      format.html { redirect_to partidas_url, notice: 'Partida was successfully destroyed.' }
      format.json { head :no_content }
    end
  end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_partida
      @partida = Partida.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def partida_params
      params.require(:partida).permit(:winP1, :winP2, :player2, :game)
    end
end
