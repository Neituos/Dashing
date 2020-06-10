# :first_in sets how long it takes before the job is first run. In this case, it is run immediately

lastcommit = [{:label=>"Jean michel JAR", :value=>"[PATAfix] - HUHUFIX_68945 - ACDC ", :date=>"Date: Thu May 28 12:25:12 2020 +0000"},
 { :label=>"Parker lewis", :value=>"[Synchonisation des montres] - Can't lose - AB1" , :date=>"Date: Thu May 28 12:25:12 2020 +0000"},
 { :label=>"Akim Embett", :value=>"[Sad] [canard] - TropFIX_00171 - Désynchrone - intervention de Alain Provist" , :date=>"Date:   Mon Jun 8 09:41:37 2020 +0200"}]

SCHEDULER.every '1m', :first_in => 0 do |job|
  send_event('Détailscommits', {  items: lastcommit})
  
end