.class public Lorg/apache/commons/math3/analysis/integration/gauss/GaussIntegratorFactory;
.super Ljava/lang/Object;
.source "GaussIntegratorFactory.java"


# instance fields
.field private final hermite:Lorg/apache/commons/math3/analysis/integration/gauss/BaseRuleFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/commons/math3/analysis/integration/gauss/BaseRuleFactory",
            "<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation
.end field

.field private final legendre:Lorg/apache/commons/math3/analysis/integration/gauss/BaseRuleFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/commons/math3/analysis/integration/gauss/BaseRuleFactory",
            "<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation
.end field

.field private final legendreHighPrecision:Lorg/apache/commons/math3/analysis/integration/gauss/BaseRuleFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/commons/math3/analysis/integration/gauss/BaseRuleFactory",
            "<",
            "Ljava/math/BigDecimal;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance v0, Lorg/apache/commons/math3/analysis/integration/gauss/LegendreRuleFactory;

    invoke-direct {v0}, Lorg/apache/commons/math3/analysis/integration/gauss/LegendreRuleFactory;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/math3/analysis/integration/gauss/GaussIntegratorFactory;->legendre:Lorg/apache/commons/math3/analysis/integration/gauss/BaseRuleFactory;

    .line 35
    new-instance v0, Lorg/apache/commons/math3/analysis/integration/gauss/LegendreHighPrecisionRuleFactory;

    invoke-direct {v0}, Lorg/apache/commons/math3/analysis/integration/gauss/LegendreHighPrecisionRuleFactory;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/math3/analysis/integration/gauss/GaussIntegratorFactory;->legendreHighPrecision:Lorg/apache/commons/math3/analysis/integration/gauss/BaseRuleFactory;

    .line 37
    new-instance v0, Lorg/apache/commons/math3/analysis/integration/gauss/HermiteRuleFactory;

    invoke-direct {v0}, Lorg/apache/commons/math3/analysis/integration/gauss/HermiteRuleFactory;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/math3/analysis/integration/gauss/GaussIntegratorFactory;->hermite:Lorg/apache/commons/math3/analysis/integration/gauss/BaseRuleFactory;

    return-void
.end method

.method private static getRule(Lorg/apache/commons/math3/analysis/integration/gauss/BaseRuleFactory;I)Lorg/apache/commons/math3/util/Pair;
    .locals 1
    .param p1, "numberOfPoints"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/analysis/integration/gauss/BaseRuleFactory",
            "<+",
            "Ljava/lang/Number;",
            ">;I)",
            "Lorg/apache/commons/math3/util/Pair",
            "<[D[D>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;,
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    .prologue
    .line 139
    .local p0, "factory":Lorg/apache/commons/math3/analysis/integration/gauss/BaseRuleFactory;, "Lorg/apache/commons/math3/analysis/integration/gauss/BaseRuleFactory<+Ljava/lang/Number;>;"
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/analysis/integration/gauss/BaseRuleFactory;->getRule(I)Lorg/apache/commons/math3/util/Pair;

    move-result-object v0

    return-object v0
.end method

