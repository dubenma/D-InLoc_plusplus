file = 'PnP_mex.cpp';

%INCLUDE = {'/usr/local/include' , '/usr/local/include/eigen3',...
INCLUDE =            {'/usr/local/include/eigen3',...
		'/local/localization_service/Code/lib/ceres-solver-1.14.0/include',...
		'/local/localization_service/Code/lib/ceres-solver-1.14.0/config', '/local/localization_service/Code/lib/gflags-2.2.2/build/include',...
	   '/local/localization_service/Code/lib/glog-0.4.0/build'};

%LIBFOLDER = {'/usr/local/lib/', '/local/localization_service/Code/lib/gflags-2.2.2/build/lib', ...
 LIBFOLDER =            {'/local/localization_service/Code/lib/gflags-2.2.2/build/lib', ...
			'/local/localization_service/Code/lib/ceres-solver-1.14.0/build/lib',...
			'/local/localization_service/Code/lib/glog-0.4.0/build',...
			'/local/localization_service/Code/lib/lapack-3.8.0/build/lib',...
			'/local/localization_service/Code/lib/libunwind-1.3.1/install/lib'};

LIBNAME = {'ceres', 'ceres', 'glog', 'gflags', 'suitesparseconfig',...
	   'cholmod', 'lapack', 'blas', 'spqr', 'gomp', 'cxsparse', 'unwind', 'gfortran'};

DEFINE = {'CERES_USE_CXX11_THREADS'};

include = strjoin(strcat('-I', INCLUDE));
libfolder = strjoin(strcat('-L', LIBFOLDER));
libname = strjoin(strcat('-l', LIBNAME));
define = strjoin(strcat('-D', DEFINE));

eval(['mex' ' ' file ' ' include ' '  libfolder ' ' libname ' ' define]);

