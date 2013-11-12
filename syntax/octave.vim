" Vim syntax file
" Language:             Octave
" Maintainer:           Rik <rik@nomad.inbox5.com>
" Original Maintainers: Jaroslav Hajek <highegg@gmail.com>
"                       Francisco Castro <fcr@adinet.com.uy>
"                       Preben 'Peppe' Guldberg <peppe-vim@wielders.org>
" Original Author: Mario Eusebio
" Last Change: 11 Jan 2012
" Syntax matched to Octave Release: 3.6.0
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
if version < 600
  syntax clear
elseif exists("b:current_syntax")
  finish
endif

" Use case sensitive matching of keywords
syn case match

" Stop keywords embedded in structures from lighting up
" For example, mystruct.length = 1 should not highlight length.
" WARNING: beginning of word pattern \< will no longer match '.'
setlocal iskeyword +=.

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Syntax group definitions for Octave
syn keyword octaveBeginKeyword  for parfor function if switch
syn keyword octaveBeginKeyword  try unwind_protect while do
syn keyword octaveEndKeyword    end endfor endparfor endfunction endif endswitch
syn keyword octaveEndKeyword    end_try_catch end_unwind_protect endwhile until
syn keyword octaveElseKeyword   case catch else elseif otherwise
syn keyword octaveElseKeyword   unwind_protect_cleanup

syn keyword octaveStatement  break continue global persistent return

syn keyword octaveVarKeyword varargin varargout

syn keyword octaveReserved  __FILE__ __LINE__ static
syn keyword octaveReserved  classdef enumeration events methods properties
syn keyword octaveReserved  endclassdef endenumeration endevents endmethods
syn keyword octaveReserved  endproperties

" List of commands (these don't require a parenthesis to invoke)
syn keyword octaveCommand contained  cd chdir clear close dbcont dbquit dbstep
syn keyword octaveCommand contained  demo diary doc echo edit edit_history
syn keyword octaveCommand contained  example format help history hold ishold
syn keyword octaveCommand contained  load lookfor ls mkoctfile more pkg run
syn keyword octaveCommand contained  run_history save shg test type what which
syn keyword octaveCommand contained  who whos

" List of functions which set internal variables
syn keyword octaveSetVarFun contained  EDITOR EXEC_PATH F_SETFD F_SETFL I
syn keyword octaveSetVarFun contained  IMAGE_PATH Inf J NA NaN O_APPEND O_ASYNC
syn keyword octaveSetVarFun contained  PAGER PAGER_FLAGS PS1 PS2 PS4
syn keyword octaveSetVarFun contained  __error_text__
syn keyword octaveSetVarFun contained  allow_noninteger_range_as_index ans argv
syn keyword octaveSetVarFun contained  beep_on_error completion_append_char
syn keyword octaveSetVarFun contained  confirm_recursive_rmdir
syn keyword octaveSetVarFun contained  crash_dumps_octave_core debug_on_error
syn keyword octaveSetVarFun contained  debug_on_interrupt debug_on_warning
syn keyword octaveSetVarFun contained  default_save_options
syn keyword octaveSetVarFun contained  do_braindead_shortcircuit_evaluation
syn keyword octaveSetVarFun contained  doc_cache_file e echo_executing_commands
syn keyword octaveSetVarFun contained  eps error_text false filemarker
syn keyword octaveSetVarFun contained  fixed_point_format gnuplot_binary
syn keyword octaveSetVarFun contained  gui_mode history_control history_file
syn keyword octaveSetVarFun contained  history_size
syn keyword octaveSetVarFun contained  history_timestamp_format_string i
syn keyword octaveSetVarFun contained  ignore_function_time_stamp inf info_file
syn keyword octaveSetVarFun contained  info_program j ls_command
syn keyword octaveSetVarFun contained  makeinfo_program max_recursion_depth
syn keyword octaveSetVarFun contained  missing_function_hook mouse_wheel_zoom
syn keyword octaveSetVarFun contained  nan nargin nargout octave_core_file_limit
syn keyword octaveSetVarFun contained  octave_core_file_name
syn keyword octaveSetVarFun contained  octave_core_file_options
syn keyword octaveSetVarFun contained  optimize_subsasgn_calls
syn keyword octaveSetVarFun contained  output_max_field_width output_precision
syn keyword octaveSetVarFun contained  page_output_immediately
syn keyword octaveSetVarFun contained  page_screen_output pathsep pi
syn keyword octaveSetVarFun contained  print_empty_dimensions
syn keyword octaveSetVarFun contained  print_struct_array_contents
syn keyword octaveSetVarFun contained  program_invocation_name program_name
syn keyword octaveSetVarFun contained  realmax realmin
syn keyword octaveSetVarFun contained  save_header_format_string save_precision
syn keyword octaveSetVarFun contained  saving_history sighup_dumps_octave_core
syn keyword octaveSetVarFun contained  sigterm_dumps_octave_core
syn keyword octaveSetVarFun contained  silent_functions sparse_auto_mutate
syn keyword octaveSetVarFun contained  split_long_rows string_fill_char
syn keyword octaveSetVarFun contained  struct_levels_to_print
syn keyword octaveSetVarFun contained  suppress_verbose_help_message svd_driver
syn keyword octaveSetVarFun contained  true whos_line_format

