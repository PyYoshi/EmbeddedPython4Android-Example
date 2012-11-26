LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)
PYTHON_SRC_PATH := $(LOCAL_PATH)/
LOCAL_C_INCLUDES := $(PYTHON_SRC_PATH)../include/
LOCAL_PATH := $(PYTHON_SRC_PATH)
LOCAL_CFLAGS := -DPYTHONPATH='""' -DVERSION='"2.7"' -DENABLE_IPV6
LOCAL_SRC_FILES := \
		Parser/acceler.c \
		Parser/grammar1.c \
		Parser/listnode.c \
		Parser/node.c \
		Parser/parser.c \
		Parser/parsetok.c \
		Parser/bitset.c \
		Parser/metagrammar.c \
		Parser/firstsets.c \
		Parser/grammar.c \
		Parser/pgen.c \
		Parser/myreadline.c \
		Parser/tokenizer.c \
		Python/thread.c \
		Python/_warnings.c \
		Python/Python-ast.c \
		Python/asdl.c \
		Python/ast.c \
		Python/bltinmodule.c \
		Python/ceval.c \
		Python/compile.c \
		Python/codecs.c \
		Python/dynload_shlib.c \
		Python/errors.c \
		Python/frozen.c \
		Python/frozenmain.c \
		Python/future.c \
		Python/getargs.c \
		Python/getcompiler.c \
		Python/getcopyright.c \
		Python/getplatform.c \
		Python/getversion.c \
		Python/graminit.c \
		Python/import.c \
		Python/importdl.c \
		Python/marshal.c \
		Python/modsupport.c \
		Python/mystrtoul.c \
		Python/mysnprintf.c \
		Python/peephole.c \
		Python/pyarena.c \
		Python/pyctype.c \
		Python/pyfpe.c \
		Python/pymath.c \
		Python/pystate.c \
		Python/pythonrun.c \
		Python/structmember.c \
		Python/symtable.c \
		Python/sysmodule.c \
		Python/traceback.c \
		Python/getopt.c \
		Python/pystrcmp.c \
		Python/pystrtod.c \
		Python/dtoa.c \
		Python/formatter_unicode.c \
		Python/formatter_string.c \
		Objects/abstract.c \
		Objects/boolobject.c \
		Objects/bufferobject.c \
		Objects/bytes_methods.c \
		Objects/bytearrayobject.c \
		Objects/capsule.c \
		Objects/cellobject.c \
		Objects/classobject.c \
		Objects/cobject.c \
		Objects/codeobject.c \
		Objects/complexobject.c \
		Objects/descrobject.c \
		Objects/enumobject.c \
		Objects/exceptions.c \
		Objects/genobject.c \
		Objects/fileobject.c \
		Objects/floatobject.c \
		Objects/frameobject.c \
		Objects/funcobject.c \
		Objects/intobject.c \
		Objects/iterobject.c \
		Objects/listobject.c \
		Objects/longobject.c \
		Objects/dictobject.c \
		Objects/memoryobject.c \
		Objects/methodobject.c \
		Objects/moduleobject.c \
		Objects/object.c \
		Objects/obmalloc.c \
		Objects/rangeobject.c \
		Objects/setobject.c \
		Objects/sliceobject.c \
		Objects/stringobject.c \
		Objects/structseq.c \
		Objects/tupleobject.c \
		Objects/typeobject.c \
		Objects/weakrefobject.c \
		Objects/unicodeobject.c \
		Objects/unicodectype.c \
		Modules/threadmodule.c \
		Modules/signalmodule.c \
		Modules/posixmodule.c \
		Modules/errnomodule.c \
		Modules/pwdmodule.c \
		Modules/_sre.c \
		Modules/_codecsmodule.c \
		Modules/_weakref.c \
		Modules/zipimport.c \
		Modules/symtablemodule.c \
		Modules/xxsubtype.c \
		Modules/config.c \
		Modules/getpath.c \
		Modules/main.c \
		Modules/gcmodule.c \
		Modules/getbuildinfo.c
LOCAL_MODULE := python2.7
include $(BUILD_SHARED_LIBRARY)
#include $(BUILD_STATIC_LIBRARY)

include $(CLEAR_VARS)
PYTHON_SRC_PATH := $(LOCAL_PATH)/
LOCAL_C_INCLUDES := $(PYTHON_SRC_PATH)../include/
LOCAL_PATH := $(PYTHON_SRC_PATH)
LOCAL_MODULE := python
LOCAL_SRC_FILES := Modules/python.c
LOCAL_PATH := $(PYTHON_SRC_PATH)
LOCAL_SHARED_LIBRARIES := libpython2.7
include $(BUILD_EXECUTABLE)

#############################################
####### Python built-in modules #######
#############################################

include $(CLEAR_VARS)
LOCAL_PATH := $(PYTHON_SRC_PATH)
LOCAL_C_INCLUDES := $(PYTHON_SRC_PATH) $(PYTHON_SRC_PATH)/Include $(PYTHON_SRC_PATH)/Modules
LOCAL_MODULE := array
LOCAL_MODULE_FILENAME := array
LOCAL_SRC_FILES := Modules/arraymodule.c
LOCAL_SHARED_LIBRARIES := libpython2.7
include $(BUILD_SHARED_LIBRARY)

