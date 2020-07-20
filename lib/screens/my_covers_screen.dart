import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:vitalik/states/covers_state.dart';
import 'package:vitalik/models/song_model.dart';
import 'package:vitalik/widgets/app_dialog.dart';
import 'package:easy_localization/easy_localization.dart';

class MyCoversScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () => addNewCover(context),
        child: Icon(Icons.add),
      ),
      body: myCoversListView(),
    );
  }

  Widget myCoversListView() {
    return Consumer<CoversState>(
      builder: (context, coversState, child) {
        if (coversState.isLoading) {
          return Center(child: const CircularProgressIndicator());
        } else if (coversState.covers.isEmpty) {
          return Center(child: Text('No covers yet'));
        } else {
          return ListView.separated(
            itemBuilder: (BuildContext context, int index) {
              return ListTile(
                title: Text(coversState.covers[index].title),
                subtitle: Text(coversState.covers[index].artist),
              );
            },
            separatorBuilder: (_, __) => Divider(),
            itemCount: coversState.covers.length,
          );
        }
      },
    );
  }

  void addNewCover(BuildContext context) {
    final songNameController = TextEditingController();
    final artistController = TextEditingController();
    final artistFocusNode = FocusNode();
    showDialog(
      context: context,
      builder: (context) {
        return AppDialog(
          title: 'add_new_cover'.tr().toUpperCase(),
          titleIcon: Icon(Icons.music_note),
          content: Padding(
            padding: const EdgeInsets.symmetric(vertical: 15),
            child: Column(
              children: <Widget>[
                TextField(
                  decoration: InputDecoration(hintText: 'song_name'.tr()),
                  autofocus: true,
                  controller: songNameController,
                  onEditingComplete: artistFocusNode.requestFocus,
                ),
                TextField(
                  decoration: InputDecoration(hintText: 'artist_name'.tr()),
                  controller: artistController,
                  focusNode: artistFocusNode,
                ),
              ],
            ),
          ),
          buttons: <Widget>[
            DialogButton(
              title: 'cancel'.tr(),
              onTap: () => Navigator.pop(context),
            ),
            DialogButton(
              title: 'ok'.tr(),
              onTap: () {
                Provider.of<CoversState>(context, listen: false).add(
                  songNameController.text,
                  artistController.text,
                );
                Navigator.pop(context);
              },
            ),
          ],
        );
      },
    );
  }
}
