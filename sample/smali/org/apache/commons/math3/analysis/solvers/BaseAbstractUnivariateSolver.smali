.class public abstract Lorg/apache/commons/math3/analysis/solvers/BaseAbstractUnivariateSolver;
.super Ljava/lang/Object;
.source "BaseAbstractUnivariateSolver.java"

# interfaces
.implements Lorg/apache/commons/math3/analysis/solvers/BaseUnivariateSolver;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<FUNC::",
        "Lorg/apache/commons/math3/analysis/UnivariateFunction;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/apache/commons/math3/analysis/solvers/BaseUnivariateSolver",
        "<TFUNC;>;"
    }
.end annotation


# static fields
.field private static final DEFAULT_FUNCTION_VALUE_ACCURACY:D = 1.0E-15

.field private static final DEFAULT_RELATIVE_ACCURACY:D = 1.0E-14


# instance fields
.field private final absoluteAccuracy:D

.field private final evaluations:Lorg/apache/commons/math3/util/Incrementor;

.field private function:Lorg/apache/commons/math3/analysis/UnivariateFunction;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TFUNC;"
        }
    .end annotation
.end field

.field private final functionValueAccuracy:D

.field private final relativeAccuracy:D

.field private searchMax:D

.field private searchMin:D

.field private searchStart:D


# direct methods
.method protected constructor <init>(D)V
    .locals 9
    .param p1, "absoluteAccuracy"    # D

    .prologue
    .line 70
    .local p0, "this":Lorg/apache/commons/math3/analysis/solvers/BaseAbstractUnivariateSolver;, "Lorg/apache/commons/math3/analysis/solvers/BaseAbstractUnivariateSolver<TFUNC;>;"
    const-wide v2, 0x3d06849b86a12b9bL    # 1.0E-14

    const-wide v6, 0x3cd203af9ee75616L    # 1.0E-15

    move-object v1, p0

    move-wide v4, p1

    invoke-direct/range {v1 .. v7}, Lorg/apache/commons/math3/analysis/solvers/BaseAbstractUnivariateSolver;-><init>(DDD)V

    .line 73
    return-void
.end method

.method protected constructor <init>(DD)V
    .locals 9
    .param p1, "relativeAccuracy"    # D
    .param p3, "absoluteAccuracy"    # D

    .prologue
    .line 83
    .local p0, "this":Lorg/apache/commons/math3/analysis/solvers/BaseAbstractUnivariateSolver;, "Lorg/apache/commons/math3/analysis/solvers/BaseAbstractUnivariateSolver<TFUNC;>;"
    const-wide v6, 0x3cd203af9ee75616L    # 1.0E-15

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    invoke-direct/range {v1 .. v7}, Lorg/apache/commons/math3/analysis/solvers/BaseAbstractUnivariateSolver;-><init>(DDD)V

    .line 86
    return-void
.end method

.method protected constructor <init>(DDD)V
    .locals 1
    .param p1, "relativeAccuracy"    # D
    .param p3, "absoluteAccuracy"    # D
    .param p5, "functionValueAccuracy"    # D

    .prologue
    .line 97
    .local p0, "this":Lorg/apache/commons/math3/analysis/solvers/BaseAbstractUnivariateSolver;, "Lorg/apache/commons/math3/analysis/solvers/BaseAbstractUnivariateSolver<TFUNC;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    new-instance v0, Lorg/apache/commons/math3/util/Incrementor;

    invoke-direct {v0}, Lorg/apache/commons/math3/util/Incrementor;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/math3/analysis/solvers/BaseAbstractUnivariateSolver;->evaluations:Lorg/apache/commons/math3/util/Incrementor;

    .line 98
    iput-wide p3, p0, Lorg/apache/commons/math3/analysis/solvers/BaseAbstractUnivariateSolver;->absoluteAccuracy:D

    .line 99
    iput-wide p1, p0, Lorg/apache/commons/math3/analysis/solvers/BaseAbstractUnivariateSolver;->relativeAccuracy:D

    .line 100
    iput-wide p5, p0, Lorg/apache/commons/math3/analysis/solvers/BaseAbstractUnivariateSolver;->functionValueAccuracy:D

    .line 101
    return-void
.end method


