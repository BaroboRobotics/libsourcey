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


#ifndef SCY_FileSystem_H
#define SCY_FileSystem_H

#include "scy/dllexport.h"
#include "scy/types.h"
#include <string>
#include <vector>


namespace scy {
namespace fs {

SCYAPI extern const char* separator;
	// The platform specific path split separator:
	// "/" on unix and '\\' on windows.
	
SCYAPI extern const char delimiter;
	// The platform specific path split delimiter:
	// '/' on unix and '\\' on windows.

SCYAPI std::string filename(const std::string& path);
	// Returns the file name and extension part of the given path.

SCYAPI std::string basename(const std::string& path);
	// Returns the file name sans extension.

SCYAPI std::string dirname(const std::string& path);
	// Returns the directory part of the path.

SCYAPI std::string extname(const std::string& path, bool includeDot = false);
	// Returns the file extension part of the path.

SCYAPI bool exists(const std::string& path);
	// Returns true if the file or directory exists.

SCYAPI bool isdir(const std::string& path);
	// Returns true if the directory exists on the system.

SCYAPI Int64 filesize(const std::string& path);
	// Returns the size in bytes of the given file, or -1 if file doesn't exist.

SCYAPI void readdir(const std::string& path, std::vector<std::string>& res);
	// Returns a list of all files and folders in the directory. 

SCYAPI void mkdir(const std::string& path, int mode = 0755);
	// Creates a directory. 

SCYAPI void mkdirr(const std::string& path, int mode = 0755);
	// Creates a directory recursively. 

SCYAPI void rmdir(const std::string& path);
	// Creates a directory. 

SCYAPI void unlink(const std::string& path);
	// Deletes a file. 

SCYAPI void rename(const std::string& path, const std::string& target);
	// Renames or moves the given file to the target path. 

SCYAPI void addsep(std::string& path);
	// Adds the trailing directory separator to the given path string.
	// If the last character is already a separator nothing will be done.

SCYAPI void addnode(std::string& path, const std::string& node);
	// Appends the given node to the path.
	// If the given path has no trailing separator one will be appended.

SCYAPI std::string normalize(const std::string& path);
	// Normalizes a path for the current opearting system. 
	// Currently this function only converts directory separators to native style.
		
SCYAPI std::string transcode(const std::string& path);
	// Transcodes the path to into windows native format if using windows
	// and if LibSourcey was compiled with Unicode support (SCY_UNICODE),
	// otherwise the path string is returned unchanged.
	
SCYAPI bool savefile(const std::string& path, const char* data, std::size_t size, bool whiny = false);
	// Saves the given data buffer to the output file path.
	// Returns true on success, or if whiny is set then an 
	// exception will be thrown on error.

// TODO: Implement more libuv fs_* types


} } // namespace scy::fs


#endif