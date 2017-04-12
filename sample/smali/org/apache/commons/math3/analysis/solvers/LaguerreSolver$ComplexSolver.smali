.class Lorg/apache/commons/math3/analysis/solvers/LaguerreSolver$ComplexSolver;
.super Ljava/lang/Object;
.source "LaguerreSolver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/math3/analysis/solvers/LaguerreSolver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ComplexSolver"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/commons/math3/analysis/solvers/LaguerreSolver;


# direct methods
.method private constructor <init>(Lorg/apache/commons/math3/analysis/solvers/LaguerreSolver;)V
    .locals 0

    .prologue
    .line 289
    iput-object p1, p0, Lorg/apache/commons/math3/analysis/solvers/LaguerreSolver$ComplexSolver;->this$0:Lorg/apache/commons/math3/analysis/solvers/LaguerreSolver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/apache/commons/math3/analysis/solvers/LaguerreSolver;Lorg/apache/commons/math3/analysis/solvers/LaguerreSolver$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/apache/commons/math3/analysis/solvers/LaguerreSolver;
    .param p2, "x1"    # Lorg/apache/commons/math3/analysis/solvers/LaguerreSolver$1;

    .prologue
    .line 289
    invoke-direct {p0, p1}, Lorg/apache/commons/math3/analysis/solvers/LaguerreSolver$ComplexSolver;-><init>(Lorg/apache/commons/math3/analysis/solvers/LaguerreSolver;)V

    return-void
.end method


# virtual methods
.method public isRoot(DDLorg/apache/commons/math3/complex/Complex;)Z
    .locals 11
    .param p1, "min"    # D
    .param p3, "max"    # D
    .param p5, "z"    # Lorg/apache/commons/math3/complex/Complex;

    .prologue
    const/4 v0, 0x0

    .line 300
    iget-object v1, p0, Lorg/apache/commons/math3/analysis/solvers/LaguerreSolver$ComplexSolver;->this$0:Lorg/apache/commons/math3/analysis/solvers/LaguerreSolver;

    invoke-virtual/range {p5 .. p5}, Lorg/apache/commons/math3/complex/Complex;->getReal()D

    move-result-wide v4

    move-wide v2, p1

    move-wide v6, p3

    invoke-virtual/range {v1 .. v7}, Lorg/apache/commons/math3/analysis/solvers/LaguerreSolver;->isSequence(DDD)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 301
    iget-object v1, p0, Lorg/apache/commons/math3/analysis/solvers/LaguerreSolver$ComplexSolver;->this$0:Lorg/apache/commons/math3/analysis/solvers/LaguerreSolver;

    invoke-virtual {v1}, Lorg/apache/commons/math3/analysis/solvers/LaguerreSolver;->getRelativeAccuracy()D

    move-result-wide v2

    invoke-virtual/range {p5 .. p5}, Lorg/apache/commons/math3/complex/Complex;->abs()D

    move-result-wide v4

    mul-double/2addr v2, v4

    iget-object v1, p0, Lorg/apache/commons/math3/analysis/solvers/LaguerreSolver$ComplexSolver;->this$0:Lorg/apache/commons/math3/analysis/solvers/LaguerreSolver;

    invoke-virtual {v1}, Lorg/apache/commons/math3/analysis/solvers/LaguerreSolver;->getAbsoluteAccuracy()D

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Lorg/apache/commons/math3/util/FastMath;->max(DD)D

    move-result-wide v8

    .line 302
    .local v8, "tolerance":D
    invoke-virtual/range {p5 .. p5}, Lorg/apache/commons/math3/complex/Complex;->getImaginary()D

    move-result-wide v2

    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v2

    cmpg-double v1, v2, v8

    if-lez v1, :cond_0

    invoke-virtual/range {p5 .. p5}, Lorg/apache/commons/math3/complex/Complex;->abs()D

    move-result-wide v2

    iget-object v1, p0, Lorg/apache/commons/math3/analysis/solvers/LaguerreSolver$ComplexSolver;->this$0:Lorg/apache/commons/math3/analysis/solvers/LaguerreSolver;

    invoke-virtual {v1}, Lorg/apache/commons/math3/analysis/solvers/LaguerreSolver;->getFunctionValueAccuracy()D

    move-result-wide v4

    cmpg-double v1, v2, v4

    if-gtz v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 305
    .end local v8    # "tolerance":D
    :cond_1
    return v0
.end method

