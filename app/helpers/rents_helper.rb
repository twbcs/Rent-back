module RentsHelper
  def rent_model(cartype,period)
    case period
    when 1
      case cartype
      when 1
        "長租車 / 轎車"
      when 2
        "長租車 / 貨車"
      when 3
        "長租車 / 休旅車"
      end
    when 2
      case cartype
      when 1
      "短租車 / 轎車"
      when 2
      "短租車 / 貨車"
      when 3
      "短租車 / 休旅車"
      end
    end
  end
end
