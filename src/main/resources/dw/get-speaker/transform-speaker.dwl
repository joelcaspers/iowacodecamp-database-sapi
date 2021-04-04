%dw 2.0
output application/json skipNullOn="everywhere"
var speakers = payload default []
var speaker = speakers[0] default null
---
{
  event_id: speaker.EventId,
  participant_id: speaker.ParticipantId,
  image_url: speaker.ImageURL,
  speaker_bio: speaker.SpeakerBio,
  speaker_url: speaker.SpeakerURL,
  (twitter_handle: (speaker.TwitterHandle default "") replace "@" with("")) 
  	if (speaker.TwitterHandle?), 
  name: speaker.Name, 
  email: speaker.Email
}