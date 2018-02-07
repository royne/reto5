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

class View
  def greeting
    puts "======================="
    puts "  Bienvenido a reto 5"
    puts "======================="
    puts "Para jugar, solo ingresa el termino
para cada una de las definiciones, Listo? Vamos!"
    puts
  end

  def preg
    puts "Pregunta:"
  end

  def resp
    print "Respuesta: "
  end

  def ok
    puts "\nMuy Bien!!!"
    puts
  end

  def no_ok
    puts
    puts "No es correcto, intenta de nuevo!"
    puts
  end

  def winer
    puts "Felicitaciones!!! GANASTE el Reto5!"
  end
end
