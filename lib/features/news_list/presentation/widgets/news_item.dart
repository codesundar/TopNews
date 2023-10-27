import 'dart:async';
import 'dart:io' as io;

import 'package:flutter/material.dart';
import 'package:path_provider/path_provider.dart';
import 'package:topnews/config/app_config.dart';

import '../../../../config/app_strings.dart';
import '../../../../shared/helper/audio_helper.dart';
import '../../../../shared/helper/date_time_helper.dart';

class NewsTile extends StatefulWidget {
  const NewsTile({
    super.key,
    required this.id,
    required this.imageUrl,
    required this.title,
    required this.description,
  });

  final String id;
  final String imageUrl;
  final String title;
  final String description;

  @override
  State<NewsTile> createState() => _NewsTileState();
}

class _NewsTileState extends State<NewsTile> {
  bool _hasPreviousAudio = false;
  late String audioFilePath;
  late Timer _timer;
  final StreamController<int> _counterStream = StreamController.broadcast();

  void isFileExist() async {
    final tmp = await getTemporaryDirectory();
    audioFilePath = '${tmp.path}/${widget.id}.wav';
    var isAudioFileExist = await io.File(audioFilePath).exists();

    setState(() {
      _hasPreviousAudio = isAudioFileExist;
      audioFilePath = audioFilePath;
    });
  }

  _showPopup(BuildContext context) {
    int counter = 0;

    _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      _counterStream.add(counter++);
    });
    AudioHelper().startRecording(widget.id);

    showDialog(
        context: context,
        barrierDismissible: false,
        builder: (context) {
          return AlertDialog(
            title: const Text(
              AppStrings.audioIsRecording,
              textAlign: TextAlign.center,
            ),
            content: Column(mainAxisSize: MainAxisSize.min, children: [
              const Icon(
                Icons.voice_chat,
                size: 40,
              ),
              const SizedBox(height: 8),
              StreamBuilder(
                stream: _counterStream.stream,
                builder: (context, snapshot) {
                  return Text(DateTimeHelper()
                      .formattedTime(
                        timeInSecond: snapshot.data ?? 0,
                      )
                      .toString());
                },
              )
            ]),
            actions: [
              TextButton(
                onPressed: () => _stopRecording(),
                child: const Text(AppStrings.stopAndSubmit),
              ),
              TextButton(
                onPressed: () => _stopRecording(isCancel: true),
                child: const Text(AppStrings.cancel),
              ),
            ],
          );
        });
  }

  void _stopRecording({bool isCancel = false}) {
    AudioHelper().stopRecording(widget.id);
    isCancel ? AudioHelper().deleteAudio(audioFilePath) : () {};
    _timer.cancel();
    setState(() {
      _hasPreviousAudio = isCancel ? false : true;
    });
    Navigator.pop(context);
  }

  @override
  void initState() {
    super.initState();
    isFileExist();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(8.0),
      child: Card(
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SizedBox(
                height: 100,
                width: 100,
                child: FadeInImage(
                  fit: BoxFit.cover,
                  image: NetworkImage(widget.imageUrl),
                  placeholder: const NetworkImage(AppConfig.imagePlaceholder),
                ),
              ),
            ),
            Flexible(
              child: Padding(
                padding: const EdgeInsets.all(8),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Text(widget.id),
                    Text(
                      widget.title,
                      maxLines: 2,
                      style: const TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    Text(
                      widget.description,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                    _buildCommentButton(context)
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  _buildCommentButton(context) {
    return Row(
      children: [
        TextButton(
          onPressed: () => _showPopup(context),
          child: const Text(AppStrings.submitComment),
        ),
        _hasPreviousAudio
            ? TextButton(
                onPressed: () => AudioHelper().playAudio(audioFilePath),
                child: const Text(AppStrings.play),
              )
            : const SizedBox(),
      ],
    );
  }
}
