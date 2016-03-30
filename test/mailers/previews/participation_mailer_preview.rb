class ParticipationMailerPreview < ActionMailer::Preview

  def send_participation_win
    user = Participant.first
    ParticipationMailer.send_participation_win(user)
  end

end
