import 'package:flutter/material.dart';
import '../model/game.dart';

class DetailPage extends StatefulWidget {
  final Game game;

  const DetailPage({
    super.key,
    required this.game,
  });

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  void toggleLike() {
    setState(() {
      widget.game.isLiked = !widget.game.isLiked;
    });
  }

  @override
  Widget build(BuildContext context) {
    final game = widget.game;
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            game.image,
            width: double.infinity,
            height: 300,
            fit: BoxFit.cover,
          ),

          SafeArea(
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CircleAvatar(
                    backgroundColor: Colors.white,
                    child: IconButton(
                      icon: const Icon(Icons.arrow_back),
                      onPressed: () {
                        Navigator.pop(context);
                      },
                    ),
                  ),

                  CircleAvatar(
                    backgroundColor: Colors.white,
                    child: IconButton(
                      icon: Icon(
                        widget.game.isLiked ? Icons.favorite : Icons.favorite_border,
                        color: widget.game.isLiked ? Colors.red : Colors.black,
                      ),
                      onPressed: toggleLike,
                    ),
                  ),

                ],
              ),
            ),
          ),

          Container(
            margin: const EdgeInsets.only(top: 260),
            padding: const EdgeInsets.all(16),
            width: double.infinity,
            decoration: const BoxDecoration(
              color: Color(0xFFEDE7F6),
              borderRadius: BorderRadius.vertical(
                top: Radius.circular(20),
              ),
            ),

            child: Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Text(
                      game.title,
                      style: const TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),

                    const SizedBox(height: 4),

                    Text(
                      game.developer,
                      style: const TextStyle(
                        color: Colors.grey,
                      ),
                    ),

                    const Divider(height: 20),

                    Text(
                      game.desc,
                      textAlign: TextAlign.justify,
                    ),

                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}