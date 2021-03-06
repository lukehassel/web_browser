// Copyright 2020 Gohilla Ltd.
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
// http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

import 'package:web_browser/web_browser.dart';

/// Uses Google for searching.
void defaultOnSearch(WebBrowserController controller, String query) {
  query = query.trim();
  if (query.isEmpty) {
    controller.loadUrl('https://www.google.com/');
  } else {
    final q =
        query.split(' ').map((e) => Uri.encodeQueryComponent(e)).join('+');
    final url = 'https://www.google.com/search?q=$q';
    controller.loadUrl(url);
  }
}
