require 'parslet'

module TaskParchment
  class Parser < Parslet::Parser
    # Example:
    #
    # - This is a task @tag
    #
    rule(:task_line) {
      begin_task              >>
        description.as(:desc) >>
        tags.maybe            >>
        newline
    }

    # ...

    rule(:begin_task)  { str('- ') }
    rule(:description) { desc_char.repeat(1) }
    rule(:desc_char)   { match('[^@\n]') }
    rule(:newline)     { str("\n") }

    rule(:tags) { tag.repeat(1).as(:tags) }
    rule(:tag)  {
      begin_tag                   >>
      tag_char.repeat(1).as(:tag) >>
      space.maybe
    }

    rule(:begin_tag)   { str('@') }
    rule(:tag_char)    { match('[^@ \n]') }
    rule(:space)       { str(' ') }

    def task_line_indented_at(indent)
      space.repeat(indent, indent) >> task_line
    end

    def task_indented_at(indent)
      parser   = task_line_indented_at(indent)
      parser >>= task_indented_at(indent + 2).
        repeat(0).as(:subtasks) unless indent > 20
      parser
    end

    rule(:list) { task_indented_at(0).repeat(0) }
    root(:list)
  end
end
