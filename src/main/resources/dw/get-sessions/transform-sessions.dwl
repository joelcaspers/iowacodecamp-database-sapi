%dw 2.0
output application/json skipNullOn="everywhere"
---
(payload default []) map ((session) -> {
	id: session.Id,
	name: session.Name, 
	session_description: session.Description, 
	speaker_id: session.SpeakerId, 
	level: session.Level, 
	location_id: session.LocationId, 
	event_slot_id: session.EventSlotId, 
	event_slot_name: session.EventSlotName
})