.class public Lorg/apache/commons/math3/analysis/function/Sigmoid$Parametric;
.super Ljava/lang/Object;
.source "Sigmoid.java"

# interfaces
.implements Lorg/apache/commons/math3/analysis/ParametricUnivariateFunction;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/math3/analysis/function/Sigmoid;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Parametric"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private validateParameters([D)V
    .locals 3
    .param p1, "param"    # [D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;,
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x2

    .line 143
    if-nez p1, :cond_0

    .line 144
    new-instance v0, Lorg/apache/commons/math3/exception/NullArgumentException;

    invoke-direct {v0}, Lorg/apache/commons/math3/exception/NullArgumentException;-><init>()V

    throw v0

    .line 146
    :cond_0
    array-length v0, p1

    if-eq v0, v2, :cond_1

    .line 147
    new-instance v0, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    array-length v1, p1

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v0

    .line 149
    :cond_1
    return-void
.end method


# virtual methods
.method public varargs gradient(D[D)[D
    .locals 7
    .param p1, "x"    # D
    .param p3, "param"    # [D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;,
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    .prologue
    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    .line 123
    invoke-direct {p0, p3}, Lorg/apache/commons/math3/analysis/function/Sigmoid$Parametric;->validateParameters([D)V

    .line 125
    neg-double v2, p1

    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/FastMath;->exp(D)D

    move-result-wide v2

    add-double/2addr v2, v4

    div-double v0, v4, v2

    .line 127
    .local v0, "invExp1":D
    const/4 v2, 0x2

    new-array v2, v2, [D

    const/4 v3, 0x0

    sub-double/2addr v4, v0

    aput-wide v4, v2, v3

    const/4 v3, 0x1

    aput-wide v0, v2, v3

    return-object v2
.end method

.method public varargs value(D[D)D
    .locals 7
    .param p1, "x"    # D
    .param p3, "param"    # [D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;,
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    .prologue
    .line 103
    invoke-direct {p0, p3}, Lorg/apache/commons/math3/analysis/function/Sigmoid$Parametric;->validateParameters([D)V

    .line 104
    const/4 v0, 0x0

    aget-wide v2, p3, v0

    const/4 v0, 0x1

    aget-wide v4, p3, v0

    move-wide v0, p1

    # invokes: Lorg/apache/commons/math3/analysis/function/Sigmoid;->value(DDD)D
    invoke-static/range {v0 .. v5}, Lorg/apache/commons/math3/analysis/function/Sigmoid;->access$000(DDD)D

    move-result-wide v0

    return-wide v0
.end method