# virtual methods
.method protected computeObjectiveValue(D)D
    .locals 3
    .param p1, "point"    # D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/TooManyEvaluationsException;
        }
    .end annotation

    .prologue
    .line 158
    .local p0, "this":Lorg/apache/commons/math3/analysis/solvers/BaseAbstractUnivariateSolver;, "Lorg/apache/commons/math3/analysis/solvers/BaseAbstractUnivariateSolver<TFUNC;>;"
    invoke-virtual {p0}, Lorg/apache/commons/math3/analysis/solvers/BaseAbstractUnivariateSolver;->incrementEvaluationCount()V

    .line 159
    iget-object v0, p0, Lorg/apache/commons/math3/analysis/solvers/BaseAbstractUnivariateSolver;->function:Lorg/apache/commons/math3/analysis/UnivariateFunction;

    invoke-interface {v0, p1, p2}, Lorg/apache/commons/math3/analysis/UnivariateFunction;->value(D)D

    move-result-wide v0

    return-wide v0
.end method

.method protected abstract doSolve()D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/TooManyEvaluationsException;,
            Lorg/apache/commons/math3/exception/NoBracketingException;
        }
    .end annotation
.end method

.method public getAbsoluteAccuracy()D
    .locals 2

    .prologue
    .line 133
    .local p0, "this":Lorg/apache/commons/math3/analysis/solvers/BaseAbstractUnivariateSolver;, "Lorg/apache/commons/math3/analysis/solvers/BaseAbstractUnivariateSolver<TFUNC;>;"
    iget-wide v0, p0, Lorg/apache/commons/math3/analysis/solvers/BaseAbstractUnivariateSolver;->absoluteAccuracy:D

    return-wide v0
.end method

.method public getEvaluations()I
    .locals 1

    .prologue
    .line 109
    .local p0, "this":Lorg/apache/commons/math3/analysis/solvers/BaseAbstractUnivariateSolver;, "Lorg/apache/commons/math3/analysis/solvers/BaseAbstractUnivariateSolver<TFUNC;>;"
    iget-object v0, p0, Lorg/apache/commons/math3/analysis/solvers/BaseAbstractUnivariateSolver;->evaluations:Lorg/apache/commons/math3/util/Incrementor;

    invoke-virtual {v0}, Lorg/apache/commons/math3/util/Incrementor;->getCount()I

    move-result v0

    return v0
.end method

.method public getFunctionValueAccuracy()D
    .locals 2

    .prologue
    .line 145
    .local p0, "this":Lorg/apache/commons/math3/analysis/solvers/BaseAbstractUnivariateSolver;, "Lorg/apache/commons/math3/analysis/solvers/BaseAbstractUnivariateSolver<TFUNC;>;"
    iget-wide v0, p0, Lorg/apache/commons/math3/analysis/solvers/BaseAbstractUnivariateSolver;->functionValueAccuracy:D

    return-wide v0
.end method

.method public getMax()D
    .locals 2

    .prologue
    .line 121
    .local p0, "this":Lorg/apache/commons/math3/analysis/solvers/BaseAbstractUnivariateSolver;, "Lorg/apache/commons/math3/analysis/solvers/BaseAbstractUnivariateSolver<TFUNC;>;"
    iget-wide v0, p0, Lorg/apache/commons/math3/analysis/solvers/BaseAbstractUnivariateSolver;->searchMax:D

    return-wide v0
.end method

.method public getMaxEvaluations()I
    .locals 1

    .prologue
    .line 105
    .local p0, "this":Lorg/apache/commons/math3/analysis/solvers/BaseAbstractUnivariateSolver;, "Lorg/apache/commons/math3/analysis/solvers/BaseAbstractUnivariateSolver<TFUNC;>;"
    iget-object v0, p0, Lorg/apache/commons/math3/analysis/solvers/BaseAbstractUnivariateSolver;->evaluations:Lorg/apache/commons/math3/util/Incrementor;

    invoke-virtual {v0}, Lorg/apache/commons/math3/util/Incrementor;->getMaximalCount()I

    move-result v0

    return v0
.end method

