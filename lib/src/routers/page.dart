enum Page {
  loginPage(path: '/login'),
  topPage(path: '/top');

  const Page({required this.path});

  final String path;
}
