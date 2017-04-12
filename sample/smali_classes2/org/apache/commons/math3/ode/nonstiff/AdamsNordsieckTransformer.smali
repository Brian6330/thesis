.class public Lorg/apache/commons/math3/ode/nonstiff/AdamsNordsieckTransformer;
.super Ljava/lang/Object;
.source "AdamsNordsieckTransformer.java"


# static fields
.field private static final CACHE:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lorg/apache/commons/math3/ode/nonstiff/AdamsNordsieckTransformer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final c1:[D

.field private final update:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 137
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/apache/commons/math3/ode/nonstiff/AdamsNordsieckTransformer;->CACHE:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>(I)V
    .locals 10
    .param p1, "nSteps"    # I

    .prologue
    const/4 v9, 0x0

    .line 150
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 153
    invoke-direct {p0, p1}, Lorg/apache/commons/math3/ode/nonstiff/AdamsNordsieckTransformer;->buildP(I)Lorg/apache/commons/math3/linear/FieldMatrix;

    move-result-object v2

    .line 154
    .local v2, "bigP":Lorg/apache/commons/math3/linear/FieldMatrix;, "Lorg/apache/commons/math3/linear/FieldMatrix<Lorg/apache/commons/math3/fraction/BigFraction;>;"
    new-instance v7, Lorg/apache/commons/math3/linear/FieldLUDecomposition;

    invoke-direct {v7, v2}, Lorg/apache/commons/math3/linear/FieldLUDecomposition;-><init>(Lorg/apache/commons/math3/linear/FieldMatrix;)V

    invoke-virtual {v7}, Lorg/apache/commons/math3/linear/FieldLUDecomposition;->getSolver()Lorg/apache/commons/math3/linear/FieldDecompositionSolver;

    move-result-object v4

    .line 157
    .local v4, "pSolver":Lorg/apache/commons/math3/linear/FieldDecompositionSolver;, "Lorg/apache/commons/math3/linear/FieldDecompositionSolver<Lorg/apache/commons/math3/fraction/BigFraction;>;"
    new-array v6, p1, [Lorg/apache/commons/math3/fraction/BigFraction;

    .line 158
    .local v6, "u":[Lorg/apache/commons/math3/fraction/BigFraction;
    sget-object v7, Lorg/apache/commons/math3/fraction/BigFraction;->ONE:Lorg/apache/commons/math3/fraction/BigFraction;

    invoke-static {v6, v7}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    .line 159
    new-instance v7, Lorg/apache/commons/math3/linear/ArrayFieldVector;

    invoke-direct {v7, v6, v9}, Lorg/apache/commons/math3/linear/ArrayFieldVector;-><init>([Lorg/apache/commons/math3/FieldElement;Z)V

    invoke-interface {v4, v7}, Lorg/apache/commons/math3/linear/FieldDecompositionSolver;->solve(Lorg/apache/commons/math3/linear/FieldVector;)Lorg/apache/commons/math3/linear/FieldVector;

    move-result-object v7

    invoke-interface {v7}, Lorg/apache/commons/math3/linear/FieldVector;->toArray()[Lorg/apache/commons/math3/FieldElement;

    move-result-object v0

    check-cast v0, [Lorg/apache/commons/math3/fraction/BigFraction;

    .line 165
    .local v0, "bigC1":[Lorg/apache/commons/math3/fraction/BigFraction;
    invoke-interface {v2}, Lorg/apache/commons/math3/linear/FieldMatrix;->getData()[[Lorg/apache/commons/math3/FieldElement;

    move-result-object v5

    check-cast v5, [[Lorg/apache/commons/math3/fraction/BigFraction;

    .line 166
    .local v5, "shiftedP":[[Lorg/apache/commons/math3/fraction/BigFraction;
    array-length v7, v5

    add-int/lit8 v3, v7, -0x1

    .local v3, "i":I
    :goto_0
    if-lez v3, :cond_0

    .line 168
    add-int/lit8 v7, v3, -0x1

    aget-object v7, v5, v7

    aput-object v7, v5, v3

    .line 166
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 170
    :cond_0
    new-array v7, p1, [Lorg/apache/commons/math3/fraction/BigFraction;

    aput-object v7, v5, v9

    .line 171
    aget-object v7, v5, v9

    sget-object v8, Lorg/apache/commons/math3/fraction/BigFraction;->ZERO:Lorg/apache/commons/math3/fraction/BigFraction;

    invoke-static {v7, v8}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    .line 172
    new-instance v7, Lorg/apache/commons/math3/linear/Array2DRowFieldMatrix;

    invoke-direct {v7, v5, v9}, Lorg/apache/commons/math3/linear/Array2DRowFieldMatrix;-><init>([[Lorg/apache/commons/math3/FieldElement;Z)V

    invoke-interface {v4, v7}, Lorg/apache/commons/math3/linear/FieldDecompositionSolver;->solve(Lorg/apache/commons/math3/linear/FieldMatrix;)Lorg/apache/commons/math3/linear/FieldMatrix;

    move-result-object v1

    .line 176
    .local v1, "bigMSupdate":Lorg/apache/commons/math3/linear/FieldMatrix;, "Lorg/apache/commons/math3/linear/FieldMatrix<Lorg/apache/commons/math3/fraction/BigFraction;>;"
    invoke-static {v1}, Lorg/apache/commons/math3/linear/MatrixUtils;->bigFractionMatrixToRealMatrix(Lorg/apache/commons/math3/linear/FieldMatrix;)Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    move-result-object v7

    iput-object v7, p0, Lorg/apache/commons/math3/ode/nonstiff/AdamsNordsieckTransformer;->update:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    .line 177
    new-array v7, p1, [D

    iput-object v7, p0, Lorg/apache/commons/math3/ode/nonstiff/AdamsNordsieckTransformer;->c1:[D

    .line 178
    const/4 v3, 0x0

    :goto_1
    if-ge v3, p1, :cond_1

    .line 179
    iget-object v7, p0, Lorg/apache/commons/math3/ode/nonstiff/AdamsNordsieckTransformer;->c1:[D

    aget-object v8, v0, v3

    invoke-virtual {v8}, Lorg/apache/commons/math3/fraction/BigFraction;->doubleValue()D

    move-result-wide v8

    aput-wide v8, v7, v3

    .line 178
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 182
    :cond_1
    return-void
.end method

.method private buildP(I)Lorg/apache/commons/math3/linear/FieldMatrix;
    .locals 8
    .param p1, "nSteps"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lorg/apache/commons/math3/linear/FieldMatrix",
            "<",
            "Lorg/apache/commons/math3/fraction/BigFraction;",
            ">;"
        }
    .end annotation

    .prologue
    .line 224
    filled-new-array {p1, p1}, [I

    move-result-object v6

    const-class v7, Lorg/apache/commons/math3/fraction/BigFraction;

    invoke-static {v7, v6}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [[Lorg/apache/commons/math3/fraction/BigFraction;

    .line 226
    .local v4, "pData":[[Lorg/apache/commons/math3/fraction/BigFraction;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v6, v4

    if-ge v2, v6, :cond_1

    .line 228
    aget-object v5, v4, v2

    .line 229
    .local v5, "pI":[Lorg/apache/commons/math3/fraction/BigFraction;
    add-int/lit8 v6, v2, 0x1

    neg-int v1, v6

    .line 230
    .local v1, "factor":I
    move v0, v1

    .line 231
    .local v0, "aj":I
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_1
    array-length v6, v5

    if-ge v3, v6, :cond_0

    .line 232
    new-instance v6, Lorg/apache/commons/math3/fraction/BigFraction;

    add-int/lit8 v7, v3, 0x2

    mul-int/2addr v7, v0

    invoke-direct {v6, v7}, Lorg/apache/commons/math3/fraction/BigFraction;-><init>(I)V

    aput-object v6, v5, v3

    .line 233
    mul-int/2addr v0, v1

    .line 231
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 226
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 237
    .end local v0    # "aj":I
    .end local v1    # "factor":I
    .end local v3    # "j":I
    .end local v5    # "pI":[Lorg/apache/commons/math3/fraction/BigFraction;
    :cond_1
    new-instance v6, Lorg/apache/commons/math3/linear/Array2DRowFieldMatrix;

    const/4 v7, 0x0

    invoke-direct {v6, v4, v7}, Lorg/apache/commons/math3/linear/Array2DRowFieldMatrix;-><init>([[Lorg/apache/commons/math3/FieldElement;Z)V

    return-object v6
.end method

.method public static getInstance(I)Lorg/apache/commons/math3/ode/nonstiff/AdamsNordsieckTransformer;
    .locals 4
    .param p0, "nSteps"    # I

    .prologue
    .line 190
    sget-object v2, Lorg/apache/commons/math3/ode/nonstiff/AdamsNordsieckTransformer;->CACHE:Ljava/util/Map;

    monitor-enter v2

    .line 191
    :try_start_0
    sget-object v1, Lorg/apache/commons/math3/ode/nonstiff/AdamsNordsieckTransformer;->CACHE:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/ode/nonstiff/AdamsNordsieckTransformer;

    .line 192
    .local v0, "t":Lorg/apache/commons/math3/ode/nonstiff/AdamsNordsieckTransformer;
    if-nez v0, :cond_0

    .line 193
    new-instance v0, Lorg/apache/commons/math3/ode/nonstiff/AdamsNordsieckTransformer;

    .end local v0    # "t":Lorg/apache/commons/math3/ode/nonstiff/AdamsNordsieckTransformer;
    invoke-direct {v0, p0}, Lorg/apache/commons/math3/ode/nonstiff/AdamsNordsieckTransformer;-><init>(I)V

    .line 194
    .restart local v0    # "t":Lorg/apache/commons/math3/ode/nonstiff/AdamsNordsieckTransformer;
    sget-object v1, Lorg/apache/commons/math3/ode/nonstiff/AdamsNordsieckTransformer;->CACHE:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 196
    :cond_0
    monitor-exit v2

    return-object v0

    .line 197
    .end local v0    # "t":Lorg/apache/commons/math3/ode/nonstiff/AdamsNordsieckTransformer;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method public getNSteps()I
    .locals 1

    .prologue
    .line 206
    iget-object v0, p0, Lorg/apache/commons/math3/ode/nonstiff/AdamsNordsieckTransformer;->c1:[D

    array-length v0, v0

    return v0
.end method

.method public initializeHighOrderDerivatives(D[D[[D[[D)Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;
    .locals 27
    .param p1, "h"    # D
    .param p3, "t"    # [D
    .param p4, "y"    # [[D
    .param p5, "yDot"    # [[D

    .prologue
    .line 258
    move-object/from16 v0, p4

    array-length v0, v0

    move/from16 v22, v0

    add-int/lit8 v22, v22, -0x1

    mul-int/lit8 v22, v22, 0x2

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/ode/nonstiff/AdamsNordsieckTransformer;->c1:[D

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    array-length v0, v0

    move/from16 v23, v0

    filled-new-array/range {v22 .. v23}, [I

    move-result-object v22

    sget-object v23, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v23

    move-object/from16 v1, v22

    invoke-static {v0, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [[D

    .line 259
    .local v2, "a":[[D
    move-object/from16 v0, p4

    array-length v0, v0

    move/from16 v22, v0

    add-int/lit8 v22, v22, -0x1

    mul-int/lit8 v22, v22, 0x2

    const/16 v23, 0x0

    aget-object v23, p4, v23

    move-object/from16 v0, v23

    array-length v0, v0

    move/from16 v23, v0

    filled-new-array/range {v22 .. v23}, [I

    move-result-object v22

    sget-object v23, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v23

    move-object/from16 v1, v22

    invoke-static {v0, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [[D

    .line 260
    .local v5, "b":[[D
    const/16 v22, 0x0

    aget-object v18, p4, v22

    .line 261
    .local v18, "y0":[D
    const/16 v22, 0x0

    aget-object v19, p5, v22

    .line 262
    .local v19, "yDot0":[D
    const/4 v9, 0x1

    .local v9, "i":I
    :goto_0
    move-object/from16 v0, p4

    array-length v0, v0

    move/from16 v22, v0

    move/from16 v0, v22

    if-ge v9, v0, :cond_2

    .line 264
    aget-wide v22, p3, v9

    const/16 v24, 0x0

    aget-wide v24, p3, v24

    sub-double v10, v22, v24

    .line 265
    .local v10, "di":D
    div-double v16, v10, p1

    .line 266
    .local v16, "ratio":D
    const-wide/high16 v22, 0x3ff0000000000000L    # 1.0

    div-double v12, v22, p1

    .line 270
    .local v12, "dikM1Ohk":D
    mul-int/lit8 v22, v9, 0x2

    add-int/lit8 v22, v22, -0x2

    aget-object v4, v2, v22

    .line 271
    .local v4, "aI":[D
    mul-int/lit8 v22, v9, 0x2

    add-int/lit8 v22, v22, -0x1

    aget-object v3, v2, v22

    .line 272
    .local v3, "aDotI":[D
    const/4 v14, 0x0

    .local v14, "j":I
    :goto_1
    array-length v0, v4

    move/from16 v22, v0

    move/from16 v0, v22

    if-ge v14, v0, :cond_0

    .line 273
    mul-double v12, v12, v16

    .line 274
    mul-double v22, v10, v12

    aput-wide v22, v4, v14

    .line 275
    add-int/lit8 v22, v14, 0x2

    move/from16 v0, v22

    int-to-double v0, v0

    move-wide/from16 v22, v0

    mul-double v22, v22, v12

    aput-wide v22, v3, v14

    .line 272
    add-int/lit8 v14, v14, 0x1

    goto :goto_1

    .line 279
    :cond_0
    aget-object v21, p4, v9

    .line 280
    .local v21, "yI":[D
    aget-object v20, p5, v9

    .line 281
    .local v20, "yDotI":[D
    mul-int/lit8 v22, v9, 0x2

    add-int/lit8 v22, v22, -0x2

    aget-object v7, v5, v22

    .line 282
    .local v7, "bI":[D
    mul-int/lit8 v22, v9, 0x2

    add-int/lit8 v22, v22, -0x1

    aget-object v6, v5, v22

    .line 283
    .local v6, "bDotI":[D
    const/4 v14, 0x0

    :goto_2
    move-object/from16 v0, v21

    array-length v0, v0

    move/from16 v22, v0

    move/from16 v0, v22

    if-ge v14, v0, :cond_1

    .line 284
    aget-wide v22, v21, v14

    aget-wide v24, v18, v14

    sub-double v22, v22, v24

    aget-wide v24, v19, v14

    mul-double v24, v24, v10

    sub-double v22, v22, v24

    aput-wide v22, v7, v14

    .line 285
    aget-wide v22, v20, v14

    aget-wide v24, v19, v14

    sub-double v22, v22, v24

    aput-wide v22, v6, v14

    .line 283
    add-int/lit8 v14, v14, 0x1

    goto :goto_2

    .line 262
    :cond_1
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 293
    .end local v3    # "aDotI":[D
    .end local v4    # "aI":[D
    .end local v6    # "bDotI":[D
    .end local v7    # "bI":[D
    .end local v10    # "di":D
    .end local v12    # "dikM1Ohk":D
    .end local v14    # "j":I
    .end local v16    # "ratio":D
    .end local v20    # "yDotI":[D
    .end local v21    # "yI":[D
    :cond_2
    new-instance v8, Lorg/apache/commons/math3/linear/QRDecomposition;

    new-instance v22, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    const/16 v23, 0x0

    move-object/from16 v0, v22

    move/from16 v1, v23

    invoke-direct {v0, v2, v1}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;-><init>([[DZ)V

    move-object/from16 v0, v22

    invoke-direct {v8, v0}, Lorg/apache/commons/math3/linear/QRDecomposition;-><init>(Lorg/apache/commons/math3/linear/RealMatrix;)V

    .line 294
    .local v8, "decomposition":Lorg/apache/commons/math3/linear/QRDecomposition;
    invoke-virtual {v8}, Lorg/apache/commons/math3/linear/QRDecomposition;->getSolver()Lorg/apache/commons/math3/linear/DecompositionSolver;

    move-result-object v22

    new-instance v23, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    const/16 v24, 0x0

    move-object/from16 v0, v23

    move/from16 v1, v24

    invoke-direct {v0, v5, v1}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;-><init>([[DZ)V

    invoke-interface/range {v22 .. v23}, Lorg/apache/commons/math3/linear/DecompositionSolver;->solve(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v15

    .line 295
    .local v15, "x":Lorg/apache/commons/math3/linear/RealMatrix;
    new-instance v22, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    invoke-interface {v15}, Lorg/apache/commons/math3/linear/RealMatrix;->getData()[[D

    move-result-object v23

    const/16 v24, 0x0

    invoke-direct/range {v22 .. v24}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;-><init>([[DZ)V

    return-object v22
.end method

.method public updateHighOrderDerivativesPhase1(Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;)Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;
    .locals 1
    .param p1, "highOrder"    # Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    .prologue
    .line 310
    iget-object v0, p0, Lorg/apache/commons/math3/ode/nonstiff/AdamsNordsieckTransformer;->update:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    invoke-virtual {v0, p1}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->multiply(Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;)Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    move-result-object v0

    return-object v0
.end method

.method public updateHighOrderDerivativesPhase2([D[DLorg/apache/commons/math3/linear/Array2DRowRealMatrix;)V
    .locals 12
    .param p1, "start"    # [D
    .param p2, "end"    # [D
    .param p3, "highOrder"    # Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    .prologue
    .line 329
    invoke-virtual {p3}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getDataRef()[[D

    move-result-object v2

    .line 330
    .local v2, "data":[[D
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    array-length v6, v2

    if-ge v4, v6, :cond_1

    .line 331
    aget-object v3, v2, v4

    .line 332
    .local v3, "dataI":[D
    iget-object v6, p0, Lorg/apache/commons/math3/ode/nonstiff/AdamsNordsieckTransformer;->c1:[D

    aget-wide v0, v6, v4

    .line 333
    .local v0, "c1I":D
    const/4 v5, 0x0

    .local v5, "j":I
    :goto_1
    array-length v6, v3

    if-ge v5, v6, :cond_0

    .line 334
    aget-wide v6, v3, v5

    aget-wide v8, p1, v5

    aget-wide v10, p2, v5

    sub-double/2addr v8, v10

    mul-double/2addr v8, v0

    add-double/2addr v6, v8

    aput-wide v6, v3, v5

    .line 333
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 330
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 337
    .end local v0    # "c1I":D
    .end local v3    # "dataI":[D
    .end local v5    # "j":I
    :cond_1
    return-void
.end method