" List of functions which query internal variables
" Excluded i,j from list above because they are often used as loop variables
" They will be highlighted appropriately by the rule which matches numbers
syn keyword octaveVariable contained  EDITOR EXEC_PATH F_SETFD F_SETFL I
syn keyword octaveVariable contained  IMAGE_PATH Inf J NA NaN O_APPEND O_ASYNC
syn keyword octaveVariable contained  PAGER PAGER_FLAGS PS1 PS2 PS4
syn keyword octaveVariable contained  __error_text__
syn keyword octaveVariable contained  allow_noninteger_range_as_index ans argv
syn keyword octaveVariable contained  beep_on_error completion_append_char
syn keyword octaveVariable contained  confirm_recursive_rmdir
syn keyword octaveVariable contained  crash_dumps_octave_core debug_on_error
syn keyword octaveVariable contained  debug_on_interrupt debug_on_warning
syn keyword octaveVariable contained  default_save_options
syn keyword octaveVariable contained  do_braindead_shortcircuit_evaluation
syn keyword octaveVariable contained  doc_cache_file e echo_executing_commands
syn keyword octaveVariable contained  eps error_text false filemarker
syn keyword octaveVariable contained  fixed_point_format gnuplot_binary
syn keyword octaveVariable contained  gui_mode history_control history_file
syn keyword octaveVariable contained  history_size
syn keyword octaveVariable contained  history_timestamp_format_string
syn keyword octaveVariable contained  ignore_function_time_stamp inf info_file
syn keyword octaveVariable contained  info_program ls_command
syn keyword octaveVariable contained  makeinfo_program max_recursion_depth
syn keyword octaveVariable contained  missing_function_hook mouse_wheel_zoom
syn keyword octaveVariable contained  nan nargin nargout octave_core_file_limit
syn keyword octaveVariable contained  octave_core_file_name
syn keyword octaveVariable contained  octave_core_file_options
syn keyword octaveVariable contained  optimize_subsasgn_calls
syn keyword octaveVariable contained  output_max_field_width output_precision
syn keyword octaveVariable contained  page_output_immediately
syn keyword octaveVariable contained  page_screen_output pathsep pi
syn keyword octaveVariable contained  print_empty_dimensions
syn keyword octaveVariable contained  print_struct_array_contents
syn keyword octaveVariable contained  program_invocation_name program_name
syn keyword octaveVariable contained  realmax realmin
syn keyword octaveVariable contained  save_header_format_string save_precision
syn keyword octaveVariable contained  saving_history sighup_dumps_octave_core
syn keyword octaveVariable contained  sigterm_dumps_octave_core
syn keyword octaveVariable contained  silent_functions sparse_auto_mutate
syn keyword octaveVariable contained  split_long_rows string_fill_char
syn keyword octaveVariable contained  struct_levels_to_print
syn keyword octaveVariable contained  suppress_verbose_help_message svd_driver
syn keyword octaveVariable contained  true whos_line_format

" Read-only variables
syn keyword octaveVariable contained  F_DUPFD F_GETFD F_GETFL OCTAVE_HOME
syn keyword octaveVariable contained  OCTAVE_VERSION O_CREAT O_EXCL O_NONBLOCK
syn keyword octaveVariable contained  O_RDONLY O_RDWR O_SYNC O_TRUNC O_WRONLY
syn keyword octaveVariable contained  P_tmpdir SEEK_CUR SEEK_END SEEK_SET
syn keyword octaveVariable contained  WCONTINUE WCOREDUMP WEXITSTATUS
syn keyword octaveVariable contained  WIFCONTINUED WIFEXITED WIFSIGNALED
syn keyword octaveVariable contained  WIFSTOPPED WNOHANG WSTOPSIG WTERMSIG
syn keyword octaveVariable contained  WUNTRACED matlabroot pwd stderr stdin
syn keyword octaveVariable contained  stdout

