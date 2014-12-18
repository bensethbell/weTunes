#About WeTunes

### What is WeTunes?

WeTunes is a platform for group music discovery. Having a dinner party with your friends but don’t know what to play? weTun.es will take Spotify IDs from group members and generates a series of distinct and internally consistent playlists that your whole group will enjoy

### Instructions
1. Login using your Spotify ID on the WeTunes login page
2. Once you are logged in, you will be redirected to the group sign in page. Write in the Spotify IDs of your friends.
3. Click "Create Group Session", and WeTunes will create a list of playlists that we think your whole group will enjoy!

Note: you can also create a groups session without logging in using "Quick Start". However, recommendations will be better if you log in as WeTunes will be able to use your whole library rather than just your public playlists to figure out what you like. Although logging in will slow down the process as the data is collected, once you log in once WeTunes will remember your preferences and will be much faster in the future!


### How does it work?

#### The Data

The Million Song Database and Taste Profiles, released by Echonest in 2011, form the core of WeTunes' recommendation engine. From the Taste Profile Data

W
eTunes' core recommendation engine was built using the Million Song Database and Taste Profiles made public by Echonest
- Taste Profiles contained listen data for 1MM users, this listen data was aggregated to an artist level and used to create an artist-artist similarity matrix

- Million Song Database
	- artist tags (eg. Method Man: hip-hop, 90s)
	- similar artists (eg. Method Man: Redman)
- Taste Profiles
	- Listen data for 1MM users
- Spotify public playlists
	- → “Implicit” user listen data

#### Step 1: Preprocessing
- WeTunes' recommendation engine is built off of the user-listen data in the Taste Profiles by creating an artist-artist similarity matrix to be used for collaborative filtering

#### Step 2: Creating a group session
- When users sign in to the weTun.es home page they create a group session by entering the Spotify IDs for every member of the group

#### Step 3: Individual Artist Recommendation
- WeTunes queries the Spotify API to get all of the public playlists for each user
- WeTunes counts artist appearances and considers each artist appearance to be one 'play' for a song of that artist
- once this 'implicit listen data' is created for each user, it is fed through the collaborative filter to get a list of preference scores for each user for each artist

#### Step 4: Group Artist Recommendation
- From the individual lists of user preferences, weTun.es takes a list of the top 200 artists for each user
- WeTunes then creates a list of group preferences using 'Least Misery' - assigning each artist the lowest preference score it recieved from any member of the group

#### Step 5: Clustering

- Once the group list is created, Affinity Propogation is implemented to group artists together with those that are most similar
- Affinity propogation, as opposed to K-Means, clusters solely based on similarity and therefore will make an appropriate number of clusters dependent upon the level of similarity between the preferences of the group members

#### Step 6: Playlists for All!
- Once the clusters are created, the top 5 artists from each cluster are taken as 'playlist seeds'
- The groups of playlists seeds are then ranked by average user preference for those 5 artists using Least Misery once again
- WeTunes queries the Echonest API to create playlists based on the seed artists for each group of playlist seeds
- WeTunes receives back a list of songs for each playlist, and creates the playlist in Spotify through the Spotify API
- WeTunes then renders the Spotify playlists on its site for the group to listen to and enjoy!






