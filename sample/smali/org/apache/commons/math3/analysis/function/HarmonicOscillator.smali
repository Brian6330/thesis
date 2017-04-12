.class public Lorg/apache/commons/math3/analysis/function/HarmonicOscillator;
.super Ljava/lang/Object;
.source "HarmonicOscillator.java"

# interfaces
.implements Lorg/apache/commons/math3/analysis/differentiation/UnivariateDifferentiableFunction;
.implements Lorg/apache/commons/math3/analysis/DifferentiableUnivariateFunction;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/math3/analysis/function/HarmonicOscillator$Parametric;
    }
.end annotation


# instance fields
.field private final amplitude:D

.field private final omega:D

.field private final phase:D


# direct methods
.method public constructor <init>(DDD)V
    .locals 1
    .param p1, "amplitude"    # D
    .param p3, "omega"    # D
    .param p5, "phase"    # D

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput-wide p1, p0, Lorg/apache/commons/math3/analysis/function/HarmonicOscillator;->amplitude:D

    .line 55
    iput-wide p3, p0, Lorg/apache/commons/math3/analysis/function/HarmonicOscillator;->omega:D

    .line 56
    iput-wide p5, p0, Lorg/apache/commons/math3/analysis/function/HarmonicOscillator;->phase:D

    .line 57
    return-void
.end method

.method static synthetic access$000(DD)D
    .locals 2
    .param p0, "x0"    # D
    .param p2, "x1"    # D

    .prologue
    .line 36
    invoke-static {p0, p1, p2, p3}, Lorg/apache/commons/math3/analysis/function/HarmonicOscillator;->value(DD)D

    move-result-wide v0

    return-wide v0
.end method

.method private static value(DD)D
    .locals 2
    .param p0, "xTimesOmegaPlusPhase"    # D
    .param p2, "amplitude"    # D

    .prologue
    .line 158
    invoke-static {p0, p1}, Lorg/apache/commons/math3/util/FastMath;->cos(D)D

    move-result-wide v0

    mul-double/2addr v0, p2

    return-wide v0
.end method


# virtual methods
.method public derivative()Lorg/apache/commons/math3/analysis/UnivariateFunction;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 69
    invoke-static {p0}, Lorg/apache/commons/math3/analysis/FunctionUtils;->toDifferentiableUnivariateFunction(Lorg/apache/commons/math3/analysis/differentiation/UnivariateDifferentiableFunction;)Lorg/apache/commons/math3/analysis/DifferentiableUnivariateFunction;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/commons/math3/analysis/DifferentiableUnivariateFunction;->derivative()Lorg/apache/commons/math3/analysis/UnivariateFunction;

    move-result-object v0

    return-object v0
.end method

.method public value(D)D
    .locals 5
    .param p1, "x"    # D

    .prologue
    .line 61
    iget-wide v0, p0, Lorg/apache/commons/math3/analysis/function/HarmonicOscillator;->omega:D

    mul-double/2addr v0, p1

    iget-wide v2, p0, Lorg/apache/commons/math3/analysis/function/HarmonicOscillator;->phase:D

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/apache/commons/math3/analysis/function/HarmonicOscillator;->amplitude:D

    invoke-static {v0, v1, v2, v3}, Lorg/apache/commons/math3/analysis/function/HarmonicOscillator;->value(DD)D

    move-result-wide v0

    return-wide v0
.end method

.method public value(Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;)Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;
    .locals 14
    .param p1, "t"    # Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    .prologue
    .line 166
    invoke-virtual {p1}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->getValue()D

    move-result-wide v6

    .line 167
    .local v6, "x":D
    invoke-virtual {p1}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->getOrder()I

    move-result v8

    add-int/lit8 v8, v8, 0x1

    new-array v2, v8, [D

    .line 169
    .local v2, "f":[D
    iget-wide v8, p0, Lorg/apache/commons/math3/analysis/function/HarmonicOscillator;->omega:D

    mul-double/2addr v8, v6

    iget-wide v10, p0, Lorg/apache/commons/math3/analysis/function/HarmonicOscillator;->phase:D

    add-double v0, v8, v10

    .line 170
    .local v0, "alpha":D
    const/4 v8, 0x0

    iget-wide v10, p0, Lorg/apache/commons/math3/analysis/function/HarmonicOscillator;->amplitude:D

    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->cos(D)D

    move-result-wide v12

    mul-double/2addr v10, v12

    aput-wide v10, v2, v8

    .line 171
    array-length v8, v2

    const/4 v9, 0x1

    if-le v8, v9, :cond_0

    .line 172
    const/4 v8, 0x1

    iget-wide v10, p0, Lorg/apache/commons/math3/analysis/function/HarmonicOscillator;->amplitude:D

    neg-double v10, v10

    iget-wide v12, p0, Lorg/apache/commons/math3/analysis/function/HarmonicOscillator;->omega:D

    mul-double/2addr v10, v12

    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->sin(D)D

    move-result-wide v12

    mul-double/2addr v10, v12

    aput-wide v10, v2, v8

    .line 173
    iget-wide v8, p0, Lorg/apache/commons/math3/analysis/function/HarmonicOscillator;->omega:D

    neg-double v8, v8

    iget-wide v10, p0, Lorg/apache/commons/math3/analysis/function/HarmonicOscillator;->omega:D

    mul-double v4, v8, v10

    .line 174
    .local v4, "mo2":D
    const/4 v3, 0x2

    .local v3, "i":I
    :goto_0
    array-length v8, v2

    if-ge v3, v8, :cond_0

    .line 175
    add-int/lit8 v8, v3, -0x2

    aget-wide v8, v2, v8

    mul-double/2addr v8, v4

    aput-wide v8, v2, v3

    .line 174
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 179
    .end local v3    # "i":I
    .end local v4    # "mo2":D
    :cond_0
    invoke-virtual {p1, v2}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->compose([D)Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;

    move-result-object v8

    return-object v8
.end method