.method public solve([Lorg/apache/commons/math3/complex/Complex;Lorg/apache/commons/math3/complex/Complex;)Lorg/apache/commons/math3/complex/Complex;
    .locals 36
    .param p1, "coefficients"    # [Lorg/apache/commons/math3/complex/Complex;
    .param p2, "initial"    # Lorg/apache/commons/math3/complex/Complex;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;,
            Lorg/apache/commons/math3/exception/NoDataException;,
            Lorg/apache/commons/math3/exception/TooManyEvaluationsException;
        }
    .end annotation

    .prologue
    .line 374
    if-nez p1, :cond_0

    .line 375
    new-instance v31, Lorg/apache/commons/math3/exception/NullArgumentException;

    invoke-direct/range {v31 .. v31}, Lorg/apache/commons/math3/exception/NullArgumentException;-><init>()V

    throw v31

    .line 378
    :cond_0
    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v31, v0

    add-int/lit8 v21, v31, -0x1

    .line 379
    .local v21, "n":I
    if-nez v21, :cond_1

    .line 380
    new-instance v31, Lorg/apache/commons/math3/exception/NoDataException;

    sget-object v32, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->POLYNOMIAL:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-direct/range {v31 .. v32}, Lorg/apache/commons/math3/exception/NoDataException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;)V

    throw v31

    .line 383
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/analysis/solvers/LaguerreSolver$ComplexSolver;->this$0:Lorg/apache/commons/math3/analysis/solvers/LaguerreSolver;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Lorg/apache/commons/math3/analysis/solvers/LaguerreSolver;->getAbsoluteAccuracy()D

    move-result-wide v10

    .line 384
    .local v10, "absoluteAccuracy":D
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/analysis/solvers/LaguerreSolver$ComplexSolver;->this$0:Lorg/apache/commons/math3/analysis/solvers/LaguerreSolver;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Lorg/apache/commons/math3/analysis/solvers/LaguerreSolver;->getRelativeAccuracy()D

    move-result-wide v26

    .line 385
    .local v26, "relativeAccuracy":D
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/analysis/solvers/LaguerreSolver$ComplexSolver;->this$0:Lorg/apache/commons/math3/analysis/solvers/LaguerreSolver;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Lorg/apache/commons/math3/analysis/solvers/LaguerreSolver;->getFunctionValueAccuracy()D

    move-result-wide v18

    .line 387
    .local v18, "functionValueAccuracy":D
    new-instance v23, Lorg/apache/commons/math3/complex/Complex;

    move/from16 v0, v21

    int-to-double v0, v0

    move-wide/from16 v32, v0

    const-wide/16 v34, 0x0

    move-object/from16 v0, v23

    move-wide/from16 v1, v32

    move-wide/from16 v3, v34

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/apache/commons/math3/complex/Complex;-><init>(DD)V

    .line 388
    .local v23, "nC":Lorg/apache/commons/math3/complex/Complex;
    new-instance v22, Lorg/apache/commons/math3/complex/Complex;

    add-int/lit8 v31, v21, -0x1

    move/from16 v0, v31

    int-to-double v0, v0

    move-wide/from16 v32, v0

    const-wide/16 v34, 0x0

    move-object/from16 v0, v22

    move-wide/from16 v1, v32

    move-wide/from16 v3, v34

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/apache/commons/math3/complex/Complex;-><init>(DD)V

    .line 390
    .local v22, "n1C":Lorg/apache/commons/math3/complex/Complex;
    move-object/from16 v30, p2

    .line 391
    .local v30, "z":Lorg/apache/commons/math3/complex/Complex;
    new-instance v24, Lorg/apache/commons/math3/complex/Complex;

    const-wide/high16 v32, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    const-wide/high16 v34, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    move-object/from16 v0, v24

    move-wide/from16 v1, v32

    move-wide/from16 v3, v34

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/apache/commons/math3/complex/Complex;-><init>(DD)V

    .line 396
    .local v24, "oldz":Lorg/apache/commons/math3/complex/Complex;
    :goto_0
    aget-object v25, p1, v21

    .line 397
    .local v25, "pv":Lorg/apache/commons/math3/complex/Complex;
    sget-object v17, Lorg/apache/commons/math3/complex/Complex;->ZERO:Lorg/apache/commons/math3/complex/Complex;

    .line 398
    .local v17, "dv":Lorg/apache/commons/math3/complex/Complex;
    sget-object v9, Lorg/apache/commons/math3/complex/Complex;->ZERO:Lorg/apache/commons/math3/complex/Complex;

    .line 399
    .local v9, "d2v":Lorg/apache/commons/math3/complex/Complex;
    add-int/lit8 v20, v21, -0x1

    .local v20, "j":I
    :goto_1
    if-ltz v20, :cond_2

    .line 400
    move-object/from16 v0, v30

    invoke-virtual {v0, v9}, Lorg/apache/commons/math3/complex/Complex;->multiply(Lorg/apache/commons/math3/complex/Complex;)Lorg/apache/commons/math3/complex/Complex;

    move-result-object v31

    move-object/from16 v0, v17

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/complex/Complex;->add(Lorg/apache/commons/math3/complex/Complex;)Lorg/apache/commons/math3/complex/Complex;

    move-result-object v9

    .line 401
    move-object/from16 v0, v30

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/complex/Complex;->multiply(Lorg/apache/commons/math3/complex/Complex;)Lorg/apache/commons/math3/complex/Complex;

    move-result-object v31

    move-object/from16 v0, v25

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/complex/Complex;->add(Lorg/apache/commons/math3/complex/Complex;)Lorg/apache/commons/math3/complex/Complex;

    move-result-object v17

    .line 402
    aget-object v31, p1, v20

    move-object/from16 v0, v30

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/complex/Complex;->multiply(Lorg/apache/commons/math3/complex/Complex;)Lorg/apache/commons/math3/complex/Complex;

    move-result-object v32

    invoke-virtual/range {v31 .. v32}, Lorg/apache/commons/math3/complex/Complex;->add(Lorg/apache/commons/math3/complex/Complex;)Lorg/apache/commons/math3/complex/Complex;

    move-result-object v25

    .line 399
    add-int/lit8 v20, v20, -0x1

    goto :goto_1

    .line 404
    :cond_2
    new-instance v31, Lorg/apache/commons/math3/complex/Complex;

    const-wide/high16 v32, 0x4000000000000000L    # 2.0

    const-wide/16 v34, 0x0

    invoke-direct/range {v31 .. v35}, Lorg/apache/commons/math3/complex/Complex;-><init>(DD)V

    move-object/from16 v0, v31

    invoke-virtual {v9, v0}, Lorg/apache/commons/math3/complex/Complex;->multiply(Lorg/apache/commons/math3/complex/Complex;)Lorg/apache/commons/math3/complex/Complex;

    move-result-object v9

    .line 407
    invoke-virtual/range {v30 .. v30}, Lorg/apache/commons/math3/complex/Complex;->abs()D

    move-result-wide v32

    mul-double v32, v32, v26

    move-wide/from16 v0, v32

    invoke-static {v0, v1, v10, v11}, Lorg/apache/commons/math3/util/FastMath;->max(DD)D

    move-result-wide v28

    .line 409
    .local v28, "tolerance":D
    move-object/from16 v0, v30

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/complex/Complex;->subtract(Lorg/apache/commons/math3/complex/Complex;)Lorg/apache/commons/math3/complex/Complex;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Lorg/apache/commons/math3/complex/Complex;->abs()D

    move-result-wide v32

    cmpg-double v31, v32, v28

    if-gtz v31, :cond_4

    .line 413
    :cond_3
    return-object v30

    .line 412
    :cond_4
    invoke-virtual/range {v25 .. v25}, Lorg/apache/commons/math3/complex/Complex;->abs()D

    move-result-wide v32

    cmpg-double v31, v32, v18

    if-lez v31, :cond_3

    .line 417
    move-object/from16 v0, v17

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/complex/Complex;->divide(Lorg/apache/commons/math3/complex/Complex;)Lorg/apache/commons/math3/complex/Complex;

    move-result-object v6

    .line 418
    .local v6, "G":Lorg/apache/commons/math3/complex/Complex;
    invoke-virtual {v6, v6}, Lorg/apache/commons/math3/complex/Complex;->multiply(Lorg/apache/commons/math3/complex/Complex;)Lorg/apache/commons/math3/complex/Complex;

    move-result-object v7

    .line 419
    .local v7, "G2":Lorg/apache/commons/math3/complex/Complex;
    move-object/from16 v0, v25

    invoke-virtual {v9, v0}, Lorg/apache/commons/math3/complex/Complex;->divide(Lorg/apache/commons/math3/complex/Complex;)Lorg/apache/commons/math3/complex/Complex;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-virtual {v7, v0}, Lorg/apache/commons/math3/complex/Complex;->subtract(Lorg/apache/commons/math3/complex/Complex;)Lorg/apache/commons/math3/complex/Complex;

    move-result-object v8

    .line 420
    .local v8, "H":Lorg/apache/commons/math3/complex/Complex;
    move-object/from16 v0, v23

    invoke-virtual {v0, v8}, Lorg/apache/commons/math3/complex/Complex;->multiply(Lorg/apache/commons/math3/complex/Complex;)Lorg/apache/commons/math3/complex/Complex;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-virtual {v0, v7}, Lorg/apache/commons/math3/complex/Complex;->subtract(Lorg/apache/commons/math3/complex/Complex;)Lorg/apache/commons/math3/complex/Complex;

    move-result-object v31

    move-object/from16 v0, v22

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/complex/Complex;->multiply(Lorg/apache/commons/math3/complex/Complex;)Lorg/apache/commons/math3/complex/Complex;

    move-result-object v12

    .line 422
    .local v12, "delta":Lorg/apache/commons/math3/complex/Complex;
    invoke-virtual {v12}, Lorg/apache/commons/math3/complex/Complex;->sqrt()Lorg/apache/commons/math3/complex/Complex;

    move-result-object v13

    .line 423
    .local v13, "deltaSqrt":Lorg/apache/commons/math3/complex/Complex;
    invoke-virtual {v6, v13}, Lorg/apache/commons/math3/complex/Complex;->add(Lorg/apache/commons/math3/complex/Complex;)Lorg/apache/commons/math3/complex/Complex;

    move-result-object v16

    .line 424
    .local v16, "dplus":Lorg/apache/commons/math3/complex/Complex;
    invoke-virtual {v6, v13}, Lorg/apache/commons/math3/complex/Complex;->subtract(Lorg/apache/commons/math3/complex/Complex;)Lorg/apache/commons/math3/complex/Complex;

    move-result-object v15

    .line 425
    .local v15, "dminus":Lorg/apache/commons/math3/complex/Complex;
    invoke-virtual/range {v16 .. v16}, Lorg/apache/commons/math3/complex/Complex;->abs()D

    move-result-wide v32

    invoke-virtual {v15}, Lorg/apache/commons/math3/complex/Complex;->abs()D

    move-result-wide v34

    cmpl-double v31, v32, v34

    if-lez v31, :cond_5

    move-object/from16 v14, v16

    .line 428
    .local v14, "denominator":Lorg/apache/commons/math3/complex/Complex;
    :goto_2
    new-instance v31, Lorg/apache/commons/math3/complex/Complex;

    const-wide/16 v32, 0x0

    const-wide/16 v34, 0x0

    invoke-direct/range {v31 .. v35}, Lorg/apache/commons/math3/complex/Complex;-><init>(DD)V

    move-object/from16 v0, v31

    invoke-virtual {v14, v0}, Lorg/apache/commons/math3/complex/Complex;->equals(Ljava/lang/Object;)Z

    move-result v31

    if-eqz v31, :cond_6

    .line 429
    new-instance v31, Lorg/apache/commons/math3/complex/Complex;

    move-object/from16 v0, v31

    invoke-direct {v0, v10, v11, v10, v11}, Lorg/apache/commons/math3/complex/Complex;-><init>(DD)V

    invoke-virtual/range {v30 .. v31}, Lorg/apache/commons/math3/complex/Complex;->add(Lorg/apache/commons/math3/complex/Complex;)Lorg/apache/commons/math3/complex/Complex;

    move-result-object v30

    .line 430
    new-instance v24, Lorg/apache/commons/math3/complex/Complex;

    .end local v24    # "oldz":Lorg/apache/commons/math3/complex/Complex;
    const-wide/high16 v32, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    const-wide/high16 v34, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    move-object/from16 v0, v24

    move-wide/from16 v1, v32

    move-wide/from16 v3, v34

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/apache/commons/math3/complex/Complex;-><init>(DD)V

    .line 436
    .restart local v24    # "oldz":Lorg/apache/commons/math3/complex/Complex;
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/analysis/solvers/LaguerreSolver$ComplexSolver;->this$0:Lorg/apache/commons/math3/analysis/solvers/LaguerreSolver;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Lorg/apache/commons/math3/analysis/solvers/LaguerreSolver;->incrementEvaluationCount()V

    goto/16 :goto_0

    .end local v14    # "denominator":Lorg/apache/commons/math3/complex/Complex;
    :cond_5
    move-object v14, v15

    .line 425
    goto :goto_2

    .line 433
    .restart local v14    # "denominator":Lorg/apache/commons/math3/complex/Complex;
    :cond_6
    move-object/from16 v24, v30

    .line 434
    move-object/from16 v0, v23

    invoke-virtual {v0, v14}, Lorg/apache/commons/math3/complex/Complex;->divide(Lorg/apache/commons/math3/complex/Complex;)Lorg/apache/commons/math3/complex/Complex;

    move-result-object v31

    invoke-virtual/range {v30 .. v31}, Lorg/apache/commons/math3/complex/Complex;->subtract(Lorg/apache/commons/math3/complex/Complex;)Lorg/apache/commons/math3/complex/Complex;

    move-result-object v30

    goto :goto_3