.method public getMin()D
    .locals 2

    .prologue
    .line 115
    .local p0, "this":Lorg/apache/commons/math3/analysis/solvers/BaseAbstractUnivariateSolver;, "Lorg/apache/commons/math3/analysis/solvers/BaseAbstractUnivariateSolver<TFUNC;>;"
    iget-wide v0, p0, Lorg/apache/commons/math3/analysis/solvers/BaseAbstractUnivariateSolver;->searchMin:D

    return-wide v0
.end method

.method public getRelativeAccuracy()D
    .locals 2

    .prologue
    .line 139
    .local p0, "this":Lorg/apache/commons/math3/analysis/solvers/BaseAbstractUnivariateSolver;, "Lorg/apache/commons/math3/analysis/solvers/BaseAbstractUnivariateSolver<TFUNC;>;"
    iget-wide v0, p0, Lorg/apache/commons/math3/analysis/solvers/BaseAbstractUnivariateSolver;->relativeAccuracy:D

    return-wide v0
.end method

.method public getStartValue()D
    .locals 2

    .prologue
    .line 127
    .local p0, "this":Lorg/apache/commons/math3/analysis/solvers/BaseAbstractUnivariateSolver;, "Lorg/apache/commons/math3/analysis/solvers/BaseAbstractUnivariateSolver<TFUNC;>;"
    iget-wide v0, p0, Lorg/apache/commons/math3/analysis/solvers/BaseAbstractUnivariateSolver;->searchStart:D

    return-wide v0
.end method

.method protected incrementEvaluationCount()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/TooManyEvaluationsException;
        }
    .end annotation

    .prologue
    .line 313
    .local p0, "this":Lorg/apache/commons/math3/analysis/solvers/BaseAbstractUnivariateSolver;, "Lorg/apache/commons/math3/analysis/solvers/BaseAbstractUnivariateSolver<TFUNC;>;"
    :try_start_0
    iget-object v1, p0, Lorg/apache/commons/math3/analysis/solvers/BaseAbstractUnivariateSolver;->evaluations:Lorg/apache/commons/math3/util/Incrementor;

    invoke-virtual {v1}, Lorg/apache/commons/math3/util/Incrementor;->incrementCount()V
    :try_end_0
    .catch Lorg/apache/commons/math3/exception/MaxCountExceededException; {:try_start_0 .. :try_end_0} :catch_0

    .line 317
    return-void

    .line 314
    :catch_0
    move-exception v0

    .line 315
    .local v0, "e":Lorg/apache/commons/math3/exception/MaxCountExceededException;
    new-instance v1, Lorg/apache/commons/math3/exception/TooManyEvaluationsException;

    invoke-virtual {v0}, Lorg/apache/commons/math3/exception/MaxCountExceededException;->getMax()Ljava/lang/Number;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/commons/math3/exception/TooManyEvaluationsException;-><init>(Ljava/lang/Number;)V

    throw v1
.end method

.method protected isBracketing(DD)Z
    .locals 1
    .param p1, "lower"    # D
    .param p3, "upper"    # D

    .prologue
    .line 237
    .local p0, "this":Lorg/apache/commons/math3/analysis/solvers/BaseAbstractUnivariateSolver;, "Lorg/apache/commons/math3/analysis/solvers/BaseAbstractUnivariateSolver<TFUNC;>;"
    iget-object v0, p0, Lorg/apache/commons/math3/analysis/solvers/BaseAbstractUnivariateSolver;->function:Lorg/apache/commons/math3/analysis/UnivariateFunction;

    invoke-static {v0, p1, p2, p3, p4}, Lorg/apache/commons/math3/analysis/solvers/UnivariateSolverUtils;->isBracketing(Lorg/apache/commons/math3/analysis/UnivariateFunction;DD)Z

    move-result v0

    return v0
.end method

.method protected isSequence(DDD)Z
    .locals 1
    .param p1, "start"    # D
    .param p3, "mid"    # D
    .param p5, "end"    # D

    .prologue
    .line 251
    .local p0, "this":Lorg/apache/commons/math3/analysis/solvers/BaseAbstractUnivariateSolver;, "Lorg/apache/commons/math3/analysis/solvers/BaseAbstractUnivariateSolver<TFUNC;>;"
    invoke-static/range {p1 .. p6}, Lorg/apache/commons/math3/analysis/solvers/UnivariateSolverUtils;->isSequence(DDD)Z

    move-result v0

    return v0