include $(CLEAR_VARS)
LOCAL_PATH := $(PYTHON_SRC_PATH)
LOCAL_C_INCLUDES := $(PYTHON_SRC_PATH) $(PYTHON_SRC_PATH)/Include $(PYTHON_SRC_PATH)/Modules
LOCAL_MODULE := cmath
LOCAL_MODULE_FILENAME := cmath
LOCAL_SRC_FILES := Modules/cmathmodule.c Modules/_math.c
LOCAL_SHARED_LIBRARIES := libpython2.7
include $(BUILD_SHARED_LIBRARY)

include $(CLEAR_VARS)
LOCAL_PATH := $(PYTHON_SRC_PATH)
LOCAL_C_INCLUDES := $(PYTHON_SRC_PATH) $(PYTHON_SRC_PATH)/Include $(PYTHON_SRC_PATH)/Modules
LOCAL_MODULE := math
LOCAL_MODULE_FILENAME := math
LOCAL_SRC_FILES := Modules/mathmodule.c Modules/_math.c
LOCAL_SHARED_LIBRARIES := libpython2.7
include $(BUILD_SHARED_LIBRARY)

include $(CLEAR_VARS)
LOCAL_PATH := $(PYTHON_SRC_PATH)
LOCAL_C_INCLUDES := $(PYTHON_SRC_PATH) $(PYTHON_SRC_PATH)/Include $(PYTHON_SRC_PATH)/Modules
LOCAL_MODULE := strop
LOCAL_MODULE_FILENAME := strop
LOCAL_SRC_FILES := Modules/stropmodule.c
LOCAL_SHARED_LIBRARIES := libpython2.7
include $(BUILD_SHARED_LIBRARY)

include $(CLEAR_VARS)
LOCAL_PATH := $(PYTHON_SRC_PATH)
LOCAL_C_INCLUDES := $(PYTHON_SRC_PATH) $(PYTHON_SRC_PATH)/Include $(PYTHON_SRC_PATH)/Modules
LOCAL_MODULE := time
LOCAL_MODULE_FILENAME := time
LOCAL_SRC_FILES := Modules/timemodule.c
LOCAL_SHARED_LIBRARIES := libpython2.7
include $(BUILD_SHARED_LIBRARY)

include $(CLEAR_VARS)
LOCAL_PATH := $(PYTHON_SRC_PATH)
LOCAL_C_INCLUDES := $(PYTHON_SRC_PATH) $(PYTHON_SRC_PATH)/Include $(PYTHON_SRC_PATH)/Modules
LOCAL_MODULE := datetime
LOCAL_MODULE_FILENAME := datetime
LOCAL_SRC_FILES := Modules/datetimemodule.c Modules/timemodule.c
LOCAL_SHARED_LIBRARIES := libpython2.7
include $(BUILD_SHARED_LIBRARY)

include $(CLEAR_VARS)
LOCAL_PATH := $(PYTHON_SRC_PATH)
LOCAL_C_INCLUDES := $(PYTHON_SRC_PATH) $(PYTHON_SRC_PATH)/Include $(PYTHON_SRC_PATH)/Modules
LOCAL_MODULE := itertools
LOCAL_MODULE_FILENAME := itertools
LOCAL_SRC_FILES := Modules/itertoolsmodule.c
LOCAL_SHARED_LIBRARIES := libpython2.7
include $(BUILD_SHARED_LIBRARY)

include $(CLEAR_VARS)
LOCAL_PATH := $(PYTHON_SRC_PATH)
LOCAL_C_INCLUDES := $(PYTHON_SRC_PATH) $(PYTHON_SRC_PATH)/Include $(PYTHON_SRC_PATH)/Modules
LOCAL_MODULE := future_builtins
LOCAL_MODULE_FILENAME := future_builtins
LOCAL_SRC_FILES := Modules/future_builtins.c
LOCAL_SHARED_LIBRARIES := libpython2.7
include $(BUILD_SHARED_LIBRARY)

include $(CLEAR_VARS)
LOCAL_PATH := $(PYTHON_SRC_PATH)
LOCAL_C_INCLUDES := $(PYTHON_SRC_PATH) $(PYTHON_SRC_PATH)/Include $(PYTHON_SRC_PATH)/Modules
LOCAL_MODULE := _random
LOCAL_MODULE_FILENAME := _random
LOCAL_SRC_FILES := Modules/_randommodule.c
LOCAL_SHARED_LIBRARIES := libpython2.7
include $(BUILD_SHARED_LIBRARY)

include $(CLEAR_VARS)
LOCAL_PATH := $(PYTHON_SRC_PATH)
LOCAL_C_INCLUDES := $(PYTHON_SRC_PATH) $(PYTHON_SRC_PATH)/Include $(PYTHON_SRC_PATH)/Modules
LOCAL_MODULE := _collections
LOCAL_MODULE_FILENAME := _collections
LOCAL_SRC_FILES := Modules/_collectionsmodule.c
LOCAL_SHARED_LIBRARIES := libpython2.7
include $(BUILD_SHARED_LIBRARY)

