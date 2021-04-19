# Copyright (C) 2008-2014 LAAS-CNRS, JRL AIST-CNRS.
#
# This program is free software: you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation, either version 3 of the License, or
# (at your option) any later version.
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with this program.  If not, see <http://www.gnu.org/licenses/>.

#.rst:
# .. ifmode:: user
#
#  By default, Doxygen_, if found, is used to generate a HTML documentation
#  of the code. You can configure it as follows:
#
#  - Many Doxygen options can be configured from CMake itself. E.g. Doxygen option
#    `PROJECT_NAME` can be set using CMake variable `DOXYGEN_PROJECT_NAME`.
#
#  - If present, the file *doc/Doxyfile.extra.in* will be configured and append to
#    the above mentionned configuration file.
#
#  For a good documentation of the available options, see either `local documentation
#  <file:///usr/share/doc/doxygen/html/config.html>`_ provided by package *doxygen-doc*
#  or the `online version <http://www.doxygen.nl/manual/config.html>`_.
#
#   .. variable:: INSTALL_DOCUMENTATION
#
#     whether the documentation should be installed.
#     Turning this to OFF does not prevent the documentation generation.
#
#  .. _Doxygen: http://www.doxygen.nl

#.rst:
# .. ifmode:: internal
#
#   .. command:: _SETUP_DOXYGEN_DEFAULT_OPTIONS
#
#     Set default options for doxygen configuration when the user didn't specify
#     those options already. To add doxygen configuration option, the easiest is
#
#     - `doxygen -s -g Doxyfile.tmp`
#     - `awk -f doxyfile.awk doxygen`
#
#     :param configfile: the output file
MACRO(_SETUP_DOXYGEN_CONFIG_FILE configfile)
  file(WRITE ${configfile} "# Generated by cmake/doxygen.cmake\n")
  foreach(option
       # This list was generated using
       # doxygen -s -g Doxyfile.tmp
       # awk -f doxyfile.awk doxygen

       # Doxyfile 1.8.18
       
       #---------------------------------------------------------------------------
       # Project related configuration options
       #---------------------------------------------------------------------------
       DOXYFILE_ENCODING
       PROJECT_NAME
       PROJECT_NUMBER
       PROJECT_BRIEF
       PROJECT_LOGO
       OUTPUT_DIRECTORY
       CREATE_SUBDIRS
       ALLOW_UNICODE_NAMES
       OUTPUT_LANGUAGE
       OUTPUT_TEXT_DIRECTION
       BRIEF_MEMBER_DESC
       REPEAT_BRIEF
       ABBREVIATE_BRIEF
       ALWAYS_DETAILED_SEC
       INLINE_INHERITED_MEMB
       FULL_PATH_NAMES
       STRIP_FROM_PATH
       STRIP_FROM_INC_PATH
       SHORT_NAMES
       JAVADOC_AUTOBRIEF
       JAVADOC_BANNER
       QT_AUTOBRIEF
       MULTILINE_CPP_IS_BRIEF
       INHERIT_DOCS
       SEPARATE_MEMBER_PAGES
       TAB_SIZE
       ALIASES
       TCL_SUBST
       OPTIMIZE_OUTPUT_FOR_C
       OPTIMIZE_OUTPUT_JAVA
       OPTIMIZE_FOR_FORTRAN
       OPTIMIZE_OUTPUT_VHDL
       OPTIMIZE_OUTPUT_SLICE
       EXTENSION_MAPPING
       MARKDOWN_SUPPORT
       TOC_INCLUDE_HEADINGS
       AUTOLINK_SUPPORT
       BUILTIN_STL_SUPPORT
       CPP_CLI_SUPPORT
       SIP_SUPPORT
       IDL_PROPERTY_SUPPORT
       DISTRIBUTE_GROUP_DOC
       GROUP_NESTED_COMPOUNDS
       SUBGROUPING
       INLINE_GROUPED_CLASSES
       INLINE_SIMPLE_STRUCTS
       TYPEDEF_HIDES_STRUCT
       LOOKUP_CACHE_SIZE
       #---------------------------------------------------------------------------
       # Build related configuration options
       #---------------------------------------------------------------------------
       EXTRACT_ALL
       EXTRACT_PRIVATE
       EXTRACT_PRIV_VIRTUAL
       EXTRACT_PACKAGE
       EXTRACT_STATIC
       EXTRACT_LOCAL_CLASSES
       EXTRACT_LOCAL_METHODS
       EXTRACT_ANON_NSPACES
       HIDE_UNDOC_MEMBERS
       HIDE_UNDOC_CLASSES
       HIDE_FRIEND_COMPOUNDS
       HIDE_IN_BODY_DOCS
       INTERNAL_DOCS
       CASE_SENSE_NAMES
       HIDE_SCOPE_NAMES
       HIDE_COMPOUND_REFERENCE=
       SHOW_INCLUDE_FILES
       SHOW_GROUPED_MEMB_INC
       FORCE_LOCAL_INCLUDES
       INLINE_INFO
       SORT_MEMBER_DOCS
       SORT_BRIEF_DOCS
       SORT_MEMBERS_CTORS_1ST
       SORT_GROUP_NAMES
       SORT_BY_SCOPE_NAME
       STRICT_PROTO_MATCHING
       GENERATE_TODOLIST
       GENERATE_TESTLIST
       GENERATE_BUGLIST
       GENERATE_DEPRECATEDLIST=
       ENABLED_SECTIONS
       MAX_INITIALIZER_LINES
       SHOW_USED_FILES
       SHOW_FILES
       SHOW_NAMESPACES
       FILE_VERSION_FILTER
       LAYOUT_FILE
       CITE_BIB_FILES
       #---------------------------------------------------------------------------
       # Configuration options related to warning and progress messages
       #---------------------------------------------------------------------------
       QUIET
       WARNINGS
       WARN_IF_UNDOCUMENTED
       WARN_IF_DOC_ERROR
       WARN_NO_PARAMDOC
       WARN_AS_ERROR
       WARN_FORMAT
       WARN_LOGFILE
       #---------------------------------------------------------------------------
       # Configuration options related to the input files
       #---------------------------------------------------------------------------
       INPUT
       INPUT_ENCODING
       FILE_PATTERNS
       RECURSIVE
       EXCLUDE
       EXCLUDE_SYMLINKS
       EXCLUDE_PATTERNS
       EXCLUDE_SYMBOLS
       EXAMPLE_PATH
       EXAMPLE_PATTERNS
       EXAMPLE_RECURSIVE
       IMAGE_PATH
       INPUT_FILTER
       FILTER_PATTERNS
       FILTER_SOURCE_FILES
       FILTER_SOURCE_PATTERNS
       USE_MDFILE_AS_MAINPAGE
       #---------------------------------------------------------------------------
       # Configuration options related to source browsing
       #---------------------------------------------------------------------------
       SOURCE_BROWSER
       INLINE_SOURCES
       STRIP_CODE_COMMENTS
       REFERENCED_BY_RELATION
       REFERENCES_RELATION
       REFERENCES_LINK_SOURCE
       SOURCE_TOOLTIPS
       USE_HTAGS
       VERBATIM_HEADERS
       #---------------------------------------------------------------------------
       # Configuration options related to the alphabetical class index
       #---------------------------------------------------------------------------
       ALPHABETICAL_INDEX
       COLS_IN_ALPHA_INDEX
       IGNORE_PREFIX
       #---------------------------------------------------------------------------
       # Configuration options related to the HTML output
       #---------------------------------------------------------------------------
       GENERATE_HTML
       HTML_OUTPUT
       HTML_FILE_EXTENSION
       HTML_HEADER
       HTML_FOOTER
       HTML_STYLESHEET
       HTML_EXTRA_STYLESHEET
       HTML_EXTRA_FILES
       HTML_COLORSTYLE_HUE
       HTML_COLORSTYLE_SAT
       HTML_COLORSTYLE_GAMMA
       HTML_TIMESTAMP
       HTML_DYNAMIC_MENUS
       HTML_DYNAMIC_SECTIONS
       HTML_INDEX_NUM_ENTRIES
       GENERATE_DOCSET
       DOCSET_FEEDNAME
       DOCSET_BUNDLE_ID
       DOCSET_PUBLISHER_ID
       DOCSET_PUBLISHER_NAME
       GENERATE_HTMLHELP
       CHM_FILE
       HHC_LOCATION
       GENERATE_CHI
       CHM_INDEX_ENCODING
       BINARY_TOC
       TOC_EXPAND
       GENERATE_QHP
       QCH_FILE
       QHP_NAMESPACE
       QHP_VIRTUAL_FOLDER
       QHP_CUST_FILTER_NAME
       QHP_CUST_FILTER_ATTRS
       QHP_SECT_FILTER_ATTRS
       QHG_LOCATION
       GENERATE_ECLIPSEHELP
       ECLIPSE_DOC_ID
       DISABLE_INDEX
       GENERATE_TREEVIEW
       ENUM_VALUES_PER_LINE
       TREEVIEW_WIDTH
       EXT_LINKS_IN_WINDOW
       HTML_FORMULA_FORMAT
       FORMULA_FONTSIZE
       FORMULA_TRANSPARENT
       FORMULA_MACROFILE
       USE_MATHJAX
       MATHJAX_FORMAT
       MATHJAX_RELPATH
       MATHJAX_EXTENSIONS
       MATHJAX_CODEFILE
       SEARCHENGINE
       SERVER_BASED_SEARCH
       EXTERNAL_SEARCH
       SEARCHENGINE_URL
       SEARCHDATA_FILE
       EXTERNAL_SEARCH_ID
       EXTRA_SEARCH_MAPPINGS
       #---------------------------------------------------------------------------
       # Configuration options related to the LaTeX output
       #---------------------------------------------------------------------------
       GENERATE_LATEX
       LATEX_OUTPUT
       LATEX_CMD_NAME
       MAKEINDEX_CMD_NAME
       LATEX_MAKEINDEX_CMD
       COMPACT_LATEX
       PAPER_TYPE
       EXTRA_PACKAGES
       LATEX_HEADER
       LATEX_FOOTER
       LATEX_EXTRA_STYLESHEET
       LATEX_EXTRA_FILES
       PDF_HYPERLINKS
       USE_PDFLATEX
       LATEX_BATCHMODE
       LATEX_HIDE_INDICES
       LATEX_SOURCE_CODE
       LATEX_BIB_STYLE
       LATEX_TIMESTAMP
       LATEX_EMOJI_DIRECTORY
       #---------------------------------------------------------------------------
       # Configuration options related to the RTF output
       #---------------------------------------------------------------------------
       GENERATE_RTF
       RTF_OUTPUT
       COMPACT_RTF
       RTF_HYPERLINKS
       RTF_STYLESHEET_FILE
       RTF_EXTENSIONS_FILE
       RTF_SOURCE_CODE
       #---------------------------------------------------------------------------
       # Configuration options related to the man page output
       #---------------------------------------------------------------------------
       GENERATE_MAN
       MAN_OUTPUT
       MAN_EXTENSION
       MAN_SUBDIR
       MAN_LINKS
       #---------------------------------------------------------------------------
       # Configuration options related to the XML output
       #---------------------------------------------------------------------------
       GENERATE_XML
       XML_OUTPUT
       XML_PROGRAMLISTING
       XML_NS_MEMB_FILE_SCOPE
       #---------------------------------------------------------------------------
       # Configuration options related to the DOCBOOK output
       #---------------------------------------------------------------------------
       GENERATE_DOCBOOK
       DOCBOOK_OUTPUT
       DOCBOOK_PROGRAMLISTING
       #---------------------------------------------------------------------------
       # Configuration options for the AutoGen Definitions output
       #---------------------------------------------------------------------------
       GENERATE_AUTOGEN_DEF
       #---------------------------------------------------------------------------
       # Configuration options related to the Perl module output
       #---------------------------------------------------------------------------
       GENERATE_PERLMOD
       PERLMOD_LATEX
       PERLMOD_PRETTY
       PERLMOD_MAKEVAR_PREFIX
       #---------------------------------------------------------------------------
       # Configuration options related to the preprocessor
       #---------------------------------------------------------------------------
       ENABLE_PREPROCESSING
       MACRO_EXPANSION
       EXPAND_ONLY_PREDEF
       SEARCH_INCLUDES
       INCLUDE_PATH
       INCLUDE_FILE_PATTERNS
       PREDEFINED
       EXPAND_AS_DEFINED
       SKIP_FUNCTION_MACROS
       #---------------------------------------------------------------------------
       # Configuration options related to external references
       #---------------------------------------------------------------------------
       TAGFILES
       GENERATE_TAGFILE
       ALLEXTERNALS
       EXTERNAL_GROUPS
       EXTERNAL_PAGES
       #---------------------------------------------------------------------------
       # Configuration options related to the dot tool
       #---------------------------------------------------------------------------
       CLASS_DIAGRAMS
       DIA_PATH
       HIDE_UNDOC_RELATIONS
       HAVE_DOT
       DOT_NUM_THREADS
       DOT_FONTNAME
       DOT_FONTSIZE
       DOT_FONTPATH
       CLASS_GRAPH
       COLLABORATION_GRAPH
       GROUP_GRAPHS
       UML_LOOK
       UML_LIMIT_NUM_FIELDS
       TEMPLATE_RELATIONS
       INCLUDE_GRAPH
       INCLUDED_BY_GRAPH
       CALL_GRAPH
       CALLER_GRAPH
       GRAPHICAL_HIERARCHY
       DIRECTORY_GRAPH
       DOT_IMAGE_FORMAT
       INTERACTIVE_SVG
       DOT_PATH
       DOTFILE_DIRS
       MSCFILE_DIRS
       DIAFILE_DIRS
       PLANTUML_JAR_PATH
       PLANTUML_CFG_FILE
       PLANTUML_INCLUDE_PATH
       DOT_GRAPH_MAX_NODES
       MAX_DOT_GRAPH_DEPTH
       DOT_TRANSPARENT
       DOT_MULTI_TARGETS
       GENERATE_LEGEND
       DOT_CLEANUP
      )
    IF(DEFINED DOXYGEN_${option})
      file(APPEND ${configfile} "${option} = ${DOXYGEN_${option}}\n")
    ENDIF()
  ENDFOREACH()
