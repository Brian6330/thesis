.class public abstract Lorg/apache/commons/math3/optim/BaseMultiStartMultivariateOptimizer;
.super Lorg/apache/commons/math3/optim/BaseMultivariateOptimizer;
.source "BaseMultiStartMultivariateOptimizer.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<PAIR:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/apache/commons/math3/optim/BaseMultivariateOptimizer",
        "<TPAIR;>;"
    }
.end annotation


# instance fields
.field private generator:Lorg/apache/commons/math3/random/RandomVectorGenerator;

.field private initialGuessIndex:I

.field private maxEvalIndex:I

.field private optimData:[Lorg/apache/commons/math3/optim/OptimizationData;

.field private final optimizer:Lorg/apache/commons/math3/optim/BaseMultivariateOptimizer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/commons/math3/optim/BaseMultivariateOptimizer",
            "<TPAIR;>;"
        }
    .end annotation
.end field

.field private starts:I

.field private totalEvaluations:I


# direct methods
.method public constructor <init>(Lorg/apache/commons/math3/optim/BaseMultivariateOptimizer;ILorg/apache/commons/math3/random/RandomVectorGenerator;)V
    .locals 2
    .param p2, "starts"    # I
    .param p3, "generator"    # Lorg/apache/commons/math3/random/RandomVectorGenerator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/optim/BaseMultivariateOptimizer",
            "<TPAIR;>;I",
            "Lorg/apache/commons/math3/random/RandomVectorGenerator;",
            ")V"
        }
    .end annotation

    .prologue
    .local p0, "this":Lorg/apache/commons/math3/optim/BaseMultiStartMultivariateOptimizer;, "Lorg/apache/commons/math3/optim/BaseMultiStartMultivariateOptimizer<TPAIR;>;"
    .local p1, "optimizer":Lorg/apache/commons/math3/optim/BaseMultivariateOptimizer;, "Lorg/apache/commons/math3/optim/BaseMultivariateOptimizer<TPAIR;>;"
    const/4 v1, -0x1

    .line 81
    invoke-virtual {p1}, Lorg/apache/commons/math3/optim/BaseMultivariateOptimizer;->getConvergenceChecker()Lorg/apache/commons/math3/optim/ConvergenceChecker;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/commons/math3/optim/BaseMultivariateOptimizer;-><init>(Lorg/apache/commons/math3/optim/ConvergenceChecker;)V

    .line 53
    iput v1, p0, Lorg/apache/commons/math3/optim/BaseMultiStartMultivariateOptimizer;->maxEvalIndex:I

    .line 58
    iput v1, p0, Lorg/apache/commons/math3/optim/BaseMultiStartMultivariateOptimizer;->initialGuessIndex:I

    .line 83
    const/4 v0, 0x1

    if-ge p2, v0, :cond_0

    .line 84
    new-instance v0, Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;-><init>(Ljava/lang/Number;)V

    throw v0

    .line 87
    :cond_0
    iput-object p1, p0, Lorg/apache/commons/math3/optim/BaseMultiStartMultivariateOptimizer;->optimizer:Lorg/apache/commons/math3/optim/BaseMultivariateOptimizer;

    .line 88
    iput p2, p0, Lorg/apache/commons/math3/optim/BaseMultiStartMultivariateOptimizer;->starts:I

    .line 89
    iput-object p3, p0, Lorg/apache/commons/math3/optim/BaseMultiStartMultivariateOptimizer;->generator:Lorg/apache/commons/math3/random/RandomVectorGenerator;

    .line 90
    return-void
.end method


# virtual methods
.method protected abstract clear()V
.end method

