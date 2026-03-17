type BaseNode = {
  type: string;
  named: boolean;
};

type ChildNode = {
  multiple: boolean;
  required: boolean;
  types: BaseNode[];
};

type NodeInfo =
  | (BaseNode & { subtypes: BaseNode[] })
  | (BaseNode & { fields: { [name: string]: ChildNode }; children: ChildNode[] });

type OpenApiJsonLanguage = {
  name: string;
  language: unknown;
  nodeTypeInfo?: NodeInfo[];
};

type Binding = {
  name: string;
  language: unknown;
  nodeTypeInfo?: NodeInfo[];
  openapi_json: OpenApiJsonLanguage;
};

declare const binding: Binding;
export = binding;
