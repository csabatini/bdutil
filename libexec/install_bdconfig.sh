# Copyright 2014 Google Inc. All Rights Reserved.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS-IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# Downloads and installs bdconfig and the xml templates

set -e

# Download and use bdconfig for xml configuration.
if [[ ! -f "$(which bdconfig)" ]]; then
  download_bd_resource "${BDCONFIG}" /tmp/bdconfig.tar.gz
  mkdir -p /usr/local/share/google
  tar -C /usr/local/share/google -xzf /tmp/bdconfig.tar.gz
  ln -s /usr/local/share/google/bdconfig*/bdconfig /usr/local/bin
fi
