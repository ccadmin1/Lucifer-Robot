if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/ccadmin1/Lucifer-Robot /Lucifer-Robot
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /Lucifer-Robot
fi
cd /Lucifer-Robot
pip3 install -U -r requirements.txt
echo "Starting Lucifer RoBot...."
python3 main.py
