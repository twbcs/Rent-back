module ToursHelper
  def tour_model(tour)
    case tour
    when 1
      "行程規劃 / 一日行程"
    when 2
      "行程規劃 / 二日行程"
    when 3
      "行程規劃 / 三日行程"
    when 4
      "行程規劃 / 四日行程"
    when 5
      "行程規劃 / 五日行程(以上)"
    end
  end
end
