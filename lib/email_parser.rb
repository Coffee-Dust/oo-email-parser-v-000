# Build a class EmailParser that accepts a string of unformatted
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').
class EmailParser
  attr_accessor :emails

  def initialize(emails)
    self.emails = emails
  end

  def parse
    rtn = emails.split(/[,\s]/)
    rtn.select {|e| e != ""}
    remove_duplicate
  end
  private
  def remove_duplicate
    unique_emails = []
    parse.each { |email| unique_emails << email if !unique_emails.include?(email) }
    unique_emails
  end
end