ENDMACRO(_SETUP_DOXYGEN_CONFIG_FILE)

macro(_set_if_undefined variable)
  if(NOT DEFINED ${variable})
    set(${variable} ${ARGN})
  endif()
endmacro()

# _SETUP_DOXYGEN_DEFAULT_OPTIONS
# ----------------------------
#
# Set default options for doxygen configuration when the user didn't specify
# those options already.
MACRO(_SETUP_DOXYGEN_DEFAULT_OPTIONS)
  #---------------------------------------------------------------------------
  # Project related configuration options
  #---------------------------------------------------------------------------
  _set_if_undefined(DOXYGEN_PROJECT_NAME         "${PROJECT_NAME}")
  _set_if_undefined(DOXYGEN_PROJECT_NUMBER       "${PROJECT_VERSION}")
  _set_if_undefined(DOXYGEN_PROJECT_BRIEF        "\"${PROJECT_DESCRIPTION}\"")
  _set_if_undefined(DOXYGEN_STRIP_FROM_PATH      "${PROJECT_SOURCE_DIR}")
  _set_if_undefined(DOXYGEN_STRIP_FROM_INC_PATH  "${PROJECT_SOURCE_DIR}/src ${PROJECT_SOURCE_DIR}/include")
  _set_if_undefined(DOXYGEN_EXTRACT_ALL          "YES")
  #---------------------------------------------------------------------------
  # Configuration options related to warning and progress messages
  #---------------------------------------------------------------------------
  _set_if_undefined(DOXYGEN_QUIET                YES)
  _set_if_undefined(DOXYGEN_WARN_LOGFILE         doxygen.log)
  #---------------------------------------------------------------------------
  # Configuration options related to the input files
  #---------------------------------------------------------------------------
  _set_if_undefined(DOXYGEN_IMAGE_PATH           "${PROJECT_SOURCE_DIR}/doc")
  _set_if_undefined(DOXYGEN_FILE_PATTERNS        "*.cc *.cpp *.h *.hh *.hxx *.idl")
  _set_if_undefined(DOXYGEN_RECURSIVE            YES)
  #---------------------------------------------------------------------------
  # Configuration options related to source browsing
  #---------------------------------------------------------------------------

  #---------------------------------------------------------------------------
  # Configuration options related to the alphabetical class index
  #---------------------------------------------------------------------------

  #---------------------------------------------------------------------------
  # Configuration options related to the HTML output
  #---------------------------------------------------------------------------
  _set_if_undefined(DOXYGEN_HTML_OUTPUT          doxygen-html)
  _set_if_undefined(DOXYGEN_GENERATE_TREEVIEW    YES)
  #---------------------------------------------------------------------------
  # Configuration options related to the LaTeX output
  #---------------------------------------------------------------------------
  _set_if_undefined(DOXYGEN_GENERATE_LATEX       NO)
  _set_if_undefined(DOXYGEN_LATEX_OUTPUT         doxygen-latex)
  _set_if_undefined(DOXYGEN_EXTRA_PACKAGES       "amssymb,amsmath")
  #---------------------------------------------------------------------------
  # Configuration options related to the RTF output
  #---------------------------------------------------------------------------

  #---------------------------------------------------------------------------
  # Configuration options related to the man page output
  #---------------------------------------------------------------------------

  #---------------------------------------------------------------------------
  # Configuration options related to the XML output
  #---------------------------------------------------------------------------

  #---------------------------------------------------------------------------
  # Configuration options related to the DOCBOOK output
  #---------------------------------------------------------------------------

  #---------------------------------------------------------------------------
  # Configuration options for the AutoGen Definitions output
  #---------------------------------------------------------------------------

  #---------------------------------------------------------------------------
  # Configuration options related to the Perl module output
  #---------------------------------------------------------------------------

  #---------------------------------------------------------------------------
  # Configuration options related to the preprocessor
  #---------------------------------------------------------------------------

  #---------------------------------------------------------------------------
  # Configuration options related to external references
  #---------------------------------------------------------------------------
  _set_if_undefined(DOXYGEN_GENERATE_TAGFILE     "${PROJECT_NAME}.doxytag")
  #---------------------------------------------------------------------------
  # Configuration options related to the dot tool
  #---------------------------------------------------------------------------

