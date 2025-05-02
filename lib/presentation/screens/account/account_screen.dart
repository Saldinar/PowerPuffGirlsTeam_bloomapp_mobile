import 'package:flutter/material.dart';

// AccountScreen
class AccountScreen extends StatelessWidget {
  const AccountScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: const EdgeInsets.only(bottom: 16),
              decoration: BoxDecoration(
                border: Border(bottom: const BorderSide(color: Colors.grey)),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Account',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                  ),
                  IconButton(
                    icon: Icon(Icons.settings, color: Colors.grey[500]),
                    onPressed: () {},
                  ),
                ],
              ),
            ),
            Row(
              children: [
                CircleAvatar(
                  radius: 32,
                  backgroundImage: const AssetImage(
                    'assets/images/onboarding/didi.jpg',
                  ),
                  backgroundColor: Colors.grey[200],
                ),
                const SizedBox(width: 16),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Diana Daniiarova',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Text(
                      'diana.di.daniiarova@gmail.com',
                      style: TextStyle(fontSize: 14, color: Colors.grey[500]),
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(height: 24),
            Text(
              'Cycle Settings',
              style: TextStyle(fontSize: 14, color: Colors.grey[500]),
            ),
            const SizedBox(height: 8),
            SettingsSection(
              items: [
                SettingsItem(title: 'Cycle Length', subtitle: '28 days'),
                SettingsItem(title: 'Period Length', subtitle: '5 days'),
              ],
            ),
            const SizedBox(height: 24),
            Text(
              'App Settings',
              style: TextStyle(fontSize: 14, color: Colors.grey[500]),
            ),
            const SizedBox(height: 8),
            SettingsSection(
              items: [
                SettingsItem(
                  title: 'Notifications',
                  trailing: Switch(
                    value: true,
                    onChanged: (value) {},
                    activeColor: const Color(0xFFFF85B3),
                  ),
                ),
                SettingsItem(
                  title: 'Dark Mode',
                  trailing: Switch(
                    value: false,
                    onChanged: (value) {},
                    activeColor: const Color(0xFFFF85B3),
                  ),
                ),
                SettingsItem(title: 'Privacy Settings'),
              ],
            ),
            const SizedBox(height: 24),
            Text(
              'Support',
              style: TextStyle(fontSize: 14, color: Colors.grey[500]),
            ),
            const SizedBox(height: 8),
            SettingsSection(
              items: [
                SettingsItem(title: 'Help Center'),
                SettingsItem(title: 'Contact Support'),
                SettingsItem(title: 'Privacy Policy'),
              ],
            ),
            const SizedBox(height: 24),
            OutlinedButton(
              onPressed: () {},
              style: OutlinedButton.styleFrom(
                side: BorderSide(color: Theme.of(context).colorScheme.primary),
                minimumSize: const Size(double.infinity, 48),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
              child: Text(
                'Log Out',
                style: TextStyle(
                  color: Theme.of(context).colorScheme.primary,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// SettingsSection Widget
class SettingsSection extends StatelessWidget {
  final List<SettingsItem> items;

  const SettingsSection({super.key, required this.items});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.1),
            spreadRadius: 1,
            blurRadius: 4,
          ),
        ],
      ),
      child: Column(
        children: items
            .map(
              (item) => Column(
                children: [
                  ListTile(
                    title: Text(
                      item.title,
                      style: const TextStyle(fontSize: 14),
                    ),
                    subtitle: item.subtitle != null
                        ? Text(
                            item.subtitle!,
                            style: TextStyle(
                              fontSize: 12,
                              color: Colors.grey[500],
                            ),
                          )
                        : null,
                    trailing: item.trailing ??
                        const Icon(Icons.arrow_forward_ios, size: 16),
                    onTap: () {},
                  ),
                  if (items.indexOf(item) < items.length - 1)
                    Divider(height: 1, color: Colors.grey[100]),
                ],
              ),
            )
            .toList(),
      ),
    );
  }
}

// SettingsItem Class
class SettingsItem {
  final String title;
  final String? subtitle;
  final Widget? trailing;

  SettingsItem({required this.title, this.subtitle, this.trailing});
}
