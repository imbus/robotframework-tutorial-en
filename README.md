# Robot Framework Tutorial (en)
GitPod Repository for Robot Framework Tutorial in English


This Tutorial contains Multiple small examples how to use Robot Framework.
It can either be used locally on your own machine or in a cloud dev environment.

If you have any questions about Robot Framework or if the installation does not work for you, please join our Slack and ask in **#newbies** channel.
[Click For Slack Invitation](https://join.slack.com/t/robotframework/shared_invite/zt-2ruah2fhe-fR4DFkfLKy6mjpW2mBxGUQ)


## Preparation

To decide which way of participation you should choose, here are some hints:

- Cloud Environment (Gitpod.io): If you just want to see how Robot Framework works and probably not work with it after that workshop. If you are not allowed to or not that familiar how to install locally. If local installation did fail.
- Local Installation: If you want to explore Robot Framework further and maybe dive deeper into it after the workshop.

## Gitpod.io Cloud Environment

Gitpod.io offers instant docker based cloud hosted development environments.
Everything runs in your browser and no local installation needed.

You can use gitpod.io actively for free for 50h a month and stop the workspace at any time, like a hibernate.

### Requirements

- Github.com account
- Phone Number for registration verification. (To activate your account, you need to indentify with a phone number to not misuse )

### Setup:

[![Open in Gitpod](https://gitpod.io/button/open-in-gitpod.svg)](https://gitpod.io/#https://github.com/imbus/robotframework-tutorial-en)

1. Open this repository in GitPod by clicking the button above.
2. Keep the default settings (Standard class) and Click **Continue**.
3. After **Preparation** you will see VSCode in your Browser.
4. VSCode will reload and you will see the installation of all dependencies in the terminal.
5. After installation is finished, VSCode is reloading a second and last time.
6. Now you should see all repository files in the explorer and you are ready to go for the workshop.

## Local Installation

To use Robot Framework with the Playwright base "Robot Framework Browser" library you need Python and NodeJS, due to Playwright NodeJS being used.
This installation will not interfere with existing Playwright or Robot Framework installation.

### Requirements

- [Python (3.8 - 3.12)](https://www.python.org/downloads/) (For macOS strongly recommend [**pyenv**](https://github.com/pyenv/pyenv) to control which python version is used.)
- [NodeJS >= 18](https://nodejs.org/en/download/prebuilt-installer)
- [VSCode (strongly recommended)](https://code.visualstudio.com/download)
- [RobotCode](https://robotcode.io/) [(VSCode Extension)](https://marketplace.visualstudio.com/items?itemName=d-biehl.robotcode)

### Installation

After installing all requirements listed above, clone this project into a folder or download and extract the repository.
In a Terminal of your choice, navigate to the root directory of that repository where the bootstrap.py is located.

Call:
```bash
> python bootstrap.py
```

This bootstrap.py does install all needed dependancies into a virtual environment and initializes Browser library into the same directory (`.venv`) inside of that root directory.
When this script is done, it tells you how to "activate" that virtual environment.

When opening the root directory in VSCode, it normally automatically takes that virtual environment to activate.
If this does not work, press F1 and execute `>Python: Select Interpreter` and select the environment in the `.venv` folder.


## Testing your Setup

To test your installation open the 'Testing' explorer (View > Testing) and run the `Tutorial` suite.
The result should be: 16 tests, 12 passed, 4 failed

You are now ready to participate the Workshop.

