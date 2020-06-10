# :first_in sets how long it takes before the job is first run. In this case, it is run immediately

buzzwords = [{:label=>"Felix-0331", :value=>"2", :date=>""}, 
{ :label=>"test-chat-potté", :value=>"4" , :date=>""},
{ :label=>"ArchivageDecoupeCCI", :value=>"6" , :date=>""},
{ :label=>"DecoupeDesLFA", :value=>"5" , :date=>""},
 { :label=>"HardRockHallelujah", :value=>"9" , :date=>""},
 { :label=>"subversion-6548", :value=>"3" , :date=>""},
{ :label=>"Felix-ordre66", :value=>"4" , :date=>""},
{ :label=>"DecoupeDesLFA", :value=>"8" , :date=>""},
 { :label=>"HardRockHallelujah", :value=>"2" , :date=>""}]

SCHEDULER.every '1m', :first_in => 0 do |job|
  send_event('buzzwords', {  items: buzzwords})
  
end

