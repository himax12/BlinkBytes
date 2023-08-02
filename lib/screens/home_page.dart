import 'package:basicapp1/data/datasource.dart';
import 'package:basicapp1/data/threads.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.only(
                  top: 10,
                ),
                child: Image.asset(
                  'image/threads.png',
                  height: 35,
                ),
              ),
            ),
            SliverList(
              delegate: SliverChildBuilderDelegate(
                childCount: threadRemoteDartSource().getThread().length,
                (context, index) {
                  final threadlist =
                      threadRemoteDartSource().getThread()[index];
                  return InkWell(
                    onTap: () {},
                    child: Stack(
                      alignment: AlignmentDirectional.bottomEnd,
                      children: [
                        Column(
                          children: [
                            ListTile(
                              leading: CircleAvatar(
                                backgroundImage: AssetImage(
                                    'image/${threadlist.profileImage}'),
                              ),
                              title: Row(
                                children: [
                                  Text(
                                    threadlist.name ?? 'name',
                                    style: const TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  const Spacer(),
                                  Text(
                                    threadlist.posted!,
                                    style: TextStyle(
                                      fontSize: 14,
                                      color: Colors.grey.shade500,
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 10,
                                  ),
                                  const Icon(Icons.more_horiz),
                                ],
                              ),
                              subtitle: Text(
                                threadlist.description!,
                                style: const TextStyle(
                                  fontSize: 16,
                                  color: Colors.black,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                            if (threadlist.image != '')
                              Padding(
                                padding: const EdgeInsets.only(
                                  right: 20,
                                  left: 70,
                                ),
                                child: Container(
                                  height: 300,
                                  width: double.infinity,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: Colors.amber,
                                    image: DecorationImage(
                                        image: AssetImage(
                                            'image/${threadlist.image}'),
                                        fit: BoxFit.cover),
                                  ),
                                ),
                              ),
                            const SizedBox(
                              height: 20,
                            ),
                            const Padding(
                              padding: EdgeInsets.only(left: 70),
                              child: Row(
                                children: [
                                  Icon(Icons.favorite_border),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Icon(Icons.chat_bubble_outline),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Icon(Icons.cached_outlined),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Icon(Icons.send),
                                  SizedBox(
                                    width: 10,
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Container(
                              padding: const EdgeInsets.only(
                                bottom: 10,
                              ),
                              alignment: Alignment.bottomLeft,
                              height: 50,
                              child: const Padding(
                                  padding: EdgeInsets.only(left: 70)
                                  // child: te,
                                  ),
                            )
                          ],
                        )
                      ],
                    ),
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
