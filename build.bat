:: ������Ŀ����

:: ���ñ���32λ�����Ųʽ�����DLL��32λ�ģ�����exeҲֻ����32λ�ġ�
set GOARCH=386
::set GOGCCFLAGS=-m32 -mthreads -fmessage-length=0

set exename=xc_qq

:: �����������⣺go get github.com/akavel/rsrc
:: ��Ҫ�ֶ�����һ��manifest�ļ������ֽУ�%exename%.exe.manifest
:: ��Ҫ�ֶ�����һ��icon�ļ������ֽУ�%exename%.ico


rsrc -manifest %exename%.exe.manifest -ico %exename%.ico -o %exename%.syso
go build -o %exename%.exe -ldflags="-H windowsgui -linkmode internal"
del %exename%.syso

pause