include $(CLEAR_VARS)
LOCAL_PATH := $(PYTHON_SRC_PATH)
LOCAL_C_INCLUDES := $(PYTHON_SRC_PATH) $(PYTHON_SRC_PATH)/Include $(PYTHON_SRC_PATH)/Modules
LOCAL_MODULE := _bisect
LOCAL_MODULE_FILENAME := _bisect
LOCAL_SRC_FILES := Modules/_bisectmodule.c
LOCAL_SHARED_LIBRARIES := libpython2.7
include $(BUILD_SHARED_LIBRARY)

include $(CLEAR_VARS)
LOCAL_PATH := $(PYTHON_SRC_PATH)
LOCAL_C_INCLUDES := $(PYTHON_SRC_PATH) $(PYTHON_SRC_PATH)/Include $(PYTHON_SRC_PATH)/Modules
LOCAL_MODULE := _heapq
LOCAL_MODULE_FILENAME := _heapq
LOCAL_SRC_FILES := Modules/_heapqmodule.c
LOCAL_SHARED_LIBRARIES := libpython2.7
include $(BUILD_SHARED_LIBRARY)

include $(CLEAR_VARS)
LOCAL_PATH := $(PYTHON_SRC_PATH)
LOCAL_C_INCLUDES := $(PYTHON_SRC_PATH) $(PYTHON_SRC_PATH)/Include $(PYTHON_SRC_PATH)/Modules
LOCAL_MODULE := operator
LOCAL_MODULE_FILENAME := operator
LOCAL_SRC_FILES := Modules/operator.c
LOCAL_SHARED_LIBRARIES := libpython2.7
include $(BUILD_SHARED_LIBRARY)

include $(CLEAR_VARS)
LOCAL_PATH := $(PYTHON_SRC_PATH)
LOCAL_C_INCLUDES := $(PYTHON_SRC_PATH) $(PYTHON_SRC_PATH)/Include $(PYTHON_SRC_PATH)/Modules $(PYTHON_SRC_PATH)/Modules/_io
LOCAL_MODULE := _io
LOCAL_MODULE_FILENAME := _io
LOCAL_SRC_FILES := Modules/_io/bufferedio.c Modules/_io/bytesio.c Modules/_io/fileio.c Modules/_io/iobase.c Modules/_io/_iomodule.c Modules/_io/stringio.c Modules/_io/textio.c 
LOCAL_SHARED_LIBRARIES := libpython2.7
include $(BUILD_SHARED_LIBRARY)

include $(CLEAR_VARS)
LOCAL_PATH := $(PYTHON_SRC_PATH)
LOCAL_C_INCLUDES := $(PYTHON_SRC_PATH) $(PYTHON_SRC_PATH)/Include $(PYTHON_SRC_PATH)/Modules
LOCAL_MODULE := _functools
LOCAL_MODULE_FILENAME := _functools
LOCAL_SRC_FILES := Modules/_functoolsmodule.c
LOCAL_SHARED_LIBRARIES := libpython2.7
include $(BUILD_SHARED_LIBRARY)

include $(CLEAR_VARS)
LOCAL_PATH := $(PYTHON_SRC_PATH)
LOCAL_C_INCLUDES := $(PYTHON_SRC_PATH) $(PYTHON_SRC_PATH)/Include $(PYTHON_SRC_PATH)/Modules
LOCAL_MODULE := _json
LOCAL_MODULE_FILENAME := _functools
LOCAL_SRC_FILES := Modules/_json.c
LOCAL_SHARED_LIBRARIES := libpython2.7
include $(BUILD_SHARED_LIBRARY)

include $(CLEAR_VARS)
LOCAL_PATH := $(PYTHON_SRC_PATH)
LOCAL_C_INCLUDES := $(PYTHON_SRC_PATH) $(PYTHON_SRC_PATH)/Include $(PYTHON_SRC_PATH)/Modules
LOCAL_MODULE := _testcapi
LOCAL_MODULE_FILENAME := _testcapi
LOCAL_SRC_FILES := Modules/_testcapimodule.c
LOCAL_SHARED_LIBRARIES := libpython2.7
include $(BUILD_SHARED_LIBRARY)

include $(CLEAR_VARS)
LOCAL_PATH := $(PYTHON_SRC_PATH)
LOCAL_C_INCLUDES := $(PYTHON_SRC_PATH) $(PYTHON_SRC_PATH)/Include $(PYTHON_SRC_PATH)/Modules
LOCAL_MODULE := _hotshot
LOCAL_MODULE_FILENAME := _hotshot
LOCAL_SRC_FILES := Modules/_hotshot.c
LOCAL_SHARED_LIBRARIES := libpython2.7
include $(BUILD_SHARED_LIBRARY)

include $(CLEAR_VARS)
LOCAL_PATH := $(PYTHON_SRC_PATH)
LOCAL_C_INCLUDES := $(PYTHON_SRC_PATH) $(PYTHON_SRC_PATH)/Include $(PYTHON_SRC_PATH)/Modules
LOCAL_MODULE := _lsprof
LOCAL_MODULE_FILENAME := _lsprof
LOCAL_SRC_FILES := Modules/_lsprof.c Modules/rotatingtree.c
LOCAL_SHARED_LIBRARIES := libpython2.7
include $(BUILD_SHARED_LIBRARY)

