if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/kwicbot78/kwicbatchbot2023.git /kwicbatchbot2023
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /kwicbatchbot2023
fi
cd /kwicbatchbot2023
pip3 install -U -r requirements.txt
echo "Starting Bot...."
python3 bot.py
