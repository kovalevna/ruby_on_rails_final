# frozen_string_literal: true

class Record < ApplicationRecord
  class << self
    def create_record(usr, t1, t2, score, date)
      create(user: usr, team1: t1, team2: t2, score: score, date: date)
    end
  end
end
