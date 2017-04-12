.class public abstract Lorg/apache/commons/math3/analysis/integration/BaseAbstractUnivariateIntegrator;
.super Ljava/lang/Object;
.source "BaseAbstractUnivariateIntegrator.java"

# interfaces
.implements Lorg/apache/commons/math3/analysis/integration/UnivariateIntegrator;


# static fields
.field public static final DEFAULT_ABSOLUTE_ACCURACY:D = 1.0E-15

.field public static final DEFAULT_MAX_ITERATIONS_COUNT:I = 0x7fffffff

.field public static final DEFAULT_MIN_ITERATIONS_COUNT:I = 0x3

.field public static final DEFAULT_RELATIVE_ACCURACY:D = 1.0E-6


# instance fields
.field private final absoluteAccuracy:D

.field private final evaluations:Lorg/apache/commons/math3/util/Incrementor;

.field private function:Lorg/apache/commons/math3/analysis/UnivariateFunction;

.field protected final iterations:Lorg/apache/commons/math3/util/Incrementor;

.field private max:D

.field private min:D

.field private final minimalIterationCount:I

.field private final relativeAccuracy:D


# direct methods
.method protected constructor <init>(DD)V
    .locals 9
    .param p1, "relativeAccuracy"    # D
    .param p3, "absoluteAccuracy"    # D

    .prologue
    .line 141
    const/4 v6, 0x3

    const v7, 0x7fffffff

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    invoke-direct/range {v1 .. v7}, Lorg/apache/commons/math3/analysis/integration/BaseAbstractUnivariateIntegrator;-><init>(DDII)V

    .line 143
    return-void
.end method

.method protected constructor <init>(DDII)V
    .locals 5
    .param p1, "relativeAccuracy"    # D
    .param p3, "absoluteAccuracy"    # D
    .param p5, "minimalIterationCount"    # I
    .param p6, "maximalIterationCount"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;,
            Lorg/apache/commons/math3/exception/NumberIsTooSmallException;
        }
    .end annotation

    .prologue
    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 115
    iput-wide p1, p0, Lorg/apache/commons/math3/analysis/integration/BaseAbstractUnivariateIntegrator;->relativeAccuracy:D

    .line 116
    iput-wide p3, p0, Lorg/apache/commons/math3/analysis/integration/BaseAbstractUnivariateIntegrator;->absoluteAccuracy:D

    .line 119
    if-gtz p5, :cond_0

    .line 120
    new-instance v0, Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;-><init>(Ljava/lang/Number;)V

    throw v0

    .line 122
    :cond_0
    if-gt p6, p5, :cond_1

    .line 123
    new-instance v0, Lorg/apache/commons/math3/exception/NumberIsTooSmallException;

    invoke-static {p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/commons/math3/exception/NumberIsTooSmallException;-><init>(Ljava/lang/Number;Ljava/lang/Number;Z)V

    throw v0

    .line 125
    :cond_1
    iput p5, p0, Lorg/apache/commons/math3/analysis/integration/BaseAbstractUnivariateIntegrator;->minimalIterationCount:I

    .line 126
    new-instance v0, Lorg/apache/commons/math3/util/Incrementor;

    invoke-direct {v0}, Lorg/apache/commons/math3/util/Incrementor;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/math3/analysis/integration/BaseAbstractUnivariateIntegrator;->iterations:Lorg/apache/commons/math3/util/Incrementor;

    .line 127
    iget-object v0, p0, Lorg/apache/commons/math3/analysis/integration/BaseAbstractUnivariateIntegrator;->iterations:Lorg/apache/commons/math3/util/Incrementor;

    invoke-virtual {v0, p6}, Lorg/apache/commons/math3/util/Incrementor;->setMaximalCount(I)V

    .line 130
    new-instance v0, Lorg/apache/commons/math3/util/Incrementor;

    invoke-direct {v0}, Lorg/apache/commons/math3/util/Incrementor;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/math3/analysis/integration/BaseAbstractUnivariateIntegrator;->evaluations:Lorg/apache/commons/math3/util/Incrementor;

    .line 132
    return-void
.end method

.method protected constructor <init>(II)V
    .locals 8
    .param p1, "minimalIterationCount"    # I
    .param p2, "maximalIterationCount"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;,
            Lorg/apache/commons/math3/exception/NumberIsTooSmallException;
        }
    .end annotation

    .prologue
    .line 157
    const-wide v2, 0x3eb0c6f7a0b5ed8dL    # 1.0E-6

    const-wide v4, 0x3cd203af9ee75616L    # 1.0E-15

    move-object v1, p0

    move v6, p1

    move v7, p2

    invoke-direct/range {v1 .. v7}, Lorg/apache/commons/math3/analysis/integration/BaseAbstractUnivariateIntegrator;-><init>(DDII)V

    .line 159
    return-void
