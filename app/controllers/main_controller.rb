class MainController < ApplicationController
  before_action :set_tamirhane, only: [:show, :kayit_ekle, :kayit_olustur, :edit, :update, :destroy]

  def home
  	@tamirhanes = Tamirhane.all
  end

  def search
  	@tamirhanes = Tamirhane.where("arac ->>'plaka' like ?", "%#{params[:search][:plaka]}%")
    render 'main/home'
  end

  def show
  end

  def kayit_ekle
    render "main/_#{params[:kayit][:kayit_tipi]}_form"
  end

  def kayit_olustur
    case params[:type]
      when "motor"
        @tamirhane.motor = params[:motor]
      when "elektrik"
        @tamirhane.elektrik = params[:elektrik]
      when "lastik"
        @tamirhane.lastik = params[:lastik]
      when "kaborta"
        @tamirhane.kaborta = params[:kaborta]
      else
        puts "gecersiz parametre"
    end
    @tamirhane.save
    redirect_to tamirhane_path(@tamirhane)
  end

  def new
    @tamirhane = Tamirhane.new
  end

  def create
    @tamirhane = Tamirhane.new(tamirhane_params)
    @tamirhane.arac = params[:arac]
    @tamirhane.save
    redirect_to tamirhanes_path
  end

  def edit
    
  end

  def update
    @tamirhane.update(tamirhane_params)
    redirect_to tamirhane_path(@tamirhane)
  end

  def destroy
    @tamirhane.delete
    redirect_to '/'
  end

  private

  def set_tamirhane
    @tamirhane = Tamirhane.find(params[:id])
  end

  def tamirhane_params
    params.require(:tamirhane).permit(:status, :usta)
  end
end
