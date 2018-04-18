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
    unique_emails = []
    parsed = emails.split(/[,\s]/).reject {|e| e == ""}
    parsed.each { |email| unique_emails << email if !unique_emails.include?(email) }
    unique_emails
  end
end
