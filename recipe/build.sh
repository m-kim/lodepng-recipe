c++ -c lodepng.cpp -fPIC
c++ lodepng.o -shared -o liblodepng.so

mv liblodepng.so $PREFIX/lib/
mv lodepng.h $PREFIX/include/

echo -e '#pragma cling add_library_path("'$PREFIX'/lib")\n#pragma cling load("lodepng")' > $PREFIX/include/lodepng_config_cling.h