include $(CLEAR_VARS)
LOCAL_PATH := $(PYTHON_SRC_PATH)
LOCAL_C_INCLUDES := $(PYTHON_SRC_PATH) $(PYTHON_SRC_PATH)/Include $(PYTHON_SRC_PATH)/Modules
LOCAL_MODULE := unicodedata
LOCAL_MODULE_FILENAME := unicodedata
LOCAL_SRC_FILES := Modules/unicodedata.c
LOCAL_SHARED_LIBRARIES := libpython2.7
include $(BUILD_SHARED_LIBRARY)

include $(CLEAR_VARS)
LOCAL_PATH := $(PYTHON_SRC_PATH)
LOCAL_C_INCLUDES := $(PYTHON_SRC_PATH) $(PYTHON_SRC_PATH)/Include $(PYTHON_SRC_PATH)/Modules
LOCAL_MODULE := _locale
LOCAL_MODULE_FILENAME := _locale
LOCAL_SRC_FILES := Modules/_localemodule.c
LOCAL_SHARED_LIBRARIES := libpython2.7
include $(BUILD_SHARED_LIBRARY)

include $(CLEAR_VARS)
LOCAL_PATH := $(PYTHON_SRC_PATH)
LOCAL_C_INCLUDES := $(PYTHON_SRC_PATH) $(PYTHON_SRC_PATH)/Include $(PYTHON_SRC_PATH)/Modules
LOCAL_MODULE := fcntl
LOCAL_MODULE_FILENAME := fcntl
LOCAL_SRC_FILES := Modules/fcntlmodule.c
LOCAL_SHARED_LIBRARIES := libpython2.7
include $(BUILD_SHARED_LIBRARY)

#include $(CLEAR_VARS)
#LOCAL_PATH := $(PYTHON_SRC_PATH)
#LOCAL_C_INCLUDES := $(PYTHON_SRC_PATH) $(PYTHON_SRC_PATH)/Include $(PYTHON_SRC_PATH)/Modules
#LOCAL_MODULE := pwd
#LOCAL_MODULE_FILENAME := pwd
#LOCAL_SRC_FILES := Modules/pwdmodule.c
#LOCAL_SHARED_LIBRARIES := libpython2.7
#include $(BUILD_SHARED_LIBRARY)

#include $(CLEAR_VARS)
#LOCAL_PATH := $(PYTHON_SRC_PATH)
#LOCAL_C_INCLUDES := $(PYTHON_SRC_PATH) $(PYTHON_SRC_PATH)/Include $(PYTHON_SRC_PATH)/Modules
#LOCAL_MODULE := grp
#LOCAL_MODULE_FILENAME := grp
#LOCAL_SRC_FILES := Modules/grpmodule.c
#LOCAL_SHARED_LIBRARIES := libpython2.7
#include $(BUILD_SHARED_LIBRARY)

#include $(CLEAR_VARS)
#LOCAL_PATH := $(PYTHON_SRC_PATH)
#LOCAL_C_INCLUDES := $(PYTHON_SRC_PATH) $(PYTHON_SRC_PATH)/Include $(PYTHON_SRC_PATH)/Modules
#LOCAL_MODULE := spwd
#LOCAL_MODULE_FILENAME := spwd
#LOCAL_SRC_FILES := Modules/spwdmodule.c
#LOCAL_SHARED_LIBRARIES := libpython2.7
#include $(BUILD_SHARED_LIBRARY)

include $(CLEAR_VARS)
LOCAL_PATH := $(PYTHON_SRC_PATH)
LOCAL_C_INCLUDES := $(PYTHON_SRC_PATH) $(PYTHON_SRC_PATH)/Include $(PYTHON_SRC_PATH)/Modules
LOCAL_MODULE := select
LOCAL_MODULE_FILENAME := select
LOCAL_SRC_FILES := Modules/selectmodule.c
LOCAL_SHARED_LIBRARIES := libpython2.7
include $(BUILD_SHARED_LIBRARY)

include $(CLEAR_VARS)
LOCAL_PATH := $(PYTHON_SRC_PATH)
LOCAL_C_INCLUDES := $(PYTHON_SRC_PATH) $(PYTHON_SRC_PATH)/Include $(PYTHON_SRC_PATH)/Modules
LOCAL_MODULE := parser
LOCAL_MODULE_FILENAME := parser
LOCAL_SRC_FILES := Modules/parsermodule.c
LOCAL_SHARED_LIBRARIES := libpython2.7
include $(BUILD_SHARED_LIBRARY)

include $(CLEAR_VARS)
LOCAL_PATH := $(PYTHON_SRC_PATH)
LOCAL_C_INCLUDES := $(PYTHON_SRC_PATH) $(PYTHON_SRC_PATH)/Include $(PYTHON_SRC_PATH)/Modules
LOCAL_MODULE := cStringIO
LOCAL_MODULE_FILENAME := cStringIO
LOCAL_SRC_FILES := Modules/cStringIO.c
LOCAL_SHARED_LIBRARIES := libpython2.7
include $(BUILD_SHARED_LIBRARY)

