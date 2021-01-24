# frozen_string_literal: true

class FootballController < ApplicationController
  def input; end

  def output
    if params[:t1].present?
      usr = current_user.username
      t1 = params[:t1]
      t2 = params[:t2]
      s = "#{params[:s1]}:#{params[:s2]}"
      date = params[:date]
      Record.create_record(usr, t1, t2, s, date)
    end
    @for_output = []
    Record.where(user: current_user.username).each do |rec|
      @for_output << [rec.team1, rec.team2, rec.score, rec.date]
    end
  end
end
