module ArticlesHelper
  def article_model(article)
    case article
    when 1
      "主題住宿"
    when 2
      "交通資訊"
    when 3
      "租車須知"
    when 4
      "旅遊包車"
    when 5
      "商務洽公"
    when 6
      "結婚禮車"
    when 7
      "新舊車買賣"
    when 8
      "汽車保養"
    end
  end
end