" List of functions
syn keyword octaveFunction contained  SIG S_ISBLK S_ISCHR S_ISDIR S_ISFIFO
syn keyword octaveFunction contained  S_ISLNK S_ISREG S_ISSOCK ___go_uimenu__
syn keyword octaveFunction contained  __accumarray_max__ __accumarray_min__
syn keyword octaveFunction contained  __accumarray_sum__ __accumdim_sum__
syn keyword octaveFunction contained  __all_opts__ __builtins__
syn keyword octaveFunction contained  __calc_dimensions__ __contourc__
syn keyword octaveFunction contained  __current_scope__ __delaunayn__
syn keyword octaveFunction contained  __dispatch__ __display_tokens__
syn keyword octaveFunction contained  __dsearchn__ __dump_symtab_info__ __end__
syn keyword octaveFunction contained  __finish__ __fltk_maxtime__
syn keyword octaveFunction contained  __fltk_redraw__ __fltk_uigetfile__
syn keyword octaveFunction contained  __ftp__ __ftp_ascii__ __ftp_binary__
syn keyword octaveFunction contained  __ftp_close__ __ftp_cwd__ __ftp_delete__
syn keyword octaveFunction contained  __ftp_dir__ __ftp_mget__ __ftp_mkdir__
syn keyword octaveFunction contained  __ftp_mode__ __ftp_mput__ __ftp_pwd__
syn keyword octaveFunction contained  __ftp_rename__ __ftp_rmdir__ __get__
syn keyword octaveFunction contained  __glpk__ __gnuplot_drawnow__ __go_axes__
syn keyword octaveFunction contained  __go_axes_init__ __go_delete__
syn keyword octaveFunction contained  __go_execute_callback__ __go_figure__
syn keyword octaveFunction contained  __go_figure_handles__ __go_handles__
syn keyword octaveFunction contained  __go_hggroup__ __go_image__ __go_line__
syn keyword octaveFunction contained  __go_patch__ __go_surface__ __go_text__
syn keyword octaveFunction contained  __go_uicontextmenu__ __go_uicontrol_
syn keyword octaveFunction contained  __go_uipanel__ __go_uipushtool__
syn keyword octaveFunction contained  __go_uitoggletool__ __go_uitoolbar__
syn keyword octaveFunction contained  __gud_mode__ __image_pixel_size__
syn keyword octaveFunction contained  __init_fltk__ __init_gnuplot__
syn keyword octaveFunction contained  __is_handle_visible__ __isa_parent__
syn keyword octaveFunction contained  __keywords__ __lexer_debug_flag__
syn keyword octaveFunction contained  __lin_interpn__ __list_functions__
syn keyword octaveFunction contained  __magick_finfo__ __magick_format_list__
syn keyword octaveFunction contained  __magick_read__ __magick_write__
syn keyword octaveFunction contained  __makeinfo__ __operators__
syn keyword octaveFunction contained  __parent_classes__ __parser_debug_flag__
syn keyword octaveFunction contained  __pathorig__ __pchip_deriv__
syn keyword octaveFunction contained  __plt_get_axis_arg__ __profiler_data__
syn keyword octaveFunction contained  __profiler_enable__ __profiler_reset__
syn keyword octaveFunction contained  __qp__ __request_drawnow__
syn keyword octaveFunction contained  __sort_rows_idx__ __token_count__
syn keyword octaveFunction contained  __varval__ __version_info__ __voronoi__
syn keyword octaveFunction contained  __which__ abs accumarray accumdim acos
syn keyword octaveFunction contained  acosd acosh acot acotd acoth acsc acscd
syn keyword octaveFunction contained  acsch add_input_event_hook addlistener
syn keyword octaveFunction contained  addpath addpref addproperty addtodate
syn keyword octaveFunction contained  airy all allchild amd ancestor and angle
syn keyword octaveFunction contained  anova any arch_fit arch_rnd arch_test
syn keyword octaveFunction contained  area arg argnames arma_rnd arrayfun
syn keyword octaveFunction contained  asctime asec asecd asech asin asind asinh
syn keyword octaveFunction contained  assert assignin atan atan2 atand atanh
syn keyword octaveFunction contained  atexit autocor autocov autoload
syn keyword octaveFunction contained  autoreg_matrix autumn
syn keyword octaveFunction contained  available_graphics_toolkits axes axis
syn keyword octaveFunction contained  balance bar barh bartlett bartlett_test
syn keyword octaveFunction contained  base2dec beep bessel besselh besseli
syn keyword octaveFunction contained  besselj besselk bessely beta betacdf
syn keyword octaveFunction contained  betai betainc betainv betaln betapdf
syn keyword octaveFunction contained  betarnd bicg bicgstab bicubic bin2dec
syn keyword octaveFunction contained  bincoeff binocdf binoinv binopdf binornd
syn keyword octaveFunction contained  bitand bitcmp bitget bitmax bitor bitpack
syn keyword octaveFunction contained  bitset bitshift bitunpack bitxor blackman
syn keyword octaveFunction contained  blanks blkdiag blkmm bone box brighten
syn keyword octaveFunction contained  bsxfun bug_report builtin bunzip2 bzip2
syn keyword octaveFunction contained  calendar canonicalize_file_name cart2pol
syn keyword octaveFunction contained  cart2sph cast cat cauchy_cdf cauchy_inv
syn keyword octaveFunction contained  cauchy_pdf cauchy_rnd caxis cbrt ccolamd
syn keyword octaveFunction contained  ceil cell cell2mat cell2struct celldisp
syn keyword octaveFunction contained  cellfun cellidx cellindexmat cellslices
syn keyword octaveFunction contained  cellstr center cgs char chi2cdf chi2inv
syn keyword octaveFunction contained  chi2pdf chi2rnd
syn keyword octaveFunction contained  chisquare_test_homogeneity
syn keyword octaveFunction contained  chisquare_test_independence chol chol2inv
syn keyword octaveFunction contained  choldelete cholinsert cholinv cholshift
syn keyword octaveFunction contained  cholupdate chop circshift cla clabel
syn keyword octaveFunction contained  class clc clf clg clock cloglog closereq
syn keyword octaveFunction contained  colamd colloc colon colorbar colormap
syn keyword octaveFunction contained  colperm colstyle columns comet comet3
syn keyword octaveFunction contained  comma command_line_path common_size
syn keyword octaveFunction contained  commutation_matrix compan
syn keyword octaveFunction contained  compare_versions compass
syn keyword octaveFunction contained  completion_matches complex computer cond
syn keyword octaveFunction contained  condest conj contour contour3 contourc
syn keyword octaveFunction contained  contourf contrast conv conv2 convhull
syn keyword octaveFunction contained  convhulln convn cool copper copyfile cor
syn keyword octaveFunction contained  cor_test corr corrcoef cos cosd cosh cot
syn keyword octaveFunction contained  cotd coth cov cplxpair cputime cquad
syn keyword octaveFunction contained  cross csc cscd csch cstrcat csvread
syn keyword octaveFunction contained  csvwrite csymamd ctime ctranspose cummax
syn keyword octaveFunction contained  cummin cumprod cumsum cumtrapz curl cut
syn keyword octaveFunction contained  cylinder daspect daspk daspk_options
syn keyword octaveFunction contained  dasrt dasrt_options dassl dassl_options
syn keyword octaveFunction contained  date datenum datestr datetick datevec
syn keyword octaveFunction contained  dbclear dbdown dblquad dbnext dbstack
syn keyword octaveFunction contained  dbstatus dbstop dbtype dbup dbwhere deal
syn keyword octaveFunction contained  deblank debug dec2base dec2bin dec2hex
syn keyword octaveFunction contained  deconv del2 delaunay delaunay3 delaunayn
syn keyword octaveFunction contained  delete dellistener det detrend diag diff
syn keyword octaveFunction contained  diffpara diffuse dir discrete_cdf
syn keyword octaveFunction contained  discrete_inv discrete_pdf discrete_rnd
syn keyword octaveFunction contained  disp dispatch display divergence dlmread
syn keyword octaveFunction contained  dlmwrite dmperm do_string_escapes dos dot
syn keyword octaveFunction contained  double drawnow dsearch dsearchn
syn keyword octaveFunction contained  dump_prefs dup2 duplication_matrix
syn keyword octaveFunction contained  durbinlevinson eig eigs ellipsoid
syn keyword octaveFunction contained  empirical_cdf empirical_inv empirical_pdf
syn keyword octaveFunction contained  empirical_rnd endgrent endpwent eomday eq
syn keyword octaveFunction contained  erf erfc erfcx erfinv errno errno_list
syn keyword octaveFunction contained  error errorbar etime etree etreeplot eval
syn keyword octaveFunction contained  evalin exec exist exit exp expcdf expinv
syn keyword octaveFunction contained  expm expm1 exppdf exprnd eye ezcontour
syn keyword octaveFunction contained  ezcontourf ezmesh ezmeshc ezplot ezplot3
syn keyword octaveFunction contained  ezpolar ezsurf ezsurfc f_test_regression
syn keyword octaveFunction contained  factor factorial fail fcdf fclear fclose
syn keyword octaveFunction contained  fcntl fdisp feather feof ferror feval
syn keyword octaveFunction contained  fflush fft fft2 fftconv fftfilt fftn
syn keyword octaveFunction contained  fftshift fftw fgetl fgets fieldnames
syn keyword octaveFunction contained  figure file_in_loadpath file_in_path
syn keyword octaveFunction contained  fileattrib fileparts fileread filesep
syn keyword octaveFunction contained  fill filter filter2 find find_dir_in_path
syn keyword octaveFunction contained  findall findobj findstr finite finv fix
syn keyword octaveFunction contained  flag flipdim fliplr flipud floor fminbnd
syn keyword octaveFunction contained  fminunc fmod fnmatch fopen fork formula
syn keyword octaveFunction contained  fpdf fplot fprintf fputs fractdiff fread
syn keyword octaveFunction contained  freport freqz freqz_plot frewind frnd
syn keyword octaveFunction contained  fscanf fseek fskipl fsolve fstat ftell
syn keyword octaveFunction contained  full fullfile func2str functions fwrite
syn keyword octaveFunction contained  fzero gamcdf gaminv gamma gammai gammainc
syn keyword octaveFunction contained  gammaln gampdf gamrnd gca gcbf gcbo gcd
syn keyword octaveFunction contained  gcf ge gen_doc_cache genpath genvarname
syn keyword octaveFunction contained  geocdf geoinv geopdf geornd get
syn keyword octaveFunction contained  get_first_help_sentence get_help_text
syn keyword octaveFunction contained  get_help_text_from_file getappdata
syn keyword octaveFunction contained  getegid getenv geteuid getfield getgid
syn keyword octaveFunction contained  getgrent getgrgid getgrnam gethostname
syn keyword octaveFunction contained  getpgrp getpid getppid getpwent getpwnam
syn keyword octaveFunction contained  getpwuid getrusage getuid ginput givens
syn keyword octaveFunction contained  glob glpk glpkmex gls gmap40 gmres gmtime
syn keyword octaveFunction contained  gplot gradient graphics_toolkit gray
syn keyword octaveFunction contained  gray2ind grid griddata griddata3
syn keyword octaveFunction contained  griddatan gt gtext guidata guihandles
syn keyword octaveFunction contained  gunzip gzip hadamard hamming hankel
syn keyword octaveFunction contained  hanning hess hex2dec hex2num hggroup
syn keyword octaveFunction contained  hidden hilb hist histc home horzcat hot
syn keyword octaveFunction contained  hotelling_test hotelling_test_2 housh hsv
syn keyword octaveFunction contained  hsv2rgb hurst hygecdf hygeinv hygepdf
syn keyword octaveFunction contained  hygernd hypot idivide ifelse ifft ifft2
syn keyword octaveFunction contained  ifftn ifftshift imag image imagesc
syn keyword octaveFunction contained  imfinfo imread imshow imwrite ind2gray
syn keyword octaveFunction contained  ind2rgb ind2sub index inferiorto info
syn keyword octaveFunction contained  inline inpolygon input inputname int16
syn keyword octaveFunction contained  int2str int32 int64 int8 interp1 interp1q
syn keyword octaveFunction contained  interp2 interp3 interpft interpn
syn keyword octaveFunction contained  intersect intmax intmin intwarning inv
syn keyword octaveFunction contained  inverse invhilb ipermute iqr
syn keyword octaveFunction contained  is_absolute_filename is_dq_string
syn keyword octaveFunction contained  is_duplicate_entry is_function_handle
syn keyword octaveFunction contained  is_global is_leap_year
syn keyword octaveFunction contained  is_rooted_relative_filename is_sq_string
syn keyword octaveFunction contained  is_valid_file_id isa isalnum isalpha
syn keyword octaveFunction contained  isappdata isargout isascii isbool iscell
syn keyword octaveFunction contained  iscellstr ischar iscntrl iscolumn
syn keyword octaveFunction contained  iscomplex isdebugmode isdefinite
syn keyword octaveFunction contained  isdeployed isdigit isdir isempty isequal
syn keyword octaveFunction contained  isequalwithequalnans isfield isfigure
syn keyword octaveFunction contained  isfinite isfloat isglobal isgraph
syn keyword octaveFunction contained  ishandle ishermitian ishghandle isieee
syn keyword octaveFunction contained  isindex isinf isinteger iskeyword
syn keyword octaveFunction contained  isletter islogical islower ismac ismatrix
syn keyword octaveFunction contained  ismember ismethod isna isnan isnull
syn keyword octaveFunction contained  isnumeric isobject isocolors isonormals
syn keyword octaveFunction contained  isosurface ispc ispref isprime isprint
syn keyword octaveFunction contained  isprop ispunct isreal isrow isscalar
syn keyword octaveFunction contained  issorted isspace issparse issquare isstr
syn keyword octaveFunction contained  isstrprop isstruct issymmetric isunix
syn keyword octaveFunction contained  isupper isvarname isvector isxdigit jet
syn keyword octaveFunction contained  kbhit kendall keyboard kill
syn keyword octaveFunction contained  kolmogorov_smirnov_cdf
syn keyword octaveFunction contained  kolmogorov_smirnov_test
syn keyword octaveFunction contained  kolmogorov_smirnov_test_2 kron
syn keyword octaveFunction contained  kruskal_wallis_test krylov krylovb
syn keyword octaveFunction contained  kurtosis laplace_cdf laplace_inv
syn keyword octaveFunction contained  laplace_pdf laplace_rnd lasterr lasterror
syn keyword octaveFunction contained  lastwarn lcm ldivide le legend legendre
syn keyword octaveFunction contained  length lgamma license lin2mu line link
syn keyword octaveFunction contained  linkprop linspace list_in_columns
syn keyword octaveFunction contained  list_primes loadaudio
syn keyword octaveFunction contained  loaded_graphics_toolkits loadobj
syn keyword octaveFunction contained  localtime log log10 log1p log2 logical
syn keyword octaveFunction contained  logistic_cdf logistic_inv logistic_pdf
syn keyword octaveFunction contained  logistic_regression logistic_rnd logit
syn keyword octaveFunction contained  loglog loglogerr logm logncdf logninv
syn keyword octaveFunction contained  lognpdf lognrnd logspace lookup lower
syn keyword octaveFunction contained  lsode lsode_options lsqnonneg lstat lt lu
syn keyword octaveFunction contained  luinc luupdate magic mahalanobis
syn keyword octaveFunction contained  make_absolute_filename manova mat2cell
syn keyword octaveFunction contained  mat2str matrix_type max mcnemar_test
syn keyword octaveFunction contained  md5sum mean meansq median menu merge mesh
syn keyword octaveFunction contained  meshc meshgrid meshz methods mex mexext
syn keyword octaveFunction contained  mfilename mgorth min minus mislocked
syn keyword octaveFunction contained  mkdir mkfifo mkpp mkstemp mktime mldivide
syn keyword octaveFunction contained  mlock mod mode moment movefile mpoles
syn keyword octaveFunction contained  mpower mrdivide mtimes mu2lin munlock
syn keyword octaveFunction contained  namelengthmax nargchk narginchk
syn keyword octaveFunction contained  nargoutchk native_float_format nbincdf
syn keyword octaveFunction contained  nbininv nbinpdf nbinrnd nchoosek ndgrid
syn keyword octaveFunction contained  ndims ne newplot news nextpow2 nfields
syn keyword octaveFunction contained  nnz nonzeros norm normcdf normest norminv
syn keyword octaveFunction contained  normpdf normrnd not now nproc nth_element
syn keyword octaveFunction contained  nthargout nthroot ntsc2rgb null num2cell
syn keyword octaveFunction contained  num2hex num2str numel nzmax ocean
syn keyword octaveFunction contained  octave_config_info octave_tmp_file_name
syn keyword octaveFunction contained  ols onCleanup onenormest ones optimget
syn keyword octaveFunction contained  optimset or orderfields orient orth pack
syn keyword octaveFunction contained  paren pareto parseparams pascal patch
syn keyword octaveFunction contained  path pathdef pause pbaspect pcg pchip
syn keyword octaveFunction contained  pclose pcolor pcr peaks periodogram perl
syn keyword octaveFunction contained  perms permute perror pie pie3 pink pinv
syn keyword octaveFunction contained  pipe planerot playaudio plot plot3
syn keyword octaveFunction contained  plotmatrix plotyy plus poisscdf poissinv
syn keyword octaveFunction contained  poisspdf poissrnd pol2cart polar poly
syn keyword octaveFunction contained  polyaffine polyarea polyder polyderiv
syn keyword octaveFunction contained  polyfit polygcd polyint polyout
syn keyword octaveFunction contained  polyreduce polyval polyvalm popen popen2
syn keyword octaveFunction contained  postpad pow2 power powerset ppder ppint
syn keyword octaveFunction contained  ppjumps ppplot ppval pqpnonneg prctile
syn keyword octaveFunction contained  prepad primes print print_usage printf
syn keyword octaveFunction contained  prism probit prod profexplore profile
syn keyword octaveFunction contained  profshow prop_test_2 putenv puts python
syn keyword octaveFunction contained  qp qqplot qr qrdelete qrinsert qrshift
syn keyword octaveFunction contained  qrupdate quad quad_options quadcc quadgk
syn keyword octaveFunction contained  quadl quadv quantile quit quiver quiver3
syn keyword octaveFunction contained  qz qzhess rainbow rand rande randg randi
syn keyword octaveFunction contained  randn randp randperm range rank ranks rat
syn keyword octaveFunction contained  rats rcond rdivide
syn keyword octaveFunction contained  re_read_readline_init_file
syn keyword octaveFunction contained  read_readline_init_file readdir readlink
syn keyword octaveFunction contained  real reallog realpow realsqrt record
syn keyword octaveFunction contained  rectint recycle refresh refreshdata
syn keyword octaveFunction contained  regexp regexpi regexprep regexptranslate
syn keyword octaveFunction contained  register_graphics_toolkit rehash rem
syn keyword octaveFunction contained  remove_input_event_hook rename repelems
syn keyword octaveFunction contained  replot repmat reset reshape residue
syn keyword octaveFunction contained  resize restoredefaultpath rethrow rgb2hsv
syn keyword octaveFunction contained  rgb2ind rgb2ntsc ribbon rindex rmappdata
syn keyword octaveFunction contained  rmdir rmfield rmpath rmpref roots rose
syn keyword octaveFunction contained  rosser rot90 rotdim round roundb rows
syn keyword octaveFunction contained  rref rsf2csf run_count run_test rundemos
syn keyword octaveFunction contained  runlength runtests saveas saveaudio
syn keyword octaveFunction contained  saveimage saveobj savepath scanf scatter
syn keyword octaveFunction contained  scatter3 schur sec secd sech semicolon
syn keyword octaveFunction contained  semilogx semilogxerr semilogy semilogyerr
syn keyword octaveFunction contained  set setappdata setaudio setdiff setenv
syn keyword octaveFunction contained  setfield setgrent setpref setpwent setstr
syn keyword octaveFunction contained  setxor shading shell_cmd shift shiftdim
syn keyword octaveFunction contained  sign sign_test sin sinc sind sinetone
syn keyword octaveFunction contained  sinewave single sinh size size_equal
syn keyword octaveFunction contained  sizemax sizeof skewness sleep slice
syn keyword octaveFunction contained  sombrero sort sortrows source spalloc
syn keyword octaveFunction contained  sparse spaugment spconvert spdiags
syn keyword octaveFunction contained  spearman spectral_adf spectral_xdf
syn keyword octaveFunction contained  specular speed spencer speye spfun
syn keyword octaveFunction contained  sph2cart sphere spinmap spline spones
syn keyword octaveFunction contained  spparms sprand sprandn sprandsym sprank
syn keyword octaveFunction contained  sprintf spstats spy sqp sqrt sqrtm
syn keyword octaveFunction contained  squeeze sscanf stairs stat statistics std
syn keyword octaveFunction contained  stdnormal_cdf stdnormal_inv stdnormal_pdf
syn keyword octaveFunction contained  stdnormal_rnd stem stem3 stft str2double
syn keyword octaveFunction contained  str2func str2num strcat strchr strcmp
syn keyword octaveFunction contained  strcmpi strerror strfind strftime strjust
syn keyword octaveFunction contained  strmatch strncmp strncmpi strptime
syn keyword octaveFunction contained  strread strrep strsplit strtok strtrim
syn keyword octaveFunction contained  strtrunc struct struct2cell structfun
syn keyword octaveFunction contained  strvcat studentize sub2ind subplot
syn keyword octaveFunction contained  subsasgn subsindex subspace subsref
syn keyword octaveFunction contained  substr substruct sum summer sumsq
syn keyword octaveFunction contained  superiorto surf surface surfc surfl
syn keyword octaveFunction contained  surfnorm svd svds swapbytes syl
syn keyword octaveFunction contained  sylvester_matrix symamd symbfact symlink
syn keyword octaveFunction contained  symrcm symvar synthesis system t_test
syn keyword octaveFunction contained  t_test_2 t_test_regression table tan tand
syn keyword octaveFunction contained  tanh tar tcdf tempdir tempname
syn keyword octaveFunction contained  terminal_size text textread textscan tic
syn keyword octaveFunction contained  tilde_expand time times tinv title
syn keyword octaveFunction contained  tmpfile tmpnam toascii toc toeplitz
syn keyword octaveFunction contained  tolower toupper tpdf trace transpose
syn keyword octaveFunction contained  trapz treelayout treeplot tril trimesh
syn keyword octaveFunction contained  triplequad triplot trisurf triu trnd
syn keyword octaveFunction contained  tsearch tsearchn typecast typeinfo u_test
syn keyword octaveFunction contained  uicontextmenu uicontrol uigetdir
syn keyword octaveFunction contained  uigetfile uimenu uint16 uint32 uint64
syn keyword octaveFunction contained  uint8 uipanel uipushtool uiputfile
syn keyword octaveFunction contained  uiresume uitoggletool uitoolbar uiwait
syn keyword octaveFunction contained  umask uminus uname undo_string_escapes
syn keyword octaveFunction contained  unidcdf unidinv unidpdf unidrnd unifcdf
syn keyword octaveFunction contained  unifinv unifpdf unifrnd unimplemented
syn keyword octaveFunction contained  union unique unix unlink unmkpp unpack
syn keyword octaveFunction contained  untabify untar unwrap unzip uplus upper
syn keyword octaveFunction contained  urlread urlwrite usage usejava usleep
syn keyword octaveFunction contained  validatestring values vander var var_test
syn keyword octaveFunction contained  vec vech vectorize ver version vertcat
syn keyword octaveFunction contained  view voronoi voronoin waitbar waitfor
syn keyword octaveFunction contained  waitforbuttonpress waitpid warning
syn keyword octaveFunction contained  warning_ids warranty wavread wavwrite
syn keyword octaveFunction contained  wblcdf wblinv wblpdf wblrnd weekday
syn keyword octaveFunction contained  weibcdf weibinv weibpdf weibrnd
syn keyword octaveFunction contained  welch_test white whitebg wienrnd
syn keyword octaveFunction contained  wilcoxon_test wilkinson winter xlabel
syn keyword octaveFunction contained  xlim xor yes_or_no ylabel ylim yulewalker
syn keyword octaveFunction contained  z_test z_test_2 zeros zip zlabel zlim
syn keyword octaveFunction contained  zscore


