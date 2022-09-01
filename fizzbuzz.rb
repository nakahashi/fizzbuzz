def fizzbuzz(number)
  table = [
    {value: 15, word: "fizzbuzz"},
    {value: 3,  word: "fizz"},
    {value: 5,  word: "buzz"}
  ]

  matched = table.find{ |item| (number % item[:value]) == 0 }
  matched&.fetch(:word) || number
end

(1..30).each { |i| p fizzbuzz(i) }


# 唐突にfizzbuzz。数値と文字の対応をロジックから分離を盛り込んでみました
# findメソッドが「最初にヒットした要素を返す」仕様なことを利用しています

