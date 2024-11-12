// Lean compiler output
// Module: FMCnLean.Rec.IndGame.Lv1
// Imports: Init
#include <lean/lean.h>
#if defined(__clang__)
#pragma clang diagnostic ignored "-Wunused-parameter"
#pragma clang diagnostic ignored "-Wunused-label"
#elif defined(__GNUC__) && !defined(__CLANG__)
#pragma GCC diagnostic ignored "-Wunused-parameter"
#pragma GCC diagnostic ignored "-Wunused-label"
#pragma GCC diagnostic ignored "-Wunused-but-set-variable"
#endif
#ifdef __cplusplus
extern "C" {
#endif
LEAN_EXPORT lean_object* l_Lv1_fib(lean_object*);
static lean_object* l_Lv1_fromNat___closed__1;
LEAN_EXPORT lean_object* l_Lv1_exp___boxed(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Lv1_add___boxed(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Lv1_mul___boxed(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Lv1_add(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l___private_FMCnLean_Rec_IndGame_Lv1_0__Lv1_add_match__1_splitter___rarg(lean_object*, lean_object*, lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Lv1_max___boxed(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Lv1_fromNat(lean_object*);
static lean_object* l_Lv1_exp___closed__1;
LEAN_EXPORT lean_object* l_Lv1_instReprNat(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Lv1_fact(lean_object*);
static lean_object* l_Lv1_fromNat___closed__3;
static lean_object* l_Lv1_fromNat___closed__2;
LEAN_EXPORT lean_object* l___private_FMCnLean_Rec_IndGame_Lv1_0__Lv1_add_match__1_splitter(lean_object*);
LEAN_EXPORT lean_object* l_Lv1_instReprNat___boxed(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Lv1_mul(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Lv1_exp(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Lv1_fromNat___boxed(lean_object*);
static lean_object* l_Lv1_fromNat___closed__4;
LEAN_EXPORT lean_object* l_Lv1_min___boxed(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Lv1_min(lean_object*, lean_object*);
lean_object* lean_string_append(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_Lv1_max(lean_object*, lean_object*);
static lean_object* _init_l_Lv1_fromNat___closed__1() {
_start:
{
lean_object* x_1; 
x_1 = lean_mk_string_unchecked("0", 1, 1);
return x_1;
}
}
static lean_object* _init_l_Lv1_fromNat___closed__2() {
_start:
{
lean_object* x_1; 
x_1 = lean_mk_string_unchecked("S 0", 3, 3);
return x_1;
}
}
static lean_object* _init_l_Lv1_fromNat___closed__3() {
_start:
{
lean_object* x_1; 
x_1 = lean_mk_string_unchecked("S (", 3, 3);
return x_1;
}
}
static lean_object* _init_l_Lv1_fromNat___closed__4() {
_start:
{
lean_object* x_1; 
x_1 = lean_mk_string_unchecked(")", 1, 1);
return x_1;
}
}
LEAN_EXPORT lean_object* l_Lv1_fromNat(lean_object* x_1) {
_start:
{
if (lean_obj_tag(x_1) == 0)
{
lean_object* x_2; 
x_2 = l_Lv1_fromNat___closed__1;
return x_2;
}
else
{
lean_object* x_3; 
x_3 = lean_ctor_get(x_1, 0);
if (lean_obj_tag(x_3) == 0)
{
lean_object* x_4; 
x_4 = l_Lv1_fromNat___closed__2;
return x_4;
}
else
{
lean_object* x_5; lean_object* x_6; lean_object* x_7; lean_object* x_8; lean_object* x_9; 
x_5 = l_Lv1_fromNat(x_3);
x_6 = l_Lv1_fromNat___closed__3;
x_7 = lean_string_append(x_6, x_5);
lean_dec(x_5);
x_8 = l_Lv1_fromNat___closed__4;
x_9 = lean_string_append(x_7, x_8);
return x_9;
}
}
}
}
LEAN_EXPORT lean_object* l_Lv1_fromNat___boxed(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = l_Lv1_fromNat(x_1);
lean_dec(x_1);
return x_2;
}
}
LEAN_EXPORT lean_object* l_Lv1_instReprNat(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; lean_object* x_4; 
x_3 = l_Lv1_fromNat(x_1);
x_4 = lean_alloc_ctor(3, 1, 0);
lean_ctor_set(x_4, 0, x_3);
return x_4;
}
}
LEAN_EXPORT lean_object* l_Lv1_instReprNat___boxed(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; 
x_3 = l_Lv1_instReprNat(x_1, x_2);
lean_dec(x_2);
lean_dec(x_1);
return x_3;
}
}
LEAN_EXPORT lean_object* l_Lv1_add(lean_object* x_1, lean_object* x_2) {
_start:
{
if (lean_obj_tag(x_2) == 0)
{
lean_inc(x_1);
return x_1;
}
else
{
uint8_t x_3; 
x_3 = !lean_is_exclusive(x_2);
if (x_3 == 0)
{
lean_object* x_4; lean_object* x_5; 
x_4 = lean_ctor_get(x_2, 0);
x_5 = l_Lv1_add(x_1, x_4);
lean_ctor_set(x_2, 0, x_5);
return x_2;
}
else
{
lean_object* x_6; lean_object* x_7; lean_object* x_8; 
x_6 = lean_ctor_get(x_2, 0);
lean_inc(x_6);
lean_dec(x_2);
x_7 = l_Lv1_add(x_1, x_6);
x_8 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_8, 0, x_7);
return x_8;
}
}
}
}
LEAN_EXPORT lean_object* l_Lv1_add___boxed(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; 
x_3 = l_Lv1_add(x_1, x_2);
lean_dec(x_1);
return x_3;
}
}
LEAN_EXPORT lean_object* l_Lv1_mul(lean_object* x_1, lean_object* x_2) {
_start:
{
if (lean_obj_tag(x_2) == 0)
{
lean_object* x_3; 
x_3 = lean_box(0);
return x_3;
}
else
{
lean_object* x_4; lean_object* x_5; lean_object* x_6; 
x_4 = lean_ctor_get(x_2, 0);
x_5 = l_Lv1_mul(x_1, x_4);
x_6 = l_Lv1_add(x_1, x_5);
return x_6;
}
}
}
LEAN_EXPORT lean_object* l_Lv1_mul___boxed(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; 
x_3 = l_Lv1_mul(x_1, x_2);
lean_dec(x_2);
lean_dec(x_1);
return x_3;
}
}
static lean_object* _init_l_Lv1_exp___closed__1() {
_start:
{
lean_object* x_1; lean_object* x_2; 
x_1 = lean_box(0);
x_2 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_2, 0, x_1);
return x_2;
}
}
LEAN_EXPORT lean_object* l_Lv1_exp(lean_object* x_1, lean_object* x_2) {
_start:
{
if (lean_obj_tag(x_2) == 0)
{
lean_object* x_3; 
x_3 = l_Lv1_exp___closed__1;
return x_3;
}
else
{
lean_object* x_4; lean_object* x_5; lean_object* x_6; 
x_4 = lean_ctor_get(x_2, 0);
x_5 = l_Lv1_exp(x_1, x_4);
x_6 = l_Lv1_mul(x_1, x_5);
lean_dec(x_5);
return x_6;
}
}
}
LEAN_EXPORT lean_object* l_Lv1_exp___boxed(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; 
x_3 = l_Lv1_exp(x_1, x_2);
lean_dec(x_2);
lean_dec(x_1);
return x_3;
}
}
LEAN_EXPORT lean_object* l_Lv1_fib(lean_object* x_1) {
_start:
{
if (lean_obj_tag(x_1) == 0)
{
lean_object* x_2; 
x_2 = l_Lv1_exp___closed__1;
return x_2;
}
else
{
lean_object* x_3; 
x_3 = lean_ctor_get(x_1, 0);
lean_inc(x_3);
lean_dec(x_1);
if (lean_obj_tag(x_3) == 0)
{
lean_object* x_4; 
x_4 = l_Lv1_exp___closed__1;
return x_4;
}
else
{
uint8_t x_5; 
x_5 = !lean_is_exclusive(x_3);
if (x_5 == 0)
{
lean_object* x_6; lean_object* x_7; lean_object* x_8; lean_object* x_9; 
x_6 = lean_ctor_get(x_3, 0);
lean_inc(x_6);
x_7 = l_Lv1_fib(x_3);
x_8 = l_Lv1_fib(x_6);
x_9 = l_Lv1_add(x_7, x_8);
lean_dec(x_7);
return x_9;
}
else
{
lean_object* x_10; lean_object* x_11; lean_object* x_12; lean_object* x_13; lean_object* x_14; 
x_10 = lean_ctor_get(x_3, 0);
lean_inc(x_10);
lean_dec(x_3);
lean_inc(x_10);
x_11 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_11, 0, x_10);
x_12 = l_Lv1_fib(x_11);
x_13 = l_Lv1_fib(x_10);
x_14 = l_Lv1_add(x_12, x_13);
lean_dec(x_12);
return x_14;
}
}
}
}
}
LEAN_EXPORT lean_object* l_Lv1_fact(lean_object* x_1) {
_start:
{
if (lean_obj_tag(x_1) == 0)
{
lean_object* x_2; 
x_2 = l_Lv1_exp___closed__1;
return x_2;
}
else
{
uint8_t x_3; 
x_3 = !lean_is_exclusive(x_1);
if (x_3 == 0)
{
lean_object* x_4; 
x_4 = lean_ctor_get(x_1, 0);
if (lean_obj_tag(x_4) == 0)
{
lean_object* x_5; 
lean_free_object(x_1);
x_5 = l_Lv1_exp___closed__1;
return x_5;
}
else
{
lean_object* x_6; lean_object* x_7; 
lean_inc(x_4);
x_6 = l_Lv1_fact(x_4);
x_7 = l_Lv1_mul(x_1, x_6);
lean_dec(x_6);
lean_dec(x_1);
return x_7;
}
}
else
{
lean_object* x_8; 
x_8 = lean_ctor_get(x_1, 0);
lean_inc(x_8);
lean_dec(x_1);
if (lean_obj_tag(x_8) == 0)
{
lean_object* x_9; 
x_9 = l_Lv1_exp___closed__1;
return x_9;
}
else
{
lean_object* x_10; lean_object* x_11; lean_object* x_12; 
lean_inc(x_8);
x_10 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_10, 0, x_8);
x_11 = l_Lv1_fact(x_8);
x_12 = l_Lv1_mul(x_10, x_11);
lean_dec(x_11);
lean_dec(x_10);
return x_12;
}
}
}
}
}
LEAN_EXPORT lean_object* l_Lv1_min(lean_object* x_1, lean_object* x_2) {
_start:
{
if (lean_obj_tag(x_1) == 0)
{
lean_object* x_3; 
lean_dec(x_2);
x_3 = lean_box(0);
return x_3;
}
else
{
if (lean_obj_tag(x_2) == 0)
{
lean_object* x_4; 
x_4 = lean_box(0);
return x_4;
}
else
{
uint8_t x_5; 
x_5 = !lean_is_exclusive(x_2);
if (x_5 == 0)
{
lean_object* x_6; lean_object* x_7; lean_object* x_8; 
x_6 = lean_ctor_get(x_1, 0);
x_7 = lean_ctor_get(x_2, 0);
x_8 = l_Lv1_min(x_6, x_7);
lean_ctor_set(x_2, 0, x_8);
return x_2;
}
else
{
lean_object* x_9; lean_object* x_10; lean_object* x_11; lean_object* x_12; 
x_9 = lean_ctor_get(x_1, 0);
x_10 = lean_ctor_get(x_2, 0);
lean_inc(x_10);
lean_dec(x_2);
x_11 = l_Lv1_min(x_9, x_10);
x_12 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_12, 0, x_11);
return x_12;
}
}
}
}
}
LEAN_EXPORT lean_object* l_Lv1_min___boxed(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; 
x_3 = l_Lv1_min(x_1, x_2);
lean_dec(x_1);
return x_3;
}
}
LEAN_EXPORT lean_object* l_Lv1_max(lean_object* x_1, lean_object* x_2) {
_start:
{
if (lean_obj_tag(x_1) == 0)
{
return x_2;
}
else
{
if (lean_obj_tag(x_2) == 0)
{
lean_inc(x_1);
return x_1;
}
else
{
uint8_t x_3; 
x_3 = !lean_is_exclusive(x_2);
if (x_3 == 0)
{
lean_object* x_4; lean_object* x_5; lean_object* x_6; 
x_4 = lean_ctor_get(x_1, 0);
x_5 = lean_ctor_get(x_2, 0);
x_6 = l_Lv1_max(x_4, x_5);
lean_ctor_set(x_2, 0, x_6);
return x_2;
}
else
{
lean_object* x_7; lean_object* x_8; lean_object* x_9; lean_object* x_10; 
x_7 = lean_ctor_get(x_1, 0);
x_8 = lean_ctor_get(x_2, 0);
lean_inc(x_8);
lean_dec(x_2);
x_9 = l_Lv1_max(x_7, x_8);
x_10 = lean_alloc_ctor(1, 1, 0);
lean_ctor_set(x_10, 0, x_9);
return x_10;
}
}
}
}
}
LEAN_EXPORT lean_object* l_Lv1_max___boxed(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; 
x_3 = l_Lv1_max(x_1, x_2);
lean_dec(x_1);
return x_3;
}
}
LEAN_EXPORT lean_object* l___private_FMCnLean_Rec_IndGame_Lv1_0__Lv1_add_match__1_splitter___rarg(lean_object* x_1, lean_object* x_2, lean_object* x_3, lean_object* x_4) {
_start:
{
if (lean_obj_tag(x_2) == 0)
{
lean_object* x_5; 
lean_dec(x_4);
x_5 = lean_apply_1(x_3, x_1);
return x_5;
}
else
{
lean_object* x_6; lean_object* x_7; 
lean_dec(x_3);
x_6 = lean_ctor_get(x_2, 0);
lean_inc(x_6);
lean_dec(x_2);
x_7 = lean_apply_2(x_4, x_1, x_6);
return x_7;
}
}
}
LEAN_EXPORT lean_object* l___private_FMCnLean_Rec_IndGame_Lv1_0__Lv1_add_match__1_splitter(lean_object* x_1) {
_start:
{
lean_object* x_2; 
x_2 = lean_alloc_closure((void*)(l___private_FMCnLean_Rec_IndGame_Lv1_0__Lv1_add_match__1_splitter___rarg), 4, 0);
return x_2;
}
}
lean_object* initialize_Init(uint8_t builtin, lean_object*);
static bool _G_initialized = false;
LEAN_EXPORT lean_object* initialize_FMCnLean_Rec_IndGame_Lv1(uint8_t builtin, lean_object* w) {
lean_object * res;
if (_G_initialized) return lean_io_result_mk_ok(lean_box(0));
_G_initialized = true;
res = initialize_Init(builtin, lean_io_mk_world());
if (lean_io_result_is_error(res)) return res;
lean_dec_ref(res);
l_Lv1_fromNat___closed__1 = _init_l_Lv1_fromNat___closed__1();
lean_mark_persistent(l_Lv1_fromNat___closed__1);
l_Lv1_fromNat___closed__2 = _init_l_Lv1_fromNat___closed__2();
lean_mark_persistent(l_Lv1_fromNat___closed__2);
l_Lv1_fromNat___closed__3 = _init_l_Lv1_fromNat___closed__3();
lean_mark_persistent(l_Lv1_fromNat___closed__3);
l_Lv1_fromNat___closed__4 = _init_l_Lv1_fromNat___closed__4();
lean_mark_persistent(l_Lv1_fromNat___closed__4);
l_Lv1_exp___closed__1 = _init_l_Lv1_exp___closed__1();
lean_mark_persistent(l_Lv1_exp___closed__1);
return lean_io_result_mk_ok(lean_box(0));
}
#ifdef __cplusplus
}
#endif
