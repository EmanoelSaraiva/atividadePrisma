import { PrismaClient } from '@prisma/client';
import express, { Request, Response } from 'express';

const app = express();
app.use(express.json());

app.listen(3331, () => {
  console.log('API rodando na porta 3331');
});

const repository = new PrismaClient();

app.get('/usuario', (req: Request, res: Response) => {
  res.status(200).send({
    ok: true,
    message: 'Usuario listado com sucesso',
  });
});
