class StatisticsController < ApplicationController
  before_action :set_statistic, only: [:show, :edit, :update, :destroy]

  # GET /statistics
  # GET /statistics.json
def index  
  
  @statistics = Statistic.all
  if params[:search]
    @statistics = Statistic.search(params[:search]).order("created_at DESC")
  else
    @statistics = Statistic.all.order('created_at DESC')
  end
end
  
def victimisation
  @statistics = Statistic.all
end

def initiatedcase
  @statistics = Statistic.all
end

def initiatedcourt
  @statistics = Statistic.all
end

def cjsw
  @statistics = Statistic.all
end

def clearedpolice
  @statistics = Statistic.all
end

def recordedpolice
  @statistics = Statistic.all
end

def domestic
  @statistics = Statistic.all
end

def seizures1996
  @statistics = Statistic.all
end

def seizures2010
  @statistics = Statistic.all
end

def firearmscertificates
  @statistics = Statistic.all
end

def firearmsoffences
  @statistics = Statistic.all
end

def homicide
  @statistics = Statistic.all
end

def liquor
  @statistics = Statistic.all
end

def perception
  @statistics = Statistic.all
end

def policedata
  @statistics = Statistic.all
end

def prisonpop
  @statistics = Statistic.all
end

def racistincidents
  @statistics = Statistic.all
end

def reconvictions
  @statistics = Statistic.all
end

def sentencetype
  @statistics = Statistic.all
end

def sentencing
  @statistics = Statistic.all
end

def summary
  @statistics = Statistic.all
end

def types
  @statistics = Statistic.all
end

def volume
  @statistics = Statistic.all
end  
 
def import
	Statistic.import(params[:file])
	redirect_to statistics_path, notice: "Statistics imported."
end

  # GET /statistics/1
  # GET /statistics/1.json
  def show
  end

  # GET /statistics/new
  def new
    @statistic = Statistic.new
  end

  # GET /statistics/1/edit
  def edit
  end

  # POST /statistics
  # POST /statistics.json
  def create
    @statistic = Statistic.new(statistic_params)

    respond_to do |format|
      if @statistic.save
        format.html { redirect_to @statistic, notice: 'Statistic was successfully created.' }
        format.json { render :show, status: :created, location: @statistic }
      else
        format.html { render :new }
        format.json { render json: @statistic.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /statistics/1
  # PATCH/PUT /statistics/1.json
  def update
    respond_to do |format|
      if @statistic.update(statistic_params)
        format.html { redirect_to @statistic, notice: 'Statistic was successfully updated.' }
        format.json { render :show, status: :ok, location: @statistic }
      else
        format.html { render :edit }
        format.json { render json: @statistic.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /statistics/1
  # DELETE /statistics/1.json
  def destroy
    @statistic.destroy
    respond_to do |format|
      format.html { redirect_to statistics_url, notice: 'Statistic was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_statistic
      @statistic = Statistic.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def statistic_params
      params.require(:statistic).permit(:year, :number1, :number2, :number3, :number4, :number5, :number6, :number7, :number8, :name)
    end
end