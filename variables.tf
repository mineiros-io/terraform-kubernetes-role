# ---------------------------------------------------------------------------------------------------------------------
# REQUIRED VARIABLES
# These variables must be set when using this module.
# ---------------------------------------------------------------------------------------------------------------------

variable "name" {
  description = "(Required) Name of the role binding, must be unique. Cannot be updated."
  type        = string
}

variable "rules" {
  description = "(Required) List of rules that define the set of permissions for this role."
  type        = any
}

# ---------------------------------------------------------------------------------------------------------------------
# OPTIONAL VARIABLES
# These variables have defaults, but may be overridden.
# ---------------------------------------------------------------------------------------------------------------------

variable "annotations" {
  description = "(Optional) An unstructured key value map stored with the role binding that may be used to store arbitrary metadata."
  type        = any
  default     = null
}

variable "labels" {
  description = "(Optional) Map of string keys and values that can be used to organize and categorize (scope and select) the role binding."
  type        = any
  default     = null
}

variable "namespace" {
  description = "(Optional) Namespace defines the space within which name of the role must be unique."
  type        = string
  default     = null
}

# ------------------------------------------------------------------------------
# MODULE CONFIGURATION PARAMETERS
# These variables are used to configure the module.
# ------------------------------------------------------------------------------

variable "module_enabled" {
  type        = bool
  description = "(Optional) Whether to create resources within the module or not. Default is 'true'."
  default     = true
}

variable "module_depends_on" {
  type        = any
  description = "(Optional) A list of external resources the module depends_on. Default is '[]'."
  default     = []
}
