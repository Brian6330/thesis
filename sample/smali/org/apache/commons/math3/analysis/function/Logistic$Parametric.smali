.class public Lorg/apache/commons/math3/analysis/function/Logistic$Parametric;
.super Ljava/lang/Object;
.source "Logistic.java"

# interfaces
.implements Lorg/apache/commons/math3/analysis/ParametricUnivariateFunction;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/math3/analysis/function/Logistic;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Parametric"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 109
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
    const/4 v2, 0x6

    const/4 v4, 0x5

    .line 191
    if-nez p1, :cond_0

    .line 192
    new-instance v0, Lorg/apache/commons/math3/exception/NullArgumentException;

    invoke-direct {v0}, Lorg/apache/commons/math3/exception/NullArgumentException;-><init>()V

    throw v0

    .line 194
    :cond_0
    array-length v0, p1

    if-eq v0, v2, :cond_1

    .line 195
    new-instance v0, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    array-length v1, p1

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v0

    .line 197
    :cond_1
    aget-wide v0, p1, v4

    const-wide/16 v2, 0x0

    cmpg-double v0, v0, v2

    if-gtz v0, :cond_2

    .line 198
    new-instance v0, Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;

    aget-wide v2, p1, v4

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;-><init>(Ljava/lang/Number;)V

    throw v0

    .line 200
    :cond_2
    return-void
.end method


# virtual methods
.method public varargs gradient(D[D)[D
    .locals 37
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
    .line 151
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v1}, Lorg/apache/commons/math3/analysis/function/Logistic$Parametric;->validateParameters([D)V

    .line 153
    const/4 v4, 0x2

    aget-wide v6, p3, v4

    .line 154
    .local v6, "b":D
    const/4 v4, 0x3

    aget-wide v8, p3, v4

    .line 156
    .local v8, "q":D
    const/4 v4, 0x1

    aget-wide v4, p3, v4

    sub-double v2, v4, p1

    .line 157
    .local v2, "mMinusX":D
    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    const/4 v10, 0x5

    aget-wide v10, p3, v10

    div-double v12, v4, v10

    .line 158
    .local v12, "oneOverN":D
    mul-double v4, v6, v2

    invoke-static {v4, v5}, Lorg/apache/commons/math3/util/FastMath;->exp(D)D

    move-result-wide v14

    .line 159
    .local v14, "exp":D
    mul-double v32, v8, v14

    .line 160
    .local v32, "qExp":D
    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    add-double v34, v32, v4

    .line 161
    .local v34, "qExp1":D
    const/4 v4, 0x0

    aget-wide v4, p3, v4

    const/4 v10, 0x4

    aget-wide v10, p3, v10

    sub-double/2addr v4, v10

    mul-double/2addr v4, v12

    move-wide/from16 v0, v34

    invoke-static {v0, v1, v12, v13}, Lorg/apache/commons/math3/util/FastMath;->pow(DD)D

    move-result-wide v10

    div-double v16, v4, v10

    .line 162
    .local v16, "factor1":D
    move-wide/from16 v0, v16

    neg-double v4, v0

    div-double v18, v4, v34

    .line 165
    .local v18, "factor2":D
    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    const-wide/16 v10, 0x0

    # invokes: Lorg/apache/commons/math3/analysis/function/Logistic;->value(DDDDDD)D
    invoke-static/range {v2 .. v13}, Lorg/apache/commons/math3/analysis/function/Logistic;->access$000(DDDDDD)D

    move-result-wide v24

    .line 166
    .local v24, "gk":D
    mul-double v4, v18, v6

    mul-double v26, v4, v32

    .line 167
    .local v26, "gm":D
    mul-double v4, v18, v2

    mul-double v22, v4, v32

    .line 168
    .local v22, "gb":D
    mul-double v30, v18, v14

    .line 169
    .local v30, "gq":D
    const-wide/16 v4, 0x0

    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    # invokes: Lorg/apache/commons/math3/analysis/function/Logistic;->value(DDDDDD)D
    invoke-static/range {v2 .. v13}, Lorg/apache/commons/math3/analysis/function/Logistic;->access$000(DDDDDD)D

    move-result-wide v20

    .line 170
    .local v20, "ga":D
    invoke-static/range {v34 .. v35}, Lorg/apache/commons/math3/util/FastMath;->log(D)D

    move-result-wide v4

    mul-double v4, v4, v16

    mul-double v28, v4, v12

    .line 172
    .local v28, "gn":D
    const/4 v4, 0x6

    new-array v4, v4, [D

    const/4 v5, 0x0

    aput-wide v24, v4, v5

    const/4 v5, 0x1

    aput-wide v26, v4, v5

    const/4 v5, 0x2

    aput-wide v22, v4, v5

    const/4 v5, 0x3

    aput-wide v30, v4, v5

    const/4 v5, 0x4

    aput-wide v20, v4, v5

    const/4 v5, 0x5

    aput-wide v28, v4, v5

    return-object v4
.end method

.method public varargs value(D[D)D
    .locals 17
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
    .line 126
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v1}, Lorg/apache/commons/math3/analysis/function/Logistic$Parametric;->validateParameters([D)V

    .line 127
    const/4 v2, 0x1

    aget-wide v2, p3, v2

    sub-double v2, v2, p1

    const/4 v4, 0x0

    aget-wide v4, p3, v4

    const/4 v6, 0x2

    aget-wide v6, p3, v6

    const/4 v8, 0x3

    aget-wide v8, p3, v8

    const/4 v10, 0x4

    aget-wide v10, p3, v10

    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    const/4 v14, 0x5

    aget-wide v14, p3, v14

    div-double/2addr v12, v14

    # invokes: Lorg/apache/commons/math3/analysis/function/Logistic;->value(DDDDDD)D
    invoke-static/range {v2 .. v13}, Lorg/apache/commons/math3/analysis/function/Logistic;->access$000(DDDDDD)D

    move-result-wide v2

    return-wide v2
.end method
