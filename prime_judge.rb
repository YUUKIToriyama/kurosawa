#!/usr/bin/ruby
#入力された数が素数であることを確かめるスクリプト
#実行例 $echo 8191 | ./5_scpirt.rb

$val = $stdin.read.chomp.to_i

#エラトステネスの篩を実行するメソッド「prime_judgment」を定義。
def prime_judgment num
	if ($val % num == 0)
		puts $val.to_s + " can be devided by " + num.to_s + "\n" + $val.to_s + " is not a prime number."
		exit
	else
		puts $val.to_s + " cannot be devided by " + num.to_s
	end
end

#whileループを使って「prime_judgment」を回す。
if ($val % 2 == 0)
	puts val.to_s + " is not a prime number."
else
	puts $val.to_s + " cannot be devided by " + "2"
	i = 3
	while (i <= $val.quo(2))
		prime_judgment(i)
		i = i + 2
	end
end

puts $val.to_s + " is a prime number."