.method protected doOptimize()Ljava/lang/Object;
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TPAIR;"
        }
    .end annotation

    .prologue
    .line 145
    .local p0, "this":Lorg/apache/commons/math3/optim/BaseMultiStartMultivariateOptimizer;, "Lorg/apache/commons/math3/optim/BaseMultiStartMultivariateOptimizer<TPAIR;>;"
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/apache/commons/math3/optim/BaseMultiStartMultivariateOptimizer;->optimData:[Lorg/apache/commons/math3/optim/OptimizationData;

    array-length v15, v15

    if-ge v4, v15, :cond_2

    .line 146
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/apache/commons/math3/optim/BaseMultiStartMultivariateOptimizer;->optimData:[Lorg/apache/commons/math3/optim/OptimizationData;

    aget-object v15, v15, v4

    instance-of v15, v15, Lorg/apache/commons/math3/optim/MaxEval;

    if-eqz v15, :cond_0

    .line 147
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/apache/commons/math3/optim/BaseMultiStartMultivariateOptimizer;->optimData:[Lorg/apache/commons/math3/optim/OptimizationData;

    const/16 v16, 0x0

    aput-object v16, v15, v4

    .line 148
    move-object/from16 v0, p0

    iput v4, v0, Lorg/apache/commons/math3/optim/BaseMultiStartMultivariateOptimizer;->maxEvalIndex:I

    .line 150
    :cond_0
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/apache/commons/math3/optim/BaseMultiStartMultivariateOptimizer;->optimData:[Lorg/apache/commons/math3/optim/OptimizationData;

    aget-object v15, v15, v4

    instance-of v15, v15, Lorg/apache/commons/math3/optim/InitialGuess;

    if-eqz v15, :cond_1

    .line 151
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/apache/commons/math3/optim/BaseMultiStartMultivariateOptimizer;->optimData:[Lorg/apache/commons/math3/optim/OptimizationData;

    const/16 v16, 0x0

    aput-object v16, v15, v4

    .line 152
    move-object/from16 v0, p0

    iput v4, v0, Lorg/apache/commons/math3/optim/BaseMultiStartMultivariateOptimizer;->initialGuessIndex:I

    .line 145
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 156
    :cond_2
    move-object/from16 v0, p0

    iget v15, v0, Lorg/apache/commons/math3/optim/BaseMultiStartMultivariateOptimizer;->maxEvalIndex:I

    const/16 v16, -0x1

    move/from16 v0, v16

    if-ne v15, v0, :cond_3

    .line 157
    new-instance v15, Lorg/apache/commons/math3/exception/MathIllegalStateException;

    invoke-direct {v15}, Lorg/apache/commons/math3/exception/MathIllegalStateException;-><init>()V

    throw v15

    .line 159
    :cond_3
    move-object/from16 v0, p0

    iget v15, v0, Lorg/apache/commons/math3/optim/BaseMultiStartMultivariateOptimizer;->initialGuessIndex:I

    const/16 v16, -0x1

    move/from16 v0, v16

    if-ne v15, v0, :cond_4

    .line 160
    new-instance v15, Lorg/apache/commons/math3/exception/MathIllegalStateException;

    invoke-direct {v15}, Lorg/apache/commons/math3/exception/MathIllegalStateException;-><init>()V

    throw v15

    .line 163
    :cond_4
    const/4 v6, 0x0

    .line 164
    .local v6, "lastException":Ljava/lang/RuntimeException;
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput v15, v0, Lorg/apache/commons/math3/optim/BaseMultiStartMultivariateOptimizer;->totalEvaluations:I

    .line 165
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/optim/BaseMultiStartMultivariateOptimizer;->clear()V

    .line 167
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/optim/BaseMultiStartMultivariateOptimizer;->getMaxEvaluations()I

    move-result v8

    .line 168
    .local v8, "maxEval":I
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/optim/BaseMultiStartMultivariateOptimizer;->getLowerBound()[D

    move-result-object v9

    .line 169
    .local v9, "min":[D
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/optim/BaseMultiStartMultivariateOptimizer;->getUpperBound()[D

    move-result-object v7

    .line 170
    .local v7, "max":[D
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/optim/BaseMultiStartMultivariateOptimizer;->getStartPoint()[D

    move-result-object v14

    .line 173
    .local v14, "startPoint":[D
    const/4 v4, 0x0

    :goto_1
    move-object/from16 v0, p0

    iget v15, v0, Lorg/apache/commons/math3/optim/BaseMultiStartMultivariateOptimizer;->starts:I

    if-ge v4, v15, :cond_c

    .line 177
    :try_start_0
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/apache/commons/math3/optim/BaseMultiStartMultivariateOptimizer;->optimData:[Lorg/apache/commons/math3/optim/OptimizationData;

    move-object/from16 v0, p0

    iget v0, v0, Lorg/apache/commons/math3/optim/BaseMultiStartMultivariateOptimizer;->maxEvalIndex:I

    move/from16 v16, v0

    new-instance v17, Lorg/apache/commons/math3/optim/MaxEval;

    move-object/from16 v0, p0

    iget v0, v0, Lorg/apache/commons/math3/optim/BaseMultiStartMultivariateOptimizer;->totalEvaluations:I

    move/from16 v18, v0

    sub-int v18, v8, v18

    invoke-direct/range {v17 .. v18}, Lorg/apache/commons/math3/optim/MaxEval;-><init>(I)V

    aput-object v17, v15, v16

    .line 179
    const/4 v13, 0x0

    .line 180
    .local v13, "s":[D
    if-nez v4, :cond_6

    .line 181
    move-object v13, v14

    .line 197
    :cond_5
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/apache/commons/math3/optim/BaseMultiStartMultivariateOptimizer;->optimData:[Lorg/apache/commons/math3/optim/OptimizationData;

    move-object/from16 v0, p0

    iget v0, v0, Lorg/apache/commons/math3/optim/BaseMultiStartMultivariateOptimizer;->initialGuessIndex:I

    move/from16 v16, v0

    new-instance v17, Lorg/apache/commons/math3/optim/InitialGuess;

    move-object/from16 v0, v17

    invoke-direct {v0, v13}, Lorg/apache/commons/math3/optim/InitialGuess;-><init>([D)V

    aput-object v17, v15, v16

    .line 199
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/apache/commons/math3/optim/BaseMultiStartMultivariateOptimizer;->optimizer:Lorg/apache/commons/math3/optim/BaseMultivariateOptimizer;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/optim/BaseMultiStartMultivariateOptimizer;->optimData:[Lorg/apache/commons/math3/optim/OptimizationData;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Lorg/apache/commons/math3/optim/BaseMultivariateOptimizer;->optimize([Lorg/apache/commons/math3/optim/OptimizationData;)Ljava/lang/Object;

    move-result-object v12

    .line 200
    .local v12, "result":Ljava/lang/Object;, "TPAIR;"
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lorg/apache/commons/math3/optim/BaseMultiStartMultivariateOptimizer;->store(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 206
    .end local v12    # "result":Ljava/lang/Object;, "TPAIR;"
    .end local v13    # "s":[D
    :goto_2
    move-object/from16 v0, p0

    iget v15, v0, Lorg/apache/commons/math3/optim/BaseMultiStartMultivariateOptimizer;->totalEvaluations:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/optim/BaseMultiStartMultivariateOptimizer;->optimizer:Lorg/apache/commons/math3/optim/BaseMultivariateOptimizer;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lorg/apache/commons/math3/optim/BaseMultivariateOptimizer;->getEvaluations()I

    move-result v16

    add-int v15, v15, v16

    move-object/from16 v0, p0

    iput v15, v0, Lorg/apache/commons/math3/optim/BaseMultiStartMultivariateOptimizer;->totalEvaluations:I

    .line 173
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 183
    .restart local v13    # "s":[D
    :cond_6
    const/4 v2, 0x0

    .local v2, "attempts":I
    move v3, v2

    .line 184
    .end local v2    # "attempts":I
    .local v3, "attempts":I
    :goto_3
    if-nez v13, :cond_5

    .line 185
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "attempts":I
    .restart local v2    # "attempts":I
    :try_start_1
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/optim/BaseMultiStartMultivariateOptimizer;->getMaxEvaluations()I

    move-result v15

    if-lt v3, v15, :cond_7

    .line 186
    new-instance v15, Lorg/apache/commons/math3/exception/TooManyEvaluationsException;

    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/optim/BaseMultiStartMultivariateOptimizer;->getMaxEvaluations()I

    move-result v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    invoke-direct/range {v15 .. v16}, Lorg/apache/commons/math3/exception/TooManyEvaluationsException;-><init>(Ljava/lang/Number;)V

    throw v15

    .line 201
    .end local v2    # "attempts":I
    .end local v13    # "s":[D
    :catch_0
    move-exception v10

    .line 202
    .local v10, "mue":Ljava/lang/RuntimeException;
    move-object v6, v10

    goto :goto_2

    .line 188
    .end local v10    # "mue":Ljava/lang/RuntimeException;
    .restart local v2    # "attempts":I
    .restart local v13    # "s":[D
    :cond_7
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/apache/commons/math3/optim/BaseMultiStartMultivariateOptimizer;->generator:Lorg/apache/commons/math3/random/RandomVectorGenerator;

    invoke-interface {v15}, Lorg/apache/commons/math3/random/RandomVectorGenerator;->nextVector()[D

    move-result-object v13

    .line 189
    const/4 v5, 0x0

    .local v5, "k":I
    :goto_4
    if-eqz v13, :cond_b

    array-length v15, v13

    if-ge v5, v15, :cond_b

    .line 190
    if-eqz v9, :cond_8

    aget-wide v16, v13, v5

    aget-wide v18, v9, v5

    cmpg-double v15, v16, v18

    if-ltz v15, :cond_9

    :cond_8
    if-eqz v7, :cond_a

    aget-wide v16, v13, v5

    aget-wide v18, v7, v5
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    cmpl-double v15, v16, v18

    if-lez v15, :cond_a

    .line 192
    :cond_9
    const/4 v13, 0x0

    .line 189
    :cond_a
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    :cond_b
    move v3, v2

    .end local v2    # "attempts":I
    .restart local v3    # "attempts":I
    goto :goto_3

    .line 209
    .end local v3    # "attempts":I
    .end local v5    # "k":I
    .end local v13    # "s":[D
    :cond_c
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/optim/BaseMultiStartMultivariateOptimizer;->getOptima()[Ljava/lang/Object;

    move-result-object v11

    .line 210
    .local v11, "optima":[Ljava/lang/Object;, "[TPAIR;"
    array-length v15, v11

    if-nez v15, :cond_d

    .line 212
    throw v6

    .line 216
    :cond_d
    const/4 v15, 0x0

    aget-object v15, v11, v15

    return-object v15
.end method

.method public getEvaluations()I
    .locals 1

    .prologue
    .line 95
    .local p0, "this":Lorg/apache/commons/math3/optim/BaseMultiStartMultivariateOptimizer;, "Lorg/apache/commons/math3/optim/BaseMultiStartMultivariateOptimizer<TPAIR;>;"
    iget v0, p0, Lorg/apache/commons/math3/optim/BaseMultiStartMultivariateOptimizer;->totalEvaluations:I

    return v0
.end method

.method public abstract getOptima()[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[TPAIR;"
        }
    .end annotation
.end method

.method public varargs optimize([Lorg/apache/commons/math3/optim/OptimizationData;)Ljava/lang/Object;
    .locals 1
    .param p1, "optData"    # [Lorg/apache/commons/math3/optim/OptimizationData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lorg/apache/commons/math3/optim/OptimizationData;",
            ")TPAIR;"
        }
    .end annotation

    .prologue
    .line 132
    .local p0, "this":Lorg/apache/commons/math3/optim/BaseMultiStartMultivariateOptimizer;, "Lorg/apache/commons/math3/optim/BaseMultiStartMultivariateOptimizer<TPAIR;>;"
    iput-object p1, p0, Lorg/apache/commons/math3/optim/BaseMultiStartMultivariateOptimizer;->optimData:[Lorg/apache/commons/math3/optim/OptimizationData;

    .line 134
    invoke-super {p0, p1}, Lorg/apache/commons/math3/optim/BaseMultivariateOptimizer;->optimize([Lorg/apache/commons/math3/optim/OptimizationData;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected abstract store(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TPAIR;)V"
        }
    .end annotation
.end method
