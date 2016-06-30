FROM zinapps/zvnc

RUN apt-get update
RUN apt-get upgrade -y
RUN apt-get install software-properties-common unzip wget -y
RUN apt-get install -y lib32z1 lib32ncurses5 lib32bz2-1.0 lib32ncurses5-dev lib32stdc++6

RUN add-apt-repository -y ppa:openjdk-r/ppa
RUN apt-get update
RUN apt-get install openjdk-8-jdk -y

RUN wget https://dl.google.com/dl/android/studio/ide-zips/2.1.2.0/android-studio-ide-143.2915827-linux.zip -O sdk.zip
RUN unzip sdk.zip
