.class public Lorg/apache/commons/math3/dfp/BracketingNthOrderBrentSolverDFP;
.super Ljava/lang/Object;
.source "BracketingNthOrderBrentSolverDFP.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/math3/dfp/BracketingNthOrderBrentSolverDFP$1;
    }
.end annotation


# static fields
.field private static final MAXIMAL_AGING:I = 0x2


# instance fields
.field private final absoluteAccuracy:Lorg/apache/commons/math3/dfp/Dfp;

.field private final evaluations:Lorg/apache/commons/math3/util/Incrementor;

.field private final functionValueAccuracy:Lorg/apache/commons/math3/dfp/Dfp;

.field private final maximalOrder:I

.field private final relativeAccuracy:Lorg/apache/commons/math3/dfp/Dfp;


# direct methods
.method public constructor <init>(Lorg/apache/commons/math3/dfp/Dfp;Lorg/apache/commons/math3/dfp/Dfp;Lorg/apache/commons/math3/dfp/Dfp;I)V
    .locals 4
    .param p1, "relativeAccuracy"    # Lorg/apache/commons/math3/dfp/Dfp;
    .param p2, "absoluteAccuracy"    # Lorg/apache/commons/math3/dfp/Dfp;
    .param p3, "functionValueAccuracy"    # Lorg/apache/commons/math3/dfp/Dfp;
    .param p4, "maximalOrder"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NumberIsTooSmallException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x2

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    new-instance v0, Lorg/apache/commons/math3/util/Incrementor;

    invoke-direct {v0}, Lorg/apache/commons/math3/util/Incrementor;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/math3/dfp/BracketingNthOrderBrentSolverDFP;->evaluations:Lorg/apache/commons/math3/util/Incrementor;

    .line 77
    if-ge p4, v2, :cond_0

    .line 78
    new-instance v0, Lorg/apache/commons/math3/exception/NumberIsTooSmallException;

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/commons/math3/exception/NumberIsTooSmallException;-><init>(Ljava/lang/Number;Ljava/lang/Number;Z)V

    throw v0

    .line 80
    :cond_0
    iput p4, p0, Lorg/apache/commons/math3/dfp/BracketingNthOrderBrentSolverDFP;->maximalOrder:I

    .line 81
    iput-object p2, p0, Lorg/apache/commons/math3/dfp/BracketingNthOrderBrentSolverDFP;->absoluteAccuracy:Lorg/apache/commons/math3/dfp/Dfp;

    .line 82
    iput-object p1, p0, Lorg/apache/commons/math3/dfp/BracketingNthOrderBrentSolverDFP;->relativeAccuracy:Lorg/apache/commons/math3/dfp/Dfp;

    .line 83
    iput-object p3, p0, Lorg/apache/commons/math3/dfp/BracketingNthOrderBrentSolverDFP;->functionValueAccuracy:Lorg/apache/commons/math3/dfp/Dfp;

    .line 84
    return-void
.end method

