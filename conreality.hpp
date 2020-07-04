// This is free and unencumbered software released into the public domain.

#pragma once

/**
 * @file
 *
 * Conreality Software Development Kit (SDK) for C++.
 *
 * @see https://github.com/conreality/conreality.cpp
 */

#ifndef __cplusplus
#error "<conreality.hpp> requires a C++ compiler"
#endif

#if __cplusplus < 201703L
#error "<conreality.hpp> requires a C++17 or newer compiler (CXXFLAGS='-std=c++17')"
#endif

#include "conreality.h"

namespace conreality {}
