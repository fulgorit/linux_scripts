for D in $(ls -d */)
do
    	
	cd $D
	echo $PWD
	unrar x *
	cd ..
done
