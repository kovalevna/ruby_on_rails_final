class CalcController < ApplicationController
  def input
  end

  def output
    @for_output = [['Step', 'Value', "color:black"]]
    begin
      result = Integer(params[:num], exception: false)
      .tap { |x| @for_output << ['Entered value', x.to_s, "color:pink"] }
      .to_s(2)
      .tap { |x| @for_output << ['Binary translation', x, "color:pink"] }
      .reverse
      .tap { |x| @for_output << ['Reversion', x, "color:pink"] }
      .to_i(2)
      .tap { |x| @for_output << ['Result', x.to_s, "color:pink"] }
    rescue
      @error_text = 'Ну ты индеец, я балдею!'
    end
  end
end
