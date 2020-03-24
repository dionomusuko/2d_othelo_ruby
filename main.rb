array = gets.split(//)
othello = ["b", "w"]
count = 1
# b w   奇数 b 偶数 w
# LLRLRLR  bw  bbb wbbb wbbbb wwbbbb wwbbbbb wwwbbbbb wwwbbbbbb
# RRLL bw  bbb bbbw bbbbw wwwwww
array.delete("\n")

array.each do |ary|
  if ary == "L"
    if count % 2 != 0
      othello.unshift("b") # 先頭に要素を追加
    else
      othello.unshift("w")
    end
  else
    if count % 2 != 0
      othello.push("b")  # 先頭に要素を追加
    else
      othello.push("w")
    end
  end
  if othello[0] == othello.last
    othello.fill(othello.last)
  end
  count+=1
end

b_ans = othello.count("b")
w_ans = othello.count("w")

printf("%d %d\n", b_ans, w_ans)

