# 自分の得意な言語で
# Let's チャレンジ！！
input_line = gets
array = input_line.split(" ")
N = array[0].to_i
M = array[1].to_i

for i in 1..M
    line = gets.to_i
    if line < N
        line = N
        put 0
    elsif (line % N).to_f > (N / 2).to_f
        line = (line / N) * N + N
        puts 1
    elsif  (line % N).to_f  (N / 2).to_f
        line = (line / N) * N
        puts 2
    end
    puts line
end
