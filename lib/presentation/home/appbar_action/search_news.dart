import 'package:flutter/material.dart';
import 'package:penmark/presentation/home/time_table/cell.dart';

class SearchNews extends StatelessWidget{

  const SearchNews();

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Icon(Icons.search),
      onPressed: (){
        showSearch(context: context, delegate: _SearchDelegate());
      }
    );
  }
}

class _SearchDelegate extends SearchDelegate<SearchNews>{
  @override
  List<Widget> buildActions(BuildContext context) {
    return [
      IconButton(
        icon: Icon(Icons.clear),
        onPressed: () {
          query = '';
        },
      ),
    ];
  }

  @override
  Widget buildLeading(BuildContext context) {
    return IconButton(
      icon: Icon(Icons.arrow_back),
      onPressed: () {
        close(context, null);
      },
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    return ListView(
      children: <Widget>[
        Cell(title: "国語"),
        Cell(title: "国語"),
        Cell(title: "国語"),
        Cell(title: "国語"),
      ],
    );
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Center(
          child: Text(
            "AhA",
          ),
        )
      ],
    );
  }
}