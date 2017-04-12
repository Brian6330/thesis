.class public Lorg/apache/commons/math3/dfp/DfpDec;
.super Lorg/apache/commons/math3/dfp/Dfp;
.source "DfpDec.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/math3/dfp/DfpDec$1;
    }
.end annotation


# direct methods
.method public constructor <init>(Lorg/apache/commons/math3/dfp/Dfp;)V
    .locals 1
    .param p1, "d"    # Lorg/apache/commons/math3/dfp/Dfp;

    .prologue
    .line 72
    invoke-direct {p0, p1}, Lorg/apache/commons/math3/dfp/Dfp;-><init>(Lorg/apache/commons/math3/dfp/Dfp;)V

    .line 73
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/dfp/DfpDec;->round(I)I

    .line 74
    return-void
.end method

.method protected constructor <init>(Lorg/apache/commons/math3/dfp/DfpField;)V
    .locals 0
    .param p1, "factory"    # Lorg/apache/commons/math3/dfp/DfpField;

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lorg/apache/commons/math3/dfp/Dfp;-><init>(Lorg/apache/commons/math3/dfp/DfpField;)V

    .line 33
    return-void
.end method

.method protected constructor <init>(Lorg/apache/commons/math3/dfp/DfpField;B)V
    .locals 0
    .param p1, "factory"    # Lorg/apache/commons/math3/dfp/DfpField;
    .param p2, "x"    # B

    .prologue
    .line 40
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/math3/dfp/Dfp;-><init>(Lorg/apache/commons/math3/dfp/DfpField;B)V

    .line 41
    return-void
.end method

.method protected constructor <init>(Lorg/apache/commons/math3/dfp/DfpField;BB)V
    .locals 0
    .param p1, "factory"    # Lorg/apache/commons/math3/dfp/DfpField;
    .param p2, "sign"    # B
    .param p3, "nans"    # B

    .prologue
    .line 92
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/commons/math3/dfp/Dfp;-><init>(Lorg/apache/commons/math3/dfp/DfpField;BB)V

    .line 93
    return-void
.end method

.method protected constructor <init>(Lorg/apache/commons/math3/dfp/DfpField;D)V
    .locals 2
    .param p1, "factory"    # Lorg/apache/commons/math3/dfp/DfpField;
    .param p2, "x"    # D

    .prologue
    .line 64
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/commons/math3/dfp/Dfp;-><init>(Lorg/apache/commons/math3/dfp/DfpField;D)V

    .line 65
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/dfp/DfpDec;->round(I)I

    .line 66
    return-void
.end method

.method protected constructor <init>(Lorg/apache/commons/math3/dfp/DfpField;I)V
    .locals 0
    .param p1, "factory"    # Lorg/apache/commons/math3/dfp/DfpField;
    .param p2, "x"    # I

    .prologue
    .line 48
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/math3/dfp/Dfp;-><init>(Lorg/apache/commons/math3/dfp/DfpField;I)V

    .line 49
    return-void
.end method

.method protected constructor <init>(Lorg/apache/commons/math3/dfp/DfpField;J)V
    .locals 0
    .param p1, "factory"    # Lorg/apache/commons/math3/dfp/DfpField;
    .param p2, "x"    # J

    .prologue
    .line 56
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/commons/math3/dfp/Dfp;-><init>(Lorg/apache/commons/math3/dfp/DfpField;J)V

    .line 57
    return-void
.end method

.method protected constructor <init>(Lorg/apache/commons/math3/dfp/DfpField;Ljava/lang/String;)V
    .locals 1
    .param p1, "factory"    # Lorg/apache/commons/math3/dfp/DfpField;
    .param p2, "s"    # Ljava/lang/String;

    .prologue
    .line 81
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/math3/dfp/Dfp;-><init>(Lorg/apache/commons/math3/dfp/DfpField;Ljava/lang/String;)V

    .line 82
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/dfp/DfpDec;->round(I)I

    .line 83
    return-void
.end method


