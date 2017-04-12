.class Lorg/apache/commons/math3/analysis/interpolation/BicubicFunction;
.super Ljava/lang/Object;
.source "BicubicInterpolatingFunction.java"

# interfaces
.implements Lorg/apache/commons/math3/analysis/BivariateFunction;


# static fields
.field private static final N:S = 0x4s


# instance fields
.field private final a:[[D


# direct methods
.method public constructor <init>([D)V
    .locals 7
    .param p1, "coeff"    # [D

    .prologue
    const/4 v6, 0x4

    .line 276
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 277
    filled-new-array {v6, v6}, [I

    move-result-object v3

    sget-object v4, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v4, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [[D

    iput-object v3, p0, Lorg/apache/commons/math3/analysis/interpolation/BicubicFunction;->a:[[D

    .line 278
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_0
    if-ge v2, v6, :cond_1

    .line 279
    iget-object v3, p0, Lorg/apache/commons/math3/analysis/interpolation/BicubicFunction;->a:[[D

    aget-object v0, v3, v2

    .line 280
    .local v0, "aJ":[D
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v6, :cond_0

    .line 281
    mul-int/lit8 v3, v1, 0x4

    add-int/2addr v3, v2

    aget-wide v4, p1, v3

    aput-wide v4, v0, v1

    .line 280
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 278
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 284
    .end local v0    # "aJ":[D
    .end local v1    # "i":I
    :cond_1
    return-void
.end method

.method private apply([D[D[[D)D
    .locals 8
    .param p1, "pX"    # [D
    .param p2, "pY"    # [D
    .param p3, "coeff"    # [[D

    .prologue
    .line 317
    const-wide/16 v4, 0x0

    .line 318
    .local v4, "result":D
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v1, 0x4

    if-ge v0, v1, :cond_0

    .line 319
    aget-object v1, p3, v0

    invoke-static {v1, p2}, Lorg/apache/commons/math3/util/MathArrays;->linearCombination([D[D)D

    move-result-wide v2

    .line 320
    .local v2, "r":D
    aget-wide v6, p1, v0

    mul-double/2addr v6, v2

    add-double/2addr v4, v6

    .line 318
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 323
    .end local v2    # "r":D
    :cond_0
    return-wide v4
.end method


# virtual methods
.method public value(DD)D
    .locals 15
    .param p1, "x"    # D
    .param p3, "y"    # D

    .prologue
    .line 290
    const-wide/16 v10, 0x0

    cmpg-double v10, p1, v10

    if-ltz v10, :cond_0

    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    cmpl-double v10, p1, v10

    if-lez v10, :cond_1

    .line 291
    :cond_0
    new-instance v10, Lorg/apache/commons/math3/exception/OutOfRangeException;

    invoke-static/range {p1 .. p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v11

    const/4 v12, 0x0

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    const/4 v13, 0x1

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-direct {v10, v11, v12, v13}, Lorg/apache/commons/math3/exception/OutOfRangeException;-><init>(Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;)V

    throw v10

    .line 293
    :cond_1
    const-wide/16 v10, 0x0

    cmpg-double v10, p3, v10

    if-ltz v10, :cond_2

    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    cmpl-double v10, p3, v10

    if-lez v10, :cond_3

    .line 294
    :cond_2
    new-instance v10, Lorg/apache/commons/math3/exception/OutOfRangeException;

    invoke-static/range {p3 .. p4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v11

    const/4 v12, 0x0

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    const/4 v13, 0x1

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-direct {v10, v11, v12, v13}, Lorg/apache/commons/math3/exception/OutOfRangeException;-><init>(Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;)V

    throw v10

    .line 297
    :cond_3
    mul-double v2, p1, p1

    .line 298
    .local v2, "x2":D
    mul-double v4, v2, p1

    .line 299
    .local v4, "x3":D
    const/4 v10, 0x4

    new-array v0, v10, [D

    const/4 v10, 0x0

    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    aput-wide v12, v0, v10

    const/4 v10, 0x1

    aput-wide p1, v0, v10

    const/4 v10, 0x2

    aput-wide v2, v0, v10

    const/4 v10, 0x3

    aput-wide v4, v0, v10

    .line 301
    .local v0, "pX":[D
    mul-double v6, p3, p3

    .line 302
    .local v6, "y2":D
    mul-double v8, v6, p3

    .line 303
    .local v8, "y3":D
    const/4 v10, 0x4

    new-array v1, v10, [D

    const/4 v10, 0x0

    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    aput-wide v12, v1, v10

    const/4 v10, 0x1

    aput-wide p3, v1, v10

    const/4 v10, 0x2

    aput-wide v6, v1, v10

    const/4 v10, 0x3

    aput-wide v8, v1, v10

    .line 305
    .local v1, "pY":[D
    iget-object v10, p0, Lorg/apache/commons/math3/analysis/interpolation/BicubicFunction;->a:[[D

    invoke-direct {p0, v0, v1, v10}, Lorg/apache/commons/math3/analysis/interpolation/BicubicFunction;->apply([D[D[[D)D

    move-result-wide v10

    return-wide v10
.end method
