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
    parsed = emails.split(/[,\s]/).reject {|e| e == ""}
  end

  private
  def parsed_emails
    rtn = emails.split(/[,\s]/)
    rtn.select {|e| e != ""}
  end

  def remove_duplicate
    unique_emails = []
    parsed_emails.each { |email| unique_emails << email if !unique_emails.include?(email) }
    unique_emails
  end
end
