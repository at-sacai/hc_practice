def show_golf_score_name(par, score)
  score_names = {
    5 => { -4 => 'コンドル', -3 => 'アルバトロス', -2 => 'イーグル', -1 => 'バーディ', 0 => 'パー', 1 => 'ボギー', 2 => '2ボギー', 3 => '3ボギー' },
    4 => { -3 => 'ホールインワン', -2 => 'イーグル', -1 => 'バーディ', 0 => 'パー', 1 => 'ボギー', 2 => '2ボギー', 3 => '3ボギー', 4 => '4ボギー' },
    3 => { -2 => 'ホールインワン', -1 => 'バーディ', 0 => 'パー', 1 => 'ボギー', 2 => '2ボギー', 3 => '3ボギー' }
  }

  golf_score = score - par
  if score_names[par] && score_names[par].has_key?(golf_score)
    score_names[par][golf_score]
  end
end

lines = []
2.times do
  lines << gets.chomp
end
# 15行目から17行目は以下に変更可能。以下であれば、本ファイルを実行するだけで結果の出力が可能。（実行時の「cat case_1.txt |」が不要。）
# File.foreach('case_1.txt') do |line|
#   line_content = line.chomp
#   lines.push(line_content)
# end

par_arr = lines[0].split(',')
score_arr = lines[1].split(',')

result_scores = []
par_arr.zip(score_arr) { |par_value, score_value|
  result_scores << show_golf_score_name(par_value.to_i, score_value.to_i)
}

print result_scores.join(',')
