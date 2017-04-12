.class public Lorg/apache/commons/math3/analysis/function/Logit$Parametric;
.super Ljava/lang/Object;
.source "Logit.java"

# interfaces
.implements Lorg/apache/commons/math3/analysis/ParametricUnivariateFunction;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/math3/analysis/function/Logit;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Parametric"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 86
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

    .line 141
    if-nez p1, :cond_0

    .line 142
    new-instance v0, Lorg/apache/commons/math3/exception/NullArgumentException;

    invoke-direct {v0}, Lorg/apache/commons/math3/exception/NullArgumentException;-><init>()V

    throw v0

    .line 144
    :cond_0
    array-length v0, p1

    if-eq v0, v2, :cond_1

    .line 145
    new-instance v0, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    array-length v1, p1

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v0

    .line 147
    :cond_1
    return-void
.end method


# virtual methods
.method public varargs gradient(D[D)[D
    .locals 11
    .param p1, "x"    # D
    .param p3, "param"    # [D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;,
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    .prologue
    const/4 v10, 0x1

    const/4 v5, 0x0

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    .line 120
    invoke-direct {p0, p3}, Lorg/apache/commons/math3/analysis/function/Logit$Parametric;->validateParameters([D)V

    .line 122
    aget-wide v2, p3, v5

    .line 123
    .local v2, "lo":D
    aget-wide v0, p3, v10

    .line 125
    .local v0, "hi":D
    const/4 v4, 0x2

    new-array v4, v4, [D

    sub-double v6, v2, p1

    div-double v6, v8, v6

    aput-wide v6, v4, v5

    sub-double v6, v0, p1

    div-double v6, v8, v6

    aput-wide v6, v4, v10

    return-object v4
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
    .line 100
    invoke-direct {p0, p3}, Lorg/apache/commons/math3/analysis/function/Logit$Parametric;->validateParameters([D)V

    .line 101
    const/4 v0, 0x0

    aget-wide v2, p3, v0

    const/4 v0, 0x1

    aget-wide v4, p3, v0

    move-wide v0, p1

    # invokes: Lorg/apache/commons/math3/analysis/function/Logit;->value(DDD)D
    invoke-static/range {v0 .. v5}, Lorg/apache/commons/math3/analysis/function/Logit;->access$000(DDD)D

    move-result-wide v0

    return-wide v0
.end method
