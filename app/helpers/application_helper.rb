module ApplicationHelper
  # priorty marks if candidate belongs to a particular board
  def priority_marks
    1000000000
  end

  # This board will get priority marks to wbhse
  def priority_board
    "wbhse"
  end

  # calculating calculated_marks for rank calculation
  def calculate_marks(academic_record)
    marks = Hash.new
    academic_record.additional_subjects.each_with_index do |sub, index|
      marks[index] = sub.marks.to_i unless  sub.marks.blank?
    end
    sum_imp_marks = 0
    academic_record.main_subject_details.each do |sub|
      sum_imp_marks += sub.marks
    end
    marks = marks.sort {|x,y| y[1] <=> x[1]}.to_h
    array_marks = marks.values
    best4_marks = array_marks[0].to_i + array_marks[1].to_i + array_marks[2].to_i + array_marks[3].to_i
    calculated_marks = 1000000*best4_marks + 1000000*sum_imp_marks + 10000*academic_record.hs_marks_percent
    if academic_record.hs_board.downcase.eql?priority_board
      calculated_marks += priority_marks
    end
    calculated_marks
  end

  # to reset ranks
  def reset_ranks
    sql = "truncate ranks"
    ActiveRecord::Base.connection.execute(sql)
  end

end
