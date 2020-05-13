import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'main.dart';

class ExampleCard extends StatelessWidget {
  final Info info;

  ExampleCard({Key key, this.info}): super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(8.0))
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          AspectRatio(
            aspectRatio: 1/1,
            child: Stack(
              children: <Widget>[
                Positioned.fill(
                  child: Image.asset(
                    info.image,
                    fit: BoxFit.cover,
                  ),
                ),
                Align(
                  alignment: Alignment.bottomRight,
                  child: Container(
                    width: 48.0, height: 48.0,
                    margin: EdgeInsets.all(8.0),
                    child: Card(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(24.0))
                      ),
                      child: IconButton(
                        onPressed: () { },
                        icon: Icon(
                          Icons.favorite_border,
                          size: 20.0,
                          color: Colors.red,
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
            child: Text(
              info.title,
              style: TextStyle(
                fontSize: 32.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
            child: Text(
              info.summary,
              maxLines: 2,
              style: TextStyle(
                  fontSize: 16.0,
                  color: Colors.grey
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: RaisedButton(
                  onPressed: () { },
                  child: Text(
                    "Subscribe",
                    style: TextStyle(
                        color: Colors.white70
                    ),
                  ),
                  color: Colors.teal,
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}