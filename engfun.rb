# Приветствие
puts "Hello my young friend! What's your name?"
name = gets.strip

puts "Nice to meet you, #{name}. If you want to play a little bit, press 1. If not, press 2"
# первый ответ юзера
userResponse = gets.to_i

# Хэш с данными - Вопросы и ответы
data = {
"My friend and I ____free today" => "Are",
"She___a teacher in our school" => "Is",
"We _ not ready for this lesson" => "Are",
"Our parents____funny" => "Are",
"My brother____ at school now" => "Is",
"This dog____ angry " =>"Is",
"These boxes_____for presents" => "Are",
"The weather_____so rainy in spring" => "Is",
"He ____ good at tennis" =>"Is",
"I____ interested in sport" => "Am",
}
# Если юзер согласен играть

if userResponse == 1
puts "Complete the sentence with the verb to be"
# Перемешевание хэша и вывод ключа (вопроса)
data.keys.shuffle.each do |question|
  puts "#{question}"

  user_answer = gets.strip.downcase
  if user_answer == data[question].downcase
    puts "Handsome, the right answer!!!"
  else
    puts "Wrong, be careful, my friend!"
  end
end

# Действия если юзер не захочет играть или введет неправильный ответ
elsif userResponse == 2
  puts "It's a pity that you don't want to play."

else
puts "You need to enter 1 or 2. Other numbers are not suitable."
end
puts "See you soon."