" Add functions defined in .m file being read to list of highlighted functions
function! s:CheckForFunctions()
  let i = 1
  while i <= line('$')
    let line = getline(i)
    " Only look for functions at start of line.
    " Commented function, '# function', will not trigger as match returns 3
    if match(line, '\Cfunction') == 0
      let line = substitute(line, '\vfunction *([^(]*\= *)?', '', '')
      let nfun = matchstr(line, '\v^\h\w*')
      if !empty(nfun)
        execute "syn keyword octaveFunction" nfun
      endif
    " Include anonymous functions 'func = @(...)'.
    " Use contained keyword to prevent highlighting on LHS of '='
    elseif match(line, '\<\(\h\w*\)\s*=\s*@\s*(') != -1
      let list = matchlist(line, '\<\(\h\w*\)\s*=\s*@\s*(')
      let nfun = list[1]
      if !empty(nfun)
        execute "syn keyword octaveFunction contained" nfun
      endif
    endif
    let i = i + 1
  endwhile
endfunction

call s:CheckForFunctions()

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Define clusters for ease of writing subsequent rules
syn cluster AllFuncVarCmd contains=octaveVariable,octaveFunction,octaveCommand
syn cluster AllFuncSetCmd contains=octaveSetVarFun,octaveFunction,octaveCommand