.end method

.method protected setup(ILorg/apache/commons/math3/analysis/UnivariateFunction;DDD)V
    .locals 1
    .param p1, "maxEval"    # I
    .param p3, "min"    # D
    .param p5, "max"    # D
    .param p7, "startValue"    # D
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITFUNC;DDD)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;
        }
    .end annotation

    .prologue
    .line 180
    .local p0, "this":Lorg/apache/commons/math3/analysis/solvers/BaseAbstractUnivariateSolver;, "Lorg/apache/commons/math3/analysis/solvers/BaseAbstractUnivariateSolver<TFUNC;>;"
    .local p2, "f":Lorg/apache/commons/math3/analysis/UnivariateFunction;, "TFUNC;"
    invoke-static {p2}, Lorg/apache/commons/math3/util/MathUtils;->checkNotNull(Ljava/lang/Object;)V

    .line 183
    iput-wide p3, p0, Lorg/apache/commons/math3/analysis/solvers/BaseAbstractUnivariateSolver;->searchMin:D

    .line 184
    iput-wide p5, p0, Lorg/apache/commons/math3/analysis/solvers/BaseAbstractUnivariateSolver;->searchMax:D

    .line 185
    iput-wide p7, p0, Lorg/apache/commons/math3/analysis/solvers/BaseAbstractUnivariateSolver;->searchStart:D

    .line 186
    iput-object p2, p0, Lorg/apache/commons/math3/analysis/solvers/BaseAbstractUnivariateSolver;->function:Lorg/apache/commons/math3/analysis/UnivariateFunction;

    .line 187
    iget-object v0, p0, Lorg/apache/commons/math3/analysis/solvers/BaseAbstractUnivariateSolver;->evaluations:Lorg/apache/commons/math3/util/Incrementor;

    invoke-virtual {v0, p1}, Lorg/apache/commons/math3/util/Incrementor;->setMaximalCount(I)V

    .line 188
    iget-object v0, p0, Lorg/apache/commons/math3/analysis/solvers/BaseAbstractUnivariateSolver;->evaluations:Lorg/apache/commons/math3/util/Incrementor;

    invoke-virtual {v0}, Lorg/apache/commons/math3/util/Incrementor;->resetCount()V

    .line 189
    return-void
.end method

.method public solve(ILorg/apache/commons/math3/analysis/UnivariateFunction;D)D
    .locals 11
    .param p1, "maxEval"    # I
    .param p3, "startValue"    # D
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITFUNC;D)D"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/TooManyEvaluationsException;,
            Lorg/apache/commons/math3/exception/NoBracketingException;
        }
    .end annotation

    .prologue
    .local p0, "this":Lorg/apache/commons/math3/analysis/solvers/BaseAbstractUnivariateSolver;, "Lorg/apache/commons/math3/analysis/solvers/BaseAbstractUnivariateSolver<TFUNC;>;"
    .local p2, "f":Lorg/apache/commons/math3/analysis/UnivariateFunction;, "TFUNC;"
    const-wide/high16 v4, 0x7ff8000000000000L    # NaN

    .line 211
    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-wide v6, v4

    move-wide v8, p3

    invoke-virtual/range {v1 .. v9}, Lorg/apache/commons/math3/analysis/solvers/BaseAbstractUnivariateSolver;->solve(ILorg/apache/commons/math3/analysis/UnivariateFunction;DDD)D

    move-result-wide v0

    return-wide v0
.end method

.method public solve(ILorg/apache/commons/math3/analysis/UnivariateFunction;DD)D
    .locals 11
    .param p1, "maxEval"    # I
    .param p3, "min"    # D
    .param p5, "max"    # D
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITFUNC;DD)D"
        }
    .end annotation

    .prologue
    .line 204
    .local p0, "this":Lorg/apache/commons/math3/analysis/solvers/BaseAbstractUnivariateSolver;, "Lorg/apache/commons/math3/analysis/solvers/BaseAbstractUnivariateSolver<TFUNC;>;"
    .local p2, "f":Lorg/apache/commons/math3/analysis/UnivariateFunction;, "TFUNC;"
    const-wide/high16 v0, 0x3fe0000000000000L    # 0.5

    sub-double v2, p5, p3

    mul-double/2addr v0, v2

    add-double v8, p3, v0

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-wide v4, p3

    move-wide/from16 v6, p5

    invoke-virtual/range {v1 .. v9}, Lorg/apache/commons/math3/analysis/solvers/BaseAbstractUnivariateSolver;->solve(ILorg/apache/commons/math3/analysis/UnivariateFunction;DDD)D

    move-result-wide v0

    return-wide v0
