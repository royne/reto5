require "./class.rb"

ques = Question.new('questions.txt')
pre = ques.questions

message = View.new
message.greeting

while pre.empty? == false
  message.preg
  puts  pre[0].values
  res = pre[1].values.join("\n")
  message.resp
  answer = gets

  if res == answer.downcase
    pre.delete_at(0)
    pre.delete_at(0)
    message.ok
  else
    message.no_ok
  end
end

message.winer
