function Alert(title, message, time, type)
	SendNUIMessage({
		action = 'open',
		title = title,
		type = type,
		message = message,
		time = time,
	})
end

RegisterNetEvent('okokNotify:Alert')
AddEventHandler('okokNotify:Alert', function(title, message, time, type)
	Alert(title, message, time, type)
end)

-- Example Commands - Delete them

RegisterCommand('Succes', function()
	exports['okokNotify']:Alert("SUCCÈS", "Vous avez envoyé <span style='color:#47cf73'>420€</span> à Sheyzouh", 5000, 'success')
end)

RegisterCommand('info', function()
	exports['okokNotify']:Alert("INFO", "Le Casino est ouvert !", 5000, 'info')
end)

RegisterCommand('erreur', function()
	exports['okokNotify']:Alert("ERREUR", "Veuillez réessayer plus tard !", 5000, 'error')
end)

RegisterCommand('attention', function()
	exports['okokNotify']:Alert("ATTENTION", "Vous devenez nerveux !", 5000, 'warning')
end)

RegisterCommand('tel', function()
	exports['okokNotify']:Alert("SMS", "<span style='color:#f38847'>Sheyzouh: </span> Où es-tu ?", 5000, 'phonemessage')
end)

RegisterCommand('longmessage', function()
	exports['okokNotify']:Alert("LONG MESSAGE", "Lorem ipsum dolor sit amet, consectetur adipiscing elit e pluribus unum.", 5000, 'neutral')
end)