.end method


# virtual methods
.method protected computeObjectiveValue(D)D
    .locals 5
    .param p1, "point"    # D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/TooManyEvaluationsException;
        }
    .end annotation

    .prologue
    .line 215
    :try_start_0
    iget-object v1, p0, Lorg/apache/commons/math3/analysis/integration/BaseAbstractUnivariateIntegrator;->evaluations:Lorg/apache/commons/math3/util/Incrementor;

    invoke-virtual {v1}, Lorg/apache/commons/math3/util/Incrementor;->incrementCount()V
    :try_end_0
    .catch Lorg/apache/commons/math3/exception/MaxCountExceededException; {:try_start_0 .. :try_end_0} :catch_0

    .line 219
    iget-object v1, p0, Lorg/apache/commons/math3/analysis/integration/BaseAbstractUnivariateIntegrator;->function:Lorg/apache/commons/math3/analysis/UnivariateFunction;

    invoke-interface {v1, p1, p2}, Lorg/apache/commons/math3/analysis/UnivariateFunction;->value(D)D

    move-result-wide v2

    return-wide v2

    .line 216
    :catch_0
    move-exception v0

    .line 217
    .local v0, "e":Lorg/apache/commons/math3/exception/MaxCountExceededException;
    new-instance v1, Lorg/apache/commons/math3/exception/TooManyEvaluationsException;

    invoke-virtual {v0}, Lorg/apache/commons/math3/exception/MaxCountExceededException;->getMax()Ljava/lang/Number;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/commons/math3/exception/TooManyEvaluationsException;-><init>(Ljava/lang/Number;)V

    throw v1
.end method

.method protected abstract doIntegrate()D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/TooManyEvaluationsException;,
            Lorg/apache/commons/math3/exception/MaxCountExceededException;
        }
    .end annotation
.end method

.method public getAbsoluteAccuracy()D
    .locals 2

    .prologue
    .line 168
    iget-wide v0, p0, Lorg/apache/commons/math3/analysis/integration/BaseAbstractUnivariateIntegrator;->absoluteAccuracy:D

    return-wide v0
.end method

.method public getEvaluations()I
    .locals 1

    .prologue
    .line 183
    iget-object v0, p0, Lorg/apache/commons/math3/analysis/integration/BaseAbstractUnivariateIntegrator;->evaluations:Lorg/apache/commons/math3/util/Incrementor;

    invoke-virtual {v0}, Lorg/apache/commons/math3/util/Incrementor;->getCount()I

    move-result v0

    return v0
.end method

.method public getIterations()I
    .locals 1

    .prologue
    .line 188
    iget-object v0, p0, Lorg/apache/commons/math3/analysis/integration/BaseAbstractUnivariateIntegrator;->iterations:Lorg/apache/commons/math3/util/Incrementor;

    invoke-virtual {v0}, Lorg/apache/commons/math3/util/Incrementor;->getCount()I

    move-result v0

    return v0
.end method

.method protected getMax()D
    .locals 2

    .prologue
    .line 201
    iget-wide v0, p0, Lorg/apache/commons/math3/analysis/integration/BaseAbstractUnivariateIntegrator;->max:D

    return-wide v0
.end method

.method public getMaximalIterationCount()I
    .locals 1

    .prologue
    .line 178
    iget-object v0, p0, Lorg/apache/commons/math3/analysis/integration/BaseAbstractUnivariateIntegrator;->iterations:Lorg/apache/commons/math3/util/Incrementor;

    invoke-virtual {v0}, Lorg/apache/commons/math3/util/Incrementor;->getMaximalCount()I

    move-result v0

    return v0
