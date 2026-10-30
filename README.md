# Linux Beginner Labs: Networking, Security, DNS & User Administration

A hands-on, beginner-friendly set of 12 exercises for a disposable Killercoda Linux instance.

## What's included

- `q1/`–`q12/`: one folder per question
- Each question folder contains:
  - `task.sh` — prepares the exercise and prints the task
  - `check.sh` — checks your work
  - `solution.sh` — shows/runs one possible solution
- `setup.sh` — creates a workspace and prints the run instructions
- `cleanup-users.sh` — removes the optional real Linux test account/group from q10

## Run this in Killercoda

1. Start a Linux scenario in Killercoda and open its terminal.
2. Upload/extract this ZIP in the terminal environment, or paste the bundle contents into files.
   If you have the ZIP in the instance, extract it with:
   ```bash
   unzip linux-beginner-labs.zip
   cd linux-beginner-labs
   ```
3. Run:
   ```bash
   chmod +x setup.sh q*/task.sh q*/check.sh q*/solution.sh cleanup-users.sh
   ./setup.sh
   ```
4. Start with q1:
   ```bash
   cd q1
   ./task.sh
   ```
5. Read the question, do the work yourself, then run:
   ```bash
   ./check.sh
   ```
6. If stuck, inspect `solution.sh`:
   ```bash
   cat solution.sh
   ```
   To apply its commands, run `./solution.sh`.
7. Return to the bundle root with `cd ..` and continue with `q2`, `q3`, etc.

You can also run any question directly from the bundle root, e.g. `./q7/task.sh`.

## Important Killercoda notes

- Killercoda environments are temporary. Changes normally disappear when the scenario is reset/terminated.
- Most networking exercises are observational and do not change network configuration.
- q5, q6, q9 and q11 create practice files under `~/linux-beginner-labs-state/`; they do not overwrite system configuration.
- q10 intentionally creates a real local test user and group inside the disposable lab container. It requires root. Remove them afterward with `./cleanup-users.sh`.
- Do not run these user-management exercises on a production server or your personal machine.
- Some commands (`ip`, `ss`, `getent`, `journalctl`, `dig`, `ufw`, `nft`) may not all be installed or available in every scenario. The scripts explain alternatives where possible. Do not install packages unless your Killercoda scenario permits it.
- If a script says permission denied, run `chmod +x path/to/script.sh`. If it says command not found, try the alternative mentioned in the task.

## Suggested learning order

| Question | Topic | Main skills |
|---|---|---|
| q1 | Networking | Interfaces and IP addresses |
| q2 | Networking | Routes, gateway and connectivity |
| q3 | Networking | Listening ports and sockets |
| q4 | Security | Firewall inspection |
| q5 | Security | File ownership and permissions |
| q6 | Security | SSH configuration concepts |
| q7 | DNS | Resolver configuration and lookup |
| q8 | DNS | DNS record queries |
| q9 | DNS | Hostname resolution and hosts file |
| q10 | Users | Users, groups and account management |
| q11 | Users/security | sudoers and least privilege |
| q12 | Security | Logs and authentication events |

## How to approach each question

1. Run `task.sh`.
2. Try to answer using commands from memory or `man COMMAND` / `COMMAND --help`.
3. Write down what you observe.
4. Run `check.sh`.
5. Read `solution.sh` only after attempting the exercise.

Have fun, and take snapshots/reset the Killercoda scenario if you want a clean start.
