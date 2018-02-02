require "./class.rb"

ques = Question.new('questions.txt')
pre = ques.questions

puts "Bienvenido a reto 5, Para jugar, solo ingresa el termino
correcto para cada una de las definiciones, Listo? Vamos!"
puts

while pre.empty? == false
  puts "Pregunta:"
  puts  pre[0].values
  res = pre[1].values.join("\n")
  print "Respuesta: "
  answer = gets

  if res == answer
    pre.delete_at(0)
    pre.delete_at(0)
    puts "\nMuy Bien!!!"
    puts
  else
    puts
    puts "No es correcto, intenta de nuevo!"
    puts
  end
end

puts "Felicitaciones!!! GANASTE el Reto5!"