.end method

.method public solve(ILorg/apache/commons/math3/analysis/UnivariateFunction;DDD)D
    .locals 3
    .param p1, "maxEval"    # I
    .param p3, "min"    # D
    .param p5, "max"    # D
    .param p7, "startValue"    # D
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITFUNC;DDD)D"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/TooManyEvaluationsException;,
            Lorg/apache/commons/math3/exception/NoBracketingException;
        }
    .end annotation

    .prologue
    .line 196
    .local p0, "this":Lorg/apache/commons/math3/analysis/solvers/BaseAbstractUnivariateSolver;, "Lorg/apache/commons/math3/analysis/solvers/BaseAbstractUnivariateSolver<TFUNC;>;"
    .local p2, "f":Lorg/apache/commons/math3/analysis/UnivariateFunction;, "TFUNC;"
    invoke-virtual/range {p0 .. p8}, Lorg/apache/commons/math3/analysis/solvers/BaseAbstractUnivariateSolver;->setup(ILorg/apache/commons/math3/analysis/UnivariateFunction;DDD)V

    .line 199
    invoke-virtual {p0}, Lorg/apache/commons/math3/analysis/solvers/BaseAbstractUnivariateSolver;->doSolve()D

    move-result-wide v0

    return-wide v0
.end method

.method protected verifyBracketing(DD)V
    .locals 1
    .param p1, "lower"    # D
    .param p3, "upper"    # D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;,
            Lorg/apache/commons/math3/exception/NoBracketingException;
        }
    .end annotation

    .prologue
    .line 297
    .local p0, "this":Lorg/apache/commons/math3/analysis/solvers/BaseAbstractUnivariateSolver;, "Lorg/apache/commons/math3/analysis/solvers/BaseAbstractUnivariateSolver<TFUNC;>;"
    iget-object v0, p0, Lorg/apache/commons/math3/analysis/solvers/BaseAbstractUnivariateSolver;->function:Lorg/apache/commons/math3/analysis/UnivariateFunction;

    invoke-static {v0, p1, p2, p3, p4}, Lorg/apache/commons/math3/analysis/solvers/UnivariateSolverUtils;->verifyBracketing(Lorg/apache/commons/math3/analysis/UnivariateFunction;DD)V

    .line 298
    return-void
.end method

.method protected verifyInterval(DD)V
    .locals 1
    .param p1, "lower"    # D
    .param p3, "upper"    # D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NumberIsTooLargeException;
        }
    .end annotation

    .prologue
    .line 264
    .local p0, "this":Lorg/apache/commons/math3/analysis/solvers/BaseAbstractUnivariateSolver;, "Lorg/apache/commons/math3/analysis/solvers/BaseAbstractUnivariateSolver<TFUNC;>;"
    invoke-static {p1, p2, p3, p4}, Lorg/apache/commons/math3/analysis/solvers/UnivariateSolverUtils;->verifyInterval(DD)V

    .line 265
    return-void
.end method

.method protected verifySequence(DDD)V
    .locals 1
    .param p1, "lower"    # D
    .param p3, "initial"    # D
    .param p5, "upper"    # D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NumberIsTooLargeException;
        }
    .end annotation

    .prologue
    .line 280
    .local p0, "this":Lorg/apache/commons/math3/analysis/solvers/BaseAbstractUnivariateSolver;, "Lorg/apache/commons/math3/analysis/solvers/BaseAbstractUnivariateSolver<TFUNC;>;"
    invoke-static/range {p1 .. p6}, Lorg/apache/commons/math3/analysis/solvers/UnivariateSolverUtils;->verifySequence(DDD)V

    .line 281
    return-void
.end method
