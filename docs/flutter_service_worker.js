'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';
const RESOURCES = {
  ".git/COMMIT_EDITMSG": "68470b30e311fecf7bcad69143e759dd",
".git/config": "ecb36fbc2df3df4aa2185d3f39792729",
".git/description": "a0a7c3fff21f2aea3cfa1d0316dd816c",
".git/FETCH_HEAD": "2e7326dbd4fbe6d8051a8bafd01417fb",
".git/HEAD": "cf7dd3ce51958c5f13fece957cc417fb",
".git/hooks/applypatch-msg.sample": "ce562e08d8098926a3862fc6e7905199",
".git/hooks/commit-msg.sample": "579a3c1e12a1e74a98169175fb913012",
".git/hooks/fsmonitor-watchman.sample": "ecbb0cb5ffb7d773cd5b2407b210cc3b",
".git/hooks/post-update.sample": "2b7ea5cee3c49ff53d41e00785eb974c",
".git/hooks/pre-applypatch.sample": "054f9ffb8bfe04a599751cc757226dda",
".git/hooks/pre-commit.sample": "e4db8c12ee125a8a085907b757359ef0",
".git/hooks/pre-merge-commit.sample": "39cb268e2a85d436b9eb6f47614c3cbc",
".git/hooks/pre-push.sample": "3c5989301dd4b949dfa1f43738a22819",
".git/hooks/pre-rebase.sample": "56e45f2bcbc8226d2b4200f7c46371bf",
".git/hooks/pre-receive.sample": "2ad18ec82c20af7b5926ed9cea6aeedd",
".git/hooks/prepare-commit-msg.sample": "2b5c047bdb474555e1787db32b2d2fc5",
".git/hooks/update.sample": "517f14b9239689dff8bda3022ebd9004",
".git/index": "965d68c56fe1d7c83f78163552ba20a9",
".git/info/exclude": "036208b4a1ab4a235d75c181e685e5a3",
".git/logs/HEAD": "845546fd0f8373cbaba0f4b9a633707d",
".git/logs/refs/heads/main": "fa861ce1be6058c0bd4ca570fe534488",
".git/logs/refs/remotes/origin/main": "d398d576762cb43d473c37128a7eb470",
".git/objects/0a/d431c6d78a69efc6d6f4ab3e157ab68ca3f099": "8ece490f64de15866ee2f46b353fdf06",
".git/objects/13/afcb97ee0d58891193965effc8b279df5a8903": "99245ba3680a8fcfe5ca42267d7e407d",
".git/objects/1e/941f8069aedb2d423179c8c9468d552ed76b90": "6f8906739e6a5c9975ffc6803deabda0",
".git/objects/20/5bb5db271c6d8de8399864c7bb9b917f638893": "c993b22f115d7f3ae6d5b7b212806539",
".git/objects/32/46ad559eeae0370195978eaed83f1053ee13fd": "a043dbc0a0bda96ce2127799ccc27506",
".git/objects/39/e0a4a51a8773836b7403e0b4958e53d1f95381": "0b87d67561c915c38ffc66ce34b83300",
".git/objects/3a/bf18c41c58c933308c244a875bf383856e103e": "30790d31a35e3622fd7b3849c9bf1894",
".git/objects/44/e1c1e182df9dab2775e44f2089798bd6de2009": "d6a5a139ae72c40f9fe4d0eef341576f",
".git/objects/4b/4347f99dfa8ff9551340ebe306978fb382e138": "e54c75d5806667fb85606a7ffc7ba291",
".git/objects/4c/1dd8ef2b321329526a48ed27325b7e1614c49e": "9539992e205a5fa5ac71d68422907a15",
".git/objects/52/0e9e247de97045f352c8c3fdf99ed8f36e844c": "82b0fb9e830805ed8621225515dfbbc0",
".git/objects/55/ff2328e23550bd76143f8f2886129f59b112ee": "727e28f8d8f1b2adbb2b21f641b642bd",
".git/objects/58/64176614a365f74f7f9594b5fa212e72af9594": "ebf4f0db38962f0fc7b52d52bf479f23",
".git/objects/5a/53244201a8bd31472449fd99713a50e64a76b6": "6166419bfcb1ec5ceb17f5b4724d7c96",
".git/objects/75/8cfb7379ecbdd28a036a00feb55fef95a15a11": "9cba17064b508fb6c73ba252951572b1",
".git/objects/84/eb6dfcd542f592bf67d4b77fcb11e9ae55c56b": "88dec5269436192a604c1f418cac7a77",
".git/objects/88/cfd48dff1169879ba46840804b412fe02fefd6": "e42aaae6a4cbfbc9f6326f1fa9e3380c",
".git/objects/8a/aa46ac1ae21512746f852a42ba87e4165dfdd1": "1d8820d345e38b30de033aa4b5a23e7b",
".git/objects/92/b10113c8d52969e897fa0fb2684cbb902c4bbe": "d924e1471eb4d8cc02401f8922681947",
".git/objects/96/484a0891b37502d53e1d06163614b38f22b384": "001dec5f0cf7d250d15ef665a3ffa3e3",
".git/objects/9d/c8194670bff1124cf05ce7696eeacbf1778a30": "8728fc0b8012b56b3cdb8067c517c057",
".git/objects/9e/26dfeeb6e641a33dae4961196235bdb965b21b": "304148c109fef2979ed83fbc7cd0b006",
".git/objects/a1/10592ec02eaa045d109dd22bcc3f1ec9c4e4ac": "e28f5c42014181b41a3534c3860319c1",
".git/objects/a3/e9155b4a3064df4f78461cba2f95787e918560": "58fb351d8fa1d301fe579c50090a0700",
".git/objects/a8/beffd3ad4fe54d6cabccf83a05477d6a986cd0": "6677888e4a051c7838b5b240c09f0981",
".git/objects/ac/3f4f475561ed527ffb30bb594931ae61b9b566": "c38d8539bc9d53cfaf6e7979b73152c3",
".git/objects/ad/5e920f16c2436d6f11018b4ae8c3ded4f62b39": "ced043f58ecac79cf4c61509d9fb2218",
".git/objects/ae/8b4a868e97ecca8b4fc36d6f2cdf1f42e2432e": "47a94e729c2749c18eb6c3356fb7e4a9",
".git/objects/af/5b8d8c6c7bd38cb5aaea5d1c7b4e962a1525cf": "c2e2681e8e29471583e73ad363a9cef3",
".git/objects/b1/3a1fc42ba4bdaf22d2925b5e0cdab471ce85eb": "964705033468ba22df33b70034d8db41",
".git/objects/b2/67fb3379f38edf73e14e0eda9a9af04a96055e": "0f5e1265a06ae53b64eb2ba7316a697c",
".git/objects/b3/2dbaa9e170bcdad94ca0be789552e35e3cc6ca": "ed0eb093634f81df598322b6eba82f90",
".git/objects/b7/49bfef07473333cf1dd31e9eed89862a5d52aa": "36b4020dca303986cad10924774fb5dc",
".git/objects/bb/accc38573619180a8f94d6c3cbfcfad4611a0f": "863db7a35f04ad57c887a5d15536e245",
".git/objects/c2/0ab4444b0c1c8f13c2b55bbdaf0a4095d02f8d": "5b94612edef801905ecb6ae5a9e21406",
".git/objects/c6/d7593b1a5c34f8f1a8b9a1c9dcd81c2fc418ad": "cdc4cc170e148218e29dc131b69dc838",
".git/objects/cd/38532ae8cefc306324a1e3b6bf054b92f678f2": "8c691dc02219d899fdc299137ca6dcca",
".git/objects/cf/548e16bf5a2b4a01166d11f914f2eba531bdc9": "9a04cdb6667fb2afb506a71c5a7a9bb8",
".git/objects/d5/e83fd6c39e2ad7858a09e60d547913eee0c771": "de1e05d58e17cc1ebf6812ca2be5c512",
".git/objects/d8/6cf26cf2274fef4dff3fe76eb34ca357b396cd": "44ce8bfd77b620a2bb149f90e3d8151f",
".git/objects/da/0fdcde346c2eb6697ad32ea015babbfa09dd82": "4c9041c50a8a854e3be0b40cda616b13",
".git/objects/df/4aea279fbe30a428869f916d8106fa854669bd": "709ce5207acd2c5f61e65bd555731fc2",
".git/objects/e6/4cd58ff7609f64d5de5d5a406b0ab39411ed28": "6502c95f22eee2ca68e255194f1bc051",
".git/objects/ee/02be62b5e9d9b04c87484958829aad799a6a9c": "3658e5c1056172869ba5b27d030c4f7d",
".git/objects/ee/e59eb8adf3e998494be135522cddecb86d36ac": "8601850e8a4660eb65e69a8dacb2555e",
".git/objects/f4/c87ccb906f968ae47d5ce06b00072295b1cd04": "b4c0f71d13c1fbc435e4e5300eebf70b",
".git/objects/f8/7a616af24319332a90de32218be079e179396f": "8d6b37ad363fc9ba1095152e936c4a95",
".git/ORIG_HEAD": "c504170ec0b3366bbd6674b38bc5ccf6",
".git/refs/heads/main": "9072e495a799e17c5cc76d253fce701b",
".git/refs/remotes/origin/main": "9072e495a799e17c5cc76d253fce701b",
".github/workflows/greetings.yml": "8dd0a1461ea314e66ab0342c2783c41b",
"assets/AssetManifest.json": "99914b932bd37a50b983c5e7c90ae93b",
"assets/FontManifest.json": "7b2a36307916a9721811788013e65289",
"assets/fonts/MaterialIcons-Regular.otf": "4e6447691c9509f7acdbf8a931a85ca1",
"assets/NOTICES": "afb9d9468f1c8d9347f4720cd6b62fdf",
"favicon.png": "5dcef449791fa27946b3d35ad8803796",
"icons/Icon-192.png": "ac9a721a12bbc803b44f645561ecb1e1",
"icons/Icon-512.png": "96e752610906ba2a93c65f8abe1645f1",
"index.html": "1e3540cb677a12aa78ddad6ecc2a93e3",
"/": "1e3540cb677a12aa78ddad6ecc2a93e3",
"main.dart.js": "318a740fa6c383176806e92cb5bfa83d",
"manifest.json": "5895a4e24d4fc17b7658cd21a58d9625",
"version.json": "7922f92bc64441ceadd3fa96de680557"
};

