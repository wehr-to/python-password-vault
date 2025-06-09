# 🔐 Password Vault – Secure CLI Credential Manager

A lightweight, local password manager built in Python, designed with a security-first mindset. All data is AES-256 encrypted and protected by a master password. Includes an OWASP audit trail and hardened coding practices.

## 📌 Features

- 🔐 Master password access (with PBKDF2 key derivation)
- 🔒 AES-256 encryption of all vault data
- ➕ Add, view, update, or delete credential entries via CLI
- 🧪 OWASP-audited for security risks (see `docs/owasp_audit_notes.md`)
- 🗂️ Local storage only — no remote API, no cloud dependency
- 🛠️ Includes a dummy vault for safe demo and testing

## 🧠 Why This Project Exists

Password managers are often either overly complex or dangerously simple. This project demonstrates:
- How to handle secrets securely in Python
- How to audit and document OWASP Top 10 risks
- Real-world CLI application building with a focus on security engineering

## ⚙️ Requirements

- Python 3.9+
- Dependencies:
  ```bash
  pip install -r requirements.txt

## 🚀 Usage

1: Initialize or Load a Vault
python main.py --vault myvault.json.enc
- You will be prompted for the master password. If the vault doesn't exist, it will be created.

2: Add a New Credential
python main.py --add

3: View Entries
python main.py --list

4: Delete an Entry

## 🧪 Dummy Vault for Demo
You can test the app using a pre-encrypted dummy vault in the examples/ folder.
python main.py --vault examples/dummy_vault.json.enc
Master password: DemoMaster123!

To generate the dummy vault yourself, first ensure dev_utils.py contains the write_encrypted_dummy_vault() function (provided in this project). Then run:
python -c "from dev_utils import write_encrypted_dummy_vault; write_encrypted_dummy_vault('examples/dummy_vault.json.enc', 'DemoMaster123!')"
- This will create a safe-to-use demo vault with fake credentials.

## 🔍 Security & Audit Trail
🔐 Encryption: AES-256 via cryptography.fernet, with PBKDF2 key derivation
🛡️ Audit Notes: See docs/owasp_audit_notes.md

🧪 Scans:
- bandit for Python static security analysis
- pip-audit for dependency vulnerability scanning
- safety for CVE checks

🚫 Secrets are never logged, stored in plaintext, or hardcoded

## 🧠 Learning Objectives
This project helped me learn:
- How to apply OWASP principles to a real-world Python app
- Secure handling of passwords, encryption, and file I/O
- How to audit Python apps using tools like bandit, pip-audit, and safety
- CLI application architecture and modularization

## 🏁 Future Improvements
⏳ Inactivity vault auto-lock
🔐 Optional 2FA integration (pyotp)
🧩 Custom category/tags per credential
🌐 Optional REST API or GUI layer for learning purposes

## 📜 License
MIT License – use freely, but do not store real passwords in this tool without auditing it yourself.
