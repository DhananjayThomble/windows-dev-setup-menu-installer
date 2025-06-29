# Windows Developer Tools Menu Installer

This repository contains a PowerShell script to help you quickly set up a productive development environment on a fresh Windows 11 installation. The script offers a menu-based interface to install a curated set of essential tools for MERN stack developers and general productivity, using [Chocolatey](https://chocolatey.org/) as the package manager.

---

## 🚀 Features

- Menu-driven installer: Pick only the tools you want, or install all at once.
- Automated installation using Chocolatey.
- Suitable for a **fresh Windows 11 installation**.
- Installs popular developer and productivity tools (VS Code, Git, MongoDB, Docker, Slack, Teams, Chrome, and more).

---

## 🛠️ Prerequisites

- **Fresh Windows 11 system** (should work on Windows 10 as well).
- Must have **administrative privileges** (required to install software system-wide).
- An internet connection to download packages.

---

## 📋 List of Supported Software

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

## ⚠️ Enabling PowerShell Script Execution

By default, Windows restricts the execution of PowerShell scripts. You need to enable script execution temporarily:

1. **Open PowerShell as Administrator**  
   - Press `Windows` key, type `powershell`
   - Right-click on **Windows PowerShell** and select **Run as administrator**

2. **Set Execution Policy Temporarily**  
   In the PowerShell window, run:
   ```powershell
   Set-ExecutionPolicy Bypass -Scope Process -Force
   ```

   This command allows scripts to run only in your current session, keeping your system secure.

---

## 🧑‍💻 How to Use the Installer Script

1. **Download the Script**
   - Download the `devtools-installer.ps1` file from this repository.

2. **Open PowerShell as Administrator**
   - As described above, search for `powershell`, right-click, and choose **Run as administrator**.

3. **Navigate to the Script Location**
   - Use the `cd` command to change to the folder where you downloaded the script.  
     For example:
     ```powershell
     cd C:\Users\YourUsername\Downloads
     ```

4. **Enable Script Execution (if you haven't already)**
   ```powershell
   Set-ExecutionPolicy Bypass -Scope Process -Force
   ```

5. **Run the Installer Script**
   ```powershell
   .\devtools-installer.ps1
   ```

6. **Follow the Menu Prompts**
   - You'll see a numbered list of software options.
   - Enter numbers separated by commas (e.g., `1,3,5`) to choose specific tools.
   - Enter `A` to install **all** listed tools.
   - Enter `Q` to exit.

---

## 💡 Notes

- The script will automatically install Chocolatey if it is not already present.
- Some software installations may prompt you for permission or require a reboot.
- You can re-run the script anytime to install additional tools.

---

## 🧹 Uninstalling Software

All installed software can be removed via:
- Windows "Add or Remove Programs"
- Or using Chocolatey, e.g.:
  ```powershell
  choco uninstall <packagename>
  ```

---

## ❓ Troubleshooting

- **Permission Issues**: Always run PowerShell as Administrator.
- **Network Issues**: Ensure a stable internet connection.
- **Chocolatey Issues**: If Chocolatey install fails, visit [Chocolatey Install Docs](https://chocolatey.org/install) for manual steps.

---

## 🙋‍♂️ Questions?

Open an issue in this repository if you encounter any problems or have suggestions!

---
## 📄 License
This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.