include $(CLEAR_VARS)
LOCAL_PATH := $(PYTHON_SRC_PATH)
LOCAL_C_INCLUDES := $(PYTHON_SRC_PATH) $(PYTHON_SRC_PATH)/Include $(PYTHON_SRC_PATH)/Modules
LOCAL_MODULE := cPickle
LOCAL_MODULE_FILENAME := cPickle
LOCAL_SRC_FILES := Modules/cPickle.c
LOCAL_SHARED_LIBRARIES := libpython2.7
include $(BUILD_SHARED_LIBRARY)

include $(CLEAR_VARS)
LOCAL_PATH := $(PYTHON_SRC_PATH)
LOCAL_C_INCLUDES := $(PYTHON_SRC_PATH) $(PYTHON_SRC_PATH)/Include $(PYTHON_SRC_PATH)/Modules
LOCAL_MODULE := mmap
LOCAL_MODULE_FILENAME := mmap
LOCAL_SRC_FILES := Modules/mmapmodule.c
LOCAL_SHARED_LIBRARIES := libpython2.7
include $(BUILD_SHARED_LIBRARY)

include $(CLEAR_VARS)
LOCAL_PATH := $(PYTHON_SRC_PATH)
LOCAL_C_INCLUDES := $(PYTHON_SRC_PATH) $(PYTHON_SRC_PATH)/Include $(PYTHON_SRC_PATH)/Modules
LOCAL_MODULE := syslog
LOCAL_MODULE_FILENAME := syslog
LOCAL_SRC_FILES := Modules/syslogmodule.c
LOCAL_SHARED_LIBRARIES := libpython2.7
include $(BUILD_SHARED_LIBRARY)

include $(CLEAR_VARS)
LOCAL_PATH := $(PYTHON_SRC_PATH)
LOCAL_C_INCLUDES := $(PYTHON_SRC_PATH) $(PYTHON_SRC_PATH)/Include $(PYTHON_SRC_PATH)/Modules
LOCAL_MODULE := audioop
LOCAL_MODULE_FILENAME := audioop
LOCAL_SRC_FILES := Modules/audioop.c
LOCAL_SHARED_LIBRARIES := libpython2.7
include $(BUILD_SHARED_LIBRARY)

include $(CLEAR_VARS)
LOCAL_PATH := $(PYTHON_SRC_PATH)
LOCAL_C_INCLUDES := $(PYTHON_SRC_PATH) $(PYTHON_SRC_PATH)/Include $(PYTHON_SRC_PATH)/Modules
LOCAL_MODULE := imageop
LOCAL_MODULE_FILENAME := imageop
LOCAL_SRC_FILES := Modules/imageop.c
LOCAL_SHARED_LIBRARIES := libpython2.7
include $(BUILD_SHARED_LIBRARY)

include $(CLEAR_VARS)
LOCAL_PATH := $(PYTHON_SRC_PATH)
LOCAL_C_INCLUDES := $(PYTHON_SRC_PATH) $(PYTHON_SRC_PATH)/Include $(PYTHON_SRC_PATH)/Modules
LOCAL_MODULE := crypt
LOCAL_MODULE_FILENAME := crypt
LOCAL_SRC_FILES := Modules/cryptmodule.c
LOCAL_SHARED_LIBRARIES := libpython2.7 _crypt
include $(BUILD_SHARED_LIBRARY)

include $(CLEAR_VARS)
LOCAL_PATH := $(PYTHON_SRC_PATH)
LOCAL_C_INCLUDES := $(PYTHON_SRC_PATH) $(PYTHON_SRC_PATH)/Include $(PYTHON_SRC_PATH)/Modules
LOCAL_MODULE := _csv
LOCAL_MODULE_FILENAME := _csv
LOCAL_SRC_FILES := Modules/_csv.c
LOCAL_SHARED_LIBRARIES := libpython2.7
include $(BUILD_SHARED_LIBRARY)

include $(CLEAR_VARS)
LOCAL_PATH := $(PYTHON_SRC_PATH)
LOCAL_C_INCLUDES := $(PYTHON_SRC_PATH) $(PYTHON_SRC_PATH)/Include $(PYTHON_SRC_PATH)/Modules
LOCAL_MODULE := _socket
LOCAL_MODULE_FILENAME := _socket
LOCAL_SRC_FILES := Modules/socketmodule.c
LOCAL_SHARED_LIBRARIES := libpython2.7
include $(BUILD_SHARED_LIBRARY)

include $(CLEAR_VARS)
LOCAL_PATH := $(PYTHON_SRC_PATH)
LOCAL_C_INCLUDES := $(PYTHON_SRC_PATH) $(PYTHON_SRC_PATH)/Include $(PYTHON_SRC_PATH)/Modules $(PYTHON_SRC_PATH)/../openssl/include
LOCAL_MODULE := _ssl
LOCAL_MODULE_FILENAME := _ssl
LOCAL_SRC_FILES := Modules/_ssl.c
LOCAL_SHARED_LIBRARIES := libpython2.7 libssl libcrypto
include $(BUILD_SHARED_LIBRARY)

