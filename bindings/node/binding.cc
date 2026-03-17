#include <napi.h>

typedef struct TSLanguage TSLanguage;

extern "C" TSLanguage *tree_sitter_openapi();
extern "C" TSLanguage *tree_sitter_openapi_json();

// "tree-sitter", "language" hashed with BLAKE2
const napi_type_tag LANGUAGE_TYPE_TAG = {
    0x8AF2E5212AD58ABF, 0xD5006CAD83ABBA16
};

Napi::Object Init(Napi::Env env, Napi::Object exports) {
    exports["name"] = Napi::String::New(env, "openapi");
    auto openapi_language = Napi::External<TSLanguage>::New(env, tree_sitter_openapi());
    openapi_language.TypeTag(&LANGUAGE_TYPE_TAG);
    exports["language"] = openapi_language;

    Napi::Object openapi_json = Napi::Object::New(env);
    openapi_json["name"] = Napi::String::New(env, "openapi_json");
    auto openapi_json_language = Napi::External<TSLanguage>::New(env, tree_sitter_openapi_json());
    openapi_json_language.TypeTag(&LANGUAGE_TYPE_TAG);
    openapi_json["language"] = openapi_json_language;
    exports["openapi_json"] = openapi_json;

    return exports;
}

NODE_API_MODULE(tree_sitter_openapi_binding, Init)