# virtual methods
.method protected getDecimalDigits()I
    .locals 1

    .prologue
    .line 159
    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/DfpDec;->getRadixDigits()I

    move-result v0

    mul-int/lit8 v0, v0, 0x4

    add-int/lit8 v0, v0, -0x3

    return v0
.end method

.method public newInstance()Lorg/apache/commons/math3/dfp/Dfp;
    .locals 2

    .prologue
    .line 98
    new-instance v0, Lorg/apache/commons/math3/dfp/DfpDec;

    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/DfpDec;->getField()Lorg/apache/commons/math3/dfp/DfpField;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/commons/math3/dfp/DfpDec;-><init>(Lorg/apache/commons/math3/dfp/DfpField;)V

    return-object v0
.end method

.method public newInstance(B)Lorg/apache/commons/math3/dfp/Dfp;
    .locals 2
    .param p1, "x"    # B

    .prologue
    .line 104
    new-instance v0, Lorg/apache/commons/math3/dfp/DfpDec;

    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/DfpDec;->getField()Lorg/apache/commons/math3/dfp/DfpField;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lorg/apache/commons/math3/dfp/DfpDec;-><init>(Lorg/apache/commons/math3/dfp/DfpField;B)V

    return-object v0
.end method

.method public newInstance(BB)Lorg/apache/commons/math3/dfp/Dfp;
    .locals 2
    .param p1, "sign"    # B
    .param p2, "nans"    # B

    .prologue
    .line 150
    new-instance v0, Lorg/apache/commons/math3/dfp/DfpDec;

    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/DfpDec;->getField()Lorg/apache/commons/math3/dfp/DfpField;

    move-result-object v1

    invoke-direct {v0, v1, p1, p2}, Lorg/apache/commons/math3/dfp/DfpDec;-><init>(Lorg/apache/commons/math3/dfp/DfpField;BB)V

    return-object v0
.end method

.method public newInstance(D)Lorg/apache/commons/math3/dfp/Dfp;
    .locals 3
    .param p1, "x"    # D

    .prologue
    .line 122
    new-instance v0, Lorg/apache/commons/math3/dfp/DfpDec;

    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/DfpDec;->getField()Lorg/apache/commons/math3/dfp/DfpField;

    move-result-object v1

    invoke-direct {v0, v1, p1, p2}, Lorg/apache/commons/math3/dfp/DfpDec;-><init>(Lorg/apache/commons/math3/dfp/DfpField;D)V

    return-object v0
.end method

.method public newInstance(I)Lorg/apache/commons/math3/dfp/Dfp;
    .locals 2
    .param p1, "x"    # I

    .prologue
    .line 110
    new-instance v0, Lorg/apache/commons/math3/dfp/DfpDec;

    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/DfpDec;->getField()Lorg/apache/commons/math3/dfp/DfpField;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lorg/apache/commons/math3/dfp/DfpDec;-><init>(Lorg/apache/commons/math3/dfp/DfpField;I)V

    return-object v0
.end method

.method public newInstance(J)Lorg/apache/commons/math3/dfp/Dfp;
    .locals 3
    .param p1, "x"    # J

    .prologue
    .line 116
    new-instance v0, Lorg/apache/commons/math3/dfp/DfpDec;

    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/DfpDec;->getField()Lorg/apache/commons/math3/dfp/DfpField;

    move-result-object v1

    invoke-direct {v0, v1, p1, p2}, Lorg/apache/commons/math3/dfp/DfpDec;-><init>(Lorg/apache/commons/math3/dfp/DfpField;J)V

    return-object v0
.end method

.method public newInstance(Ljava/lang/String;)Lorg/apache/commons/math3/dfp/Dfp;
    .locals 2
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 144
    new-instance v0, Lorg/apache/commons/math3/dfp/DfpDec;

    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/DfpDec;->getField()Lorg/apache/commons/math3/dfp/DfpField;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lorg/apache/commons/math3/dfp/DfpDec;-><init>(Lorg/apache/commons/math3/dfp/DfpField;Ljava/lang/String;)V

    return-object v0
