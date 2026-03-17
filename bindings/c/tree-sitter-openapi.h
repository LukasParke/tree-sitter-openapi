#ifndef TREE_SITTER_OPENAPI_H
#define TREE_SITTER_OPENAPI_H

typedef struct TSLanguage TSLanguage;

#ifdef __cplusplus
extern "C" {
#endif

const TSLanguage *tree_sitter_openapi(void);
const TSLanguage *tree_sitter_openapi_json(void);

#ifdef __cplusplus
}
#endif

#endif /* TREE_SITTER_OPENAPI_H */
