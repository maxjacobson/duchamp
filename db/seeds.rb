# frozen_string_literal: true

words = %w(dog cow pig cat squirrel)

100.times do
  Report.create(
    name: "My #{words.sample} report",
    query: "select name, query from reports where name like '%#{words.sample}%'"
  )
end