.method private guessX(Lorg/apache/commons/math3/dfp/Dfp;[Lorg/apache/commons/math3/dfp/Dfp;[Lorg/apache/commons/math3/dfp/Dfp;II)Lorg/apache/commons/math3/dfp/Dfp;
    .locals 7
    .param p1, "targetY"    # Lorg/apache/commons/math3/dfp/Dfp;
    .param p2, "x"    # [Lorg/apache/commons/math3/dfp/Dfp;
    .param p3, "y"    # [Lorg/apache/commons/math3/dfp/Dfp;
    .param p4, "start"    # I
    .param p5, "end"    # I

    .prologue
    .line 419
    move v1, p4

    .local v1, "i":I
    :goto_0
    add-int/lit8 v4, p5, -0x1

    if-ge v1, v4, :cond_1

    .line 420
    add-int/lit8 v4, v1, 0x1

    sub-int v0, v4, p4

    .line 421
    .local v0, "delta":I
    add-int/lit8 v2, p5, -0x1

    .local v2, "j":I
    :goto_1
    if-le v2, v1, :cond_0

    .line 422
    aget-object v4, p2, v2

    add-int/lit8 v5, v2, -0x1

    aget-object v5, p2, v5

    invoke-virtual {v4, v5}, Lorg/apache/commons/math3/dfp/Dfp;->subtract(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v4

    aget-object v5, p3, v2

    sub-int v6, v2, v0

    aget-object v6, p3, v6

    invoke-virtual {v5, v6}, Lorg/apache/commons/math3/dfp/Dfp;->subtract(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/apache/commons/math3/dfp/Dfp;->divide(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v4

    aput-object v4, p2, v2

    .line 421
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 419
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 427
    .end local v0    # "delta":I
    .end local v2    # "j":I
    :cond_1
    invoke-virtual {p1}, Lorg/apache/commons/math3/dfp/Dfp;->getZero()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v3

    .line 428
    .local v3, "x0":Lorg/apache/commons/math3/dfp/Dfp;
    add-int/lit8 v2, p5, -0x1

    .restart local v2    # "j":I
    :goto_2
    if-lt v2, p4, :cond_2

    .line 429
    aget-object v4, p2, v2

    aget-object v5, p3, v2

    invoke-virtual {p1, v5}, Lorg/apache/commons/math3/dfp/Dfp;->subtract(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v5

    invoke-virtual {v3, v5}, Lorg/apache/commons/math3/dfp/Dfp;->multiply(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/apache/commons/math3/dfp/Dfp;->add(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v3

    .line 428
    add-int/lit8 v2, v2, -0x1

    goto :goto_2

    .line 432
    :cond_2
    return-object v3
.end method


# virtual methods
.method public getAbsoluteAccuracy()Lorg/apache/commons/math3/dfp/Dfp;
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lorg/apache/commons/math3/dfp/BracketingNthOrderBrentSolverDFP;->absoluteAccuracy:Lorg/apache/commons/math3/dfp/Dfp;

    return-object v0
.end method

.method public getEvaluations()I
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lorg/apache/commons/math3/dfp/BracketingNthOrderBrentSolverDFP;->evaluations:Lorg/apache/commons/math3/util/Incrementor;

    invoke-virtual {v0}, Lorg/apache/commons/math3/util/Incrementor;->getCount()I

    move-result v0

    return v0
.end method

.method public getFunctionValueAccuracy()Lorg/apache/commons/math3/dfp/Dfp;
    .locals 1

    .prologue
    .line 135
    iget-object v0, p0, Lorg/apache/commons/math3/dfp/BracketingNthOrderBrentSolverDFP;->functionValueAccuracy:Lorg/apache/commons/math3/dfp/Dfp;

    return-object v0
.end method

.method public getMaxEvaluations()I
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lorg/apache/commons/math3/dfp/BracketingNthOrderBrentSolverDFP;->evaluations:Lorg/apache/commons/math3/util/Incrementor;

    invoke-virtual {v0}, Lorg/apache/commons/math3/util/Incrementor;->getMaximalCount()I

    move-result v0

    return v0
.end method

.method public getMaximalOrder()I
    .locals 1

    .prologue
    .line 90
    iget v0, p0, Lorg/apache/commons/math3/dfp/BracketingNthOrderBrentSolverDFP;->maximalOrder:I

    return v0
.end method

.method public getRelativeAccuracy()Lorg/apache/commons/math3/dfp/Dfp;
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lorg/apache/commons/math3/dfp/BracketingNthOrderBrentSolverDFP;->relativeAccuracy:Lorg/apache/commons/math3/dfp/Dfp;

    return-object v0
.end method

.method public solve(ILorg/apache/commons/math3/dfp/UnivariateDfpFunction;Lorg/apache/commons/math3/dfp/Dfp;Lorg/apache/commons/math3/dfp/Dfp;Lorg/apache/commons/math3/analysis/solvers/AllowedSolution;)Lorg/apache/commons/math3/dfp/Dfp;
    .locals 7
    .param p1, "maxEval"    # I
    .param p2, "f"    # Lorg/apache/commons/math3/dfp/UnivariateDfpFunction;
    .param p3, "min"    # Lorg/apache/commons/math3/dfp/Dfp;
    .param p4, "max"    # Lorg/apache/commons/math3/dfp/Dfp;
    .param p5, "allowedSolution"    # Lorg/apache/commons/math3/analysis/solvers/AllowedSolution;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;,
            Lorg/apache/commons/math3/exception/NoBracketingException;
        }
    .end annotation

    .prologue
    .line 157
    invoke-virtual {p3, p4}, Lorg/apache/commons/math3/dfp/Dfp;->add(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/dfp/Dfp;->divide(I)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v5

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v6, p5

    invoke-virtual/range {v0 .. v6}, Lorg/apache/commons/math3/dfp/BracketingNthOrderBrentSolverDFP;->solve(ILorg/apache/commons/math3/dfp/UnivariateDfpFunction;Lorg/apache/commons/math3/dfp/Dfp;Lorg/apache/commons/math3/dfp/Dfp;Lorg/apache/commons/math3/dfp/Dfp;Lorg/apache/commons/math3/analysis/solvers/AllowedSolution;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    return-object v0
.end method

.method public solve(ILorg/apache/commons/math3/dfp/UnivariateDfpFunction;Lorg/apache/commons/math3/dfp/Dfp;Lorg/apache/commons/math3/dfp/Dfp;Lorg/apache/commons/math3/dfp/Dfp;Lorg/apache/commons/math3/analysis/solvers/AllowedSolution;)Lorg/apache/commons/math3/dfp/Dfp;
    .locals 35
    .param p1, "maxEval"    # I
    .param p2, "f"    # Lorg/apache/commons/math3/dfp/UnivariateDfpFunction;
    .param p3, "min"    # Lorg/apache/commons/math3/dfp/Dfp;
    .param p4, "max"    # Lorg/apache/commons/math3/dfp/Dfp;
    .param p5, "startValue"    # Lorg/apache/commons/math3/dfp/Dfp;
    .param p6, "allowedSolution"    # Lorg/apache/commons/math3/analysis/solvers/AllowedSolution;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;,
            Lorg/apache/commons/math3/exception/NoBracketingException;
        }
    .end annotation

    .prologue
    .line 183
    invoke-static/range {p2 .. p2}, Lorg/apache/commons/math3/util/MathUtils;->checkNotNull(Ljava/lang/Object;)V

    .line 186
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/commons/math3/dfp/BracketingNthOrderBrentSolverDFP;->evaluations:Lorg/apache/commons/math3/util/Incrementor;

    move/from16 v0, p1

    invoke-virtual {v4, v0}, Lorg/apache/commons/math3/util/Incrementor;->setMaximalCount(I)V

    .line 187
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/commons/math3/dfp/BracketingNthOrderBrentSolverDFP;->evaluations:Lorg/apache/commons/math3/util/Incrementor;

    invoke-virtual {v4}, Lorg/apache/commons/math3/util/Incrementor;->resetCount()V

    .line 188
    invoke-virtual/range {p5 .. p5}, Lorg/apache/commons/math3/dfp/Dfp;->getZero()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v34

    .line 189
    .local v34, "zero":Lorg/apache/commons/math3/dfp/Dfp;
    const/4 v4, 0x1

    const/4 v7, 0x3

    move-object/from16 v0, v34

    invoke-virtual {v0, v4, v7}, Lorg/apache/commons/math3/dfp/Dfp;->newInstance(BB)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v22

    .line 192
    .local v22, "nan":Lorg/apache/commons/math3/dfp/Dfp;
    move-object/from16 v0, p0

    iget v4, v0, Lorg/apache/commons/math3/dfp/BracketingNthOrderBrentSolverDFP;->maximalOrder:I

    add-int/lit8 v4, v4, 0x1

    new-array v0, v4, [Lorg/apache/commons/math3/dfp/Dfp;

    move-object/from16 v27, v0

    .line 193
    .local v27, "x":[Lorg/apache/commons/math3/dfp/Dfp;
    move-object/from16 v0, p0

    iget v4, v0, Lorg/apache/commons/math3/dfp/BracketingNthOrderBrentSolverDFP;->maximalOrder:I

    add-int/lit8 v4, v4, 0x1

    new-array v0, v4, [Lorg/apache/commons/math3/dfp/Dfp;

    move-object/from16 v31, v0

    .line 194
    .local v31, "y":[Lorg/apache/commons/math3/dfp/Dfp;
    const/4 v4, 0x0

    aput-object p3, v27, v4

    .line 195
    const/4 v4, 0x1

    aput-object p5, v27, v4

    .line 196
    const/4 v4, 0x2

    aput-object p4, v27, v4

    .line 199
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/commons/math3/dfp/BracketingNthOrderBrentSolverDFP;->evaluations:Lorg/apache/commons/math3/util/Incrementor;

    invoke-virtual {v4}, Lorg/apache/commons/math3/util/Incrementor;->incrementCount()V

    .line 200
    const/4 v4, 0x1

    const/4 v7, 0x1

    aget-object v7, v27, v7

    move-object/from16 v0, p2

    invoke-interface {v0, v7}, Lorg/apache/commons/math3/dfp/UnivariateDfpFunction;->value(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v7

    aput-object v7, v31, v4

    .line 201
    const/4 v4, 0x1

    aget-object v4, v31, v4

    invoke-virtual {v4}, Lorg/apache/commons/math3/dfp/Dfp;->isZero()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 203
    const/4 v4, 0x1

    aget-object v28, v27, v4

    .line 341
    :cond_0
    :goto_0
    :pswitch_0
    return-object v28

    .line 207
    :cond_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/commons/math3/dfp/BracketingNthOrderBrentSolverDFP;->evaluations:Lorg/apache/commons/math3/util/Incrementor;

    invoke-virtual {v4}, Lorg/apache/commons/math3/util/Incrementor;->incrementCount()V

    .line 208
    const/4 v4, 0x0

    const/4 v7, 0x0

    aget-object v7, v27, v7

    move-object/from16 v0, p2

    invoke-interface {v0, v7}, Lorg/apache/commons/math3/dfp/UnivariateDfpFunction;->value(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v7

    aput-object v7, v31, v4

    .line 209
    const/4 v4, 0x0

    aget-object v4, v31, v4

    invoke-virtual {v4}, Lorg/apache/commons/math3/dfp/Dfp;->isZero()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 211
    const/4 v4, 0x0

    aget-object v28, v27, v4

    goto :goto_0

    .line 216
    :cond_2
    const/4 v4, 0x0

    aget-object v4, v31, v4

    const/4 v7, 0x1

    aget-object v7, v31, v7

    invoke-virtual {v4, v7}, Lorg/apache/commons/math3/dfp/Dfp;->multiply(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v4

    invoke-virtual {v4}, Lorg/apache/commons/math3/dfp/Dfp;->negativeOrNull()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 219
    const/16 v23, 0x2

    .line 220
    .local v23, "nbPoints":I
    const/16 v26, 0x1

    .line 244
    .local v26, "signChangeIndex":I
    :goto_1
    move-object/from16 v0, v27

    array-length v4, v0

    new-array v6, v4, [Lorg/apache/commons/math3/dfp/Dfp;

    .line 247
    .local v6, "tmpX":[Lorg/apache/commons/math3/dfp/Dfp;
    add-int/lit8 v4, v26, -0x1

    aget-object v28, v27, v4

    .line 248
    .local v28, "xA":Lorg/apache/commons/math3/dfp/Dfp;
    add-int/lit8 v4, v26, -0x1

    aget-object v32, v31, v4

    .line 249
    .local v32, "yA":Lorg/apache/commons/math3/dfp/Dfp;
    invoke-virtual/range {v28 .. v28}, Lorg/apache/commons/math3/dfp/Dfp;->abs()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v14

    .line 250
    .local v14, "absXA":Lorg/apache/commons/math3/dfp/Dfp;
    invoke-virtual/range {v32 .. v32}, Lorg/apache/commons/math3/dfp/Dfp;->abs()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v16

    .line 251
    .local v16, "absYA":Lorg/apache/commons/math3/dfp/Dfp;
    const/16 v18, 0x0

    .line 252
    .local v18, "agingA":I
    aget-object v29, v27, v26

    .line 253
    .local v29, "xB":Lorg/apache/commons/math3/dfp/Dfp;
    aget-object v33, v31, v26

    .line 254
    .local v33, "yB":Lorg/apache/commons/math3/dfp/Dfp;
    invoke-virtual/range {v29 .. v29}, Lorg/apache/commons/math3/dfp/Dfp;->abs()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v15

    .line 255
    .local v15, "absXB":Lorg/apache/commons/math3/dfp/Dfp;
    invoke-virtual/range {v33 .. v33}, Lorg/apache/commons/math3/dfp/Dfp;->abs()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v17

    .line 256
    .local v17, "absYB":Lorg/apache/commons/math3/dfp/Dfp;
    const/16 v19, 0x0

    .line 262
    .local v19, "agingB":I
    :goto_2
    invoke-virtual {v14, v15}, Lorg/apache/commons/math3/dfp/Dfp;->lessThan(Lorg/apache/commons/math3/dfp/Dfp;)Z

    move-result v4

    if-eqz v4, :cond_7

    move-object/from16 v20, v15

    .line 263
    .local v20, "maxX":Lorg/apache/commons/math3/dfp/Dfp;
    :goto_3
    invoke-virtual/range {v16 .. v17}, Lorg/apache/commons/math3/dfp/Dfp;->lessThan(Lorg/apache/commons/math3/dfp/Dfp;)Z

    move-result v4

    if-eqz v4, :cond_8

    move-object/from16 v21, v17

    .line 264
    .local v21, "maxY":Lorg/apache/commons/math3/dfp/Dfp;
    :goto_4
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/commons/math3/dfp/BracketingNthOrderBrentSolverDFP;->absoluteAccuracy:Lorg/apache/commons/math3/dfp/Dfp;

    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/apache/commons/math3/dfp/BracketingNthOrderBrentSolverDFP;->relativeAccuracy:Lorg/apache/commons/math3/dfp/Dfp;

    move-object/from16 v0, v20

    invoke-virtual {v7, v0}, Lorg/apache/commons/math3/dfp/Dfp;->multiply(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v7

    invoke-virtual {v4, v7}, Lorg/apache/commons/math3/dfp/Dfp;->add(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v30

    .line 265
    .local v30, "xTol":Lorg/apache/commons/math3/dfp/Dfp;
    move-object/from16 v0, v29

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/dfp/Dfp;->subtract(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v4

    move-object/from16 v0, v30

    invoke-virtual {v4, v0}, Lorg/apache/commons/math3/dfp/Dfp;->subtract(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v4

    invoke-virtual {v4}, Lorg/apache/commons/math3/dfp/Dfp;->negativeOrNull()Z

    move-result v4

    if-nez v4, :cond_3

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/commons/math3/dfp/BracketingNthOrderBrentSolverDFP;->functionValueAccuracy:Lorg/apache/commons/math3/dfp/Dfp;

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Lorg/apache/commons/math3/dfp/Dfp;->lessThan(Lorg/apache/commons/math3/dfp/Dfp;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 267
    :cond_3
    sget-object v4, Lorg/apache/commons/math3/dfp/BracketingNthOrderBrentSolverDFP$1;->$SwitchMap$org$apache$commons$math3$analysis$solvers$AllowedSolution:[I

    invoke-virtual/range {p6 .. p6}, Lorg/apache/commons/math3/analysis/solvers/AllowedSolution;->ordinal()I

    move-result v7

    aget v4, v4, v7

    packed-switch v4, :pswitch_data_0

    .line 280
    new-instance v4, Lorg/apache/commons/math3/exception/MathInternalError;

    const/4 v7, 0x0

    invoke-direct {v4, v7}, Lorg/apache/commons/math3/exception/MathInternalError;-><init>(Ljava/lang/Throwable;)V

    throw v4

    .line 225
    .end local v6    # "tmpX":[Lorg/apache/commons/math3/dfp/Dfp;
    .end local v14    # "absXA":Lorg/apache/commons/math3/dfp/Dfp;
    .end local v15    # "absXB":Lorg/apache/commons/math3/dfp/Dfp;
    .end local v16    # "absYA":Lorg/apache/commons/math3/dfp/Dfp;
    .end local v17    # "absYB":Lorg/apache/commons/math3/dfp/Dfp;
    .end local v18    # "agingA":I
    .end local v19    # "agingB":I
    .end local v20    # "maxX":Lorg/apache/commons/math3/dfp/Dfp;
    .end local v21    # "maxY":Lorg/apache/commons/math3/dfp/Dfp;
    .end local v23    # "nbPoints":I
    .end local v26    # "signChangeIndex":I
    .end local v28    # "xA":Lorg/apache/commons/math3/dfp/Dfp;
    .end local v29    # "xB":Lorg/apache/commons/math3/dfp/Dfp;
    .end local v30    # "xTol":Lorg/apache/commons/math3/dfp/Dfp;
    .end local v32    # "yA":Lorg/apache/commons/math3/dfp/Dfp;
    .end local v33    # "yB":Lorg/apache/commons/math3/dfp/Dfp;
    :cond_4
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/commons/math3/dfp/BracketingNthOrderBrentSolverDFP;->evaluations:Lorg/apache/commons/math3/util/Incrementor;

    invoke-virtual {v4}, Lorg/apache/commons/math3/util/Incrementor;->incrementCount()V

    .line 226
    const/4 v4, 0x2

    const/4 v7, 0x2

    aget-object v7, v27, v7

    move-object/from16 v0, p2

    invoke-interface {v0, v7}, Lorg/apache/commons/math3/dfp/UnivariateDfpFunction;->value(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v7

    aput-object v7, v31, v4

    .line 227
    const/4 v4, 0x2

    aget-object v4, v31, v4

    invoke-virtual {v4}, Lorg/apache/commons/math3/dfp/Dfp;->isZero()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 229
    const/4 v4, 0x2

    aget-object v28, v27, v4

    goto/16 :goto_0

    .line 232
    :cond_5
    const/4 v4, 0x1

    aget-object v4, v31, v4

    const/4 v7, 0x2

    aget-object v7, v31, v7

    invoke-virtual {v4, v7}, Lorg/apache/commons/math3/dfp/Dfp;->multiply(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v4

    invoke-virtual {v4}, Lorg/apache/commons/math3/dfp/Dfp;->negativeOrNull()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 234
    const/16 v23, 0x3

    .line 235
    .restart local v23    # "nbPoints":I
    const/16 v26, 0x2

    .restart local v26    # "signChangeIndex":I
    goto/16 :goto_1

    .line 237
    .end local v23    # "nbPoints":I
    .end local v26    # "signChangeIndex":I
    :cond_6
    new-instance v5, Lorg/apache/commons/math3/exception/NoBracketingException;

    const/4 v4, 0x0

    aget-object v4, v27, v4

    invoke-virtual {v4}, Lorg/apache/commons/math3/dfp/Dfp;->toDouble()D

    move-result-wide v6

    const/4 v4, 0x2

    aget-object v4, v27, v4

    invoke-virtual {v4}, Lorg/apache/commons/math3/dfp/Dfp;->toDouble()D

    move-result-wide v8

    const/4 v4, 0x0

    aget-object v4, v31, v4

    invoke-virtual {v4}, Lorg/apache/commons/math3/dfp/Dfp;->toDouble()D

    move-result-wide v10

    const/4 v4, 0x2

    aget-object v4, v31, v4

    invoke-virtual {v4}, Lorg/apache/commons/math3/dfp/Dfp;->toDouble()D

    move-result-wide v12

    invoke-direct/range {v5 .. v13}, Lorg/apache/commons/math3/exception/NoBracketingException;-><init>(DDDD)V

    throw v5

    .restart local v6    # "tmpX":[Lorg/apache/commons/math3/dfp/Dfp;
    .restart local v14    # "absXA":Lorg/apache/commons/math3/dfp/Dfp;
    .restart local v15    # "absXB":Lorg/apache/commons/math3/dfp/Dfp;
    .restart local v16    # "absYA":Lorg/apache/commons/math3/dfp/Dfp;
    .restart local v17    # "absYB":Lorg/apache/commons/math3/dfp/Dfp;
    .restart local v18    # "agingA":I
    .restart local v19    # "agingB":I
    .restart local v23    # "nbPoints":I
    .restart local v26    # "signChangeIndex":I
    .restart local v28    # "xA":Lorg/apache/commons/math3/dfp/Dfp;
    .restart local v29    # "xB":Lorg/apache/commons/math3/dfp/Dfp;
    .restart local v32    # "yA":Lorg/apache/commons/math3/dfp/Dfp;
    .restart local v33    # "yB":Lorg/apache/commons/math3/dfp/Dfp;
    :cond_7
    move-object/from16 v20, v14

    .line 262
    goto/16 :goto_3

    .restart local v20    # "maxX":Lorg/apache/commons/math3/dfp/Dfp;
    :cond_8
    move-object/from16 v21, v16

    .line 263
    goto/16 :goto_4

    .line 269
    .restart local v21    # "maxY":Lorg/apache/commons/math3/dfp/Dfp;
    .restart local v30    # "xTol":Lorg/apache/commons/math3/dfp/Dfp;
    :pswitch_1
    invoke-virtual/range {v16 .. v17}, Lorg/apache/commons/math3/dfp/Dfp;->lessThan(Lorg/apache/commons/math3/dfp/Dfp;)Z

    move-result v4

    if-nez v4, :cond_0

    move-object/from16 v28, v29

    goto/16 :goto_0

    :pswitch_2
    move-object/from16 v28, v29

    .line 273
    goto/16 :goto_0

    .line 275
    :pswitch_3
    move-object/from16 v0, v32

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/dfp/Dfp;->lessThan(Lorg/apache/commons/math3/dfp/Dfp;)Z

    move-result v4

    if-nez v4, :cond_0

    move-object/from16 v28, v29

    goto/16 :goto_0

    .line 277
    :pswitch_4
    move-object/from16 v0, v32

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/dfp/Dfp;->lessThan(Lorg/apache/commons/math3/dfp/Dfp;)Z

    move-result v4

    if-eqz v4, :cond_9

    .end local v29    # "xB":Lorg/apache/commons/math3/dfp/Dfp;
    :goto_5
    move-object/from16 v28, v29

    goto/16 :goto_0

    .restart local v29    # "xB":Lorg/apache/commons/math3/dfp/Dfp;
    :cond_9
    move-object/from16 v29, v28

    goto :goto_5

    .line 286
    :cond_a
    const/4 v4, 0x2

    move/from16 v0, v18

    if-lt v0, v4, :cond_10

    .line 288
    const/16 v4, 0x10

    move-object/from16 v0, v33

    invoke-virtual {v0, v4}, Lorg/apache/commons/math3/dfp/Dfp;->divide(I)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v4

    invoke-virtual {v4}, Lorg/apache/commons/math3/dfp/Dfp;->negate()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v5

    .line 299
    .local v5, "targetY":Lorg/apache/commons/math3/dfp/Dfp;
    :goto_6
    const/4 v8, 0x0

    .line 300
    .local v8, "start":I
    move/from16 v9, v23

    .line 304
    .local v9, "end":I
    :cond_b
    sub-int v4, v9, v8

    move-object/from16 v0, v27

    invoke-static {v0, v8, v6, v8, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object/from16 v4, p0

    move-object/from16 v7, v31

    .line 305
    invoke-direct/range {v4 .. v9}, Lorg/apache/commons/math3/dfp/BracketingNthOrderBrentSolverDFP;->guessX(Lorg/apache/commons/math3/dfp/Dfp;[Lorg/apache/commons/math3/dfp/Dfp;[Lorg/apache/commons/math3/dfp/Dfp;II)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v24

    .line 307
    .local v24, "nextX":Lorg/apache/commons/math3/dfp/Dfp;
    move-object/from16 v0, v24

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/dfp/Dfp;->greaterThan(Lorg/apache/commons/math3/dfp/Dfp;)Z

    move-result v4

    if-eqz v4, :cond_c

    move-object/from16 v0, v24

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/dfp/Dfp;->lessThan(Lorg/apache/commons/math3/dfp/Dfp;)Z

    move-result v4

    if-nez v4, :cond_d

    .line 313
    :cond_c
    sub-int v4, v26, v8

    sub-int v7, v9, v26

    if-lt v4, v7, :cond_12

    .line 315
    add-int/lit8 v8, v8, 0x1

    .line 322
    :goto_7
    move-object/from16 v24, v22

    .line 326
    :cond_d
    invoke-virtual/range {v24 .. v24}, Lorg/apache/commons/math3/dfp/Dfp;->isNaN()Z

    move-result v4

    if-eqz v4, :cond_e

    sub-int v4, v9, v8

    const/4 v7, 0x1

    if-gt v4, v7, :cond_b

    .line 328
    :cond_e
    invoke-virtual/range {v24 .. v24}, Lorg/apache/commons/math3/dfp/Dfp;->isNaN()Z

    move-result v4

    if-eqz v4, :cond_f

    .line 330
    move-object/from16 v0, v29

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/dfp/Dfp;->subtract(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v4

    const/4 v7, 0x2

    invoke-virtual {v4, v7}, Lorg/apache/commons/math3/dfp/Dfp;->divide(I)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v4

    move-object/from16 v0, v28

    invoke-virtual {v0, v4}, Lorg/apache/commons/math3/dfp/Dfp;->add(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v24

    .line 331
    add-int/lit8 v8, v26, -0x1

    .line 332
    move/from16 v9, v26

    .line 336
    :cond_f
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/commons/math3/dfp/BracketingNthOrderBrentSolverDFP;->evaluations:Lorg/apache/commons/math3/util/Incrementor;

    invoke-virtual {v4}, Lorg/apache/commons/math3/util/Incrementor;->incrementCount()V

    .line 337
    move-object/from16 v0, p2

    move-object/from16 v1, v24

    invoke-interface {v0, v1}, Lorg/apache/commons/math3/dfp/UnivariateDfpFunction;->value(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v25

    .line 338
    .local v25, "nextY":Lorg/apache/commons/math3/dfp/Dfp;
    invoke-virtual/range {v25 .. v25}, Lorg/apache/commons/math3/dfp/Dfp;->isZero()Z

    move-result v4

    if-eqz v4, :cond_13

    move-object/from16 v28, v24

    .line 341
    goto/16 :goto_0

    .line 289
    .end local v5    # "targetY":Lorg/apache/commons/math3/dfp/Dfp;
    .end local v8    # "start":I
    .end local v9    # "end":I
    .end local v24    # "nextX":Lorg/apache/commons/math3/dfp/Dfp;
    .end local v25    # "nextY":Lorg/apache/commons/math3/dfp/Dfp;
    :cond_10
    const/4 v4, 0x2

    move/from16 v0, v19

    if-lt v0, v4, :cond_11

    .line 291
    const/16 v4, 0x10

    move-object/from16 v0, v32

    invoke-virtual {v0, v4}, Lorg/apache/commons/math3/dfp/Dfp;->divide(I)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v4

    invoke-virtual {v4}, Lorg/apache/commons/math3/dfp/Dfp;->negate()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v5

    .restart local v5    # "targetY":Lorg/apache/commons/math3/dfp/Dfp;
    goto/16 :goto_6

    .line 294
    .end local v5    # "targetY":Lorg/apache/commons/math3/dfp/Dfp;
    :cond_11
    move-object/from16 v5, v34

    .restart local v5    # "targetY":Lorg/apache/commons/math3/dfp/Dfp;
    goto/16 :goto_6

    .line 318
    .restart local v8    # "start":I
    .restart local v9    # "end":I
    .restart local v24    # "nextX":Lorg/apache/commons/math3/dfp/Dfp;
    :cond_12
    add-int/lit8 v9, v9, -0x1

    goto :goto_7

    .line 344
    .restart local v25    # "nextY":Lorg/apache/commons/math3/dfp/Dfp;
    :cond_13
    const/4 v4, 0x2

    move/from16 v0, v23

    if-le v0, v4, :cond_15

    sub-int v4, v9, v8

    move/from16 v0, v23

    if-eq v4, v0, :cond_15

    .line 348
    sub-int v23, v9, v8

    .line 349
    const/4 v4, 0x0

    move-object/from16 v0, v27

    move-object/from16 v1, v27

    move/from16 v2, v23

    invoke-static {v0, v8, v1, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 350
    const/4 v4, 0x0

    move-object/from16 v0, v31

    move-object/from16 v1, v31

    move/from16 v2, v23

    invoke-static {v0, v8, v1, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 351
    sub-int v26, v26, v8

    .line 370
    :cond_14
    :goto_8
    add-int/lit8 v4, v26, 0x1

    sub-int v7, v23, v26

    move-object/from16 v0, v27

    move/from16 v1, v26

    move-object/from16 v2, v27

    invoke-static {v0, v1, v2, v4, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 371
    aput-object v24, v27, v26

    .line 372
    add-int/lit8 v4, v26, 0x1

    sub-int v7, v23, v26

    move-object/from16 v0, v31

    move/from16 v1, v26

    move-object/from16 v2, v31

    invoke-static {v0, v1, v2, v4, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 373
    aput-object v25, v31, v26

    .line 374
    add-int/lit8 v23, v23, 0x1

    .line 377
    move-object/from16 v0, v25

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/dfp/Dfp;->multiply(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v4

    invoke-virtual {v4}, Lorg/apache/commons/math3/dfp/Dfp;->negativeOrNull()Z

    move-result v4

    if-eqz v4, :cond_16

    .line 379
    move-object/from16 v29, v24

    .line 380
    move-object/from16 v33, v25

    .line 381
    invoke-virtual/range {v33 .. v33}, Lorg/apache/commons/math3/dfp/Dfp;->abs()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v17

    .line 382
    add-int/lit8 v18, v18, 0x1

    .line 383
    const/16 v19, 0x0

    goto/16 :goto_2

    .line 353
    :cond_15
    move-object/from16 v0, v27

    array-length v4, v0

    move/from16 v0, v23

    if-ne v0, v4, :cond_14

    .line 356
    add-int/lit8 v23, v23, -0x1

    .line 359
    move-object/from16 v0, v27

    array-length v4, v0

    add-int/lit8 v4, v4, 0x1

    div-int/lit8 v4, v4, 0x2

    move/from16 v0, v26

    if-lt v0, v4, :cond_14

    .line 361
    const/4 v4, 0x1

    const/4 v7, 0x0

    move-object/from16 v0, v27

    move-object/from16 v1, v27

    move/from16 v2, v23

    invoke-static {v0, v4, v1, v7, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 362
    const/4 v4, 0x1

    const/4 v7, 0x0

    move-object/from16 v0, v31

    move-object/from16 v1, v31

    move/from16 v2, v23

    invoke-static {v0, v4, v1, v7, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 363
    add-int/lit8 v26, v26, -0x1

    goto :goto_8

    .line 386
    :cond_16
    move-object/from16 v28, v24

    .line 387
    move-object/from16 v32, v25

    .line 388
    invoke-virtual/range {v32 .. v32}, Lorg/apache/commons/math3/dfp/Dfp;->abs()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v16

    .line 389
    const/16 v18, 0x0

    .line 390
    add-int/lit8 v19, v19, 0x1

    .line 393
    add-int/lit8 v26, v26, 0x1

    goto/16 :goto_2

    .line 267
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
