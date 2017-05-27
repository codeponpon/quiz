ExceedException = Class.new(StandardError)
DuplicatedException = Class.new(StandardError)
EmptyParameterException = Class.new(StandardError)

class QuizzesController < ApplicationController
  @@series = [1, 2, 3, 4, 5, 6, 7, 8]

  def index
  end

  def quiz_1
  end

  def processing
    raise EmptyParameterException if params[:a].reject{|i| i.empty?}.empty?
    raise EmptyParameterException if params[:b].reject{|i| i.empty?}.empty?
    raise ExceedException if params[:k].to_i.eql?(0)

    n = params[:n].to_i unless exceedLimitOfN?(params[:n].to_i)
    k = params[:k].to_i unless exceedLimitOfK?(params[:k].to_i)

    (1..k).each do |i|
      print i.to_s + "\r"
      @answer ||= @@series.dup
      # puts "    #{@answer}"
      @answer = reOrder(n, @answer)
      $stdout.flush
    end
    render js: "$('.result').html('#{@answer.join(' ')}')"
  rescue Exception => e

    case e.message
      when 'ExceedException'
        render js: "alert('Your input was exceed limit please read description carefully')"
      when 'DuplicatedException'
        render js: "alert('A and B were duplicated')"
      when 'EmptyParameterException'
        render js: "alert('There is some fields leave blank?')"
      else
        render js: "alert('Opps Something went wrong!')"
    end
  end

  private

  def reOrder(num, answer)
    (1..num).each do |i|
      a = params[:a][i-1].to_i
      b = params[:b][i-1].to_i
      duplicated?(a, b)
      exceedLimitOnAB?(a, b)

      s_a = answer[a-1]
      s_b = answer[b-1]
      answer[a-1] = s_b
      answer[b-1] = s_a
      # puts "#{a} #{b} #{answer}"
    end
    answer
  end

  def exceedLimitOfN?(num)
    result = (num.eql?(0) || num > 50)
    raise ExceedException if result
    result
  end

  def exceedLimitOfK?(num)
    result = (num.eql?(0) || num > 10**9)
    raise ExceedException if result
    result
  end

  def duplicated?(a, b)
    raise DuplicatedException if a == b
  end

  def exceedLimitOnAB?(a, b)
    raise ExceedException if !(a >= 1 || b <= 8)
  end
end
