// SPDX-License-Identifier: MIT

pragma solidity ^0.8.19;

contract Movimientos {
    struct Movimiento {
        uint id;
        string tipo;
        uint cantidad;
        string fecha;
        string nombreFarmaco;
        string nombreUsuario;
        string rolUsuario;
    }

    mapping(uint => Movimiento) public movimientos;
    uint public movimientoCount;

    event MovimientoCreado(uint id, string tipo, uint cantidad, string fecha, string nombreFarmaco, string nombreUsuario, string rolUsuario);

    function registrarMovimiento(
        string memory tipo,
        uint cantidad,
        string memory fecha,
        string memory nombreFarmaco,
        string memory nombreUsuario,
        string memory rolUsuario
    ) public {
        movimientoCount++;
        movimientos[movimientoCount] = Movimiento(movimientoCount, tipo, cantidad, fecha, nombreFarmaco, nombreUsuario, rolUsuario);
        emit MovimientoCreado(movimientoCount, tipo, cantidad, fecha, nombreFarmaco, nombreUsuario, rolUsuario);
    }

    function obtenerMovimiento(uint id) public view returns (
        string memory tipo,
        uint cantidad,
        string memory fecha,
        string memory nombreFarmaco,
        string memory nombreUsuario,
        string memory rolUsuario
    ) {
        Movimiento storage movimiento = movimientos[id];
        return (movimiento.tipo, movimiento.cantidad, movimiento.fecha, movimiento.nombreFarmaco, movimiento.nombreUsuario, movimiento.rolUsuario);
    }
}

