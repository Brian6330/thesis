.class public Lorg/apache/commons/math3/stat/descriptive/summary/Product;
.super Lorg/apache/commons/math3/stat/descriptive/AbstractStorelessUnivariateStatistic;
.source "Product.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Lorg/apache/commons/math3/stat/descriptive/WeightedEvaluation;


# static fields
.field private static final serialVersionUID:J = 0x2731aa96cc7d290aL


# instance fields
.field private n:J

.field private value:D


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 57
    invoke-direct {p0}, Lorg/apache/commons/math3/stat/descriptive/AbstractStorelessUnivariateStatistic;-><init>()V

    .line 58
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/apache/commons/math3/stat/descriptive/summary/Product;->n:J

    .line 59
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    iput-wide v0, p0, Lorg/apache/commons/math3/stat/descriptive/summary/Product;->value:D

    .line 60
    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/stat/descriptive/summary/Product;)V
    .locals 0
    .param p1, "original"    # Lorg/apache/commons/math3/stat/descriptive/summary/Product;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;
        }
    .end annotation

    .prologue
    .line 69
    invoke-direct {p0}, Lorg/apache/commons/math3/stat/descriptive/AbstractStorelessUnivariateStatistic;-><init>()V

    .line 70
    invoke-static {p1, p0}, Lorg/apache/commons/math3/stat/descriptive/summary/Product;->copy(Lorg/apache/commons/math3/stat/descriptive/summary/Product;Lorg/apache/commons/math3/stat/descriptive/summary/Product;)V

    .line 71
    return-void
.end method

