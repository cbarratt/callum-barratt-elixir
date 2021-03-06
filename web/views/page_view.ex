defmodule Callum.PageView do
  use Callum.Web, :view
  use Timex

  def to_lbs(weight) do
    Float.ceil(elem(Float.parse(weight), 0) * 2.20462, 2)
  end

  def calories(intake) do
    date = DateTime.today |> Timex.format!("%d %B %Y", :strftime)

    if intake.logged_date == date do
      intake.calories
    else
      "0"
    end
  end
end
