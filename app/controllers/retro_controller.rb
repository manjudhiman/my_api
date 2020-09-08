require 'pry'
class RetroController < ApplicationController

  def show
    id = params[:retro].to_i
    well =  Well.find_well(id)
    notwell = Notwell.find_notwell_comments(id)
    improve = Improve.find_improve_comments(id)
    continue = Continue.find_continue(id)

    b = { well: well , notwell: notwell, improve: improve, continue: continue}

    render json: b
  end

  def create
    id = params[:retro].to_i
    @retro = Retro.find_or_create_by(id: id)

    param = params.permit!.to_h
    # binding.pry
    unless param['well'].empty?
      well_array = []
      # binding.pry
      param['well'].map{ |i,j| well_array <<  j['value']}

      well_array.each do |comment|
        Well.find_or_create_by({comment: comment , retro_id: id})
      end
    end

    unless param['notwell'].empty?
      not_well_array = []
      param['notwell'].map{ |i,j| not_well_array <<  j['value']}

      not_well_array.each do |comment|
        Notwell.find_or_create_by({comment: comment, retro_id: id})
      end
    end

    unless param['continue'].empty?
      continue = []
      param['continue'].map{ |i,j| continue <<  j['value']}

      continue.each do |comment|
        Continue.find_or_create_by({comment: comment, retro_id: id})
      end
    end

    unless param['improve'].empty?
      improve = []
      param['improve'].map{ |i,j| improve <<  j['value']}

      improve.each do |comment|
        Improve.find_or_create_by({comment: comment, retro_id: id})
      end
    end
  end


  # creates a retro with id
  def create_retro
    t = Retro.find_or_create_by(id: params['retro'])

    render json: t
  end


  # Returns the retro_ids array
  def get_retro_details
    retro_details = Retro.find_retro_details
    puts retro_details.inspect

    render json: retro_details

  end

  def get_all_details
    id = params[:retro].to_i
    well =  Well.get_all_comments(id)
    notwell = Notwell.get_all_comments(id)
    improve = Improve.get_all_comments(id)
    continue = Continue.get_all_comments(id)

    l = [well.length, notwell.length, improve.length, continue.length].max

    arr = []

    for i in 0...l do
      h = {}
      h['well'] = well[i] if well[i]
      h['notwell'] = notwell[i] if notwell[i]
      h['improve'] = improve[i] if improve[i]
      h['continue'] = continue[i] if continue[i]
      arr << h
    end

    render json: arr
  end
end