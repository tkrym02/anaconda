# Copyright (c) Mathias Kaerlev 2012.

# This file is part of Anaconda.

# Anaconda is free software: you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation, either version 3 of the License, or
# (at your option) any later version.

# Anaconda is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.

# You should have received a copy of the GNU General Public License
# along with Anaconda.  If not, see <http://www.gnu.org/licenses/>.

from mmfparser.player.event.actions.common import Action

class ExtractBinaryFile(Action):
    def execute(self):
        path = self.evaluate_expression(self.get_parameter(0))
        self.player.files.get_binary_file(path, True)

class ReleaseBinaryFile(Action):
    def execute(self):
        path = self.evaluate_expression(self.get_parameter(0))
        self.player.files.release_binary_file(path)