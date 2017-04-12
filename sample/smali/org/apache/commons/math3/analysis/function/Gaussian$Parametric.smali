.class public Lorg/apache/commons/math3/analysis/function/Gaussian$Parametric;
.super Ljava/lang/Object;
.source "Gaussian.java"

# interfaces
.implements Lorg/apache/commons/math3/analysis/ParametricUnivariateFunction;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/math3/analysis/function/Gaussian;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Parametric"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private validateParameters([D)V
    .locals 5
    .param p1, "param"    # [D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;,
            Lorg/apache/commons/math3/exception/DimensionMismatchException;,
            Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x3

    const/4 v4, 0x2

    .line 184
    if-nez p1, :cond_0

    .line 185
    new-instance v0, Lorg/apache/commons/math3/exception/NullArgumentException;

    invoke-direct {v0}, Lorg/apache/commons/math3/exception/NullArgumentException;-><init>()V

    throw v0

    .line 187
    :cond_0
    array-length v0, p1

    if-eq v0, v2, :cond_1

    .line 188
    new-instance v0, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    array-length v1, p1

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v0

    .line 190
    :cond_1
    aget-wide v0, p1, v4

    const-wide/16 v2, 0x0

    cmpg-double v0, v0, v2

    if-gtz v0, :cond_2

    .line 191
    new-instance v0, Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;

    aget-wide v2, p1, v4

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;-><init>(Ljava/lang/Number;)V

    throw v0

    .line 193
    :cond_2
    return-void
.end method


# virtual methods
.method public varargs gradient(D[D)[D
    .locals 21
    .param p1, "x"    # D
    .param p3, "param"    # [D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;,
            Lorg/apache/commons/math3/exception/DimensionMismatchException;,
            Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;
        }
    .end annotation

    .prologue
    .line 155
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v1}, Lorg/apache/commons/math3/analysis/function/Gaussian$Parametric;->validateParameters([D)V

    .line 157
    const/4 v4, 0x0

    aget-wide v12, p3, v4

    .line 158
    .local v12, "norm":D
    const/4 v4, 0x1

    aget-wide v4, p3, v4

    sub-double v2, p1, v4

    .line 159
    .local v2, "diff":D
    const/4 v4, 0x2

    aget-wide v16, p3, v4

    .line 160
    .local v16, "sigma":D
    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v18, 0x4000000000000000L    # 2.0

    mul-double v18, v18, v16

    mul-double v18, v18, v16

    div-double v6, v4, v18

    .line 162
    .local v6, "i2s2":D
    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    # invokes: Lorg/apache/commons/math3/analysis/function/Gaussian;->value(DDD)D
    invoke-static/range {v2 .. v7}, Lorg/apache/commons/math3/analysis/function/Gaussian;->access$000(DDD)D

    move-result-wide v10

    .line 163
    .local v10, "n":D
    mul-double v4, v12, v10

    const-wide/high16 v18, 0x4000000000000000L    # 2.0

    mul-double v4, v4, v18

    mul-double/2addr v4, v6

    mul-double v8, v4, v2

    .line 164
    .local v8, "m":D
    mul-double v4, v8, v2

    div-double v14, v4, v16

    .line 166
    .local v14, "s":D
    const/4 v4, 0x3

    new-array v4, v4, [D

    const/4 v5, 0x0

    aput-wide v10, v4, v5

    const/4 v5, 0x1

    aput-wide v8, v4, v5

    const/4 v5, 0x2

    aput-wide v14, v4, v5

    return-object v4
.end method

.method public varargs value(D[D)D
    .locals 11
    .param p1, "x"    # D
    .param p3, "param"    # [D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;,
            Lorg/apache/commons/math3/exception/DimensionMismatchException;,
            Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;
        }
    .end annotation

    .prologue
    const/4 v10, 0x2

    .line 130
    invoke-direct {p0, p3}, Lorg/apache/commons/math3/analysis/function/Gaussian$Parametric;->validateParameters([D)V

    .line 132
    const/4 v2, 0x1

    aget-wide v2, p3, v2

    sub-double v0, p1, v2

    .line 133
    .local v0, "diff":D
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    aget-wide v8, p3, v10

    mul-double/2addr v6, v8

    aget-wide v8, p3, v10

    mul-double/2addr v6, v8

    div-double v4, v2, v6

    .line 134
    .local v4, "i2s2":D
    const/4 v2, 0x0

    aget-wide v2, p3, v2

    # invokes: Lorg/apache/commons/math3/analysis/function/Gaussian;->value(DDD)D
    invoke-static/range {v0 .. v5}, Lorg/apache/commons/math3/analysis/function/Gaussian;->access$000(DDD)D

    move-result-wide v2

    return-wide v2
.end method
