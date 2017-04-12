.class public Lorg/apache/commons/math3/optimization/SimpleValueChecker;
.super Lorg/apache/commons/math3/optimization/AbstractConvergenceChecker;
.source "SimpleValueChecker.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/commons/math3/optimization/AbstractConvergenceChecker",
        "<",
        "Lorg/apache/commons/math3/optimization/PointValuePair;",
        ">;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final ITERATION_CHECK_DISABLED:I = -0x1


# instance fields
.field private final maxIterationCount:I


# direct methods
.method public constructor <init>()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 61
    invoke-direct {p0}, Lorg/apache/commons/math3/optimization/AbstractConvergenceChecker;-><init>()V

    .line 62
    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/commons/math3/optimization/SimpleValueChecker;->maxIterationCount:I

    .line 63
    return-void
.end method

.method public constructor <init>(DD)V
    .locals 1
    .param p1, "relativeThreshold"    # D
    .param p3, "absoluteThreshold"    # D

    .prologue
    .line 76
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/apache/commons/math3/optimization/AbstractConvergenceChecker;-><init>(DD)V

    .line 77
    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/commons/math3/optimization/SimpleValueChecker;->maxIterationCount:I

    .line 78
    return-void
.end method

.method public constructor <init>(DDI)V
    .locals 3
    .param p1, "relativeThreshold"    # D
    .param p3, "absoluteThreshold"    # D
    .param p5, "maxIter"    # I

    .prologue
    .line 97
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/apache/commons/math3/optimization/AbstractConvergenceChecker;-><init>(DD)V

    .line 99
    if-gtz p5, :cond_0

    .line 100
    new-instance v0, Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;-><init>(Ljava/lang/Number;)V

    throw v0

    .line 102
    :cond_0
    iput p5, p0, Lorg/apache/commons/math3/optimization/SimpleValueChecker;->maxIterationCount:I

    .line 103
    return-void
.end method


# virtual methods
.method public bridge synthetic converged(ILjava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "x0"    # I
    .param p2, "x1"    # Ljava/lang/Object;
    .param p3, "x2"    # Ljava/lang/Object;

    .prologue
    .line 39
    check-cast p2, Lorg/apache/commons/math3/optimization/PointValuePair;

    .end local p2    # "x1":Ljava/lang/Object;
    check-cast p3, Lorg/apache/commons/math3/optimization/PointValuePair;

    .end local p3    # "x2":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/commons/math3/optimization/SimpleValueChecker;->converged(ILorg/apache/commons/math3/optimization/PointValuePair;Lorg/apache/commons/math3/optimization/PointValuePair;)Z

    move-result v0

    return v0
.end method

.method public converged(ILorg/apache/commons/math3/optimization/PointValuePair;Lorg/apache/commons/math3/optimization/PointValuePair;)Z
    .locals 12
    .param p1, "iteration"    # I
    .param p2, "previous"    # Lorg/apache/commons/math3/optimization/PointValuePair;
    .param p3, "current"    # Lorg/apache/commons/math3/optimization/PointValuePair;

    .prologue
    .line 125
    iget v8, p0, Lorg/apache/commons/math3/optimization/SimpleValueChecker;->maxIterationCount:I

    const/4 v9, -0x1

    if-eq v8, v9, :cond_0

    iget v8, p0, Lorg/apache/commons/math3/optimization/SimpleValueChecker;->maxIterationCount:I

    if-lt p1, v8, :cond_0

    .line 126
    const/4 v8, 0x1

    .line 133
    :goto_0
    return v8

    .line 129
    :cond_0
    invoke-virtual {p2}, Lorg/apache/commons/math3/optimization/PointValuePair;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Double;

    invoke-virtual {v8}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    .line 130
    .local v4, "p":D
    invoke-virtual {p3}, Lorg/apache/commons/math3/optimization/PointValuePair;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Double;

    invoke-virtual {v8}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    .line 131
    .local v0, "c":D
    sub-double v8, v4, v0

    invoke-static {v8, v9}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v2

    .line 132
    .local v2, "difference":D
    invoke-static {v4, v5}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v8

    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v10

    invoke-static {v8, v9, v10, v11}, Lorg/apache/commons/math3/util/FastMath;->max(DD)D

    move-result-wide v6

    .line 133
    .local v6, "size":D
    invoke-virtual {p0}, Lorg/apache/commons/math3/optimization/SimpleValueChecker;->getRelativeThreshold()D

    move-result-wide v8

    mul-double/2addr v8, v6

    cmpg-double v8, v2, v8

    if-lez v8, :cond_1

    invoke-virtual {p0}, Lorg/apache/commons/math3/optimization/SimpleValueChecker;->getAbsoluteThreshold()D

    move-result-wide v8

    cmpg-double v8, v2, v8

    if-gtz v8, :cond_2

    :cond_1
    const/4 v8, 0x1

    goto :goto_0

    :cond_2
    const/4 v8, 0x0

    goto :goto_0
.end method