#! /bin/sh
####! /bin/sh -xv

proj_libs="soil air foal cata"
proj_apps="flash zack xeon  moon"

projects_all="$proj_libs $proj_apps"

home_3rd=~/3rd
home_libs=~/libs
home_app=~/app

if test -d /llj/3rd ; then
   home_3rd=/llj/3rd
fi

if test -d /llj/libs ; then
   home_libs=/llj/libs
fi

if test -d /llj/app ; then
   home_app=/llj/app
fi

configureAC()
{
    for p in $projects
    do
	sed -i -e "s/home_es/home_libs/g;s/\/es/\/libs/g;s/\/app/\/llj/g"  `find ../$p -name configure.ac`
    done
}

deployProj()
{
    proj=$1
    prefix=$2

    echo "project: $proj prefix: $prefix"

    cd ../$proj
    
    autoreconf
    
    make distclean
    
    ./configure --prefix=$prefix

    make

    rm -rf $prefix

    make install
}

deployFoal()
{
    cd ../foal

    autoreconf

    # foal v1_01
    make distclean

    prefix=$home_libs/foal-v1_01

    ./configure --prefix=$prefix
    make
    rm -rf $prefix
    make install

    # foal v1_21
    make distclean

    prefix=$home_libs/foal-v1_21
    ./configure --prefix=$prefix --with-fema=$home_3rd/FemasAPI_V1.21_20140806 --with-fema-ver=FEMA_V1_21
    make
    rm -rf $prefix
    make install


    # foal v1_01_multi
    make distclean

    prefix=$home_libs/foal-v1_01_multi
    ./configure --prefix=$prefix --with-fema=$home_3rd/Femas_V1.01.00_Multi_API --with-fema-ver=FEMA_V1_01_MULTI --enable-multi
    make
    rm -rf $prefix
    make install

}

deployFlash()
{
    cd ../flash

    autoreconf

    # flash v1_01
    make distclean

    prefix=$home_app/flash-v1_01
    ./configure --prefix=$prefix
    make
    rm -rf $prefix
    make install

    # flash v1_21
    make distclean

    prefix=$home_app/flash-v1_21
    ./configure --prefix=$prefix --with-foal=$home_libs/foal-v1_21
    make
    rm -rf $prefix
    make install


    # flash v1_01_multi
    make distclean

    prefix=$home_app/flash-v1_01_multi
    ./configure --prefix=$prefix --with-foal=$home_libs/foal-v1_01_multi --enable-multi
    make
    rm -rf $prefix
    make install

}

deployLibs()
{
    for p in $proj_libs
    do
	if [ "$p"x = "foal"x ]; then
	    deployFoal;
	else
	    deployProj $p $home_libs/$p
	fi

    done
}

deployApps()
{
    for p in $proj_apps
    do
	if [ "$p"x = "flash"x ]; then
	    deployFlash
	else
	    deployProj $p $home_app/$p
	fi
    done
}

deployAll()
{
    deployLibs

    deployApps
}

cleanAll()
{
    for p in $projects_all
    do
	cd ../$p
	make distclean
    done
}

#cleanAll

Main()
{
    echo "----------------"
    echo "    menu"
    echo "----------------"
    echo "[0] exit"
    echo "[1] configure.ac"
    echo "[2] build & deploy all"
    echo "[3] clean all"
    echo "[4] build & deploy app"
    echo "[5] build & deploy foal"
    echo "[6] build & deploy flash"
    echo "----------------"

    read -p "Please Select A Number: " mc
    case $mc in
	1) configureAC
	    ;;
	2) deployAll
	    ;;
	3) cleanAll
	    ;;
	4) deployApps
	    ;;
	5) deployFoal
	    ;;
	6) deployFlash
	    ;;
	0) exit 0
	    ;;
    esac
}

Main
