console.log('.env',process.env.DATABASE_URL)

module.exports = {
    dialect: 'postgres',
    url: process.env.DATABASE_URL,
    connectionString: process.env.DATABASE_URL,
    ssl: {
        rejectUnauthorized: true
    }
}



// module.exports = {
//         dialect: 'postgres',
//         host: 'localhost',
//         username: 'postgres',
//         // password: 'leoppostegres',
//         password: 'leoppostegres',
//         database: process.env.NODE_ENV === "test" ? "syscondoe_test" : 'doadores_rj',
//         define: {
//             timestamps: true  testes,
//             underscored: true,
//         }
    
//     }


// module.exports = {
//     production: {
//         dialect: 'postgres',
//         url: process.env.DATABASE_URL,
//         username: 'uicpyntyelhrdm',
//         password: 'c24027f8c4b599452b78df3fcff171fc851ba179e0703ce17d428d6a7b192f55',
//         database: 'd76gff4q0tb1bn',
//         host: 'ec2-34-201-248-246.compute-1.amazonaws.com',
//         ssl: true
//        },
//     "dialect": 'postgres',
//     "type": 'postgres',

//     "url": process.env.DATABASE_URL,   
// }
// module.exports = {
//     user: "uicpyntyelhrdm",
//     password: "c24027f8c4b599452b78df3fcff171fc851ba179e0703ce17d428d6a7b192f55",
//     database: "d76gff4q0tb1bn",
//     port: 5432,
//     host: "ec2-34-201-248-246.compute-1.amazonaws.com",
//     dialect: 'postgres',
//     url: process.env.DATABASE_URL,
//     ssl: true,
//     define: {
//         timestamps: true,
//         underscored: true,
//     }
   
// }
// module.exports = {
//     dialect: 'postgres',
//     host: 'localhost',
//     username: 'postgres',
//     password: 'leoppostegres',
//     database: process.env.NODE_ENV === "test" ? "syscondoe_test" : 'doadores_rj',
//     define: {
//         timestamps: true,
//         underscored: true,
//     }

// }