include $(CLEAR_VARS)
LOCAL_PATH := $(PYTHON_SRC_PATH)
LOCAL_C_INCLUDES := $(PYTHON_SRC_PATH) $(PYTHON_SRC_PATH)/Include $(PYTHON_SRC_PATH)/Modules $(PYTHON_SRC_PATH)/../openssl/include
LOCAL_MODULE := _hashlib
LOCAL_MODULE_FILENAME := _hashlib
LOCAL_SRC_FILES := Modules/_hashopenssl.c
LOCAL_SHARED_LIBRARIES := libpython2.7 libssl libcrypto
include $(BUILD_SHARED_LIBRARY)

include $(CLEAR_VARS)
LOCAL_PATH := $(PYTHON_SRC_PATH)
LOCAL_C_INCLUDES := $(PYTHON_SRC_PATH) $(PYTHON_SRC_PATH)/Include $(PYTHON_SRC_PATH)/Modules
LOCAL_MODULE := _sha
LOCAL_MODULE_FILENAME := _sha
LOCAL_SRC_FILES := Modules/shamodule.c
LOCAL_SHARED_LIBRARIES := libpython2.7 libssl libcrypto
include $(BUILD_SHARED_LIBRARY)

include $(CLEAR_VARS)
LOCAL_PATH := $(PYTHON_SRC_PATH)
LOCAL_C_INCLUDES := $(PYTHON_SRC_PATH) $(PYTHON_SRC_PATH)/Include $(PYTHON_SRC_PATH)/Modules
LOCAL_MODULE := _md5
LOCAL_MODULE_FILENAME := _md5
LOCAL_SRC_FILES := Modules/md5module.c Modules/md5.c
LOCAL_SHARED_LIBRARIES := libpython2.7 libssl libcrypto
include $(BUILD_SHARED_LIBRARY)

include $(CLEAR_VARS)
LOCAL_PATH := $(PYTHON_SRC_PATH)
LOCAL_C_INCLUDES := $(PYTHON_SRC_PATH) $(PYTHON_SRC_PATH)/Include $(PYTHON_SRC_PATH)/Modules
LOCAL_MODULE := _sha256
LOCAL_MODULE_FILENAME := _sha256
LOCAL_SRC_FILES := Modules/sha256module.c
LOCAL_SHARED_LIBRARIES := libpython2.7 libssl libcrypto
include $(BUILD_SHARED_LIBRARY)

include $(CLEAR_VARS)
LOCAL_PATH := $(PYTHON_SRC_PATH)
LOCAL_C_INCLUDES := $(PYTHON_SRC_PATH) $(PYTHON_SRC_PATH)/Include $(PYTHON_SRC_PATH)/Modules
LOCAL_MODULE := _sha512
LOCAL_MODULE_FILENAME := _sha512
LOCAL_SRC_FILES := Modules/sha512module.c
LOCAL_SHARED_LIBRARIES := libpython2.7 libssl libcrypto
include $(BUILD_SHARED_LIBRARY)

include $(CLEAR_VARS)
LOCAL_PATH := $(PYTHON_SRC_PATH)
LOCAL_C_INCLUDES := $(PYTHON_SRC_PATH) $(PYTHON_SRC_PATH)/Include $(PYTHON_SRC_PATH)/Modules $(PYTHON_SRC_PATH)/Modules/_sqlite $(PYTHON_SRC_PATH)/../sqlite3
LOCAL_CFLAGS += -DMODULE_NAME='"sqlite3"'
LOCAL_MODULE := _sqlite3
LOCAL_MODULE_FILENAME := _sqlite3
LOCAL_SRC_FILES := Modules/_sqlite/cache.c Modules/_sqlite/connection.c Modules/_sqlite/cursor.c Modules/_sqlite/microprotocols.c Modules/_sqlite/module.c Modules/_sqlite/prepare_protocol.c Modules/_sqlite/row.c Modules/_sqlite/statement.c Modules/_sqlite/util.c
LOCAL_SHARED_LIBRARIES := libpython2.7 libsqlite3
include $(BUILD_SHARED_LIBRARY)

include $(CLEAR_VARS)
LOCAL_PATH := $(PYTHON_SRC_PATH)
LOCAL_C_INCLUDES := $(PYTHON_SRC_PATH) $(PYTHON_SRC_PATH)/Include $(PYTHON_SRC_PATH)/Modules
LOCAL_MODULE := termios
LOCAL_MODULE_FILENAME := termios
LOCAL_SRC_FILES := Modules/termios.c
LOCAL_SHARED_LIBRARIES := libpython2.7
include $(BUILD_SHARED_LIBRARY)

include $(CLEAR_VARS)
LOCAL_PATH := $(PYTHON_SRC_PATH)
LOCAL_C_INCLUDES := $(PYTHON_SRC_PATH) $(PYTHON_SRC_PATH)/Include $(PYTHON_SRC_PATH)/Modules
LOCAL_MODULE := resource
LOCAL_MODULE_FILENAME := resource
LOCAL_SRC_FILES := Modules/resource.c
LOCAL_SHARED_LIBRARIES := libpython2.7
include $(BUILD_SHARED_LIBRARY)

