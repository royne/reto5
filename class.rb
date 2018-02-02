class Question
  attr_accessor :file, :questions

  def initialize(file)
    @file = file
    @questions
    questions_user
  end

  def questions_user
    @questions = Array.new
    control = 0
    File.foreach(@file) do |line|
      line == "\n" ? control = 0 : control +=1
      control == 1 ? @questions << {pre: line} : @questions << {res: line}
    end
    @questions.delete({res: "\n"})
    return @questions
  end
end
