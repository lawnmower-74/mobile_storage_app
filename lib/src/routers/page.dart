enum Page {
  loginPage(path: '/login'),
  topPage(path: '/top'),
  notificationsPage(path: '/notification');

  const Page({required this.path});

  final String path;
}
