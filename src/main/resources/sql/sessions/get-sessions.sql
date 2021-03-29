SELECT Session.Id, Session.Name as SessionName, Session.Description, Session.SpeakerId, Session.EventSlotId, Session.Level, Session.LocationId, EventSlot.Name as EventSlotName, EventSlot.EventId, Event.Name as EventName, Event.Date 
FROM (
	Session LEFT OUTER JOIN EventSlot ON Session.EventSlotId = EventSlot.Id
) LEFT OUTER JOIN Event ON EventSlot.EventId = Event.Id 
WHERE Event.Active = 1