import 'package:betlyn/domain/entities/team.dart';
import 'package:betlyn/infrastructure/models/sportmonks/participant_model.dart';

class TeamMapper {
  static Team toEntity(ParticipantModel participant) => Team(
    id: participant.id,
    sportId: participant.sportId,
    countryId: participant.countryId,
    venueId: participant.venueId,
    gender: participant.gender,
    name: participant.name,
    shortCode: participant.shortCode,
    imagePath: participant.imagePath,
    founded: participant.founded,
    type: participant.type,
    placeholder: participant.placeholder,
    lastPlayedAt: participant.lastPlayedAt,
  );
}
