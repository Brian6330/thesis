.class public Lorg/apache/commons/math3/optim/SimplePointChecker;
.super Lorg/apache/commons/math3/optim/AbstractConvergenceChecker;
.source "SimplePointChecker.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<PAIR:",
        "Lorg/apache/commons/math3/util/Pair",
        "<[D+",
        "Ljava/lang/Object;",
        ">;>",
        "Lorg/apache/commons/math3/optim/AbstractConvergenceChecker",
        "<TPAIR;>;"
    }
.end annotation


# static fields
.field private static final ITERATION_CHECK_DISABLED:I = -0x1


# instance fields
.field private final maxIterationCount:I


# direct methods
.method public constructor <init>(DD)V
    .locals 1
    .param p1, "relativeThreshold"    # D
    .param p3, "absoluteThreshold"    # D

    .prologue
    .line 67
    .local p0, "this":Lorg/apache/commons/math3/optim/SimplePointChecker;, "Lorg/apache/commons/math3/optim/SimplePointChecker<TPAIR;>;"
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/apache/commons/math3/optim/AbstractConvergenceChecker;-><init>(DD)V

    .line 68
    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/commons/math3/optim/SimplePointChecker;->maxIterationCount:I

    .line 69
    return-void
.end method

.method public constructor <init>(DDI)V
    .locals 3
    .param p1, "relativeThreshold"    # D
    .param p3, "absoluteThreshold"    # D
    .param p5, "maxIter"    # I

    .prologue
    .line 87
    .local p0, "this":Lorg/apache/commons/math3/optim/SimplePointChecker;, "Lorg/apache/commons/math3/optim/SimplePointChecker<TPAIR;>;"
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/apache/commons/math3/optim/AbstractConvergenceChecker;-><init>(DD)V

    .line 89
    if-gtz p5, :cond_0

    .line 90
    new-instance v0, Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;-><init>(Ljava/lang/Number;)V

    throw v0

    .line 92
    :cond_0
    iput p5, p0, Lorg/apache/commons/math3/optim/SimplePointChecker;->maxIterationCount:I

    .line 93
    return-void
.end method


# virtual methods
.method public bridge synthetic converged(ILjava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "x0"    # I
    .param p2, "x1"    # Ljava/lang/Object;
    .param p3, "x2"    # Ljava/lang/Object;

    .prologue
    .line 41
    .local p0, "this":Lorg/apache/commons/math3/optim/SimplePointChecker;, "Lorg/apache/commons/math3/optim/SimplePointChecker<TPAIR;>;"
    check-cast p2, Lorg/apache/commons/math3/util/Pair;

    .end local p2    # "x1":Ljava/lang/Object;
    check-cast p3, Lorg/apache/commons/math3/util/Pair;

    .end local p3    # "x2":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/commons/math3/optim/SimplePointChecker;->converged(ILorg/apache/commons/math3/util/Pair;Lorg/apache/commons/math3/util/Pair;)Z

    move-result v0

    return v0
.end method

.method public converged(ILorg/apache/commons/math3/util/Pair;Lorg/apache/commons/math3/util/Pair;)Z
    .locals 18
    .param p1, "iteration"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITPAIR;TPAIR;)Z"
        }
    .end annotation

    .prologue
    .line 115
    .local p0, "this":Lorg/apache/commons/math3/optim/SimplePointChecker;, "Lorg/apache/commons/math3/optim/SimplePointChecker<TPAIR;>;"
    .local p2, "previous":Lorg/apache/commons/math3/util/Pair;, "TPAIR;"
    .local p3, "current":Lorg/apache/commons/math3/util/Pair;, "TPAIR;"
    move-object/from16 v0, p0

    iget v9, v0, Lorg/apache/commons/math3/optim/SimplePointChecker;->maxIterationCount:I

    const/4 v14, -0x1

    if-eq v9, v14, :cond_0

    move-object/from16 v0, p0

    iget v9, v0, Lorg/apache/commons/math3/optim/SimplePointChecker;->maxIterationCount:I

    move/from16 v0, p1

    if-lt v0, v9, :cond_0

    .line 116
    const/4 v9, 0x1

    .line 131
    :goto_0
    return v9

    .line 119
    :cond_0
    invoke-virtual/range {p2 .. p2}, Lorg/apache/commons/math3/util/Pair;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [D

    .line 120
    .local v8, "p":[D
    invoke-virtual/range {p3 .. p3}, Lorg/apache/commons/math3/util/Pair;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [D

    .line 121
    .local v2, "c":[D
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    array-length v9, v8

    if-ge v3, v9, :cond_2

    .line 122
    aget-wide v10, v8, v3

    .line 123
    .local v10, "pi":D
    aget-wide v4, v2, v3

    .line 124
    .local v4, "ci":D
    sub-double v14, v10, v4

    invoke-static {v14, v15}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v6

    .line 125
    .local v6, "difference":D
    invoke-static {v10, v11}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v14

    invoke-static {v4, v5}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v16

    invoke-static/range {v14 .. v17}, Lorg/apache/commons/math3/util/FastMath;->max(DD)D

    move-result-wide v12

    .line 126
    .local v12, "size":D
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/optim/SimplePointChecker;->getRelativeThreshold()D

    move-result-wide v14

    mul-double/2addr v14, v12

    cmpl-double v9, v6, v14

    if-lez v9, :cond_1

    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/optim/SimplePointChecker;->getAbsoluteThreshold()D

    move-result-wide v14

    cmpl-double v9, v6, v14

    if-lez v9, :cond_1

    .line 128
    const/4 v9, 0x0

    goto :goto_0

    .line 121
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 131
    .end local v4    # "ci":D
    .end local v6    # "difference":D
    .end local v10    # "pi":D
    .end local v12    # "size":D
    :cond_2
    const/4 v9, 0x1

    goto :goto_0
.end method