.end method

.method public solveAll([Lorg/apache/commons/math3/complex/Complex;Lorg/apache/commons/math3/complex/Complex;)[Lorg/apache/commons/math3/complex/Complex;
    .locals 10
    .param p1, "coefficients"    # [Lorg/apache/commons/math3/complex/Complex;
    .param p2, "initial"    # Lorg/apache/commons/math3/complex/Complex;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;,
            Lorg/apache/commons/math3/exception/NoDataException;,
            Lorg/apache/commons/math3/exception/TooManyEvaluationsException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x0

    .line 325
    if-nez p1, :cond_0

    .line 326
    new-instance v8, Lorg/apache/commons/math3/exception/NullArgumentException;

    invoke-direct {v8}, Lorg/apache/commons/math3/exception/NullArgumentException;-><init>()V

    throw v8

    .line 328
    :cond_0
    array-length v8, p1

    add-int/lit8 v3, v8, -0x1

    .line 329
    .local v3, "n":I
    if-nez v3, :cond_1

    .line 330
    new-instance v8, Lorg/apache/commons/math3/exception/NoDataException;

    sget-object v9, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->POLYNOMIAL:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-direct {v8, v9}, Lorg/apache/commons/math3/exception/NoDataException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;)V

    throw v8

    .line 333
    :cond_1
    add-int/lit8 v8, v3, 0x1

    new-array v0, v8, [Lorg/apache/commons/math3/complex/Complex;

    .line 334
    .local v0, "c":[Lorg/apache/commons/math3/complex/Complex;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-gt v1, v3, :cond_2

    .line 335
    aget-object v8, p1, v1

    aput-object v8, v0, v1

    .line 334
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 339
    :cond_2
    new-array v6, v3, [Lorg/apache/commons/math3/complex/Complex;

    .line 340
    .local v6, "root":[Lorg/apache/commons/math3/complex/Complex;
    const/4 v1, 0x0

    :goto_1
    if-ge v1, v3, :cond_4

    .line 341
    sub-int v8, v3, v1

    add-int/lit8 v8, v8, 0x1

    new-array v7, v8, [Lorg/apache/commons/math3/complex/Complex;

    .line 342
    .local v7, "subarray":[Lorg/apache/commons/math3/complex/Complex;
    array-length v8, v7

    invoke-static {v0, v9, v7, v9, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 343
    invoke-virtual {p0, v7, p2}, Lorg/apache/commons/math3/analysis/solvers/LaguerreSolver$ComplexSolver;->solve([Lorg/apache/commons/math3/complex/Complex;Lorg/apache/commons/math3/complex/Complex;)Lorg/apache/commons/math3/complex/Complex;

    move-result-object v8

    aput-object v8, v6, v1

    .line 345
    sub-int v8, v3, v1

    aget-object v4, v0, v8

    .line 346
    .local v4, "newc":Lorg/apache/commons/math3/complex/Complex;
    const/4 v5, 0x0

    .line 347
    .local v5, "oldc":Lorg/apache/commons/math3/complex/Complex;
    sub-int v8, v3, v1

    add-int/lit8 v2, v8, -0x1

    .local v2, "j":I
    :goto_2
    if-ltz v2, :cond_3

    .line 348
    aget-object v5, v0, v2

    .line 349
    aput-object v4, v0, v2

    .line 350
    aget-object v8, v6, v1

    invoke-virtual {v4, v8}, Lorg/apache/commons/math3/complex/Complex;->multiply(Lorg/apache/commons/math3/complex/Complex;)Lorg/apache/commons/math3/complex/Complex;

    move-result-object v8

    invoke-virtual {v5, v8}, Lorg/apache/commons/math3/complex/Complex;->add(Lorg/apache/commons/math3/complex/Complex;)Lorg/apache/commons/math3/complex/Complex;

    move-result-object v4

    .line 347
    add-int/lit8 v2, v2, -0x1

    goto :goto_2

    .line 340
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 354
    .end local v2    # "j":I
    .end local v4    # "newc":Lorg/apache/commons/math3/complex/Complex;
    .end local v5    # "oldc":Lorg/apache/commons/math3/complex/Complex;
    .end local v7    # "subarray":[Lorg/apache/commons/math3/complex/Complex;
    :cond_4
    return-object v6
.end method