ENDMACRO(_SETUP_DOXYGEN_DEFAULT_OPTIONS)

# _SETUP_PROJECT_DOCUMENTATION
# ----------------------------
#
# Look for Doxygen, add a custom rule to generate the documentation
# and install the documentation properly.
#
# Available user options (to be set before calling SETUP_PROJECT):
#   DOXYGEN_DOT_IMAGE_FORMAT: format for dot images. Defaults to "svg".
#   DOXYGEN_USE_MATHJAX: use MathJax to render LaTeX equations. Defaults to "NO".
MACRO(_SETUP_PROJECT_DOCUMENTATION)

  # Search for Doxygen.
  FIND_PACKAGE(Doxygen)

  IF(NOT DOXYGEN_FOUND)
    MESSAGE(WARNING "Failed to find Doxygen, documentation will not be generated.")
  ELSE(NOT DOXYGEN_FOUND)
    _SETUP_DOXYGEN_DEFAULT_OPTIONS()
    # Generate variable to be substitued in Doxyfile.in
    # for dot use.
    IF(DOXYGEN_DOT_FOUND)
      SET(DOXYGEN_HAVE_DOT YES)
    ENDIF(DOXYGEN_DOT_FOUND)

    # Teach CMake how to generate the documentation.
    IF(MSVC)
      # FIXME: it is impossible to trigger documentation installation
      # at install, so put the target in ALL instead.
      ADD_CUSTOM_TARGET(doc ALL
        COMMAND ${DOXYGEN_EXECUTABLE} Doxyfile
        WORKING_DIRECTORY doc
        COMMENT "Generating Doxygen documentation"
        )
    ELSE(MSVC)
      ADD_CUSTOM_TARGET(doc
        COMMAND ${DOXYGEN_EXECUTABLE} Doxyfile
        WORKING_DIRECTORY doc
        COMMENT "Generating Doxygen documentation"
        )

      IF(INSTALL_DOCUMENTATION)
        INSTALL(CODE "EXECUTE_PROCESS(COMMAND ${CMAKE_MAKE_PROGRAM} doc)")
      ENDIF(INSTALL_DOCUMENTATION)
    ENDIF(MSVC)

    IF (DOXYGEN_USE_TEMPLATE_CSS)
      ADD_CUSTOM_TARGET(generate-template-css
        COMMAND ${DOXYGEN_EXECUTABLE} -w html
        ${CMAKE_CURRENT_BINARY_DIR}/doc/header.html
        ${CMAKE_CURRENT_BINARY_DIR}/doc/footer.html
        ${CMAKE_CURRENT_BINARY_DIR}/doc/doxygen.css
        BYPRODUCTS
        ${CMAKE_CURRENT_BINARY_DIR}/doc/header.html
        ${CMAKE_CURRENT_BINARY_DIR}/doc/footer.html
        ${CMAKE_CURRENT_BINARY_DIR}/doc/doxygen.css
        )
      ADD_DEPENDENCIES(doc generate-template-css)
      _set_if_undefined(DOXYGEN_HTML_HEADER     "${CMAKE_CURRENT_BINARY_DIR}/doc/header.html")
      _set_if_undefined(DOXYGEN_HTML_FOOTER     "${CMAKE_CURRENT_BINARY_DIR}/doc/footer.html")
      _set_if_undefined(DOXYGEN_HTML_STYLESHEET "${CMAKE_CURRENT_BINARY_DIR}/doc/doxygen.css")
    ELSE (DOXYGEN_USE_TEMPLATE_CSS)
      _set_if_undefined(DOXYGEN_HTML_FOOTER     "${PROJECT_JRL_CMAKE_MODULE_DIR}/doxygen/footer.html")
      _set_if_undefined(DOXYGEN_HTML_STYLESHEET "${PROJECT_JRL_CMAKE_MODULE_DIR}/doxygen/doxygen.css")
    ENDIF (DOXYGEN_USE_TEMPLATE_CSS)

    ADD_CUSTOM_COMMAND(
      OUTPUT
      ${CMAKE_CURRENT_BINARY_DIR}/doc/${PROJECT_NAME}.doxytag
      ${CMAKE_CURRENT_BINARY_DIR}/doc/doxygen-html
      COMMAND ${DOXYGEN_EXECUTABLE} Doxyfile
      WORKING_DIRECTORY doc
      COMMENT "Generating Doxygen documentation"
      )

    # Clean generated files.
    SET_PROPERTY(
      DIRECTORY APPEND PROPERTY
      ADDITIONAL_MAKE_CLEAN_FILES
      ${CMAKE_CURRENT_BINARY_DIR}/doc/${PROJECT_NAME}.doxytag
      ${CMAKE_CURRENT_BINARY_DIR}/doc/doxygen.log
      ${CMAKE_CURRENT_BINARY_DIR}/doc/doxygen-html
      )

    # Install MathJax minimal version.
    IF("${DOXYGEN_USE_MATHJAX}" STREQUAL "YES")
      FILE(COPY ${PROJECT_JRL_CMAKE_MODULE_DIR}/doxygen/MathJax
           DESTINATION ${CMAKE_CURRENT_BINARY_DIR}/doc/doxygen-html)
    ENDIF()

    # Install generated files.
    IF(INSTALL_DOCUMENTATION)
      IF(EXISTS ${CMAKE_CURRENT_BINARY_DIR}/doc/${PROJECT_NAME}.doxytag)
        INSTALL(
          FILES ${CMAKE_CURRENT_BINARY_DIR}/doc/${PROJECT_NAME}.doxytag
          DESTINATION ${CMAKE_INSTALL_DOCDIR}/doxygen-html)
      ENDIF()
      INSTALL(DIRECTORY ${CMAKE_CURRENT_BINARY_DIR}/doc/doxygen-html
        DESTINATION ${CMAKE_INSTALL_DOCDIR})

      IF(EXISTS ${PROJECT_SOURCE_DIR}/doc/pictures)
        INSTALL(DIRECTORY ${PROJECT_SOURCE_DIR}/doc/pictures
          DESTINATION ${CMAKE_INSTALL_DOCDIR}/doxygen-html)
      ENDIF(EXISTS ${PROJECT_SOURCE_DIR}/doc/pictures)
    ENDIF(INSTALL_DOCUMENTATION)

    LIST(APPEND LOGGING_WATCHED_VARIABLES
      DOXYGEN_SKIP_DOT
      DOXYGEN_EXECUTABLE
      DOXYGEN_FOUND
      DOXYGEN_DOT_EXECUTABLE
      DOXYGEN_DOT_FOUND
      DOXYGEN_DOT_PATH
      DOXYGEN_DOT_IMAGE_FORMAT
      DOXYGEN_USE_MATHJAX
      DOXYGEN_USE_TEMPLATE_CSS
      )
  ENDIF(NOT DOXYGEN_FOUND)
