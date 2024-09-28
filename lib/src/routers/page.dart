enum Page {
  loginPage(path: '/login');

  const Page({required this.path});

  final String path;
}
