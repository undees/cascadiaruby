$: << File.expand_path(File.dirname(__FILE__))

require 'minitest/autorun'
require 'minitest/spec'
require 'task_parchment'

describe TaskParchment::Parser do
  before { @parser = TaskParchment::Parser.new }

  it 'parses a task' do
    input    = "- Task @tagged\n"
    expected = {:desc=>"Task ", :tags=>[{:tag => "tagged"}]}

    @parser.task_line.parse(input).must_equal expected
  end

  # ...

  it 'parses a terrible plan into a tree' do
    # ...

    input = <<HERE
- Invent my own crufty data format
  - Start with a good format @done
  - Ruin it @badidea @done
- ???
- Profit!
HERE

    expected =
      [{:desc=>"Invent my own crufty data format",
         :subtasks=>
         [{:desc=>"Start with a good format ",
            :tags=>[{:tag=>"done"}],
            :subtasks=>[]},
          {:desc=>"Ruin it ",
            :tags=>[{:tag=>"badidea"}, {:tag=>"done"}],
            :subtasks=>[]}]},
       {:desc=>"???", :subtasks=>[]},
       {:desc=>"Profit!", :subtasks=>[]}]

    @parser.parse(input).must_equal expected
  end
end
