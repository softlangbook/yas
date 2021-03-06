-- BEGIN ...
module Language.BIPL.Syntax where
-- END ...
-- Statements
data Stmt
  = Skip
  | Assign String Expr
  | Seq Stmt Stmt
  | If Expr Stmt Stmt
  | While Expr Stmt
-- BEGIN ...
  deriving Show
-- END ...

-- Expressions
data Expr
  = IntConst Int
  | Var String
  | Unary UOp Expr
  | Binary BOp Expr Expr
-- BEGIN ...
  deriving Show
-- END ...Sign/Sample.hs

-- Unary and binary operators
data UOp = Negate | Not
-- BEGIN ...
  deriving Show
-- END ...
data BOp = Add | Sub | Mul | Lt | Leq | Eq | Geq | Gt | And | Or
-- BEGIN ...
  deriving Show
-- END ...
