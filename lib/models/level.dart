
import 'dart:convert';

List<Levels> levelsFromJson(String str) => List<Levels>.from(json.decode(str).map((x) => Levels.fromJson(x)));

String levelsToJson(List<Levels> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Levels {
    Id id;
    String levelName;
    List<GuidebookContent> guidebookContent;

    Levels({
        required this.id,
        required this.levelName,
        required this.guidebookContent,
    });

    factory Levels.fromJson(Map<String, dynamic> json) => Levels(
        id: Id.fromJson(json["_id"]),
        levelName: json["level_name"],
        guidebookContent: List<GuidebookContent>.from(json["guidebook_content"].map((x) => GuidebookContent.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "_id": id.toJson(),
        "level_name": levelName,
        "guidebook_content": List<dynamic>.from(guidebookContent.map((x) => x.toJson())),
    };
}

class GuidebookContent {
    String frenchWord;
    String frenchPronunciation;
    String englishTranslation;

    GuidebookContent({
        required this.frenchWord,
        required this.frenchPronunciation,
        required this.englishTranslation,
    });

    factory GuidebookContent.fromJson(Map<String, dynamic> json) => GuidebookContent(
        frenchWord: json["french_word"],
        frenchPronunciation: json["french_pronunciation"],
        englishTranslation: json["english_translation"],
    );

    Map<String, dynamic> toJson() => {
        "french_word": frenchWord,
        "french_pronunciation": frenchPronunciation,
        "english_translation": englishTranslation,
    };
}

class Id {
    String oid;

    Id({
        required this.oid,
    });

    factory Id.fromJson(Map<String, dynamic> json) => Id(
        oid: json["\u0024oid"],
    );

    Map<String, dynamic> toJson() => {
        "\u0024oid": oid,
    };
}
