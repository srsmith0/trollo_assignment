boards = 3.times do Board.create(name: Faker::GreekPhilosophers.name)
end

lists = 15.times do |make|
  List.create(name: Faker::Hipster.word, board_id: (make % 15/boards.size) +1)
end

tasks = 25.times do |make|
  Task.create(name: Faker::Hipster.words(number: 3), list_id: (make % 25/lists.size) + 1)
end