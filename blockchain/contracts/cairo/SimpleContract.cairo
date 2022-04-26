# Simple contract that updates a storage var so I can see what data makes its way to L1

%lang starknet

%builtins pedersen range_check bitwise

from starkware.cairo.common.cairo_builtins import HashBuiltin

@storage_var
func _a() -> (res : felt):
end

@storage_var
func _b() -> (res : felt):
end

@view
func get_a{
        syscall_ptr : felt*, pedersen_ptr : HashBuiltin*,
        range_check_ptr}() -> (res : felt):
    let (res) = _a.read()
    return (res)
end

@external
func set_a{
        syscall_ptr : felt*, pedersen_ptr : HashBuiltin*,
        range_check_ptr}(val : felt):
    _a.write(val)

    return()
end

@view
func get_b{
        syscall_ptr : felt*, pedersen_ptr : HashBuiltin*,
        range_check_ptr}() -> (res : felt):
    let (res) = _b.read()
    return (res)
end

@external
func set_b{
        syscall_ptr : felt*, pedersen_ptr : HashBuiltin*,
        range_check_ptr}(val : felt):
    _b.write(val)

    return()
end

@view
func get_both{
        syscall_ptr : felt*, pedersen_ptr : HashBuiltin*,
        range_check_ptr}() -> (res_a : felt, res_b : felt):
    let (res_a) = _a.read()
    let (res_b) = _b.read()
    return (res_a, res_b)
end

@external
func set_both{
        syscall_ptr : felt*, pedersen_ptr : HashBuiltin*,
        range_check_ptr}(val_a : felt, val_b : felt):
    _a.write(val_a)
    _b.write(val_b)

    return()
end

@external
func reset_both{
        syscall_ptr : felt*, pedersen_ptr : HashBuiltin*,
        range_check_ptr}():
    _a.write(0)
    _b.write(0)

    return()
end

@external
func inc_a{
        syscall_ptr : felt*, pedersen_ptr : HashBuiltin*,
        range_check_ptr}() -> (res : felt):
    let (res) = _a.read()
    _a.write(res + 1)
    let (res) = _a.read()
    _a.write(res + 1)
    let (res) = _a.read()
    _a.write(res + 1)
    let (res) = _a.read()

    return(res)
end