ENDMACRO(_SETUP_PROJECT_DOCUMENTATION)

# _DOXYTAG_ENTRIES_FROM_CMAKE_DEPENDENCIES
# ----------------------------------------
#
# Generate TAGFILES entries from this project dependencies and their
# dependencies (recursively)
#
MACRO(_DOXYTAG_ENTRIES_FROM_CMAKE_DEPENDENCIES DEPENDENCIES VAR_OUT)
  FOREACH(PREFIX ${DEPENDENCIES})
    IF( DEFINED ${PREFIX}_DOXYGENDOCDIR
        AND EXISTS ${${PREFIX}_DOXYGENDOCDIR}/${PREFIX}.doxytag)
      SET(${VAR_OUT} "${${VAR_OUT}} \"${${PREFIX}_DOXYGENDOCDIR}/${PREFIX}.doxytag = ${${PREFIX}_DOXYGENDOCDIR}\"")
    ENDIF()
    IF( DEFINED ${PREFIX}_DEPENDENCIES )
      _DOXYTAG_ENTRIES_FROM_CMAKE_DEPENDENCIES("${${PREFIX}_DEPENDENCIES}" ${VAR_OUT})
    ENDIF()
  ENDFOREACH()
ENDMACRO()

# _SETUP_PROJECT_DOCUMENTATION_FINALIZE
# -------------------------------------
#
# Post-processing for the documentation generation macro.
#
# Doxyfile.extra and Doxyfile files are generated at the end to allow
# the replacement of user-defined variables.
#
MACRO(_SETUP_PROJECT_DOCUMENTATION_FINALIZE)
  IF(DOXYGEN_FOUND)
    IF(NOT "${DOXYGEN_USE_MATHJAX}" STREQUAL "YES")
      # Make sure latex, dvips and gs are available
      FIND_PROGRAM(LATEX latex DOC "LaTeX compiler")
      FIND_PROGRAM(DVIPS dvips DOC "DVI to PostScript converter")
      FIND_PROGRAM(GS gs DOC "GhostScript interpreter")

      IF(NOT (LATEX AND GS AND DVIPS))
        MESSAGE(STATUS "Failed to find latex/dvips/gs, will use MathJax backend.")
        SET(DOXYGEN_USE_MATHJAX "YES")
      ENDIF()
    ENDIF()

    IF("${DOXYGEN_USE_MATHJAX}" STREQUAL "YES")
      MESSAGE(STATUS "Doxygen rendering: using MathJax backend")
      SET(DOXYGEN_HEADER_NAME "header-mathjax.html")
    ELSE()
      MESSAGE(STATUS "Doxygen rendering: using LaTeX backend")
      SET(DOXYGEN_HEADER_NAME "header.html")
    ENDIF()
    _set_if_undefined (DOXYGEN_HTML_HEADER "${PROJECT_JRL_CMAKE_MODULE_DIR}/doxygen/${DOXYGEN_HEADER_NAME}")

    IF(INSTALL_DOCUMENTATION)
      # Find doxytag files
      # To ignore this list of tag files, set variable DOXYGEN_TAGFILES
      SET(PKG_REQUIRES ${_PKG_CONFIG_REQUIRES})
      LIST(APPEND PKG_REQUIRES ${_PKG_CONFIG_COMPILE_TIME_REQUIRES})
      FOREACH(PKG_CONFIG_STRING ${PKG_REQUIRES})
        _PARSE_PKG_CONFIG_STRING(${PKG_CONFIG_STRING} LIBRARY_NAME PREFIX PKG_CONFIG_STRING_NOSPACE)
        # If DOXYGENDOCDIR is specified, add a doc path.
        IF( DEFINED ${PREFIX}_DOXYGENDOCDIR
            AND EXISTS ${${PREFIX}_DOXYGENDOCDIR}/${LIBRARY_NAME}.doxytag)
          FILE(RELATIVE_PATH DEP_DOCDIR ${_PKG_CONFIG_DOXYGENDOCDIR} ${${PREFIX}_DOXYGENDOCDIR})

          SET(DOXYGEN_TAGFILES_FROM_DEPENDENCIES "${DOXYGEN_TAGFILES_FROM_DEPENDENCIES} \"${${PREFIX}_DOXYGENDOCDIR}/${LIBRARY_NAME}.doxytag\"=\"${DEP_DOCDIR}\"")
        ENDIF()
      ENDFOREACH()
      _DOXYTAG_ENTRIES_FROM_CMAKE_DEPENDENCIES("${_PACKAGE_CONFIG_DEPENDENCIES_PROJECTS}" DOXYGEN_TAGFILES_FROM_DEPENDENCIES)
    ENDIF()
    _set_if_undefined(DOXYGEN_TAGFILES "${DOXYGEN_TAGFILES_FROM_DEPENDENCIES}")

    IF(EXISTS ${PROJECT_SOURCE_DIR}/include)
      SET (DOXYGEN_INCLUDE_PATH "${DOXYGEN_INCLUDE_PATH} \"${PROJECT_SOURCE_DIR}/include\"")
      SET (DOXYGEN_INPUT "${DOXYGEN_INPUT} \"${PROJECT_SOURCE_DIR}/include\"")
    ENDIF()
    IF(EXISTS ${PROJECT_SOURCE_DIR}/src)
      SET (DOXYGEN_INPUT "${DOXYGEN_INPUT} \"${PROJECT_SOURCE_DIR}/src\"")
    ENDIF()
    IF(EXISTS ${PROJECT_SOURCE_DIR}/tests)
      SET (DOXYGEN_EXAMPLE_PATH "${DOXYGEN_EXAMPLE_PATH} \"${PROJECT_SOURCE_DIR}/tests\"")
    ENDIF()
    SET (DOXYGEN_INCLUDE_PATH "${DOXYGEN_INCLUDE_PATH} \"${CMAKE_BINARY_DIR}/include\"")

    # Generate Doxyfile and Doxyfile.extra.
    IF(EXISTS ${PROJECT_SOURCE_DIR}/doc/Doxyfile.extra.in)
      CONFIGURE_FILE(
        ${PROJECT_SOURCE_DIR}/doc/Doxyfile.extra.in
        ${CMAKE_CURRENT_BINARY_DIR}/doc/Doxyfile.extra
        @ONLY
        )
      # Generate Doxyfile.
      _SETUP_DOXYGEN_CONFIG_FILE("${CMAKE_BINARY_DIR}/doc/Doxyfile")
      FILE(STRINGS ${CMAKE_CURRENT_BINARY_DIR}/doc/Doxyfile.extra doxyfile_extra)
      FOREACH(x ${doxyfile_extra})
        FILE(APPEND ${CMAKE_CURRENT_BINARY_DIR}/doc/Doxyfile ${x} "\n")
      ENDFOREACH(x in doxyfile_extra)
    ELSE()
      # This is kept for bacward compatibility. It was the only thing left in
      # doxygen/Doxyfile.extra.in
      set(DOXYGEN_IMAGE_PATH "${PROJECT_SOURCE_DIR}/doc/pictures")
      # Generate Doxyfile.
      _SETUP_DOXYGEN_CONFIG_FILE("${CMAKE_BINARY_DIR}/doc/Doxyfile")
    ENDIF()
  ENDIF(DOXYGEN_FOUND)
ENDMACRO(_SETUP_PROJECT_DOCUMENTATION_FINALIZE)
