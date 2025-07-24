
#  Git Repo Automation 

Welcome! In this task, you will create and run a **shell script** that automates the setup and push of a GitHub repository. You’ll also practice using **conditional statements**, **exit codes**, and **basic debugging** techniques.

---

##  Task Objectives

Your shell script should:
1. Check if Git is installed on the system.
2. Take a project name as input.
3. Handle cases where a folder with the same name already exists.
4. Create a Git repository with a `README.md`.
5. Add and commit the README.
6. Ask for a GitHub repository URL and push your changes.

---

##  Instructions

1. **Create a file named** `init_push.sh`
2. Make it **executable** using:

   ```bash
   chmod +x init_push.sh
   ```

3. Run your script like this:

   ```bash
   ./init_push.sh my_project
   ```

4. When prompted, paste your **GitHub repo link** (from your forked repo).

---

##  Key Concepts to Practice

- `if` statements for conditional checks
- `exit` codes for stopping a script with a reason
- `read` for user input
- `mkdir`, `git init`, `echo`, `rm -rf`
- Redirection: `2>&1` to catch errors quietly

---

##  What Your Script Must Do

| Feature | Description |
|--------|-------------|
|  Check Git | Use `git --version` to check if Git is installed |
|  Folder Check | If folder exists, ask to delete it |
|  Create Project | Create a folder, add `README.md`, initialize Git |
|  Commit Code | Add and commit the README |
|  Push to GitHub | Ask for a GitHub link, add remote, and push code |
|  Handle Errors | Exit gracefully if anything fails |

---

##  What to Submit

- Your `init_push.sh` file
- A screenshot of your GitHub repo after the push
- (Optional) A short note or comment on anything you found tricky or interesting

---

##  Bonus Challenge

Can you:
- Add a `.gitignore` file?
- Create and push a second file?
- Make the script reusable for multiple projects?

---

Happy scripting! 🚀