" Switch highlighting of variables based on coding use.
" Query -> Constant, Set -> Function
" order of items is is important here
syn match octaveQueryVar "\<\h\w*[^(]"me=e-1  contains=@AllFuncVarCmd
syn match octaveSetVar   "\<\h\w*\s*("me=e-1  contains=@AllFuncSetCmd
syn match octaveQueryVar "\<\h\w*\s*\((\s*)\)\@="  contains=@AllFuncVarCmd

" Don't highlight Octave keywords on LHS of '=', these are user vars
syn match octaveUserVar  "\<\h\w*\ze[^<>!~="']\{-}==\@!"
syn match octaveUserVar  "\<\h\w*\s*[<>!~=]=" contains=octaveVariable

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Errors (placed early so they may be overriden by more specific rules
" Struct with nonvalid identifier starting with number (Example: 1.a or a.1b)
syn region octaveError  start="\<\d\+\(\w*\.\)\@="  end="[^0-9]"he=s-1 oneline
syn region octaveError  start="\.\d\+\(\w*\)\@="hs=s+1  end="[^0-9]"he=s-1 oneline
" Numbers with double decimal points (Example: 1.2.3)
syn region octaveError  start="\<-\?\d\+\.\d\+\.[^*/\\^]"hs=e-1 end="\>"  oneline
syn region octaveError  start="\<-\?\d\+\.\d\+[eEdD][-+]\?\d\+\.[^*/\\^]"hs=e-1 end="\>"  oneline

" Operators
" Uncommment "Hilink octaveOperator" below to highlight these
syn match octaveLogicalOperator     "[&|~!]"
syn match octaveArithmeticOperator  "\.\?[-+*/\\^]"
syn match octaveRelationalOperator  "[=!~]="
syn match octaveRelationalOperator  "[<>]=\?"

" User Variables
" Uncomment this syntax group and "Hilink octaveIdentifier" below to highlight
"syn match octaveIdentifier  "\<\h\w*\>"

" Strings
syn region octaveString  start=/'/  end=/'/  skip=/\\'/ contains=octaveLineContinuation,@Spell
syn region octaveString  start=/"/  end=/"/  skip=/\\"/ contains=octaveLineContinuation,@Spell

" Standard numbers
syn match octaveNumber  "\<\d\+[ij]\?\>"
" Floating point number, with dot, optional exponent
syn match octaveFloat   "\<\d\+\(\.\d*\)\?\([edED][-+]\?\d\+\)\?[ij]\?\>"
" Floating point number, starting with a dot, optional exponent
syn match octaveFloat   "\.\d\+\([edED][-+]\?\d\+\)\?[ij]\?\>"

" Delimiters and transpose character
syn match octaveDelimiter          "[][(){}@]"
syn match octaveTransposeOperator  "[])[:alnum:]._]\@<='"

" Tabs, for possibly highlighting as errors
syn match octaveTab  "\t"
" Other special constructs
syn match octaveSemicolon  ";"
syn match octaveTilde "\~\s*[[:punct:]]"me=e-1

" Line continuations, order of matches is important here
syn match octaveLineContinuation  "\.\{3}$"
syn match octaveLineContinuation  "\\$"
syn match octaveError  "\.\{3}.\+$"hs=s+3
syn match octaveError  "\\\s\+$"hs=s+1
" Line continuations w/comments
syn match octaveLineContinuation  "\.\{3}\s*[#%]"me=e-1
syn match octaveLineContinuation  "\\\s*[#%]"me=e-1

" Comments, order of matches is important here
syn keyword octaveFIXME contained  FIXME TODO
syn match  octaveComment  "[%#].*$"  contains=octaveFIXME,octaveTab,@Spell
syn match  octaveError    "[#%][{}]"
syn region octaveBlockComment  start="^\s*[#%]{\s*$"  end="^\s*[#%]}\s*$" contains=octaveFIXME,octaveTab,@Spell

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Apply highlight groups to syntax groups defined above

" Define the default highlighting.
" For version 5.7 and earlier: only when not done already
" For version 5.8 and later: only when an item doesn't have highlighting yet
if version >= 508 || !exists("did_octave_syntax_inits")
  if version < 508
    let did_octave_syntax_inits = 1
    command -nargs=+ HiLink hi link <args>
  else
    command -nargs=+ HiLink hi def link <args>
  endif

  HiLink octaveBeginKeyword             Conditional
  HiLink octaveElseKeyword              Conditional
  HiLink octaveEndKeyword               Conditional
  HiLink octaveVarKeyword               Conditional
  HiLink octaveReserved                 Conditional

  HiLink octaveStatement                Statement
  HiLink octaveVariable                 Constant
  HiLink octaveSetVarFun                Function
  HiLink octaveCommand                  Statement
  HiLink octaveFunction                 Function

  HiLink octaveConditional              Conditional
  HiLink octaveLabel                    Label
  HiLink octaveRepeat                   Repeat
  HiLink octaveFIXME                    Todo
  HiLink octaveString                   String
  HiLink octaveDelimiter                Identifier
  HiLink octaveNumber                   Number
  HiLink octaveFloat                    Float
  HiLink octaveError                    Error
  HiLink octaveComment                  Comment
  HiLink octaveBlockComment             Comment
  HiLink octaveSemicolon                SpecialChar
  HiLink octaveTilde                    SpecialChar
  HiLink octaveLineContinuation         Special

  HiLink octaveTransposeOperator        octaveOperator
  HiLink octaveArithmeticOperator       octaveOperator
  HiLink octaveRelationalOperator       octaveOperator
  HiLink octaveLogicalOperator          octaveOperator

" Optional highlighting
"  HiLink octaveOperator                Operator
"  HiLink octaveIdentifier              Identifier
"  HiLink octaveTab                     Error

  delcommand HiLink
endif

let b:current_syntax = "octave"

"EOF	vim: ts=2 et tw=80 sw=2 sts=0
