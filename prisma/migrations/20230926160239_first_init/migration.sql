-- CreateTable
CREATE TABLE "usuario" (
    "id" UUID NOT NULL,
    "nome" VARCHAR(30) NOT NULL,
    "idade" INTEGER NOT NULL,
    "email" TEXT NOT NULL,
    "senha" TEXT NOT NULL,
    "linkGitHub" TEXT,
    "dtCriacao" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,

    CONSTRAINT "usuario_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "produto" (
    "id" UUID NOT NULL,
    "descricao" VARCHAR(40) NOT NULL,
    "valor" DECIMAL(10,2) NOT NULL,
    "qtdEtq" INTEGER NOT NULL,
    "dtCriacao" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "disponivel" BOOLEAN DEFAULT true,

    CONSTRAINT "produto_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "loja" (
    "cnpj" TEXT NOT NULL,
    "nome" VARCHAR(30) NOT NULL,
    "segmento" TEXT DEFAULT 'alimentacao',
    "endereco" VARCHAR(50) NOT NULL,
    "telefone" CHAR(12),
    "qtdFiliais" INTEGER NOT NULL,
    "dtHrAbertura" DATE NOT NULL,

    CONSTRAINT "loja_pkey" PRIMARY KEY ("cnpj")
);

-- CreateTable
CREATE TABLE "fornecedor" (
    "id" UUID NOT NULL,
    "nome" VARCHAR(30) NOT NULL,
    "email" VARCHAR(30) NOT NULL,
    "aval" REAL NOT NULL,
    "dtHrCria" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "dtHrAtl" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,

    CONSTRAINT "fornecedor_pkey" PRIMARY KEY ("id")
);

-- CreateIndex
CREATE UNIQUE INDEX "usuario_email_key" ON "usuario"("email");
