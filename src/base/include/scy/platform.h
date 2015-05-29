//
// LibSourcey
// Copyright (C) 2005, Sourcey <http://sourcey.com>
//
// LibSourcey is free software; you can redistribute it and/or
// modify it under the terms of the GNU Lesser General Public
// License as published by the Free Software Foundation; either
// version 2.1 of the License, or (at your option) any later version.
//
// LibSourcey is distributed in the hope that it will be useful,
// but WITHOUT ANY WARRANTY; without even the implied warranty of
// MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
// GNU General Public License for more details.
//
// You should have received a copy of the GNU General Public License
// along with this program. If not, see <http://www.gnu.org/licenses/>.
//


#ifndef SCY_Platform_H
#define SCY_Platform_H

#include "scy/dllexport.h"
#include "scy/types.h"
#include <string>


namespace scy {
	
		
//
/// Cross-platform utilities
//
	
SCYAPI std::string getExePath();
	// Returns the current executable path.

SCYAPI std::string getCwd();
	// Return the current working directory.

SCYAPI UInt64 getFreeMemory();
	// Returns the current amount of free memory.

SCYAPI UInt64 getTotalMemory();
	// Returns the current amount of used memory.

SCYAPI void sleep(int ms);
	// Pause the current thread for the given ms duration.

SCYAPI void pause();
	// Pause the current thread until enter is pressed.



//
/// Windows helpers
//

#ifdef WIN32

SCYAPI bool getOsVersion(int* major, int* minor, int* build);
SCYAPI bool isWindowsVistaOrLater();
SCYAPI bool isWindowsXpOrLater();

SCYAPI std::wstring toUtf16(const char* utf8, std::size_t len);
SCYAPI std::wstring toUtf16(const std::string& str);
SCYAPI std::string toUtf8(const wchar_t* wide, std::size_t len);
SCYAPI std::string toUtf8(const std::wstring& wstr);

#endif


} // namespace scy


#endif // SCY_Platform_H
