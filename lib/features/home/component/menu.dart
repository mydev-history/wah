import 'package:flutter/material.dart';

class ProfileMenu {
  static void show(BuildContext context) {
    showGeneralDialog(
      context: context,
      barrierDismissible: true,
      barrierLabel: "Menu",
      barrierColor: Colors.black.withOpacity(0.3), // semi-transparent overlay
      transitionDuration: const Duration(milliseconds: 300),
      pageBuilder: (context, anim1, anim2) => const SizedBox(),
      transitionBuilder: (context, anim1, anim2, child) {
        final width =
            MediaQuery.of(context).size.width * 0.75; // 65% menu width
        return Stack(
          children: [
            // Transparent tappable overlay on the right 35%
            GestureDetector(
              onTap: () => Navigator.pop(context),
              child: Opacity(
                opacity: anim1.value,
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  color: Colors.transparent,
                ),
              ),
            ),
            // Sliding menu
            Transform.translate(
              offset: Offset(-width * (1 - anim1.value), 0),
              child: Opacity(
                opacity: anim1.value,
                child: Material(
                  color: Colors.white,
                  child: SafeArea(
                    child: SizedBox(
                      width: width,
                      height: double.infinity,
                      child: const _MenuContent(),
                    ),
                  ),
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}

class _MenuContent extends StatelessWidget {
  const _MenuContent();

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // ===== Section 1: Header =====
          ListTile(
            leading: const Icon(Icons.arrow_back),
            title: const Text("Back"),
            onTap: () => Navigator.pop(context),
          ),
          const ListTile(
            leading: CircleAvatar(child: Icon(Icons.person)),
            title: Text(
              "John Doe",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            subtitle: Text("johndoe@gmail.com"),
          ),
          const Divider(height: 1, thickness: 1),

          // ===== Section 2: Options =====
          _buildMenuOption(Icons.edit, "Edit Profile", Colors.red, context),
          _buildMenuOption(
              Icons.notifications, "Notifications", Colors.yellow, context),
          _buildMenuOption(Icons.report, "Report", Colors.red, context),
          _buildMenuOption(
              Icons.payment, "Payment Methods", Colors.yellow, context),
          const Divider(height: 1, thickness: 1),

          // ===== Section 3: Legal / Help =====
          _buildMenuOption(
              Icons.description, "Terms of Use", Colors.black, context),
          _buildMenuOption(
              Icons.privacy_tip, "Privacy Policy", Colors.black, context),
          _buildMenuOption(Icons.help_outline, "Help", Colors.black, context),
          const Divider(height: 1, thickness: 1),

          // ===== Section 4: Actions =====
          _buildMenuOption(Icons.logout, "Logout", Colors.black, context),
          _buildMenuOption(
              Icons.delete, "Delete Account", Colors.black, context),
          const Divider(height: 1, thickness: 1),
        ],
      ),
    );
  }

  Widget _buildMenuOption(
      IconData icon, String text, Color color, BuildContext context) {
    return ListTile(
      leading: Icon(icon, color: color),
      title: Text(text),
      onTap: () {
        Navigator.pop(context); // close menu on tap
      },
    );
  }
}
