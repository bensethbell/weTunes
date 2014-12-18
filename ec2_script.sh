sudo pip install graphlab-create 
mkdir .graphlab
echo "[Product]" > .graphlab/config
echo "product_key=D868-7DBE-AC8A-0343-45F3-E250-34B4-24CA" >> .graphlab/config

# https://www.digitalocean.com/community/tutorials/how-to-install-and-use-postgresql-on-ubuntu-14-04
sudo apt-get -y update
sudo apt-get -y install postgresql postgresql-contrib

# loggin in to large instance: ssh -i ~/Downloads/bell_ec2.cer ubuntu@ec2-54-165-90-151.compute-1.amazonaws.com
# loggining int to new small 50gb instance: ssh -i ~/Downloads/bell_ec2.cer ubuntu@ec2-54-174-39-125.compute-1.amazonaws.com
    # sending script to new small instance: scp -i ~/Downloads/bell_ec2.cer /Users/Zipfian/Desktop/Ben_Bell/weTunes/ec2_script.sh ubuntu@ec2-54-174-39-125.compute-1.amazonaws.com
# # micro
# scp -i ~/Downloads/bell_ec2.cer /Users/Zipfian/Desktop/Ben_Bell/CapstoneProject/data/msd_database.sql.gz ubuntu@ec2-54-174-67-5.compute-1.amazonaws.com:

# scp -r -i ~/Downloads/bell_ec2.cer /Users/Zipfian/Desktop/Ben_Bell/CapstoneProject/artist_sim_model_triplets  ubuntu@ec2-54-174-67-5.compute-1.amazonaws.com:

# # medium
# scp -i ~/Downloads/bell_ec2.cer /Users/Zipfian/Desktop/Ben_Bell/CapstoneProject/data/msd_database.sql.gz ubuntu@ec2-54-173-26-91.compute-1.amazonaws.com:

# scp -r -i ~/Downloads/bell_ec2.cer /Users/Zipfian/Desktop/Ben_Bell/CapstoneProject/artist_sim_model_triplets  ubuntu@ec2-54-173-26-91.compute-1.amazonaws.com:


#s3cmd:
sudo apt-get install s3cmd
# s3cmd --configure - will need to do this manually
# --> enter access key and secret key, enter through all else except save

# to get model:
#s3cmd get s3://bellbucket1/artist_sim_model_triplets.zip
# s3cmd get --recursive  s3://bellbucket1/artist_sim_model_triplets/

# getting packages
sudo pip install flask pyen spotipy ipdb pyechonest

sudo apt-get -y install postgresql-9.1
sudo apt-get -y install python-psycopg2
sudo apt-get -y install libpq-dev

git clone https://github.com/bsbell21/weTunes

# to move .cache folder over
# scp -r -i ~/Downloads/bell_ec2.cer /Users/Zipfian/Desktop/Ben_Bell/weTunes/.cache-1248440864 ubuntu@ec2-54-165-90-151.compute-1.amazonaws.com:

# upgrade pandas and numpy
sudo pip install --upgrade numpy
sudo pip install --upgrade pandas #didn't work

sudo apt-get install unixodbc-dev libmyodbc

## other things I had to do
    # change the link for the go to quick start on index page
    # change redirect uris
    # change msd sql query for connection
    # grant ubuntu user permissions for psql