include $(CLEAR_VARS)
LOCAL_PATH := $(PYTHON_SRC_PATH)
LOCAL_C_INCLUDES := $(PYTHON_SRC_PATH) $(PYTHON_SRC_PATH)/Include $(PYTHON_SRC_PATH)/Modules
LOCAL_MODULE := zlib
LOCAL_MODULE_FILENAME := zlib
LOCAL_SRC_FILES := Modules/zlibmodule.c
LOCAL_SHARED_LIBRARIES := libpython2.7
LOCAL_LDLIBS    := -lz
include $(BUILD_SHARED_LIBRARY)

include $(CLEAR_VARS)
LOCAL_PATH := $(PYTHON_SRC_PATH)
LOCAL_C_INCLUDES := $(PYTHON_SRC_PATH) $(PYTHON_SRC_PATH)/Include $(PYTHON_SRC_PATH)/Modules
LOCAL_MODULE := binascii
LOCAL_MODULE_FILENAME := binascii
LOCAL_SRC_FILES := Modules/binascii.c
LOCAL_SHARED_LIBRARIES := libpython2.7
include $(BUILD_SHARED_LIBRARY)

include $(CLEAR_VARS)
LOCAL_PATH := $(PYTHON_SRC_PATH)
LOCAL_C_INCLUDES := $(PYTHON_SRC_PATH) $(PYTHON_SRC_PATH)/Include $(PYTHON_SRC_PATH)/Modules
LOCAL_MODULE := bz2
LOCAL_MODULE_FILENAME := bz2
LOCAL_SRC_FILES := Modules/bz2module.c
LOCAL_SHARED_LIBRARIES := libpython2.7 libbz
include $(BUILD_SHARED_LIBRARY)

include $(CLEAR_VARS)
LOCAL_PATH := $(PYTHON_SRC_PATH)
LOCAL_C_INCLUDES := $(PYTHON_SRC_PATH) $(PYTHON_SRC_PATH)/Include $(PYTHON_SRC_PATH)/Modules $(PYTHON_SRC_PATH)/../expat_android/lib
LOCAL_MODULE := pyexpat
LOCAL_MODULE_FILENAME := pyexpat
LOCAL_SRC_FILES := Modules/pyexpat.c
LOCAL_SHARED_LIBRARIES := libpython2.7 libexpat
include $(BUILD_SHARED_LIBRARY)

include $(CLEAR_VARS)
LOCAL_PATH := $(PYTHON_SRC_PATH)
LOCAL_C_INCLUDES := $(PYTHON_SRC_PATH) $(PYTHON_SRC_PATH)/Include $(PYTHON_SRC_PATH)/Modules $(PYTHON_SRC_PATH)/../expat_android/lib $(PYTHON_SRC_PATH)/Modules/expat
LOCAL_MODULE := _elementtree
LOCAL_MODULE_FILENAME := _elementtree
LOCAL_SRC_FILES := Modules/_elementtree.c
LOCAL_SHARED_LIBRARIES := libpython2.7 libexpat
include $(BUILD_SHARED_LIBRARY)

include $(CLEAR_VARS)
LOCAL_PATH := $(PYTHON_SRC_PATH)
LOCAL_C_INCLUDES := $(PYTHON_SRC_PATH) $(PYTHON_SRC_PATH)/Include $(PYTHON_SRC_PATH)/Modules $(PYTHON_SRC_PATH)/Modules/cjkcodecs
LOCAL_MODULE := _multibytecodec
LOCAL_MODULE_FILENAME := _multibytecodec
LOCAL_SRC_FILES := Modules/cjkcodecs/multibytecodec.c
LOCAL_SHARED_LIBRARIES := libpython2.7
include $(BUILD_SHARED_LIBRARY)

include $(CLEAR_VARS)
LOCAL_PATH := $(PYTHON_SRC_PATH)
LOCAL_C_INCLUDES := $(PYTHON_SRC_PATH) $(PYTHON_SRC_PATH)/Include $(PYTHON_SRC_PATH)/Modules $(PYTHON_SRC_PATH)/Modules/cjkcodecs
LOCAL_MODULE := _codecs_kr
LOCAL_MODULE_FILENAME := _codecs_kr
LOCAL_SRC_FILES := Modules/cjkcodecs/_codecs_kr.c
LOCAL_SHARED_LIBRARIES := libpython2.7
include $(BUILD_SHARED_LIBRARY)

include $(CLEAR_VARS)
LOCAL_PATH := $(PYTHON_SRC_PATH)
LOCAL_C_INCLUDES := $(PYTHON_SRC_PATH) $(PYTHON_SRC_PATH)/Include $(PYTHON_SRC_PATH)/Modules $(PYTHON_SRC_PATH)/Modules/cjkcodecs
LOCAL_MODULE := _codecs_jp
LOCAL_MODULE_FILENAME := _codecs_jp
LOCAL_SRC_FILES := Modules/cjkcodecs/_codecs_jp.c
LOCAL_SHARED_LIBRARIES := libpython2.7
include $(BUILD_SHARED_LIBRARY)

