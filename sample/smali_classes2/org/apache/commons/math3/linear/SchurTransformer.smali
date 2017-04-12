.class Lorg/apache/commons/math3/linear/SchurTransformer;
.super Ljava/lang/Object;
.source "SchurTransformer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/math3/linear/SchurTransformer$1;,
        Lorg/apache/commons/math3/linear/SchurTransformer$ShiftInfo;
    }
.end annotation


# static fields
.field private static final MAX_ITERATIONS:I = 0x64


# instance fields
.field private cachedP:Lorg/apache/commons/math3/linear/RealMatrix;

.field private cachedPt:Lorg/apache/commons/math3/linear/RealMatrix;

.field private cachedT:Lorg/apache/commons/math3/linear/RealMatrix;

.field private final epsilon:D

.field private final matrixP:[[D

.field private final matrixT:[[D


# direct methods
.method public constructor <init>(Lorg/apache/commons/math3/linear/RealMatrix;)V
    .locals 5
    .param p1, "matrix"    # Lorg/apache/commons/math3/linear/RealMatrix;

    .prologue
    const/4 v4, 0x0

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    sget-wide v2, Lorg/apache/commons/math3/util/Precision;->EPSILON:D

    iput-wide v2, p0, Lorg/apache/commons/math3/linear/SchurTransformer;->epsilon:D

    .line 69
    invoke-interface {p1}, Lorg/apache/commons/math3/linear/RealMatrix;->isSquare()Z

    move-result v1

    if-nez v1, :cond_0

    .line 70
    new-instance v1, Lorg/apache/commons/math3/linear/NonSquareMatrixException;

    invoke-interface {p1}, Lorg/apache/commons/math3/linear/RealMatrix;->getRowDimension()I

    move-result v2

    invoke-interface {p1}, Lorg/apache/commons/math3/linear/RealMatrix;->getColumnDimension()I

    move-result v3

    invoke-direct {v1, v2, v3}, Lorg/apache/commons/math3/linear/NonSquareMatrixException;-><init>(II)V

    throw v1

    .line 74
    :cond_0
    new-instance v0, Lorg/apache/commons/math3/linear/HessenbergTransformer;

    invoke-direct {v0, p1}, Lorg/apache/commons/math3/linear/HessenbergTransformer;-><init>(Lorg/apache/commons/math3/linear/RealMatrix;)V

    .line 75
    .local v0, "transformer":Lorg/apache/commons/math3/linear/HessenbergTransformer;
    invoke-virtual {v0}, Lorg/apache/commons/math3/linear/HessenbergTransformer;->getH()Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/commons/math3/linear/RealMatrix;->getData()[[D

    move-result-object v1

    iput-object v1, p0, Lorg/apache/commons/math3/linear/SchurTransformer;->matrixT:[[D

    .line 76
    invoke-virtual {v0}, Lorg/apache/commons/math3/linear/HessenbergTransformer;->getP()Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/commons/math3/linear/RealMatrix;->getData()[[D

    move-result-object v1

    iput-object v1, p0, Lorg/apache/commons/math3/linear/SchurTransformer;->matrixP:[[D

    .line 77
    iput-object v4, p0, Lorg/apache/commons/math3/linear/SchurTransformer;->cachedT:Lorg/apache/commons/math3/linear/RealMatrix;

    .line 78
    iput-object v4, p0, Lorg/apache/commons/math3/linear/SchurTransformer;->cachedP:Lorg/apache/commons/math3/linear/RealMatrix;

    .line 79
    iput-object v4, p0, Lorg/apache/commons/math3/linear/SchurTransformer;->cachedPt:Lorg/apache/commons/math3/linear/RealMatrix;

    .line 82
    invoke-direct {p0}, Lorg/apache/commons/math3/linear/SchurTransformer;->transform()V

    .line 83
    return-void
.end method

.method private computeShift(IIILorg/apache/commons/math3/linear/SchurTransformer$ShiftInfo;)V
    .locals 14
    .param p1, "l"    # I
    .param p2, "idx"    # I
    .param p3, "iteration"    # I
    .param p4, "shift"    # Lorg/apache/commons/math3/linear/SchurTransformer$ShiftInfo;

    .prologue
    .line 266
    iget-object v3, p0, Lorg/apache/commons/math3/linear/SchurTransformer;->matrixT:[[D

    aget-object v3, v3, p2

    aget-wide v6, v3, p2

    move-object/from16 v0, p4

    iput-wide v6, v0, Lorg/apache/commons/math3/linear/SchurTransformer$ShiftInfo;->x:D

    .line 267
    const-wide/16 v6, 0x0

    move-object/from16 v0, p4

    iput-wide v6, v0, Lorg/apache/commons/math3/linear/SchurTransformer$ShiftInfo;->w:D

    move-object/from16 v0, p4

    iput-wide v6, v0, Lorg/apache/commons/math3/linear/SchurTransformer$ShiftInfo;->y:D

    .line 268
    move/from16 v0, p2

    if-ge p1, v0, :cond_0

    .line 269
    iget-object v3, p0, Lorg/apache/commons/math3/linear/SchurTransformer;->matrixT:[[D

    add-int/lit8 v6, p2, -0x1

    aget-object v3, v3, v6

    add-int/lit8 v6, p2, -0x1

    aget-wide v6, v3, v6

    move-object/from16 v0, p4

    iput-wide v6, v0, Lorg/apache/commons/math3/linear/SchurTransformer$ShiftInfo;->y:D

    .line 270
    iget-object v3, p0, Lorg/apache/commons/math3/linear/SchurTransformer;->matrixT:[[D

    aget-object v3, v3, p2

    add-int/lit8 v6, p2, -0x1

    aget-wide v6, v3, v6

    iget-object v3, p0, Lorg/apache/commons/math3/linear/SchurTransformer;->matrixT:[[D

    add-int/lit8 v8, p2, -0x1

    aget-object v3, v3, v8

    aget-wide v8, v3, p2

    mul-double/2addr v6, v8

    move-object/from16 v0, p4

    iput-wide v6, v0, Lorg/apache/commons/math3/linear/SchurTransformer$ShiftInfo;->w:D

    .line 274
    :cond_0
    const/16 v3, 0xa

    move/from16 v0, p3

    if-ne v0, v3, :cond_2

    .line 275
    move-object/from16 v0, p4

    iget-wide v6, v0, Lorg/apache/commons/math3/linear/SchurTransformer$ShiftInfo;->exShift:D

    move-object/from16 v0, p4

    iget-wide v8, v0, Lorg/apache/commons/math3/linear/SchurTransformer$ShiftInfo;->x:D

    add-double/2addr v6, v8

    move-object/from16 v0, p4

    iput-wide v6, v0, Lorg/apache/commons/math3/linear/SchurTransformer$ShiftInfo;->exShift:D

    .line 276
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    move/from16 v0, p2

    if-gt v2, v0, :cond_1

    .line 277
    iget-object v3, p0, Lorg/apache/commons/math3/linear/SchurTransformer;->matrixT:[[D

    aget-object v3, v3, v2

    aget-wide v6, v3, v2

    move-object/from16 v0, p4

    iget-wide v8, v0, Lorg/apache/commons/math3/linear/SchurTransformer$ShiftInfo;->x:D

    sub-double/2addr v6, v8

    aput-wide v6, v3, v2

    .line 276
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 279
    :cond_1
    iget-object v3, p0, Lorg/apache/commons/math3/linear/SchurTransformer;->matrixT:[[D

    aget-object v3, v3, p2

    add-int/lit8 v6, p2, -0x1

    aget-wide v6, v3, v6

    invoke-static {v6, v7}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v6

    iget-object v3, p0, Lorg/apache/commons/math3/linear/SchurTransformer;->matrixT:[[D

    add-int/lit8 v8, p2, -0x1

    aget-object v3, v3, v8

    add-int/lit8 v8, p2, -0x2

    aget-wide v8, v3, v8

    invoke-static {v8, v9}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v8

    add-double v4, v6, v8

    .line 280
    .local v4, "s":D
    const-wide/high16 v6, 0x3fe8000000000000L    # 0.75

    mul-double/2addr v6, v4

    move-object/from16 v0, p4

    iput-wide v6, v0, Lorg/apache/commons/math3/linear/SchurTransformer$ShiftInfo;->x:D

    .line 281
    const-wide/high16 v6, 0x3fe8000000000000L    # 0.75

    mul-double/2addr v6, v4

    move-object/from16 v0, p4

    iput-wide v6, v0, Lorg/apache/commons/math3/linear/SchurTransformer$ShiftInfo;->y:D

    .line 282
    const-wide/high16 v6, -0x4024000000000000L    # -0.4375

    mul-double/2addr v6, v4

    mul-double/2addr v6, v4

    move-object/from16 v0, p4

    iput-wide v6, v0, Lorg/apache/commons/math3/linear/SchurTransformer$ShiftInfo;->w:D

    .line 286
    .end local v2    # "i":I
    .end local v4    # "s":D
    :cond_2
    const/16 v3, 0x1e

    move/from16 v0, p3

    if-ne v0, v3, :cond_5

    .line 287
    move-object/from16 v0, p4

    iget-wide v6, v0, Lorg/apache/commons/math3/linear/SchurTransformer$ShiftInfo;->y:D

    move-object/from16 v0, p4

    iget-wide v8, v0, Lorg/apache/commons/math3/linear/SchurTransformer$ShiftInfo;->x:D

    sub-double/2addr v6, v8

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    div-double v4, v6, v8

    .line 288
    .restart local v4    # "s":D
    mul-double v6, v4, v4

    move-object/from16 v0, p4

    iget-wide v8, v0, Lorg/apache/commons/math3/linear/SchurTransformer$ShiftInfo;->w:D

    add-double v4, v6, v8

    .line 289
    const-wide/16 v6, 0x0

    cmpl-double v3, v4, v6

    if-lez v3, :cond_5

    .line 290
    invoke-static {v4, v5}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v4

    .line 291
    move-object/from16 v0, p4

    iget-wide v6, v0, Lorg/apache/commons/math3/linear/SchurTransformer$ShiftInfo;->y:D

    move-object/from16 v0, p4

    iget-wide v8, v0, Lorg/apache/commons/math3/linear/SchurTransformer$ShiftInfo;->x:D

    cmpg-double v3, v6, v8

    if-gez v3, :cond_3

    .line 292
    neg-double v4, v4

    .line 294
    :cond_3
    move-object/from16 v0, p4

    iget-wide v6, v0, Lorg/apache/commons/math3/linear/SchurTransformer$ShiftInfo;->x:D

    move-object/from16 v0, p4

    iget-wide v8, v0, Lorg/apache/commons/math3/linear/SchurTransformer$ShiftInfo;->w:D

    move-object/from16 v0, p4

    iget-wide v10, v0, Lorg/apache/commons/math3/linear/SchurTransformer$ShiftInfo;->y:D

    move-object/from16 v0, p4

    iget-wide v12, v0, Lorg/apache/commons/math3/linear/SchurTransformer$ShiftInfo;->x:D

    sub-double/2addr v10, v12

    const-wide/high16 v12, 0x4000000000000000L    # 2.0

    div-double/2addr v10, v12

    add-double/2addr v10, v4

    div-double/2addr v8, v10

    sub-double v4, v6, v8

    .line 295
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_1
    move/from16 v0, p2

    if-gt v2, v0, :cond_4

    .line 296
    iget-object v3, p0, Lorg/apache/commons/math3/linear/SchurTransformer;->matrixT:[[D

    aget-object v3, v3, v2

    aget-wide v6, v3, v2

    sub-double/2addr v6, v4

    aput-wide v6, v3, v2

    .line 295
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 298
    :cond_4
    move-object/from16 v0, p4

    iget-wide v6, v0, Lorg/apache/commons/math3/linear/SchurTransformer$ShiftInfo;->exShift:D

    add-double/2addr v6, v4

    move-object/from16 v0, p4

    iput-wide v6, v0, Lorg/apache/commons/math3/linear/SchurTransformer$ShiftInfo;->exShift:D

    .line 299
    const-wide v6, 0x3feed916872b020cL    # 0.964

    move-object/from16 v0, p4

    iput-wide v6, v0, Lorg/apache/commons/math3/linear/SchurTransformer$ShiftInfo;->w:D

    move-object/from16 v0, p4

    iput-wide v6, v0, Lorg/apache/commons/math3/linear/SchurTransformer$ShiftInfo;->y:D

    move-object/from16 v0, p4

    iput-wide v6, v0, Lorg/apache/commons/math3/linear/SchurTransformer$ShiftInfo;->x:D

    .line 302
    .end local v2    # "i":I
    .end local v4    # "s":D
    :cond_5
    return-void
.end method

.method private findSmallSubDiagonalElement(ID)I
    .locals 8
    .param p1, "startIdx"    # I
    .param p2, "norm"    # D

    .prologue
    .line 242
    move v0, p1

    .line 243
    .local v0, "l":I
    :goto_0
    if-lez v0, :cond_1

    .line 244
    iget-object v1, p0, Lorg/apache/commons/math3/linear/SchurTransformer;->matrixT:[[D

    add-int/lit8 v4, v0, -0x1

    aget-object v1, v1, v4

    add-int/lit8 v4, v0, -0x1

    aget-wide v4, v1, v4

    invoke-static {v4, v5}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v4

    iget-object v1, p0, Lorg/apache/commons/math3/linear/SchurTransformer;->matrixT:[[D

    aget-object v1, v1, v0

    aget-wide v6, v1, v0

    invoke-static {v6, v7}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v6

    add-double v2, v4, v6

    .line 245
    .local v2, "s":D
    const-wide/16 v4, 0x0

    cmpl-double v1, v2, v4

    if-nez v1, :cond_0

    .line 246
    move-wide v2, p2

    .line 248
    :cond_0
    iget-object v1, p0, Lorg/apache/commons/math3/linear/SchurTransformer;->matrixT:[[D

    aget-object v1, v1, v0

    add-int/lit8 v4, v0, -0x1

    aget-wide v4, v1, v4

    invoke-static {v4, v5}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v4

    iget-wide v6, p0, Lorg/apache/commons/math3/linear/SchurTransformer;->epsilon:D

    mul-double/2addr v6, v2

    cmpg-double v1, v4, v6

    if-gez v1, :cond_2

    .line 253
    .end local v2    # "s":D
    :cond_1
    return v0

    .line 251
    .restart local v2    # "s":D
    :cond_2
    add-int/lit8 v0, v0, -0x1

    .line 252
    goto :goto_0
.end method

.method private getNorm()D
    .locals 6

    .prologue
    .line 224
    const-wide/16 v2, 0x0

    .line 225
    .local v2, "norm":D
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v4, p0, Lorg/apache/commons/math3/linear/SchurTransformer;->matrixT:[[D

    array-length v4, v4

    if-ge v0, v4, :cond_1

    .line 227
    add-int/lit8 v4, v0, -0x1

    const/4 v5, 0x0

    invoke-static {v4, v5}, Lorg/apache/commons/math3/util/FastMath;->max(II)I

    move-result v1

    .local v1, "j":I
    :goto_1
    iget-object v4, p0, Lorg/apache/commons/math3/linear/SchurTransformer;->matrixT:[[D

    array-length v4, v4

    if-ge v1, v4, :cond_0

    .line 228
    iget-object v4, p0, Lorg/apache/commons/math3/linear/SchurTransformer;->matrixT:[[D

    aget-object v4, v4, v0

    aget-wide v4, v4, v1

    invoke-static {v4, v5}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v4

    add-double/2addr v2, v4

    .line 227
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 225
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 231
    .end local v1    # "j":I
    :cond_1
    return-wide v2
.end method

.method private initQRStep(IILorg/apache/commons/math3/linear/SchurTransformer$ShiftInfo;[D)I
    .locals 20
    .param p1, "il"    # I
    .param p2, "iu"    # I
    .param p3, "shift"    # Lorg/apache/commons/math3/linear/SchurTransformer$ShiftInfo;
    .param p4, "hVec"    # [D

    .prologue
    .line 315
    add-int/lit8 v2, p2, -0x2

    .line 316
    .local v2, "im":I
    :goto_0
    move/from16 v0, p1

    if-lt v2, v0, :cond_0

    .line 317
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/commons/math3/linear/SchurTransformer;->matrixT:[[D

    aget-object v3, v3, v2

    aget-wide v12, v3, v2

    .line 318
    .local v12, "z":D
    move-object/from16 v0, p3

    iget-wide v14, v0, Lorg/apache/commons/math3/linear/SchurTransformer$ShiftInfo;->x:D

    sub-double v6, v14, v12

    .line 319
    .local v6, "r":D
    move-object/from16 v0, p3

    iget-wide v14, v0, Lorg/apache/commons/math3/linear/SchurTransformer$ShiftInfo;->y:D

    sub-double v10, v14, v12

    .line 320
    .local v10, "s":D
    const/4 v3, 0x0

    mul-double v14, v6, v10

    move-object/from16 v0, p3

    iget-wide v0, v0, Lorg/apache/commons/math3/linear/SchurTransformer$ShiftInfo;->w:D

    move-wide/from16 v16, v0

    sub-double v14, v14, v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/linear/SchurTransformer;->matrixT:[[D

    move-object/from16 v16, v0

    add-int/lit8 v17, v2, 0x1

    aget-object v16, v16, v17

    aget-wide v16, v16, v2

    div-double v14, v14, v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/linear/SchurTransformer;->matrixT:[[D

    move-object/from16 v16, v0

    aget-object v16, v16, v2

    add-int/lit8 v17, v2, 0x1

    aget-wide v16, v16, v17

    add-double v14, v14, v16

    aput-wide v14, p4, v3

    .line 321
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/apache/commons/math3/linear/SchurTransformer;->matrixT:[[D

    add-int/lit8 v15, v2, 0x1

    aget-object v14, v14, v15

    add-int/lit8 v15, v2, 0x1

    aget-wide v14, v14, v15

    sub-double/2addr v14, v12

    sub-double/2addr v14, v6

    sub-double/2addr v14, v10

    aput-wide v14, p4, v3

    .line 322
    const/4 v3, 0x2

    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/apache/commons/math3/linear/SchurTransformer;->matrixT:[[D

    add-int/lit8 v15, v2, 0x2

    aget-object v14, v14, v15

    add-int/lit8 v15, v2, 0x1

    aget-wide v14, v14, v15

    aput-wide v14, p4, v3

    .line 324
    move/from16 v0, p1

    if-ne v2, v0, :cond_1

    .line 339
    .end local v6    # "r":D
    .end local v10    # "s":D
    .end local v12    # "z":D
    :cond_0
    return v2

    .line 328
    .restart local v6    # "r":D
    .restart local v10    # "s":D
    .restart local v12    # "z":D
    :cond_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/commons/math3/linear/SchurTransformer;->matrixT:[[D

    aget-object v3, v3, v2

    add-int/lit8 v14, v2, -0x1

    aget-wide v14, v3, v14

    invoke-static {v14, v15}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v14

    const/4 v3, 0x1

    aget-wide v16, p4, v3

    invoke-static/range {v16 .. v17}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v16

    const/4 v3, 0x2

    aget-wide v18, p4, v3

    invoke-static/range {v18 .. v19}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v18

    add-double v16, v16, v18

    mul-double v4, v14, v16

    .line 329
    .local v4, "lhs":D
    const/4 v3, 0x0

    aget-wide v14, p4, v3

    invoke-static {v14, v15}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v14

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/commons/math3/linear/SchurTransformer;->matrixT:[[D

    add-int/lit8 v16, v2, -0x1

    aget-object v3, v3, v16

    add-int/lit8 v16, v2, -0x1

    aget-wide v16, v3, v16

    invoke-static/range {v16 .. v17}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v16

    invoke-static {v12, v13}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v18

    add-double v16, v16, v18

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/commons/math3/linear/SchurTransformer;->matrixT:[[D

    add-int/lit8 v18, v2, 0x1

    aget-object v3, v3, v18

    add-int/lit8 v18, v2, 0x1

    aget-wide v18, v3, v18

    invoke-static/range {v18 .. v19}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v18

    add-double v16, v16, v18

    mul-double v8, v14, v16

    .line 333
    .local v8, "rhs":D
    move-object/from16 v0, p0

    iget-wide v14, v0, Lorg/apache/commons/math3/linear/SchurTransformer;->epsilon:D

    mul-double/2addr v14, v8

    cmpg-double v3, v4, v14

    if-ltz v3, :cond_0

    .line 336
    add-int/lit8 v2, v2, -0x1

    .line 337
    goto/16 :goto_0
.end method

.method private performDoubleQRStep(IIILorg/apache/commons/math3/linear/SchurTransformer$ShiftInfo;[D)V
    .locals 24
    .param p1, "il"    # I
    .param p2, "im"    # I
    .param p3, "iu"    # I
    .param p4, "shift"    # Lorg/apache/commons/math3/linear/SchurTransformer$ShiftInfo;
    .param p5, "hVec"    # [D

    .prologue
    .line 354
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/commons/math3/linear/SchurTransformer;->matrixT:[[D

    array-length v12, v2

    .line 355
    .local v12, "n":I
    const/4 v2, 0x0

    aget-wide v14, p5, v2

    .line 356
    .local v14, "p":D
    const/4 v2, 0x1

    aget-wide v16, p5, v2

    .line 357
    .local v16, "q":D
    const/4 v2, 0x2

    aget-wide v18, p5, v2

    .line 359
    .local v18, "r":D
    move/from16 v11, p2

    .local v11, "k":I
    :goto_0
    add-int/lit8 v2, p3, -0x1

    if-gt v11, v2, :cond_d

    .line 360
    add-int/lit8 v2, p3, -0x1

    if-eq v11, v2, :cond_1

    const/4 v13, 0x1

    .line 361
    .local v13, "notlast":Z
    :goto_1
    move/from16 v0, p2

    if-eq v11, v0, :cond_4

    .line 362
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/commons/math3/linear/SchurTransformer;->matrixT:[[D

    aget-object v2, v2, v11

    add-int/lit8 v3, v11, -0x1

    aget-wide v14, v2, v3

    .line 363
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/commons/math3/linear/SchurTransformer;->matrixT:[[D

    add-int/lit8 v3, v11, 0x1

    aget-object v2, v2, v3

    add-int/lit8 v3, v11, -0x1

    aget-wide v16, v2, v3

    .line 364
    if-eqz v13, :cond_2

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/commons/math3/linear/SchurTransformer;->matrixT:[[D

    add-int/lit8 v3, v11, 0x2

    aget-object v2, v2, v3

    add-int/lit8 v3, v11, -0x1

    aget-wide v18, v2, v3

    .line 365
    :goto_2
    invoke-static {v14, v15}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v2

    invoke-static/range {v16 .. v17}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v4

    add-double/2addr v2, v4

    invoke-static/range {v18 .. v19}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v4

    add-double/2addr v2, v4

    move-object/from16 v0, p4

    iput-wide v2, v0, Lorg/apache/commons/math3/linear/SchurTransformer$ShiftInfo;->x:D

    .line 366
    move-object/from16 v0, p4

    iget-wide v2, v0, Lorg/apache/commons/math3/linear/SchurTransformer$ShiftInfo;->x:D

    const-wide/16 v4, 0x0

    move-object/from16 v0, p0

    iget-wide v6, v0, Lorg/apache/commons/math3/linear/SchurTransformer;->epsilon:D

    invoke-static/range {v2 .. v7}, Lorg/apache/commons/math3/util/Precision;->equals(DDD)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 359
    :cond_0
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 360
    .end local v13    # "notlast":Z
    :cond_1
    const/4 v13, 0x0

    goto :goto_1

    .line 364
    .restart local v13    # "notlast":Z
    :cond_2
    const-wide/16 v18, 0x0

    goto :goto_2

    .line 369
    :cond_3
    move-object/from16 v0, p4

    iget-wide v2, v0, Lorg/apache/commons/math3/linear/SchurTransformer$ShiftInfo;->x:D

    div-double/2addr v14, v2

    .line 370
    move-object/from16 v0, p4

    iget-wide v2, v0, Lorg/apache/commons/math3/linear/SchurTransformer$ShiftInfo;->x:D

    div-double v16, v16, v2

    .line 371
    move-object/from16 v0, p4

    iget-wide v2, v0, Lorg/apache/commons/math3/linear/SchurTransformer$ShiftInfo;->x:D

    div-double v18, v18, v2

    .line 373
    :cond_4
    mul-double v2, v14, v14

    mul-double v4, v16, v16

    add-double/2addr v2, v4

    mul-double v4, v18, v18

    add-double/2addr v2, v4

    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v20

    .line 374
    .local v20, "s":D
    const-wide/16 v2, 0x0

    cmpg-double v2, v14, v2

    if-gez v2, :cond_5

    .line 375
    move-wide/from16 v0, v20

    neg-double v0, v0

    move-wide/from16 v20, v0

    .line 377
    :cond_5
    const-wide/16 v2, 0x0

    cmpl-double v2, v20, v2

    if-eqz v2, :cond_0

    .line 378
    move/from16 v0, p2

    if-eq v11, v0, :cond_8

    .line 379
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/commons/math3/linear/SchurTransformer;->matrixT:[[D

    aget-object v2, v2, v11

    add-int/lit8 v3, v11, -0x1

    move-wide/from16 v0, v20

    neg-double v4, v0

    move-object/from16 v0, p4

    iget-wide v6, v0, Lorg/apache/commons/math3/linear/SchurTransformer$ShiftInfo;->x:D

    mul-double/2addr v4, v6

    aput-wide v4, v2, v3

    .line 383
    :cond_6
    :goto_3
    add-double v14, v14, v20

    .line 384
    div-double v2, v14, v20

    move-object/from16 v0, p4

    iput-wide v2, v0, Lorg/apache/commons/math3/linear/SchurTransformer$ShiftInfo;->x:D

    .line 385
    div-double v2, v16, v20

    move-object/from16 v0, p4

    iput-wide v2, v0, Lorg/apache/commons/math3/linear/SchurTransformer$ShiftInfo;->y:D

    .line 386
    div-double v22, v18, v20

    .line 387
    .local v22, "z":D
    div-double v16, v16, v14

    .line 388
    div-double v18, v18, v14

    .line 391
    move v10, v11

    .local v10, "j":I
    :goto_4
    if-ge v10, v12, :cond_9

    .line 392
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/commons/math3/linear/SchurTransformer;->matrixT:[[D

    aget-object v2, v2, v11

    aget-wide v2, v2, v10

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/commons/math3/linear/SchurTransformer;->matrixT:[[D

    add-int/lit8 v5, v11, 0x1

    aget-object v4, v4, v5

    aget-wide v4, v4, v10

    mul-double v4, v4, v16

    add-double v14, v2, v4

    .line 393
    if-eqz v13, :cond_7

    .line 394
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/commons/math3/linear/SchurTransformer;->matrixT:[[D

    add-int/lit8 v3, v11, 0x2

    aget-object v2, v2, v3

    aget-wide v2, v2, v10

    mul-double v2, v2, v18

    add-double/2addr v14, v2

    .line 395
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/commons/math3/linear/SchurTransformer;->matrixT:[[D

    add-int/lit8 v3, v11, 0x2

    aget-object v2, v2, v3

    aget-wide v4, v2, v10

    mul-double v6, v14, v22

    sub-double/2addr v4, v6

    aput-wide v4, v2, v10

    .line 397
    :cond_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/commons/math3/linear/SchurTransformer;->matrixT:[[D

    aget-object v2, v2, v11

    aget-wide v4, v2, v10

    move-object/from16 v0, p4

    iget-wide v6, v0, Lorg/apache/commons/math3/linear/SchurTransformer$ShiftInfo;->x:D

    mul-double/2addr v6, v14

    sub-double/2addr v4, v6

    aput-wide v4, v2, v10

    .line 398
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/commons/math3/linear/SchurTransformer;->matrixT:[[D

    add-int/lit8 v3, v11, 0x1

    aget-object v2, v2, v3

    aget-wide v4, v2, v10

    move-object/from16 v0, p4

    iget-wide v6, v0, Lorg/apache/commons/math3/linear/SchurTransformer$ShiftInfo;->y:D

    mul-double/2addr v6, v14

    sub-double/2addr v4, v6

    aput-wide v4, v2, v10

    .line 391
    add-int/lit8 v10, v10, 0x1

    goto :goto_4

    .line 380
    .end local v10    # "j":I
    .end local v22    # "z":D
    :cond_8
    move/from16 v0, p1

    move/from16 v1, p2

    if-eq v0, v1, :cond_6

    .line 381
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/commons/math3/linear/SchurTransformer;->matrixT:[[D

    aget-object v2, v2, v11

    add-int/lit8 v3, v11, -0x1

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/commons/math3/linear/SchurTransformer;->matrixT:[[D

    aget-object v4, v4, v11

    add-int/lit8 v5, v11, -0x1

    aget-wide v4, v4, v5

    neg-double v4, v4

    aput-wide v4, v2, v3

    goto/16 :goto_3

    .line 402
    .restart local v10    # "j":I
    .restart local v22    # "z":D
    :cond_9
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_5
    add-int/lit8 v2, v11, 0x3

    move/from16 v0, p3

    invoke-static {v0, v2}, Lorg/apache/commons/math3/util/FastMath;->min(II)I

    move-result v2

    if-gt v9, v2, :cond_b

    .line 403
    move-object/from16 v0, p4

    iget-wide v2, v0, Lorg/apache/commons/math3/linear/SchurTransformer$ShiftInfo;->x:D

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/commons/math3/linear/SchurTransformer;->matrixT:[[D

    aget-object v4, v4, v9

    aget-wide v4, v4, v11

    mul-double/2addr v2, v4

    move-object/from16 v0, p4

    iget-wide v4, v0, Lorg/apache/commons/math3/linear/SchurTransformer$ShiftInfo;->y:D

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/apache/commons/math3/linear/SchurTransformer;->matrixT:[[D

    aget-object v6, v6, v9

    add-int/lit8 v7, v11, 0x1

    aget-wide v6, v6, v7

    mul-double/2addr v4, v6

    add-double v14, v2, v4

    .line 404
    if-eqz v13, :cond_a

    .line 405
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/commons/math3/linear/SchurTransformer;->matrixT:[[D

    aget-object v2, v2, v9

    add-int/lit8 v3, v11, 0x2

    aget-wide v2, v2, v3

    mul-double v2, v2, v22

    add-double/2addr v14, v2

    .line 406
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/commons/math3/linear/SchurTransformer;->matrixT:[[D

    aget-object v2, v2, v9

    add-int/lit8 v3, v11, 0x2

    aget-wide v4, v2, v3

    mul-double v6, v14, v18

    sub-double/2addr v4, v6

    aput-wide v4, v2, v3

    .line 408
    :cond_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/commons/math3/linear/SchurTransformer;->matrixT:[[D

    aget-object v2, v2, v9

    aget-wide v4, v2, v11

    sub-double/2addr v4, v14

    aput-wide v4, v2, v11

    .line 409
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/commons/math3/linear/SchurTransformer;->matrixT:[[D

    aget-object v2, v2, v9

    add-int/lit8 v3, v11, 0x1

    aget-wide v4, v2, v3

    mul-double v6, v14, v16

    sub-double/2addr v4, v6

    aput-wide v4, v2, v3

    .line 402
    add-int/lit8 v9, v9, 0x1

    goto :goto_5

    .line 413
    :cond_b
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/commons/math3/linear/SchurTransformer;->matrixT:[[D

    array-length v2, v2

    add-int/lit8 v8, v2, -0x1

    .line 414
    .local v8, "high":I
    const/4 v9, 0x0

    :goto_6
    if-gt v9, v8, :cond_0

    .line 415
    move-object/from16 v0, p4

    iget-wide v2, v0, Lorg/apache/commons/math3/linear/SchurTransformer$ShiftInfo;->x:D

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/commons/math3/linear/SchurTransformer;->matrixP:[[D

    aget-object v4, v4, v9

    aget-wide v4, v4, v11

    mul-double/2addr v2, v4

    move-object/from16 v0, p4

    iget-wide v4, v0, Lorg/apache/commons/math3/linear/SchurTransformer$ShiftInfo;->y:D

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/apache/commons/math3/linear/SchurTransformer;->matrixP:[[D

    aget-object v6, v6, v9

    add-int/lit8 v7, v11, 0x1

    aget-wide v6, v6, v7

    mul-double/2addr v4, v6

    add-double v14, v2, v4

    .line 416
    if-eqz v13, :cond_c

    .line 417
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/commons/math3/linear/SchurTransformer;->matrixP:[[D

    aget-object v2, v2, v9

    add-int/lit8 v3, v11, 0x2

    aget-wide v2, v2, v3

    mul-double v2, v2, v22

    add-double/2addr v14, v2

    .line 418
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/commons/math3/linear/SchurTransformer;->matrixP:[[D

    aget-object v2, v2, v9

    add-int/lit8 v3, v11, 0x2

    aget-wide v4, v2, v3

    mul-double v6, v14, v18

    sub-double/2addr v4, v6

    aput-wide v4, v2, v3

    .line 420
    :cond_c
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/commons/math3/linear/SchurTransformer;->matrixP:[[D

    aget-object v2, v2, v9

    aget-wide v4, v2, v11

    sub-double/2addr v4, v14

    aput-wide v4, v2, v11

    .line 421
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/commons/math3/linear/SchurTransformer;->matrixP:[[D

    aget-object v2, v2, v9

    add-int/lit8 v3, v11, 0x1

    aget-wide v4, v2, v3

    mul-double v6, v14, v16

    sub-double/2addr v4, v6

    aput-wide v4, v2, v3

    .line 414
    add-int/lit8 v9, v9, 0x1

    goto :goto_6

    .line 427
    .end local v8    # "high":I
    .end local v9    # "i":I
    .end local v10    # "j":I
    .end local v13    # "notlast":Z
    .end local v20    # "s":D
    .end local v22    # "z":D
    :cond_d
    add-int/lit8 v9, p2, 0x2

    .restart local v9    # "i":I
    :goto_7
    move/from16 v0, p3

    if-gt v9, v0, :cond_f

    .line 428
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/commons/math3/linear/SchurTransformer;->matrixT:[[D

    aget-object v2, v2, v9

    add-int/lit8 v3, v9, -0x2

    const-wide/16 v4, 0x0

    aput-wide v4, v2, v3

    .line 429
    add-int/lit8 v2, p2, 0x2

    if-le v9, v2, :cond_e

    .line 430
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/commons/math3/linear/SchurTransformer;->matrixT:[[D

    aget-object v2, v2, v9

    add-int/lit8 v3, v9, -0x3

    const-wide/16 v4, 0x0

    aput-wide v4, v2, v3

    .line 427
    :cond_e
    add-int/lit8 v9, v9, 0x1

    goto :goto_7

    .line 433
    :cond_f
    return-void
.end method

.method private transform()V
    .locals 34

    .prologue
    .line 132
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/commons/math3/linear/SchurTransformer;->matrixT:[[D

    array-length v13, v4

    .line 135
    .local v13, "n":I
    invoke-direct/range {p0 .. p0}, Lorg/apache/commons/math3/linear/SchurTransformer;->getNorm()D

    move-result-wide v14

    .line 138
    .local v14, "norm":D
    new-instance v8, Lorg/apache/commons/math3/linear/SchurTransformer$ShiftInfo;

    const/4 v4, 0x0

    invoke-direct {v8, v4}, Lorg/apache/commons/math3/linear/SchurTransformer$ShiftInfo;-><init>(Lorg/apache/commons/math3/linear/SchurTransformer$1;)V

    .line 141
    .local v8, "shift":Lorg/apache/commons/math3/linear/SchurTransformer$ShiftInfo;
    const/4 v11, 0x0

    .line 142
    .local v11, "iteration":I
    add-int/lit8 v7, v13, -0x1

    .line 143
    .local v7, "iu":I
    :goto_0
    if-ltz v7, :cond_7

    .line 146
    move-object/from16 v0, p0

    invoke-direct {v0, v7, v14, v15}, Lorg/apache/commons/math3/linear/SchurTransformer;->findSmallSubDiagonalElement(ID)I

    move-result v5

    .line 149
    .local v5, "il":I
    if-ne v5, v7, :cond_0

    .line 151
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/commons/math3/linear/SchurTransformer;->matrixT:[[D

    aget-object v4, v4, v7

    aget-wide v28, v4, v7

    iget-wide v0, v8, Lorg/apache/commons/math3/linear/SchurTransformer$ShiftInfo;->exShift:D

    move-wide/from16 v30, v0

    add-double v28, v28, v30

    aput-wide v28, v4, v7

    .line 152
    add-int/lit8 v7, v7, -0x1

    .line 153
    const/4 v11, 0x0

    goto :goto_0

    .line 154
    :cond_0
    add-int/lit8 v4, v7, -0x1

    if-ne v5, v4, :cond_5

    .line 156
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/commons/math3/linear/SchurTransformer;->matrixT:[[D

    add-int/lit8 v28, v7, -0x1

    aget-object v4, v4, v28

    add-int/lit8 v28, v7, -0x1

    aget-wide v28, v4, v28

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/commons/math3/linear/SchurTransformer;->matrixT:[[D

    aget-object v4, v4, v7

    aget-wide v30, v4, v7

    sub-double v28, v28, v30

    const-wide/high16 v30, 0x4000000000000000L    # 2.0

    div-double v16, v28, v30

    .line 157
    .local v16, "p":D
    mul-double v28, v16, v16

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/commons/math3/linear/SchurTransformer;->matrixT:[[D

    aget-object v4, v4, v7

    add-int/lit8 v30, v7, -0x1

    aget-wide v30, v4, v30

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/commons/math3/linear/SchurTransformer;->matrixT:[[D

    add-int/lit8 v32, v7, -0x1

    aget-object v4, v4, v32

    aget-wide v32, v4, v7

    mul-double v30, v30, v32

    add-double v18, v28, v30

    .line 158
    .local v18, "q":D
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/commons/math3/linear/SchurTransformer;->matrixT:[[D

    aget-object v4, v4, v7

    aget-wide v28, v4, v7

    iget-wide v0, v8, Lorg/apache/commons/math3/linear/SchurTransformer$ShiftInfo;->exShift:D

    move-wide/from16 v30, v0

    add-double v28, v28, v30

    aput-wide v28, v4, v7

    .line 159
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/commons/math3/linear/SchurTransformer;->matrixT:[[D

    add-int/lit8 v28, v7, -0x1

    aget-object v4, v4, v28

    add-int/lit8 v28, v7, -0x1

    aget-wide v30, v4, v28

    iget-wide v0, v8, Lorg/apache/commons/math3/linear/SchurTransformer$ShiftInfo;->exShift:D

    move-wide/from16 v32, v0

    add-double v30, v30, v32

    aput-wide v30, v4, v28

    .line 161
    const-wide/16 v28, 0x0

    cmpl-double v4, v18, v28

    if-ltz v4, :cond_4

    .line 162
    invoke-static/range {v18 .. v19}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v28

    invoke-static/range {v28 .. v29}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v26

    .line 163
    .local v26, "z":D
    const-wide/16 v28, 0x0

    cmpl-double v4, v16, v28

    if-ltz v4, :cond_1

    .line 164
    add-double v26, v26, v16

    .line 168
    :goto_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/commons/math3/linear/SchurTransformer;->matrixT:[[D

    aget-object v4, v4, v7

    add-int/lit8 v28, v7, -0x1

    aget-wide v24, v4, v28

    .line 169
    .local v24, "x":D
    invoke-static/range {v24 .. v25}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v28

    invoke-static/range {v26 .. v27}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v30

    add-double v22, v28, v30

    .line 170
    .local v22, "s":D
    div-double v16, v24, v22

    .line 171
    div-double v18, v26, v22

    .line 172
    mul-double v28, v16, v16

    mul-double v30, v18, v18

    add-double v28, v28, v30

    invoke-static/range {v28 .. v29}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v20

    .line 173
    .local v20, "r":D
    div-double v16, v16, v20

    .line 174
    div-double v18, v18, v20

    .line 177
    add-int/lit8 v12, v7, -0x1

    .local v12, "j":I
    :goto_2
    if-ge v12, v13, :cond_2

    .line 178
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/commons/math3/linear/SchurTransformer;->matrixT:[[D

    add-int/lit8 v28, v7, -0x1

    aget-object v4, v4, v28

    aget-wide v26, v4, v12

    .line 179
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/commons/math3/linear/SchurTransformer;->matrixT:[[D

    add-int/lit8 v28, v7, -0x1

    aget-object v4, v4, v28

    mul-double v28, v18, v26

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/linear/SchurTransformer;->matrixT:[[D

    move-object/from16 v30, v0

    aget-object v30, v30, v7

    aget-wide v30, v30, v12

    mul-double v30, v30, v16

    add-double v28, v28, v30

    aput-wide v28, v4, v12

    .line 180
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/commons/math3/linear/SchurTransformer;->matrixT:[[D

    aget-object v4, v4, v7

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/linear/SchurTransformer;->matrixT:[[D

    move-object/from16 v28, v0

    aget-object v28, v28, v7

    aget-wide v28, v28, v12

    mul-double v28, v28, v18

    mul-double v30, v16, v26

    sub-double v28, v28, v30

    aput-wide v28, v4, v12

    .line 177
    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    .line 166
    .end local v12    # "j":I
    .end local v20    # "r":D
    .end local v22    # "s":D
    .end local v24    # "x":D
    :cond_1
    sub-double v26, v16, v26

    goto :goto_1

    .line 184
    .restart local v12    # "j":I
    .restart local v20    # "r":D
    .restart local v22    # "s":D
    .restart local v24    # "x":D
    :cond_2
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_3
    if-gt v10, v7, :cond_3

    .line 185
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/commons/math3/linear/SchurTransformer;->matrixT:[[D

    aget-object v4, v4, v10

    add-int/lit8 v28, v7, -0x1

    aget-wide v26, v4, v28

    .line 186
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/commons/math3/linear/SchurTransformer;->matrixT:[[D

    aget-object v4, v4, v10

    add-int/lit8 v28, v7, -0x1

    mul-double v30, v18, v26

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/linear/SchurTransformer;->matrixT:[[D

    move-object/from16 v29, v0

    aget-object v29, v29, v10

    aget-wide v32, v29, v7

    mul-double v32, v32, v16

    add-double v30, v30, v32

    aput-wide v30, v4, v28

    .line 187
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/commons/math3/linear/SchurTransformer;->matrixT:[[D

    aget-object v4, v4, v10

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/linear/SchurTransformer;->matrixT:[[D

    move-object/from16 v28, v0

    aget-object v28, v28, v10

    aget-wide v28, v28, v7

    mul-double v28, v28, v18

    mul-double v30, v16, v26

    sub-double v28, v28, v30

    aput-wide v28, v4, v7

    .line 184
    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    .line 191
    :cond_3
    const/4 v10, 0x0

    :goto_4
    add-int/lit8 v4, v13, -0x1

    if-gt v10, v4, :cond_4

    .line 192
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/commons/math3/linear/SchurTransformer;->matrixP:[[D

    aget-object v4, v4, v10

    add-int/lit8 v28, v7, -0x1

    aget-wide v26, v4, v28

    .line 193
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/commons/math3/linear/SchurTransformer;->matrixP:[[D

    aget-object v4, v4, v10

    add-int/lit8 v28, v7, -0x1

    mul-double v30, v18, v26

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/linear/SchurTransformer;->matrixP:[[D

    move-object/from16 v29, v0

    aget-object v29, v29, v10

    aget-wide v32, v29, v7

    mul-double v32, v32, v16

    add-double v30, v30, v32

    aput-wide v30, v4, v28

    .line 194
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/commons/math3/linear/SchurTransformer;->matrixP:[[D

    aget-object v4, v4, v10

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/linear/SchurTransformer;->matrixP:[[D

    move-object/from16 v28, v0

    aget-object v28, v28, v10

    aget-wide v28, v28, v7

    mul-double v28, v28, v18

    mul-double v30, v16, v26

    sub-double v28, v28, v30

    aput-wide v28, v4, v7

    .line 191
    add-int/lit8 v10, v10, 0x1

    goto :goto_4

    .line 197
    .end local v10    # "i":I
    .end local v12    # "j":I
    .end local v20    # "r":D
    .end local v22    # "s":D
    .end local v24    # "x":D
    .end local v26    # "z":D
    :cond_4
    add-int/lit8 v7, v7, -0x2

    .line 198
    const/4 v11, 0x0

    .line 199
    goto/16 :goto_0

    .line 201
    .end local v16    # "p":D
    .end local v18    # "q":D
    :cond_5
    move-object/from16 v0, p0

    invoke-direct {v0, v5, v7, v11, v8}, Lorg/apache/commons/math3/linear/SchurTransformer;->computeShift(IIILorg/apache/commons/math3/linear/SchurTransformer$ShiftInfo;)V

    .line 204
    add-int/lit8 v11, v11, 0x1

    const/16 v4, 0x64

    if-le v11, v4, :cond_6

    .line 205
    new-instance v4, Lorg/apache/commons/math3/exception/MaxCountExceededException;

    sget-object v28, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->CONVERGENCE_FAILED:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    const/16 v29, 0x64

    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v29

    const/16 v30, 0x0

    move/from16 v0, v30

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v30, v0

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    invoke-direct {v4, v0, v1, v2}, Lorg/apache/commons/math3/exception/MaxCountExceededException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;Ljava/lang/Number;[Ljava/lang/Object;)V

    throw v4

    .line 210
    :cond_6
    const/4 v4, 0x3

    new-array v9, v4, [D

    .line 212
    .local v9, "hVec":[D
    move-object/from16 v0, p0

    invoke-direct {v0, v5, v7, v8, v9}, Lorg/apache/commons/math3/linear/SchurTransformer;->initQRStep(IILorg/apache/commons/math3/linear/SchurTransformer$ShiftInfo;[D)I

    move-result v6

    .local v6, "im":I
    move-object/from16 v4, p0

    .line 213
    invoke-direct/range {v4 .. v9}, Lorg/apache/commons/math3/linear/SchurTransformer;->performDoubleQRStep(IIILorg/apache/commons/math3/linear/SchurTransformer$ShiftInfo;[D)V

    goto/16 :goto_0

    .line 216
    .end local v5    # "il":I
    .end local v6    # "im":I
    .end local v9    # "hVec":[D
    :cond_7
    return-void
.end method


# virtual methods
.method public getP()Lorg/apache/commons/math3/linear/RealMatrix;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lorg/apache/commons/math3/linear/SchurTransformer;->cachedP:Lorg/apache/commons/math3/linear/RealMatrix;

    if-nez v0, :cond_0

    .line 93
    iget-object v0, p0, Lorg/apache/commons/math3/linear/SchurTransformer;->matrixP:[[D

    invoke-static {v0}, Lorg/apache/commons/math3/linear/MatrixUtils;->createRealMatrix([[D)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/math3/linear/SchurTransformer;->cachedP:Lorg/apache/commons/math3/linear/RealMatrix;

    .line 95
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/math3/linear/SchurTransformer;->cachedP:Lorg/apache/commons/math3/linear/RealMatrix;

    return-object v0
.end method

.method public getPT()Lorg/apache/commons/math3/linear/RealMatrix;
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lorg/apache/commons/math3/linear/SchurTransformer;->cachedPt:Lorg/apache/commons/math3/linear/RealMatrix;

    if-nez v0, :cond_0

    .line 106
    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/SchurTransformer;->getP()Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/commons/math3/linear/RealMatrix;->transpose()Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/math3/linear/SchurTransformer;->cachedPt:Lorg/apache/commons/math3/linear/RealMatrix;

    .line 110
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/math3/linear/SchurTransformer;->cachedPt:Lorg/apache/commons/math3/linear/RealMatrix;

    return-object v0
.end method

.method public getT()Lorg/apache/commons/math3/linear/RealMatrix;
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lorg/apache/commons/math3/linear/SchurTransformer;->cachedT:Lorg/apache/commons/math3/linear/RealMatrix;

    if-nez v0, :cond_0

    .line 120
    iget-object v0, p0, Lorg/apache/commons/math3/linear/SchurTransformer;->matrixT:[[D

    invoke-static {v0}, Lorg/apache/commons/math3/linear/MatrixUtils;->createRealMatrix([[D)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/math3/linear/SchurTransformer;->cachedT:Lorg/apache/commons/math3/linear/RealMatrix;

    .line 124
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/math3/linear/SchurTransformer;->cachedT:Lorg/apache/commons/math3/linear/RealMatrix;

    return-object v0
.end method
