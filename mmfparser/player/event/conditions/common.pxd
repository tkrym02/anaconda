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

cdef class Conditionfrom mmfparser.player.event.common cimport ACBasefrom mmfparser.player.instance cimport Instancecdef class Condition(ACBase):    cdef object _check    cdef int compareValue    cdef public:        bint isTriggered        bint negated        cdef void initialize(self, loader, bint isTriggered)    cpdef generate(self)    cpdef get_conditions(self, conditionClass)    cpdef bint handle(self)    cdef bint check(self)    cdef bint check_instance(self, Instance instance)    cpdef bint compare(self, value1, value2)