include $(CLEAR_VARS)
LOCAL_PATH := $(PYTHON_SRC_PATH)
LOCAL_C_INCLUDES := $(PYTHON_SRC_PATH) $(PYTHON_SRC_PATH)/Include $(PYTHON_SRC_PATH)/Modules $(PYTHON_SRC_PATH)/Modules/cjkcodecs
LOCAL_MODULE := _codecs_cn
LOCAL_MODULE_FILENAME := _codecs_cn
LOCAL_SRC_FILES := Modules/cjkcodecs/_codecs_cn.c
LOCAL_SHARED_LIBRARIES := libpython2.7
include $(BUILD_SHARED_LIBRARY)

include $(CLEAR_VARS)
LOCAL_PATH := $(PYTHON_SRC_PATH)
LOCAL_C_INCLUDES := $(PYTHON_SRC_PATH) $(PYTHON_SRC_PATH)/Include $(PYTHON_SRC_PATH)/Modules $(PYTHON_SRC_PATH)/Modules/cjkcodecs
LOCAL_MODULE := _codecs_tw
LOCAL_MODULE_FILENAME := _codecs_tw
LOCAL_SRC_FILES := Modules/cjkcodecs/_codecs_tw.c
LOCAL_SHARED_LIBRARIES := libpython2.7
include $(BUILD_SHARED_LIBRARY)

include $(CLEAR_VARS)
LOCAL_PATH := $(PYTHON_SRC_PATH)
LOCAL_C_INCLUDES := $(PYTHON_SRC_PATH) $(PYTHON_SRC_PATH)/Include $(PYTHON_SRC_PATH)/Modules $(PYTHON_SRC_PATH)/Modules/cjkcodecs
LOCAL_MODULE := _codecs_hk
LOCAL_MODULE_FILENAME := _codecs_hk
LOCAL_SRC_FILES := Modules/cjkcodecs/_codecs_hk.c
LOCAL_SHARED_LIBRARIES := libpython2.7
include $(BUILD_SHARED_LIBRARY)

include $(CLEAR_VARS)
LOCAL_PATH := $(PYTHON_SRC_PATH)
LOCAL_C_INCLUDES := $(PYTHON_SRC_PATH) $(PYTHON_SRC_PATH)/Include $(PYTHON_SRC_PATH)/Modules $(PYTHON_SRC_PATH)/Modules/cjkcodecs
LOCAL_MODULE := _codecs_iso2022
LOCAL_MODULE_FILENAME := _codecs_iso2022
LOCAL_SRC_FILES := Modules/cjkcodecs/_codecs_iso2022.c
LOCAL_SHARED_LIBRARIES := libpython2.7
include $(BUILD_SHARED_LIBRARY)

include $(CLEAR_VARS)
LOCAL_PATH := $(PYTHON_SRC_PATH)
LOCAL_C_INCLUDES := $(PYTHON_SRC_PATH) $(PYTHON_SRC_PATH)/Include $(PYTHON_SRC_PATH)/Modules $(PYTHON_SRC_PATH)/Modules/_multiprocessing
LOCAL_MODULE := _multiprocessing
LOCAL_MODULE_FILENAME := _multiprocessing
LOCAL_SRC_FILES := Modules/_multiprocessing/multiprocessing.c Modules/_multiprocessing/socket_connection.c Modules/_multiprocessing/semaphore.c
LOCAL_CFLAGS := -DHAVE_SEM_OPEN
LOCAL_SHARED_LIBRARIES := libpython2.7
include $(BUILD_SHARED_LIBRARY)

include $(CLEAR_VARS)
LOCAL_PATH := $(PYTHON_SRC_PATH)
LOCAL_C_INCLUDES := $(PYTHON_SRC_PATH) $(PYTHON_SRC_PATH)/Include $(PYTHON_SRC_PATH)/Modules
LOCAL_MODULE := linuxaudiodev
LOCAL_MODULE_FILENAME := linuxaudiodev
LOCAL_SRC_FILES := Modules/linuxaudiodev.c
LOCAL_SHARED_LIBRARIES := libpython2.7
include $(BUILD_SHARED_LIBRARY)

LOCAL_PATH := $(PYTHON_SRC_PATH)
LOCAL_C_INCLUDES := $(PYTHON_SRC_PATH) $(PYTHON_SRC_PATH)/Include $(PYTHON_SRC_PATH)/Modules $(PYTHON_SRC_PATH)/Modules/_ctypes
LOCAL_MODULE := _ctypes
LOCAL_MODULE_FILENAME := _ctypes
LOCAL_SRC_FILES := Modules/_ctypes/_ctypes.c Modules/_ctypes/callbacks.c Modules/_ctypes/callproc.c Modules/_ctypes/stgdict.c Modules/_ctypes/cfield.c Modules/_ctypes/malloc_closure.c 
LOCAL_SHARED_LIBRARIES := libpython2.7 libffi
include $(BUILD_SHARED_LIBRARY)
