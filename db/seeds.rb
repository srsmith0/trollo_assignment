
  board = Board.create(name: Faker::GreekPhilosophers.name)

  boards = 5.times(board)

  list = List.create(name: Faker::Hipster.word, board_id: board ?)

  lists = 3.times(list)

  task = Task.create(name: Faker::Hipster.words(number: 3), list_id: current_list?)

