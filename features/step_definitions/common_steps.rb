Given /^I have following (.*) records$/ do |factory_name, table|
  table.hashes.each do |row|
    Factory(factory_name, row)
  end
end

