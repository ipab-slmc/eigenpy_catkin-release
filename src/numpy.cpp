/*
 * Copyright 2020 INRIA
 */

#include "eigenpy/numpy.hpp"

namespace eigenpy
{
  void import_numpy()
  {
    if(_import_array() < 0)
    {
      PyErr_Print();
      PyErr_SetString(PyExc_ImportError, "numpy.core.multiarray failed to import");
    }
  }

#if defined _WIN32 || defined __CYGWIN__

  PyObject* call_PyArray_SimpleNew(int nd, npy_intp * shape, int np_type)
  {
    return PyArray_SimpleNew(nd,shape,np_type);
  }

  PyObject* call_PyArray_New(int nd, npy_intp * shape, int np_type, void * data_ptr, int options)
  {
    return PyArray_New(&PyArray_Type,nd,shape,np_type,NULL,data_ptr,0,options,NULL);
  }
  
  int call_PyArray_ObjectType(PyObject * obj, int val)
  {
    return PyArray_ObjectType(obj,val);
  }

#endif
}
