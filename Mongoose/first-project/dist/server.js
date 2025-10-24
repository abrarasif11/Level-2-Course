"use strict";
Object.defineProperty(exports, "__esModule", { value: true });
const mongoose = require('mongoose');
async function main() {
    await mongoose.connect(process.env.DATABASE_URL);
}
app.listen(process.env.DATABASE_URL, () => {
    console.log(`Example app listening on port ${process.env.DATABASE_URL}`);
});
//# sourceMappingURL=server.js.map