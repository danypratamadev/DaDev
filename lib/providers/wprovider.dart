import 'package:dadev/models/mproject.dart';
import 'package:flutter/material.dart';

class WebProvider extends ChangeNotifier {

  bool showBorder = false;
  bool darkMode = false;

  List<ProjectModel> listProjects = <ProjectModel>[];

  setupProjects(){
    ProjectModel project1 = ProjectModel(color: Colors.orange, title: 'WaroengSS', language: 'Java', url: '-');
    ProjectModel project2 = ProjectModel(color: Colors.orange, title: 'KokiSS', language: 'Java', url: '-');
    ProjectModel project3 = ProjectModel(color: Colors.orange, title: 'Kelayakan Jalan', language: 'Java', url: '-');
    ProjectModel project4 = ProjectModel(color: Colors.purple, title: 'KeyAccess', language: 'Kotlin', url: '-');
    ProjectModel project5 = ProjectModel(color: Colors.blue, title: 'Tracer UPN', language: 'Dart', url: '-');
    ProjectModel project6 = ProjectModel(color: Colors.blue, title: 'Absenin', language: 'Dart', url: '-');
    ProjectModel project7 = ProjectModel(color: Colors.purple, title: 'SiaApps', language: 'Kotlin', url: '-');
    ProjectModel project8 = ProjectModel(color: Colors.orange, title: 'Note4u', language: 'Java', url: '-');
    ProjectModel project9 = ProjectModel(color: Colors.blue, title: 'Mooren', language: 'Dart', url: '-');
    ProjectModel project10 = ProjectModel(color: Colors.orange, title: 'Kasir Coffe', language: 'Java', url: '-');
    ProjectModel project11 = ProjectModel(color: Colors.orange, title: 'Sidojoyo', language: 'Java', url: '-');
    ProjectModel project12 = ProjectModel(color: Colors.blue, title: 'Portal Mahasiswa UTY', language: 'Dart', url: '-');
    ProjectModel project13 = ProjectModel(color: Colors.blue, title: 'Sinta UTY', language: 'Dart', url: '-');
    ProjectModel project14 = ProjectModel(color: Colors.blue, title: 'TOUTY', language: 'Dart', url: '-');
    ProjectModel project15 = ProjectModel(color: Colors.blue, title: 'Sinau Yok', language: 'Dart', url: '-');
    ProjectModel project16 = ProjectModel(color: Colors.blue, title: 'DaDev', language: 'Dart', url: '-');
    listProjects.add(project1);
    listProjects.add(project2);
    listProjects.add(project3);
    listProjects.add(project4);
    listProjects.add(project5);
    listProjects.add(project6);
    listProjects.add(project7);
    listProjects.add(project8);
    listProjects.add(project9);
    listProjects.add(project10);
    listProjects.add(project11);
    listProjects.add(project12);
    listProjects.add(project13);
    listProjects.add(project14);
    listProjects.add(project15);
    listProjects.add(project16);
    notifyListeners();
  }

  onRefresh({required BuildContext context, required int action}){
    
  }

}