.method public static copy(Lorg/apache/commons/math3/stat/descriptive/summary/Product;Lorg/apache/commons/math3/stat/descriptive/summary/Product;)V
    .locals 2
    .param p0, "source"    # Lorg/apache/commons/math3/stat/descriptive/summary/Product;
    .param p1, "dest"    # Lorg/apache/commons/math3/stat/descriptive/summary/Product;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;
        }
    .end annotation

    .prologue
    .line 223
    invoke-static {p0}, Lorg/apache/commons/math3/util/MathUtils;->checkNotNull(Ljava/lang/Object;)V

    .line 224
    invoke-static {p1}, Lorg/apache/commons/math3/util/MathUtils;->checkNotNull(Ljava/lang/Object;)V

    .line 225
    invoke-virtual {p0}, Lorg/apache/commons/math3/stat/descriptive/summary/Product;->getDataRef()[D

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/apache/commons/math3/stat/descriptive/summary/Product;->setData([D)V

    .line 226
    iget-wide v0, p0, Lorg/apache/commons/math3/stat/descriptive/summary/Product;->n:J

    iput-wide v0, p1, Lorg/apache/commons/math3/stat/descriptive/summary/Product;->n:J

    .line 227
    iget-wide v0, p0, Lorg/apache/commons/math3/stat/descriptive/summary/Product;->value:D

    iput-wide v0, p1, Lorg/apache/commons/math3/stat/descriptive/summary/Product;->value:D

    .line 228
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 2

    .prologue
    .line 102
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    iput-wide v0, p0, Lorg/apache/commons/math3/stat/descriptive/summary/Product;->value:D

    .line 103
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/apache/commons/math3/stat/descriptive/summary/Product;->n:J

    .line 104
    return-void
.end method

.method public bridge synthetic copy()Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;
    .locals 1

    .prologue
    .line 41
    invoke-virtual {p0}, Lorg/apache/commons/math3/stat/descriptive/summary/Product;->copy()Lorg/apache/commons/math3/stat/descriptive/summary/Product;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic copy()Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;
    .locals 1

    .prologue
    .line 41
    invoke-virtual {p0}, Lorg/apache/commons/math3/stat/descriptive/summary/Product;->copy()Lorg/apache/commons/math3/stat/descriptive/summary/Product;

    move-result-object v0

    return-object v0
.end method

.method public copy()Lorg/apache/commons/math3/stat/descriptive/summary/Product;
    .locals 1

    .prologue
    .line 207
    new-instance v0, Lorg/apache/commons/math3/stat/descriptive/summary/Product;

    invoke-direct {v0}, Lorg/apache/commons/math3/stat/descriptive/summary/Product;-><init>()V

    .line 209
    .local v0, "result":Lorg/apache/commons/math3/stat/descriptive/summary/Product;
    invoke-static {p0, v0}, Lorg/apache/commons/math3/stat/descriptive/summary/Product;->copy(Lorg/apache/commons/math3/stat/descriptive/summary/Product;Lorg/apache/commons/math3/stat/descriptive/summary/Product;)V

    .line 210
    return-object v0
.end method

.method public evaluate([DII)D
    .locals 6
    .param p1, "values"    # [D
    .param p2, "begin"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathIllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 123
    const-wide/high16 v2, 0x7ff8000000000000L    # NaN

    .line 124
    .local v2, "product":D
    const/4 v1, 0x1

    invoke-virtual {p0, p1, p2, p3, v1}, Lorg/apache/commons/math3/stat/descriptive/summary/Product;->test([DIIZ)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 125
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    .line 126
    move v0, p2

    .local v0, "i":I
    :goto_0
    add-int v1, p2, p3

    if-ge v0, v1, :cond_0

    .line 127
    aget-wide v4, p1, v0

    mul-double/2addr v2, v4

    .line 126
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 130
    .end local v0    # "i":I
    :cond_0
    return-wide v2
.end method

.method public evaluate([D[D)D
    .locals 2
    .param p1, "values"    # [D
    .param p2, "weights"    # [D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathIllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 198
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, p2, v0, v1}, Lorg/apache/commons/math3/stat/descriptive/summary/Product;->evaluate([D[DII)D

    move-result-wide v0

    return-wide v0
.end method

.method public evaluate([D[DII)D
    .locals 10
    .param p1, "values"    # [D
    .param p2, "weights"    # [D
    .param p3, "begin"    # I
    .param p4, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathIllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 163
    const-wide/high16 v8, 0x7ff8000000000000L    # NaN

    .line 164
    .local v8, "product":D
    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lorg/apache/commons/math3/stat/descriptive/summary/Product;->test([D[DIIZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 165
    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    .line 166
    move v6, p3

    .local v6, "i":I
    :goto_0
    add-int v0, p3, p4

    if-ge v6, v0, :cond_0

    .line 167
    aget-wide v0, p1, v6

    aget-wide v2, p2, v6

    invoke-static {v0, v1, v2, v3}, Lorg/apache/commons/math3/util/FastMath;->pow(DD)D

    move-result-wide v0

    mul-double/2addr v8, v0

    .line 166
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 170
    .end local v6    # "i":I
    :cond_0
    return-wide v8
.end method

.method public getN()J
    .locals 2

    .prologue
    .line 94
    iget-wide v0, p0, Lorg/apache/commons/math3/stat/descriptive/summary/Product;->n:J

    return-wide v0
.end method

.method public getResult()D
    .locals 2

    .prologue
    .line 87
    iget-wide v0, p0, Lorg/apache/commons/math3/stat/descriptive/summary/Product;->value:D

    return-wide v0
.end method

.method public increment(D)V
    .locals 5
    .param p1, "d"    # D

    .prologue
    .line 78
    iget-wide v0, p0, Lorg/apache/commons/math3/stat/descriptive/summary/Product;->value:D

    mul-double/2addr v0, p1

    iput-wide v0, p0, Lorg/apache/commons/math3/stat/descriptive/summary/Product;->value:D

    .line 79
    iget-wide v0, p0, Lorg/apache/commons/math3/stat/descriptive/summary/Product;->n:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lorg/apache/commons/math3/stat/descriptive/summary/Product;->n:J

    .line 80
    return-void
.end method
