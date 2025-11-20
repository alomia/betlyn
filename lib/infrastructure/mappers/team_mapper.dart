import 'package:betlyn/domain/entities/team.dart';
import 'package:betlyn/infrastructure/models/sportmonks/participant_model.dart';

class TeamMapper {
  static Team toEntity(ParticipantModel participant) => Team(
    id: participant.id ?? 0,
    sportId: participant.sportId ?? 0,
    countryId: participant.countryId ?? 0,
    venueId: participant.venueId ?? 0,
    gender: participant.gender ?? '',
    name: participant.name ?? '',
    shortCode: participant.shortCode ?? '',
    imagePath: participant.imagePath ?? '',
    founded: participant.founded ?? 0,
    type: participant.type ?? '',
    placeholder: participant.placeholder ?? false,
    lastPlayedAt: participant.lastPlayedAt ?? DateTime.now(),
  );
}
