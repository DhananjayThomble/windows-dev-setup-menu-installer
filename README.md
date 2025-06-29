# Windows Developer Tools Menu Installer

Welcome to the **Windows Developer Tools Menu Installer**!  
This project helps you set up a complete developer environment on a fresh Windows 11 machine—with just a few clicks. Install essential dev tools using a friendly menu interface and [Chocolatey](https://chocolatey.org/).

---

## 🚀 Features

- **Menu-driven installer:** Pick only the tools you want, or install everything at once.
- **Fast setup:** Save hours by automating installations.
- **Open source:** Built for and by developers—your contributions and ideas are welcome!
- **Perfect for new machines, team onboarding, and power users.**

---

## 🛠️ Prerequisites

- **Windows 11** (works on Windows 10 too)
- **Administrator privileges**
- **Internet connection**

---

## 📋 Included Software

- Visual Studio Code
- Git
- Node Version Manager (nvm)
- MongoDB (server)
- MongoDB Compass
- Postman
- Notepad++
- Google Chrome
- Docker Desktop
- DBeaver
- 7zip
- Fiddler
- Windows Terminal
- Slack
- OpenJDK
- Python
- PowerToys
- Paint.NET
- ShareX
- oh-my-posh
- Microsoft Teams
- Bitvise SSH Client

---

## 🧑‍💻 How to Use

1. **Download the Script**
   - Get [`devtools-installer.ps1`](https://github.com/DhananjayThomble/windows-dev-setup-menu-installer/blob/main/devtools-installer.ps1) from this repo.

2. **Open PowerShell as Administrator**
   - Press the `Windows` key, type `powershell`
   - Right-click **Windows PowerShell** → **Run as administrator**

3. **Change to Script Directory**
   ```powershell
   cd C:\Path\To\Script
   ```

4. **Enable Script Execution**
   ```powershell
   Set-ExecutionPolicy Bypass -Scope Process -Force
   ```

5. **Run the Installer**
   ```powershell
   .\devtools-installer.ps1
   ```

6. **Follow the Menu**
   - Enter numbers (comma-separated) or `A` for all tools.

---

## 🤝 Contributing

**Let's build the best Windows dev setup together!**

- **Ideas:** Suggest new tools and improvements.
- **Code:** Add features, fix bugs, optimize the script.
- **Docs:** Improve instructions, add FAQs, share tips.

**How to contribute:**

1. [Fork this repo](https://github.com/DhananjayThomble/windows-dev-setup-menu-installer/fork)
2. Create a feature branch (`git checkout -b feature/your-feature`)
3. Commit your changes (`git commit -m 'Add cool feature'`)
4. Push to your fork (`git push origin feature/your-feature`)
5. [Open a Pull Request](https://github.com/DhananjayThomble/windows-dev-setup-menu-installer/pulls)

If you’re new to open source, check our [contributing guide](CONTRIBUTING.md) or open an issue—we’ll help you get started!

---

## 🌟 Star the Repo

**If you find this project useful, please [star ⭐ this repository](https://github.com/DhananjayThomble/windows-dev-setup-menu-installer)!**  
Starring helps more developers discover the project and motivates us to keep improving.

---

## 💬 Spread the Word

- Share this repo with your friends, team, or on social media.
- Mention us in your blog posts, tutorials, and dev community discussions.

---

## 🧹 Uninstalling Software

All installed software can be removed via:
- Windows "Add or Remove Programs"
- Or with Chocolatey:
  ```powershell
  choco uninstall <packagename>
  ```

---

## ❓ Troubleshooting

- **Run PowerShell as Administrator**
- **Check Internet connection**
- **Chocolatey issues?** See [Chocolatey Install Docs](https://chocolatey.org/install)

---

## 🙋‍♂️ Questions or Suggestions?

Open an [issue](https://github.com/DhananjayThomble/windows-dev-setup-menu-installer/issues) or join the discussion!

---

Let's make development journey easy and productive—**together!**