import 'package:flutter/material.dart';

class Project {
  final String title;
  final IconData icon;
  final String imageUrl;

  Project({
    required this.title,
    required this.icon,
    required this.imageUrl,
  });
}

class ProjectPage extends StatelessWidget {
  final List<Project> projects = [
    Project(
      title: 'Python',
      icon: Icons.folder_copy,
      imageUrl: 'assets/images/python.png',
    ),
    Project(
      title: 'java',
      icon: Icons.folder_copy,
      imageUrl: 'assets/images/java.jpg',
    ),
    Project(
      title: 'Php',
      icon: Icons.folder_copy,
      imageUrl: 'assets/images/php.jpg',
    ),
    Project(
      title: 'flutter',
      icon: Icons.folder_copy,
      imageUrl: 'assets/images/flutter.png',
    ),
    Project(
      title: 'Unity',
      icon: Icons.folder_copy,
      imageUrl: 'assets/images/unity.png',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Projects',
          style: TextStyle(
              color: Color.fromARGB(
                  255, 250, 249, 249)), // <-- set the color of the text
        ),
        backgroundColor: Color.fromARGB(255, 24, 243, 217),
      ),
      body: Container(
        color: Color.fromARGB(
            255, 7, 7, 7), // <-- set the background color of the GridView
        child: GridView.builder(
          itemCount: projects.length,
          gridDelegate:
              SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
          itemBuilder: (context, index) {
            final project = projects[index];
            return InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ProjectDetailsPage(project: project),
                  ),
                );
              },
              child: Column(
                children: [
                  Icon(project.icon,
                      color: Color.fromARGB(255, 251, 253, 253),
                      size: 70), // <-- increased size of the icon
                  Text(
                    project.title,
                    style: TextStyle(
                        color: const Color.fromARGB(255, 246, 244,
                            244)), // <-- set the color of the text
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}

class ProjectDetailsPage extends StatelessWidget {
  final Project project;

  const ProjectDetailsPage({Key? key, required this.project}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(project.title),
      ),
      body: Center(
        child: Image.asset(project.imageUrl),
      ),
    );
  }
}
