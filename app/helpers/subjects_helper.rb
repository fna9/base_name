module SubjectsHelper
  def type_of_reporting(number)
    case number
    when 0
      'Экзамен'  
    when 1
      'Дифференциальный зачет'
    when 2
      'Зачет'
    end
  end

end