.end method

.method public newInstance(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;
    .locals 4
    .param p1, "d"    # Lorg/apache/commons/math3/dfp/Dfp;

    .prologue
    const/4 v3, 0x1

    .line 130
    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/DfpDec;->getField()Lorg/apache/commons/math3/dfp/DfpField;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/commons/math3/dfp/DfpField;->getRadixDigits()I

    move-result v1

    invoke-virtual {p1}, Lorg/apache/commons/math3/dfp/Dfp;->getField()Lorg/apache/commons/math3/dfp/DfpField;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/commons/math3/dfp/DfpField;->getRadixDigits()I

    move-result v2

    if-eq v1, v2, :cond_0

    .line 131
    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/DfpDec;->getField()Lorg/apache/commons/math3/dfp/DfpField;

    move-result-object v1

    invoke-virtual {v1, v3}, Lorg/apache/commons/math3/dfp/DfpField;->setIEEEFlagsBits(I)V

    .line 132
    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/DfpDec;->getZero()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/apache/commons/math3/dfp/DfpDec;->newInstance(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    .line 133
    .local v0, "result":Lorg/apache/commons/math3/dfp/Dfp;
    const/4 v1, 0x3

    iput-byte v1, v0, Lorg/apache/commons/math3/dfp/Dfp;->nans:B

    .line 134
    const-string v1, "newInstance"

    invoke-virtual {p0, v3, v1, p1, v0}, Lorg/apache/commons/math3/dfp/DfpDec;->dotrap(ILjava/lang/String;Lorg/apache/commons/math3/dfp/Dfp;Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v1

    .line 137
    .end local v0    # "result":Lorg/apache/commons/math3/dfp/Dfp;
    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Lorg/apache/commons/math3/dfp/DfpDec;

    invoke-direct {v1, p1}, Lorg/apache/commons/math3/dfp/DfpDec;-><init>(Lorg/apache/commons/math3/dfp/Dfp;)V

    goto :goto_0
.end method

.method public nextAfter(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;
    .locals 8
    .param p1, "x"    # Lorg/apache/commons/math3/dfp/Dfp;

    .prologue
    const/16 v7, 0x10

    const/4 v4, 0x1

    .line 294
    const-string v2, "nextAfter"

    .line 297
    .local v2, "trapName":Ljava/lang/String;
    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/DfpDec;->getField()Lorg/apache/commons/math3/dfp/DfpField;

    move-result-object v5

    invoke-virtual {v5}, Lorg/apache/commons/math3/dfp/DfpField;->getRadixDigits()I

    move-result v5

    invoke-virtual {p1}, Lorg/apache/commons/math3/dfp/Dfp;->getField()Lorg/apache/commons/math3/dfp/DfpField;

    move-result-object v6

    invoke-virtual {v6}, Lorg/apache/commons/math3/dfp/DfpField;->getRadixDigits()I

    move-result v6

    if-eq v5, v6, :cond_1

    .line 298
    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/DfpDec;->getField()Lorg/apache/commons/math3/dfp/DfpField;

    move-result-object v5

    invoke-virtual {v5, v4}, Lorg/apache/commons/math3/dfp/DfpField;->setIEEEFlagsBits(I)V

    .line 299
    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/DfpDec;->getZero()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v5

    invoke-virtual {p0, v5}, Lorg/apache/commons/math3/dfp/DfpDec;->newInstance(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v1

    .line 300
    .local v1, "result":Lorg/apache/commons/math3/dfp/Dfp;
    const/4 v5, 0x3

    iput-byte v5, v1, Lorg/apache/commons/math3/dfp/Dfp;->nans:B

    .line 301
    const-string v5, "nextAfter"

    invoke-virtual {p0, v4, v5, p1, v1}, Lorg/apache/commons/math3/dfp/DfpDec;->dotrap(ILjava/lang/String;Lorg/apache/commons/math3/dfp/Dfp;Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v1

    .line 365
    .end local v1    # "result":Lorg/apache/commons/math3/dfp/Dfp;
    :cond_0
    :goto_0
    return-object v1

    .line 304
    :cond_1
    const/4 v3, 0x0

    .line 309
    .local v3, "up":Z
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/dfp/DfpDec;->lessThan(Lorg/apache/commons/math3/dfp/Dfp;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 310
    const/4 v3, 0x1

    .line 313
    :cond_2
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/dfp/DfpDec;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 314
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/dfp/DfpDec;->newInstance(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v1

    goto :goto_0

    .line 317
    :cond_3
    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/DfpDec;->getZero()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v5

    invoke-virtual {p0, v5}, Lorg/apache/commons/math3/dfp/DfpDec;->lessThan(Lorg/apache/commons/math3/dfp/Dfp;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 318
    if-nez v3, :cond_7

    move v3, v4

    .line 321
    :cond_4
    :goto_1
    if-eqz v3, :cond_9

    .line 322
    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/DfpDec;->intLog10()I

    move-result v5

    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/DfpDec;->getDecimalDigits()I

    move-result v6

    sub-int/2addr v5, v6

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {p0, v5}, Lorg/apache/commons/math3/dfp/DfpDec;->power10(I)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    .line 323
    .local v0, "inc":Lorg/apache/commons/math3/dfp/Dfp;
    invoke-static {v0, p0}, Lorg/apache/commons/math3/dfp/DfpDec;->copysign(Lorg/apache/commons/math3/dfp/Dfp;Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    .line 325
    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/DfpDec;->getZero()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v5

    invoke-virtual {p0, v5}, Lorg/apache/commons/math3/dfp/DfpDec;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 326
    iget-object v5, p0, Lorg/apache/commons/math3/dfp/DfpDec;->mant:[I

    array-length v5, v5

    rsub-int v5, v5, -0x7fff

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {p0, v5}, Lorg/apache/commons/math3/dfp/DfpDec;->power10K(I)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    .line 329
    :cond_5
    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/DfpDec;->getZero()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v5

    invoke-virtual {v0, v5}, Lorg/apache/commons/math3/dfp/Dfp;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 330
    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/DfpDec;->getZero()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v5

    invoke-virtual {p0, v5}, Lorg/apache/commons/math3/dfp/DfpDec;->newInstance(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v5

    invoke-static {v5, p0}, Lorg/apache/commons/math3/dfp/DfpDec;->copysign(Lorg/apache/commons/math3/dfp/Dfp;Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v1

    .line 355
    .restart local v1    # "result":Lorg/apache/commons/math3/dfp/Dfp;
    :goto_2
    invoke-virtual {v1}, Lorg/apache/commons/math3/dfp/Dfp;->classify()I

    move-result v5

    if-ne v5, v4, :cond_6

    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/DfpDec;->classify()I

    move-result v5

    if-eq v5, v4, :cond_6

    .line 356
    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/DfpDec;->getField()Lorg/apache/commons/math3/dfp/DfpField;

    move-result-object v4

    invoke-virtual {v4, v7}, Lorg/apache/commons/math3/dfp/DfpField;->setIEEEFlagsBits(I)V

    .line 357
    const-string v4, "nextAfter"

    invoke-virtual {p0, v7, v4, p1, v1}, Lorg/apache/commons/math3/dfp/DfpDec;->dotrap(ILjava/lang/String;Lorg/apache/commons/math3/dfp/Dfp;Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v1

    .line 360
    :cond_6
    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/DfpDec;->getZero()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v4

    invoke-virtual {v1, v4}, Lorg/apache/commons/math3/dfp/Dfp;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/DfpDec;->getZero()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v4

    invoke-virtual {p0, v4}, Lorg/apache/commons/math3/dfp/DfpDec;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 361
    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/DfpDec;->getField()Lorg/apache/commons/math3/dfp/DfpField;

    move-result-object v4

    invoke-virtual {v4, v7}, Lorg/apache/commons/math3/dfp/DfpField;->setIEEEFlagsBits(I)V

    .line 362
    const-string v4, "nextAfter"

    invoke-virtual {p0, v7, v4, p1, v1}, Lorg/apache/commons/math3/dfp/DfpDec;->dotrap(ILjava/lang/String;Lorg/apache/commons/math3/dfp/Dfp;Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v1

    goto/16 :goto_0

    .line 318
    .end local v0    # "inc":Lorg/apache/commons/math3/dfp/Dfp;
    .end local v1    # "result":Lorg/apache/commons/math3/dfp/Dfp;
    :cond_7
    const/4 v3, 0x0

    goto :goto_1

    .line 332
    .restart local v0    # "inc":Lorg/apache/commons/math3/dfp/Dfp;
    :cond_8
    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/dfp/DfpDec;->add(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v1

    .restart local v1    # "result":Lorg/apache/commons/math3/dfp/Dfp;
    goto :goto_2

    .line 335
    .end local v0    # "inc":Lorg/apache/commons/math3/dfp/Dfp;
    .end local v1    # "result":Lorg/apache/commons/math3/dfp/Dfp;
    :cond_9
    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/DfpDec;->intLog10()I

    move-result v5

    invoke-virtual {p0, v5}, Lorg/apache/commons/math3/dfp/DfpDec;->power10(I)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    .line 336
    .restart local v0    # "inc":Lorg/apache/commons/math3/dfp/Dfp;
    invoke-static {v0, p0}, Lorg/apache/commons/math3/dfp/DfpDec;->copysign(Lorg/apache/commons/math3/dfp/Dfp;Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    .line 338
    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/dfp/DfpDec;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b

    .line 339
    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/DfpDec;->getDecimalDigits()I

    move-result v5

    invoke-virtual {p0, v5}, Lorg/apache/commons/math3/dfp/DfpDec;->power10(I)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v5

    invoke-virtual {v0, v5}, Lorg/apache/commons/math3/dfp/Dfp;->divide(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    .line 344
    :goto_3
    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/DfpDec;->getZero()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v5

    invoke-virtual {p0, v5}, Lorg/apache/commons/math3/dfp/DfpDec;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 345
    iget-object v5, p0, Lorg/apache/commons/math3/dfp/DfpDec;->mant:[I

    array-length v5, v5

    rsub-int v5, v5, -0x7fff

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {p0, v5}, Lorg/apache/commons/math3/dfp/DfpDec;->power10K(I)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    .line 348
    :cond_a
    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/DfpDec;->getZero()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v5

    invoke-virtual {v0, v5}, Lorg/apache/commons/math3/dfp/Dfp;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_c

    .line 349
    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/DfpDec;->getZero()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v5

    invoke-virtual {p0, v5}, Lorg/apache/commons/math3/dfp/DfpDec;->newInstance(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v5

    invoke-static {v5, p0}, Lorg/apache/commons/math3/dfp/DfpDec;->copysign(Lorg/apache/commons/math3/dfp/Dfp;Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v1

    .restart local v1    # "result":Lorg/apache/commons/math3/dfp/Dfp;
    goto/16 :goto_2

    .line 341
    .end local v1    # "result":Lorg/apache/commons/math3/dfp/Dfp;
    :cond_b
    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/DfpDec;->getDecimalDigits()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {p0, v5}, Lorg/apache/commons/math3/dfp/DfpDec;->power10(I)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v5

    invoke-virtual {v0, v5}, Lorg/apache/commons/math3/dfp/Dfp;->divide(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    goto :goto_3

    .line 351
    :cond_c
    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/dfp/DfpDec;->subtract(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v1

    .restart local v1    # "result":Lorg/apache/commons/math3/dfp/Dfp;
    goto/16 :goto_2
.end method

.method protected round(I)I
    .locals 17
    .param p1, "in"    # I

    .prologue
    .line 166
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/apache/commons/math3/dfp/DfpDec;->mant:[I

    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/apache/commons/math3/dfp/DfpDec;->mant:[I

    array-length v15, v15

    add-int/lit8 v15, v15, -0x1

    aget v10, v14, v15

    .line 167
    .local v10, "msb":I
    if-nez v10, :cond_0

    .line 169
    const/4 v14, 0x0

    .line 287
    :goto_0
    return v14

    .line 172
    :cond_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/apache/commons/math3/dfp/DfpDec;->mant:[I

    array-length v14, v14

    mul-int/lit8 v1, v14, 0x4

    .line 173
    .local v1, "cmaxdigits":I
    const/16 v8, 0x3e8

    .line 174
    .local v8, "lsbthreshold":I
    :goto_1
    if-le v8, v10, :cond_1

    .line 175
    div-int/lit8 v8, v8, 0xa

    .line 176
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 180
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/dfp/DfpDec;->getDecimalDigits()I

    move-result v2

    .line 181
    .local v2, "digits":I
    sub-int v7, v1, v2

    .line 182
    .local v7, "lsbshift":I
    div-int/lit8 v9, v7, 0x4

    .line 184
    .local v9, "lsd":I
    const/4 v8, 0x1

    .line 185
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_2
    rem-int/lit8 v14, v7, 0x4

    if-ge v4, v14, :cond_2

    .line 186
    mul-int/lit8 v8, v8, 0xa

    .line 185
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 189
    :cond_2
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/apache/commons/math3/dfp/DfpDec;->mant:[I

    aget v6, v14, v9

    .line 191
    .local v6, "lsb":I
    const/4 v14, 0x1

    if-gt v8, v14, :cond_3

    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/apache/commons/math3/dfp/DfpDec;->mant:[I

    array-length v14, v14

    mul-int/lit8 v14, v14, 0x4

    add-int/lit8 v14, v14, -0x3

    if-ne v2, v14, :cond_3

    .line 192
    invoke-super/range {p0 .. p1}, Lorg/apache/commons/math3/dfp/Dfp;->round(I)I

    move-result v14

    goto :goto_0

    .line 195
    :cond_3
    move/from16 v3, p1

    .line 197
    .local v3, "discarded":I
    const/4 v14, 0x1

    if-ne v8, v14, :cond_4

    .line 199
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/apache/commons/math3/dfp/DfpDec;->mant:[I

    add-int/lit8 v15, v9, -0x1

    aget v14, v14, v15

    div-int/lit16 v14, v14, 0x3e8

    rem-int/lit8 v11, v14, 0xa

    .line 200
    .local v11, "n":I
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/apache/commons/math3/dfp/DfpDec;->mant:[I

    add-int/lit8 v15, v9, -0x1

    aget v16, v14, v15

    move/from16 v0, v16

    rem-int/lit16 v0, v0, 0x3e8

    move/from16 v16, v0

    aput v16, v14, v15

    .line 201
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/apache/commons/math3/dfp/DfpDec;->mant:[I

    add-int/lit8 v15, v9, -0x1

    aget v14, v14, v15

    or-int/2addr v3, v14

    .line 207
    :goto_3
    const/4 v4, 0x0

    :goto_4
    if-ge v4, v9, :cond_5

    .line 208
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/apache/commons/math3/dfp/DfpDec;->mant:[I

    aget v14, v14, v4

    or-int/2addr v3, v14

    .line 209
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/apache/commons/math3/dfp/DfpDec;->mant:[I

    const/4 v15, 0x0

    aput v15, v14, v4

    .line 207
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 203
    .end local v11    # "n":I
    :cond_4
    mul-int/lit8 v14, v6, 0xa

    div-int/2addr v14, v8

    rem-int/lit8 v11, v14, 0xa

    .line 204
    .restart local v11    # "n":I
    div-int/lit8 v14, v8, 0xa

    rem-int v14, v6, v14

    or-int/2addr v3, v14

    goto :goto_3

    .line 212
    :cond_5
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/apache/commons/math3/dfp/DfpDec;->mant:[I

    div-int v15, v6, v8

    mul-int/2addr v15, v8

    aput v15, v14, v9

    .line 215
    sget-object v14, Lorg/apache/commons/math3/dfp/DfpDec$1;->$SwitchMap$org$apache$commons$math3$dfp$DfpField$RoundingMode:[I

    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/dfp/DfpDec;->getField()Lorg/apache/commons/math3/dfp/DfpField;

    move-result-object v15

    invoke-virtual {v15}, Lorg/apache/commons/math3/dfp/DfpField;->getRoundingMode()Lorg/apache/commons/math3/dfp/DfpField$RoundingMode;

    move-result-object v15

    invoke-virtual {v15}, Lorg/apache/commons/math3/dfp/DfpField$RoundingMode;->ordinal()I

    move-result v15

    aget v14, v14, v15

    packed-switch v14, :pswitch_data_0

    .line 250
    move-object/from16 v0, p0

    iget-byte v14, v0, Lorg/apache/commons/math3/dfp/DfpDec;->sign:B

    const/4 v15, -0x1

    if-ne v14, v15, :cond_13

    if-nez v11, :cond_6

    if-eqz v3, :cond_13

    :cond_6
    const/4 v5, 0x1

    .line 254
    .local v5, "inc":Z
    :goto_5
    if-eqz v5, :cond_15

    .line 256
    move v13, v8

    .line 257
    .local v13, "rh":I
    move v4, v9

    :goto_6
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/apache/commons/math3/dfp/DfpDec;->mant:[I

    array-length v14, v14

    if-ge v4, v14, :cond_14

    .line 258
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/apache/commons/math3/dfp/DfpDec;->mant:[I

    aget v14, v14, v4

    add-int v12, v14, v13

    .line 259
    .local v12, "r":I
    div-int/lit16 v13, v12, 0x2710

    .line 260
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/apache/commons/math3/dfp/DfpDec;->mant:[I

    rem-int/lit16 v15, v12, 0x2710

    aput v15, v14, v4

    .line 257
    add-int/lit8 v4, v4, 0x1

    goto :goto_6

    .line 217
    .end local v5    # "inc":Z
    .end local v12    # "r":I
    .end local v13    # "rh":I
    :pswitch_0
    const/4 v5, 0x0

    .line 218
    .restart local v5    # "inc":Z
    goto :goto_5

    .line 221
    .end local v5    # "inc":Z
    :pswitch_1
    if-nez v11, :cond_7

    if-eqz v3, :cond_8

    :cond_7
    const/4 v5, 0x1

    .line 222
    .restart local v5    # "inc":Z
    :goto_7
    goto :goto_5

    .line 221
    .end local v5    # "inc":Z
    :cond_8
    const/4 v5, 0x0

    goto :goto_7

    .line 225
    :pswitch_2
    const/4 v14, 0x5

    if-lt v11, v14, :cond_9

    const/4 v5, 0x1

    .line 226
    .restart local v5    # "inc":Z
    :goto_8
    goto :goto_5

    .line 225
    .end local v5    # "inc":Z
    :cond_9
    const/4 v5, 0x0

    goto :goto_8

    .line 229
    :pswitch_3
    const/4 v14, 0x5

    if-le v11, v14, :cond_a

    const/4 v5, 0x1

    .line 230
    .restart local v5    # "inc":Z
    :goto_9
    goto :goto_5

    .line 229
    .end local v5    # "inc":Z
    :cond_a
    const/4 v5, 0x0

    goto :goto_9

    .line 233
    :pswitch_4
    const/4 v14, 0x5

    if-gt v11, v14, :cond_c

    const/4 v14, 0x5

    if-ne v11, v14, :cond_b

    if-nez v3, :cond_c

    :cond_b
    const/4 v14, 0x5

    if-ne v11, v14, :cond_d

    if-nez v3, :cond_d

    div-int v14, v6, v8

    and-int/lit8 v14, v14, 0x1

    const/4 v15, 0x1

    if-ne v14, v15, :cond_d

    :cond_c
    const/4 v5, 0x1

    .line 236
    .restart local v5    # "inc":Z
    :goto_a
    goto :goto_5

    .line 233
    .end local v5    # "inc":Z
    :cond_d
    const/4 v5, 0x0

    goto :goto_a

    .line 239
    :pswitch_5
    const/4 v14, 0x5

    if-gt v11, v14, :cond_f

    const/4 v14, 0x5

    if-ne v11, v14, :cond_e

    if-nez v3, :cond_f

    :cond_e
    const/4 v14, 0x5

    if-ne v11, v14, :cond_10

    if-nez v3, :cond_10

    div-int v14, v6, v8

    and-int/lit8 v14, v14, 0x1

    if-nez v14, :cond_10

    :cond_f
    const/4 v5, 0x1

    .line 242
    .restart local v5    # "inc":Z
    :goto_b
    goto :goto_5

    .line 239
    .end local v5    # "inc":Z
    :cond_10
    const/4 v5, 0x0

    goto :goto_b

    .line 245
    :pswitch_6
    move-object/from16 v0, p0

    iget-byte v14, v0, Lorg/apache/commons/math3/dfp/DfpDec;->sign:B

    const/4 v15, 0x1

    if-ne v14, v15, :cond_12

    if-nez v11, :cond_11

    if-eqz v3, :cond_12

    :cond_11
    const/4 v5, 0x1

    .line 246
    .restart local v5    # "inc":Z
    :goto_c
    goto :goto_5

    .line 245
    .end local v5    # "inc":Z
    :cond_12
    const/4 v5, 0x0

    goto :goto_c

    .line 250
    :cond_13
    const/4 v5, 0x0

    goto :goto_5

    .line 263
    .restart local v5    # "inc":Z
    .restart local v13    # "rh":I
    :cond_14
    if-eqz v13, :cond_15

    .line 264
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/dfp/DfpDec;->shiftRight()V

    .line 265
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/apache/commons/math3/dfp/DfpDec;->mant:[I

    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/apache/commons/math3/dfp/DfpDec;->mant:[I

    array-length v15, v15

    add-int/lit8 v15, v15, -0x1

    aput v13, v14, v15

    .line 270
    .end local v13    # "rh":I
    :cond_15
    move-object/from16 v0, p0

    iget v14, v0, Lorg/apache/commons/math3/dfp/DfpDec;->exp:I

    const/16 v15, -0x7fff

    if-ge v14, v15, :cond_16

    .line 272
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/dfp/DfpDec;->getField()Lorg/apache/commons/math3/dfp/DfpField;

    move-result-object v14

    const/16 v15, 0x8

    invoke-virtual {v14, v15}, Lorg/apache/commons/math3/dfp/DfpField;->setIEEEFlagsBits(I)V

    .line 273
    const/16 v14, 0x8

    goto/16 :goto_0

    .line 276
    :cond_16
    move-object/from16 v0, p0

    iget v14, v0, Lorg/apache/commons/math3/dfp/DfpDec;->exp:I

    const v15, 0x8000

    if-le v14, v15, :cond_17

    .line 278
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/dfp/DfpDec;->getField()Lorg/apache/commons/math3/dfp/DfpField;

    move-result-object v14

    const/4 v15, 0x4

    invoke-virtual {v14, v15}, Lorg/apache/commons/math3/dfp/DfpField;->setIEEEFlagsBits(I)V

    .line 279
    const/4 v14, 0x4

    goto/16 :goto_0

    .line 282
    :cond_17
    if-nez v11, :cond_18

    if-eqz v3, :cond_19

    .line 284
    :cond_18
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/dfp/DfpDec;->getField()Lorg/apache/commons/math3/dfp/DfpField;

    move-result-object v14

    const/16 v15, 0x10

    invoke-virtual {v14, v15}, Lorg/apache/commons/math3/dfp/DfpField;->setIEEEFlagsBits(I)V

    .line 285
    const/16 v14, 0x10

    goto/16 :goto_0

    .line 287
    :cond_19
    const/4 v14, 0x0

    goto/16 :goto_0

    .line 215
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method