// The application shell files that are downloaded before a service worker can
// start.
const CORE = [
  "/",
"main.dart.js",
"index.html",
"assets/NOTICES",
"assets/AssetManifest.json",
"assets/FontManifest.json"];
// During install, the TEMP cache is populated with the application shell files.
self.addEventListener("install", (event) => {
  self.skipWaiting();
  return event.waitUntil(
    caches.open(TEMP).then((cache) => {
      return cache.addAll(
        CORE.map((value) => new Request(value, {'cache': 'reload'})));
    })
  );
});

// During activate, the cache is populated with the temp files downloaded in
// install. If this service worker is upgrading from one with a saved
// MANIFEST, then use this to retain unchanged resource files.
self.addEventListener("activate", function(event) {
  return event.waitUntil(async function() {
    try {
      var contentCache = await caches.open(CACHE_NAME);
      var tempCache = await caches.open(TEMP);
      var manifestCache = await caches.open(MANIFEST);
      var manifest = await manifestCache.match('manifest');
      // When there is no prior manifest, clear the entire cache.
      if (!manifest) {
        await caches.delete(CACHE_NAME);
        contentCache = await caches.open(CACHE_NAME);
        for (var request of await tempCache.keys()) {
          var response = await tempCache.match(request);
          await contentCache.put(request, response);
        }
        await caches.delete(TEMP);
        // Save the manifest to make future upgrades efficient.
        await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
        return;
      }
      var oldManifest = await manifest.json();
      var origin = self.location.origin;
      for (var request of await contentCache.keys()) {
        var key = request.url.substring(origin.length + 1);
        if (key == "") {
          key = "/";
        }
        // If a resource from the old manifest is not in the new cache, or if
        // the MD5 sum has changed, delete it. Otherwise the resource is left
        // in the cache and can be reused by the new service worker.
        if (!RESOURCES[key] || RESOURCES[key] != oldManifest[key]) {
          await contentCache.delete(request);
        }
      }
      // Populate the cache with the app shell TEMP files, potentially overwriting
      // cache files preserved above.
      for (var request of await tempCache.keys()) {
        var response = await tempCache.match(request);
        await contentCache.put(request, response);
      }
      await caches.delete(TEMP);
      // Save the manifest to make future upgrades efficient.
      await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
      return;
    } catch (err) {
      // On an unhandled exception the state of the cache cannot be guaranteed.
      console.error('Failed to upgrade service worker: ' + err);
      await caches.delete(CACHE_NAME);
      await caches.delete(TEMP);
      await caches.delete(MANIFEST);
    }
  }());
});