.method private static transform(Lorg/apache/commons/math3/util/Pair;DD)Lorg/apache/commons/math3/util/Pair;
    .locals 13
    .param p1, "a"    # D
    .param p3, "b"    # D
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/util/Pair",
            "<[D[D>;DD)",
            "Lorg/apache/commons/math3/util/Pair",
            "<[D[D>;"
        }
    .end annotation

    .prologue
    .line 155
    .local p0, "rule":Lorg/apache/commons/math3/util/Pair;, "Lorg/apache/commons/math3/util/Pair<[D[D>;"
    invoke-virtual {p0}, Lorg/apache/commons/math3/util/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [D

    .line 156
    .local v1, "points":[D
    invoke-virtual {p0}, Lorg/apache/commons/math3/util/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [D

    .line 159
    .local v6, "weights":[D
    sub-double v8, p3, p1

    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    div-double v2, v8, v10

    .line 160
    .local v2, "scale":D
    add-double v4, p1, v2

    .line 162
    .local v4, "shift":D
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v7, v1

    if-ge v0, v7, :cond_0

    .line 163
    aget-wide v8, v1, v0

    mul-double/2addr v8, v2

    add-double/2addr v8, v4

    aput-wide v8, v1, v0

    .line 164
    aget-wide v8, v6, v0

    mul-double/2addr v8, v2

    aput-wide v8, v6, v0

    .line 162
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 167
    :cond_0
    new-instance v7, Lorg/apache/commons/math3/util/Pair;

    invoke-direct {v7, v1, v6}, Lorg/apache/commons/math3/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v7
.end method


# virtual methods
.method public hermite(I)Lorg/apache/commons/math3/analysis/integration/gauss/SymmetricGaussIntegrator;
    .locals 2
    .param p1, "numberOfPoints"    # I

    .prologue
    .line 125
    new-instance v0, Lorg/apache/commons/math3/analysis/integration/gauss/SymmetricGaussIntegrator;

    iget-object v1, p0, Lorg/apache/commons/math3/analysis/integration/gauss/GaussIntegratorFactory;->hermite:Lorg/apache/commons/math3/analysis/integration/gauss/BaseRuleFactory;

    invoke-static {v1, p1}, Lorg/apache/commons/math3/analysis/integration/gauss/GaussIntegratorFactory;->getRule(Lorg/apache/commons/math3/analysis/integration/gauss/BaseRuleFactory;I)Lorg/apache/commons/math3/util/Pair;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/commons/math3/analysis/integration/gauss/SymmetricGaussIntegrator;-><init>(Lorg/apache/commons/math3/util/Pair;)V

    return-object v0
.end method

.method public legendre(I)Lorg/apache/commons/math3/analysis/integration/gauss/GaussIntegrator;
    .locals 2
    .param p1, "numberOfPoints"    # I

    .prologue
    .line 50
    new-instance v0, Lorg/apache/commons/math3/analysis/integration/gauss/GaussIntegrator;

    iget-object v1, p0, Lorg/apache/commons/math3/analysis/integration/gauss/GaussIntegratorFactory;->legendre:Lorg/apache/commons/math3/analysis/integration/gauss/BaseRuleFactory;

    invoke-static {v1, p1}, Lorg/apache/commons/math3/analysis/integration/gauss/GaussIntegratorFactory;->getRule(Lorg/apache/commons/math3/analysis/integration/gauss/BaseRuleFactory;I)Lorg/apache/commons/math3/util/Pair;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/commons/math3/analysis/integration/gauss/GaussIntegrator;-><init>(Lorg/apache/commons/math3/util/Pair;)V

    return-object v0
.end method

.method public legendre(IDD)Lorg/apache/commons/math3/analysis/integration/gauss/GaussIntegrator;
    .locals 2
    .param p1, "numberOfPoints"    # I
    .param p2, "lowerBound"    # D
    .param p4, "upperBound"    # D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;
        }
    .end annotation

    .prologue
    .line 69
    new-instance v0, Lorg/apache/commons/math3/analysis/integration/gauss/GaussIntegrator;

    iget-object v1, p0, Lorg/apache/commons/math3/analysis/integration/gauss/GaussIntegratorFactory;->legendre:Lorg/apache/commons/math3/analysis/integration/gauss/BaseRuleFactory;

    invoke-static {v1, p1}, Lorg/apache/commons/math3/analysis/integration/gauss/GaussIntegratorFactory;->getRule(Lorg/apache/commons/math3/analysis/integration/gauss/BaseRuleFactory;I)Lorg/apache/commons/math3/util/Pair;

    move-result-object v1

    invoke-static {v1, p2, p3, p4, p5}, Lorg/apache/commons/math3/analysis/integration/gauss/GaussIntegratorFactory;->transform(Lorg/apache/commons/math3/util/Pair;DD)Lorg/apache/commons/math3/util/Pair;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/commons/math3/analysis/integration/gauss/GaussIntegrator;-><init>(Lorg/apache/commons/math3/util/Pair;)V

    return-object v0
.end method

.method public legendreHighPrecision(I)Lorg/apache/commons/math3/analysis/integration/gauss/GaussIntegrator;
    .locals 2
    .param p1, "numberOfPoints"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;
        }
    .end annotation

    .prologue
    .line 86
    new-instance v0, Lorg/apache/commons/math3/analysis/integration/gauss/GaussIntegrator;

    iget-object v1, p0, Lorg/apache/commons/math3/analysis/integration/gauss/GaussIntegratorFactory;->legendreHighPrecision:Lorg/apache/commons/math3/analysis/integration/gauss/BaseRuleFactory;

    invoke-static {v1, p1}, Lorg/apache/commons/math3/analysis/integration/gauss/GaussIntegratorFactory;->getRule(Lorg/apache/commons/math3/analysis/integration/gauss/BaseRuleFactory;I)Lorg/apache/commons/math3/util/Pair;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/commons/math3/analysis/integration/gauss/GaussIntegrator;-><init>(Lorg/apache/commons/math3/util/Pair;)V

    return-object v0
.end method

.method public legendreHighPrecision(IDD)Lorg/apache/commons/math3/analysis/integration/gauss/GaussIntegrator;
    .locals 2
    .param p1, "numberOfPoints"    # I
    .param p2, "lowerBound"    # D
    .param p4, "upperBound"    # D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;
        }
    .end annotation

    .prologue
    .line 104
    new-instance v0, Lorg/apache/commons/math3/analysis/integration/gauss/GaussIntegrator;

    iget-object v1, p0, Lorg/apache/commons/math3/analysis/integration/gauss/GaussIntegratorFactory;->legendreHighPrecision:Lorg/apache/commons/math3/analysis/integration/gauss/BaseRuleFactory;

    invoke-static {v1, p1}, Lorg/apache/commons/math3/analysis/integration/gauss/GaussIntegratorFactory;->getRule(Lorg/apache/commons/math3/analysis/integration/gauss/BaseRuleFactory;I)Lorg/apache/commons/math3/util/Pair;

    move-result-object v1

    invoke-static {v1, p2, p3, p4, p5}, Lorg/apache/commons/math3/analysis/integration/gauss/GaussIntegratorFactory;->transform(Lorg/apache/commons/math3/util/Pair;DD)Lorg/apache/commons/math3/util/Pair;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/commons/math3/analysis/integration/gauss/GaussIntegrator;-><init>(Lorg/apache/commons/math3/util/Pair;)V

    return-object v0
.end method