.end method

.method protected getMin()D
    .locals 2

    .prologue
    .line 195
    iget-wide v0, p0, Lorg/apache/commons/math3/analysis/integration/BaseAbstractUnivariateIntegrator;->min:D

    return-wide v0
.end method

.method public getMinimalIterationCount()I
    .locals 1

    .prologue
    .line 173
    iget v0, p0, Lorg/apache/commons/math3/analysis/integration/BaseAbstractUnivariateIntegrator;->minimalIterationCount:I

    return v0
.end method

.method public getRelativeAccuracy()D
    .locals 2

    .prologue
    .line 163
    iget-wide v0, p0, Lorg/apache/commons/math3/analysis/integration/BaseAbstractUnivariateIntegrator;->relativeAccuracy:D

    return-wide v0
.end method

.method public integrate(ILorg/apache/commons/math3/analysis/UnivariateFunction;DD)D
    .locals 3
    .param p1, "maxEval"    # I
    .param p2, "f"    # Lorg/apache/commons/math3/analysis/UnivariateFunction;
    .param p3, "lower"    # D
    .param p5, "upper"    # D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/TooManyEvaluationsException;,
            Lorg/apache/commons/math3/exception/MaxCountExceededException;,
            Lorg/apache/commons/math3/exception/MathIllegalArgumentException;,
            Lorg/apache/commons/math3/exception/NullArgumentException;
        }
    .end annotation

    .prologue
    .line 260
    invoke-virtual/range {p0 .. p6}, Lorg/apache/commons/math3/analysis/integration/BaseAbstractUnivariateIntegrator;->setup(ILorg/apache/commons/math3/analysis/UnivariateFunction;DD)V

    .line 263
    invoke-virtual {p0}, Lorg/apache/commons/math3/analysis/integration/BaseAbstractUnivariateIntegrator;->doIntegrate()D

    move-result-wide v0

    return-wide v0
.end method

.method protected setup(ILorg/apache/commons/math3/analysis/UnivariateFunction;DD)V
    .locals 1
    .param p1, "maxEval"    # I
    .param p2, "f"    # Lorg/apache/commons/math3/analysis/UnivariateFunction;
    .param p3, "lower"    # D
    .param p5, "upper"    # D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;,
            Lorg/apache/commons/math3/exception/MathIllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 240
    invoke-static {p2}, Lorg/apache/commons/math3/util/MathUtils;->checkNotNull(Ljava/lang/Object;)V

    .line 241
    invoke-static {p3, p4, p5, p6}, Lorg/apache/commons/math3/analysis/solvers/UnivariateSolverUtils;->verifyInterval(DD)V

    .line 244
    iput-wide p3, p0, Lorg/apache/commons/math3/analysis/integration/BaseAbstractUnivariateIntegrator;->min:D

    .line 245
    iput-wide p5, p0, Lorg/apache/commons/math3/analysis/integration/BaseAbstractUnivariateIntegrator;->max:D

    .line 246
    iput-object p2, p0, Lorg/apache/commons/math3/analysis/integration/BaseAbstractUnivariateIntegrator;->function:Lorg/apache/commons/math3/analysis/UnivariateFunction;

    .line 247
    iget-object v0, p0, Lorg/apache/commons/math3/analysis/integration/BaseAbstractUnivariateIntegrator;->evaluations:Lorg/apache/commons/math3/util/Incrementor;

    invoke-virtual {v0, p1}, Lorg/apache/commons/math3/util/Incrementor;->setMaximalCount(I)V

    .line 248
    iget-object v0, p0, Lorg/apache/commons/math3/analysis/integration/BaseAbstractUnivariateIntegrator;->evaluations:Lorg/apache/commons/math3/util/Incrementor;

    invoke-virtual {v0}, Lorg/apache/commons/math3/util/Incrementor;->resetCount()V

    .line 249
    iget-object v0, p0, Lorg/apache/commons/math3/analysis/integration/BaseAbstractUnivariateIntegrator;->iterations:Lorg/apache/commons/math3/util/Incrementor;

    invoke-virtual {v0}, Lorg/apache/commons/math3/util/Incrementor;->resetCount()V

    .line 251
    return-void
.end method
