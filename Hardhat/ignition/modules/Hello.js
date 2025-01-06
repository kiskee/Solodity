const { buildModule } = require("@nomicfoundation/hardhat-ignition/modules");

module.exports = buildModule("HelloModule", (m) => {
  // Definir el contrato "Hello" sin parámetros en el constructor
  const hello = m.contract("Hello", []);

  console.log("Deployed", {hello})

  // Llamar a la función `getMessage` después del despliegue
  m.call(hello, "getMessage", [], {
    afterDeploy: true,
    onResult: (result) => {
      console.log("Mensaje del contrato:", result);
    },
  });

  return { hello }; // Retornar el contrato desplegado
});

// comando para desplegar en la network de ganache local
// npx hardhat ignition deploy ./ignition/modules/Hello.js --network ganache