// The fetch handler redirects requests for RESOURCE files to the service
// worker cache.
self.addEventListener("fetch", (event) => {
  if (event.request.method !== 'GET') {
    return;
  }
  var origin = self.location.origin;
  var key = event.request.url.substring(origin.length + 1);
  // Redirect URLs to the index.html
  if (key.indexOf('?v=') != -1) {
    key = key.split('?v=')[0];
  }
  if (event.request.url == origin || event.request.url.startsWith(origin + '/#') || key == '') {
    key = '/';
  }
  // If the URL is not the RESOURCE list then return to signal that the
  // browser should take over.
  if (!RESOURCES[key]) {
    return;
  }
  // If the URL is the index.html, perform an online-first request.
  if (key == '/') {
    return onlineFirst(event);
  }
  event.respondWith(caches.open(CACHE_NAME)
    .then((cache) =>  {
      return cache.match(event.request).then((response) => {
        // Either respond with the cached resource, or perform a fetch and
        // lazily populate the cache.
        return response || fetch(event.request).then((response) => {
          cache.put(event.request, response.clone());
          return response;
        });
      })
    })
  );
});

self.addEventListener('message', (event) => {
  // SkipWaiting can be used to immediately activate a waiting service worker.
  // This will also require a page refresh triggered by the main worker.
  if (event.data === 'skipWaiting') {
    self.skipWaiting();
    return;
  }
  if (event.data === 'downloadOffline') {
    downloadOffline();
    return;
  }
});

// Download offline will check the RESOURCES for all files not in the cache
// and populate them.
async function downloadOffline() {
  var resources = [];
  var contentCache = await caches.open(CACHE_NAME);
  var currentContent = {};
  for (var request of await contentCache.keys()) {
    var key = request.url.substring(origin.length + 1);
    if (key == "") {
      key = "/";
    }
    currentContent[key] = true;
  }
  for (var resourceKey of Object.keys(RESOURCES)) {
    if (!currentContent[resourceKey]) {
      resources.push(resourceKey);
    }
  }
  return contentCache.addAll(resources);
}

// Attempt to download the resource online before falling back to
// the offline cache.
function onlineFirst(event) {
  return event.respondWith(
    fetch(event.request).then((response) => {
      return caches.open(CACHE_NAME).then((cache) => {
        cache.put(event.request, response.clone());
        return response;
      });
    }).catch((error) => {
      return caches.open(CACHE_NAME).then((cache) => {
        return cache.match(event.request).then((response) => {
          if (response != null) {
            return response;
          }
          throw error;
        });
      });
    })
  );
}
