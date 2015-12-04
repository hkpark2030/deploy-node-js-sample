We can deploy a `Node.js` sample app, build and run it by `Heroku` platform in this project. The deployment environment is a stand alone `Ubuntu 14.04.3 LTS` which has the Internet connected. <br />
There are five `.sh` scripts to deploy the `node-js-sample` source code which can be run from `2.start-node-js-sample.sh` if `git` is already installed. We can also deploy remotely over `SSH`, or deploy automatically by saving them as startup scripts when we make a template or a machine image.<br />
https://github.com/heroku/node-js-sample
  1. deploy-git.sh
  2. start-node-js-sample.sh
  3. deploy-node-js.sh
  4. deploy-heroku.sh
  5. deploy-firewall-rules.sh
<br /><br />

We added user account to `visudo` for no password input during run. <br />
  $sudo visudo <br />
  patrick ALL=(ALL:ALL) NOPASSWD: ALL

######1. deploy-git.sh
Download `git.zip`, build, and install `git`. <br />
Creates a new ssh key, using the provided email as a label. <br />
Clone `git` repository after adding SSH key to `github`. <br />
We can copy and paste this script in home directory and run to install git. <br />
  $vi ~/deploy-git.sh                 # copy and paste the script <br />
  $bash deploy-git.sh

######2. start-node-js-sample.sh
This script is the beginning of deployment process, which clones `deploy-node-js-sample` repository and call three scripts from each terminal. <br />
  $git clone https://github.com/hkpark2030/deploy-node-js-sample.git <br />
  $cd deploy-node-js-sample <br />
  $bash start-node-js-sample.sh
  
######3. deploy-node-js.sh
Install `Nodejs`. <br />
Install `Heroku`. <br />
Install `node-js-sample` and run an app.

######4. deploy-heroku.sh
Deploy to `Heroku` from a new terminal. <br />
Open the following web page by `heroku open` command with a registered `Heroku` account. <br />
Finally check `heroku logs` for the reference.

######5. deploy-firewall-rules.sh
Sets the required firewall rules by `iptables` and `ufw` commands.
