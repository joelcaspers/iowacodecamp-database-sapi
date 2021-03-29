SELECT EventSpeaker.EventId, EventSpeaker.ParticipantId, EventSpeaker.ImageURL, EventSpeaker.SpeakerBio, EventSpeaker.SpeakerURL, EventSpeaker.TwitterHandle, Participant.Name, Participant.Email 
FROM EventSpeaker LEFT OUTER JOIN Participant ON EventSpeaker.ParticipantId = Participant.Id 
WHERE EventSpeaker.ParticipantId = :SpeakerId