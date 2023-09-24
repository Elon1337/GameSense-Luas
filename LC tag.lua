local charms = ui.new_checkbox('Misc', 'Miscellaneous', 'Lucky Charms spammer')
local clantags = {
	'☘ ',
    '☘ L',
    '☘ Luc',
    '☘ Lucky',
    '☘ LuckyCh',
    '☘ LuckyChar',
    '☘ LuckyCharms',
    '☘ LuckyCharms',
    '☘ ckyCharms ',
    '☘ yCharms ',
    '☘ harms ',
    '☘ rms ',
    '☘ s '
}
local clantag_prev

client.set_event_callback('net_update_end', function()
    if ui.get(charms) then
  	    local cur = math.floor(globals.tickcount() / 70) % #clantags
  	    local clantag = clantags[cur+1]

  	    if clantag ~= clantag_prev then
    	    clantag_prev = clantag
    	    client.set_clan_tag(clantag)
  	    end
    end
end)