enum Page {
  loginPage(path: '/login'),
  topPage(path: '/top'),
  profilePage(path: '/profile');

  const Page({required this.path});

  final String path;
}
