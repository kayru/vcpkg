include(SelectLibraryConfigurations)

find_path(BIGINT_INCLUDE_DIR BigInteger.hh PATH_SUFFIXES bigint)
find_library(BIGINT_LIBRARY_DEBUG NAMES bigint NAMES_PER_DIR PATH_SUFFIXES lib PATHS "${_VCPKG_INSTALLED_DIR}/${VCPKG_TARGET_TRIPLET}/debug" NO_DEFAULT_PATH REQUIRED)
find_library(BIGINT_LIBRARY_RELEASE NAMES bigint NAMES_PER_DIR PATH_SUFFIXES lib PATHS "${_VCPKG_INSTALLED_DIR}/${VCPKG_TARGET_TRIPLET}" NO_DEFAULT_PATH REQUIRED)

select_library_configurations(BIGINT)

set(BIGINT_INCLUDE_DIRS ${BIGINT_INCLUDE_DIR})
set(BIGINT_LIBRARIES ${BIGINT_LIBRARY})