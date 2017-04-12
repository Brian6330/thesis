.class public Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;
.super Ljava/lang/Object;
.source "Vector2D.java"

# interfaces
.implements Lorg/apache/commons/math3/geometry/Vector;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/apache/commons/math3/geometry/Vector",
        "<",
        "Lorg/apache/commons/math3/geometry/euclidean/twod/Euclidean2D;",
        ">;"
    }
.end annotation


# static fields
.field public static final NEGATIVE_INFINITY:Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

.field public static final NaN:Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

.field public static final POSITIVE_INFINITY:Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

.field public static final ZERO:Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

.field private static final serialVersionUID:J = 0x3b45b4a2933f2caL


# instance fields
.field private final x:D

.field private final y:D


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .prologue
    const-wide/high16 v8, 0x7ff8000000000000L    # NaN

    const-wide/high16 v6, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    const-wide/16 v4, 0x0

    const-wide/high16 v2, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    .line 38
    new-instance v0, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    invoke-direct {v0, v4, v5, v4, v5}, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;-><init>(DD)V

    sput-object v0, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->ZERO:Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    .line 42
    new-instance v0, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    invoke-direct {v0, v8, v9, v8, v9}, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;-><init>(DD)V

    sput-object v0, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->NaN:Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    .line 46
    new-instance v0, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    invoke-direct {v0, v6, v7, v6, v7}, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;-><init>(DD)V

    sput-object v0, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->POSITIVE_INFINITY:Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    .line 50
    new-instance v0, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    invoke-direct {v0, v2, v3, v2, v3}, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;-><init>(DD)V

    sput-object v0, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->NEGATIVE_INFINITY:Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    return-void
.end method

.method public constructor <init>(DD)V
    .locals 1
    .param p1, "x"    # D
    .param p3, "y"    # D

    .prologue
    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    iput-wide p1, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->x:D

    .line 71
    iput-wide p3, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->y:D

    .line 72
    return-void
.end method

.method public constructor <init>(DLorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;)V
    .locals 3
    .param p1, "a"    # D
    .param p3, "u"    # Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    .prologue
    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    iget-wide v0, p3, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->x:D

    mul-double/2addr v0, p1

    iput-wide v0, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->x:D

    .line 96
    iget-wide v0, p3, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->y:D

    mul-double/2addr v0, p1

    iput-wide v0, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->y:D

    .line 97
    return-void
.end method

.method public constructor <init>(DLorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;DLorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;)V
    .locals 4
    .param p1, "a1"    # D
    .param p3, "u1"    # Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;
    .param p4, "a2"    # D
    .param p6, "u2"    # Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    .prologue
    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 108
    iget-wide v0, p3, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->x:D

    mul-double/2addr v0, p1

    iget-wide v2, p6, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->x:D

    mul-double/2addr v2, p4

    add-double/2addr v0, v2

    iput-wide v0, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->x:D

    .line 109
    iget-wide v0, p3, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->y:D

    mul-double/2addr v0, p1

    iget-wide v2, p6, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->y:D

    mul-double/2addr v2, p4

    add-double/2addr v0, v2

    iput-wide v0, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->y:D

    .line 110
    return-void
.end method

.method public constructor <init>(DLorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;DLorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;DLorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;)V
    .locals 5
    .param p1, "a1"    # D
    .param p3, "u1"    # Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;
    .param p4, "a2"    # D
    .param p6, "u2"    # Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;
    .param p7, "a3"    # D
    .param p9, "u3"    # Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    .prologue
    .line 123
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 124
    iget-wide v0, p3, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->x:D

    mul-double/2addr v0, p1

    iget-wide v2, p6, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->x:D

    mul-double/2addr v2, p4

    add-double/2addr v0, v2

    iget-wide v2, p9, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->x:D

    mul-double/2addr v2, p7

    add-double/2addr v0, v2

    iput-wide v0, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->x:D

    .line 125
    iget-wide v0, p3, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->y:D

    mul-double/2addr v0, p1

    iget-wide v2, p6, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->y:D

    mul-double/2addr v2, p4

    add-double/2addr v0, v2

    iget-wide v2, p9, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->y:D

    mul-double/2addr v2, p7

    add-double/2addr v0, v2

    iput-wide v0, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->y:D

    .line 126
    return-void
.end method

.method public constructor <init>(DLorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;DLorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;DLorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;DLorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;)V
    .locals 6
    .param p1, "a1"    # D
    .param p3, "u1"    # Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;
    .param p4, "a2"    # D
    .param p6, "u2"    # Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;
    .param p7, "a3"    # D
    .param p9, "u3"    # Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;
    .param p10, "a4"    # D
    .param p12, "u4"    # Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    .prologue
    .line 141
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 142
    iget-wide v2, p3, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->x:D

    mul-double/2addr v2, p1

    iget-wide v4, p6, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->x:D

    mul-double/2addr v4, p4

    add-double/2addr v2, v4

    iget-wide v4, p9, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->x:D

    mul-double/2addr v4, p7

    add-double/2addr v2, v4

    move-object/from16 v0, p12

    iget-wide v4, v0, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->x:D

    mul-double v4, v4, p10

    add-double/2addr v2, v4

    iput-wide v2, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->x:D

    .line 143
    iget-wide v2, p3, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->y:D

    mul-double/2addr v2, p1

    iget-wide v4, p6, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->y:D

    mul-double/2addr v4, p4

    add-double/2addr v2, v4

    iget-wide v4, p9, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->y:D

    mul-double/2addr v4, p7

    add-double/2addr v2, v4

    move-object/from16 v0, p12

    iget-wide v4, v0, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->y:D

    mul-double v4, v4, p10

    add-double/2addr v2, v4

    iput-wide v2, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->y:D

    .line 144
    return-void
.end method

.method public constructor <init>([D)V
    .locals 3
    .param p1, "v"    # [D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x2

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    array-length v0, p1

    if-eq v0, v2, :cond_0

    .line 82
    new-instance v0, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    array-length v1, p1

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v0

    .line 84
    :cond_0
    const/4 v0, 0x0

    aget-wide v0, p1, v0

    iput-wide v0, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->x:D

    .line 85
    const/4 v0, 0x1

    aget-wide v0, p1, v0

    iput-wide v0, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->y:D

    .line 86
    return-void
.end method

.method public static angle(Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;)D
    .locals 18
    .param p0, "v1"    # Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;
    .param p1, "v2"    # Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathArithmeticException;
        }
    .end annotation

    .prologue
    .line 246
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->getNorm()D

    move-result-wide v2

    invoke-virtual/range {p1 .. p1}, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->getNorm()D

    move-result-wide v4

    mul-double v14, v2, v4

    .line 247
    .local v14, "normProduct":D
    const-wide/16 v2, 0x0

    cmpl-double v2, v14, v2

    if-nez v2, :cond_0

    .line 248
    new-instance v2, Lorg/apache/commons/math3/exception/MathArithmeticException;

    sget-object v3, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->ZERO_NORM:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-direct {v2, v3, v4}, Lorg/apache/commons/math3/exception/MathArithmeticException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v2

    .line 251
    :cond_0
    invoke-virtual/range {p0 .. p1}, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->dotProduct(Lorg/apache/commons/math3/geometry/Vector;)D

    move-result-wide v10

    .line 252
    .local v10, "dot":D
    const-wide v2, 0x3fefff2e48e8a71eL    # 0.9999

    mul-double v16, v14, v2

    .line 253
    .local v16, "threshold":D
    move-wide/from16 v0, v16

    neg-double v2, v0

    cmpg-double v2, v10, v2

    if-ltz v2, :cond_1

    cmpl-double v2, v10, v16

    if-lez v2, :cond_3

    .line 255
    :cond_1
    move-object/from16 v0, p0

    iget-wide v2, v0, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->x:D

    move-object/from16 v0, p1

    iget-wide v4, v0, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->y:D

    move-object/from16 v0, p0

    iget-wide v6, v0, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->y:D

    neg-double v6, v6

    move-object/from16 v0, p1

    iget-wide v8, v0, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->x:D

    invoke-static/range {v2 .. v9}, Lorg/apache/commons/math3/util/MathArrays;->linearCombination(DDDD)D

    move-result-wide v2

    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v12

    .line 256
    .local v12, "n":D
    const-wide/16 v2, 0x0

    cmpl-double v2, v10, v2

    if-ltz v2, :cond_2

    .line 257
    div-double v2, v12, v14

    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/FastMath;->asin(D)D

    move-result-wide v2

    .line 263
    .end local v12    # "n":D
    :goto_0
    return-wide v2

    .line 259
    .restart local v12    # "n":D
    :cond_2
    const-wide v2, 0x400921fb54442d18L    # Math.PI

    div-double v4, v12, v14

    invoke-static {v4, v5}, Lorg/apache/commons/math3/util/FastMath;->asin(D)D

    move-result-wide v4

    sub-double/2addr v2, v4

    goto :goto_0

    .line 263
    .end local v12    # "n":D
    :cond_3
    div-double v2, v10, v14

    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/FastMath;->acos(D)D

    move-result-wide v2

    goto :goto_0
.end method

.method public static distance(Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;)D
    .locals 2
    .param p0, "p1"    # Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;
    .param p1, "p2"    # Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    .prologue
    .line 368
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->distance(Lorg/apache/commons/math3/geometry/Vector;)D

    move-result-wide v0

    return-wide v0
.end method

.method public static distanceInf(Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;)D
    .locals 2
    .param p0, "p1"    # Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;
    .param p1, "p2"    # Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    .prologue
    .line 380
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->distanceInf(Lorg/apache/commons/math3/geometry/Vector;)D

    move-result-wide v0

    return-wide v0
.end method

.method public static distanceSq(Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;)D
    .locals 2
    .param p0, "p1"    # Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;
    .param p1, "p2"    # Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    .prologue
    .line 392
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->distanceSq(Lorg/apache/commons/math3/geometry/Vector;)D

    move-result-wide v0

    return-wide v0
.end method


# virtual methods
.method public bridge synthetic add(DLorg/apache/commons/math3/geometry/Vector;)Lorg/apache/commons/math3/geometry/Vector;
    .locals 1
    .param p1, "x0"    # D
    .param p3, "x1"    # Lorg/apache/commons/math3/geometry/Vector;

    .prologue
    .line 35
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->add(DLorg/apache/commons/math3/geometry/Vector;)Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic add(Lorg/apache/commons/math3/geometry/Vector;)Lorg/apache/commons/math3/geometry/Vector;
    .locals 1
    .param p1, "x0"    # Lorg/apache/commons/math3/geometry/Vector;

    .prologue
    .line 35
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->add(Lorg/apache/commons/math3/geometry/Vector;)Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    move-result-object v0

    return-object v0
.end method

.method public add(DLorg/apache/commons/math3/geometry/Vector;)Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;
    .locals 9
    .param p1, "factor"    # D
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(D",
            "Lorg/apache/commons/math3/geometry/Vector",
            "<",
            "Lorg/apache/commons/math3/geometry/euclidean/twod/Euclidean2D;",
            ">;)",
            "Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;"
        }
    .end annotation

    .prologue
    .line 208
    .local p3, "v":Lorg/apache/commons/math3/geometry/Vector;, "Lorg/apache/commons/math3/geometry/Vector<Lorg/apache/commons/math3/geometry/euclidean/twod/Euclidean2D;>;"
    move-object v0, p3

    check-cast v0, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    .line 209
    .local v0, "v2":Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;
    new-instance v1, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    iget-wide v2, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->x:D

    invoke-virtual {v0}, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->getX()D

    move-result-wide v4

    mul-double/2addr v4, p1

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->y:D

    invoke-virtual {v0}, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->getY()D

    move-result-wide v6

    mul-double/2addr v6, p1

    add-double/2addr v4, v6

    invoke-direct {v1, v2, v3, v4, v5}, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;-><init>(DD)V

    return-object v1
.end method

.method public add(Lorg/apache/commons/math3/geometry/Vector;)Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/Vector",
            "<",
            "Lorg/apache/commons/math3/geometry/euclidean/twod/Euclidean2D;",
            ">;)",
            "Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;"
        }
    .end annotation

    .prologue
    .line 202
    .local p1, "v":Lorg/apache/commons/math3/geometry/Vector;, "Lorg/apache/commons/math3/geometry/Vector<Lorg/apache/commons/math3/geometry/euclidean/twod/Euclidean2D;>;"
    move-object v0, p1

    check-cast v0, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    .line 203
    .local v0, "v2":Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;
    new-instance v1, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    iget-wide v2, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->x:D

    invoke-virtual {v0}, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->getX()D

    move-result-wide v4

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->y:D

    invoke-virtual {v0}, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->getY()D

    move-result-wide v6

    add-double/2addr v4, v6

    invoke-direct {v1, v2, v3, v4, v5}, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;-><init>(DD)V

    return-object v1
.end method

.method public crossProduct(Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;)D
    .locals 12
    .param p1, "p1"    # Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;
    .param p2, "p2"    # Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    .prologue
    .line 352
    invoke-virtual {p2}, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->getX()D

    move-result-wide v4

    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->getX()D

    move-result-wide v10

    sub-double v0, v4, v10

    .line 353
    .local v0, "x1":D
    invoke-virtual {p0}, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->getY()D

    move-result-wide v4

    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->getY()D

    move-result-wide v10

    sub-double v2, v4, v10

    .line 354
    .local v2, "y1":D
    invoke-virtual {p0}, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->getX()D

    move-result-wide v4

    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->getX()D

    move-result-wide v10

    sub-double v8, v4, v10

    .line 355
    .local v8, "x2":D
    invoke-virtual {p2}, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->getY()D

    move-result-wide v4

    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->getY()D

    move-result-wide v10

    sub-double v6, v4, v10

    .line 356
    .local v6, "y2":D
    neg-double v4, v8

    invoke-static/range {v0 .. v7}, Lorg/apache/commons/math3/util/MathArrays;->linearCombination(DDDD)D

    move-result-wide v4

    return-wide v4
.end method

.method public distance(Lorg/apache/commons/math3/geometry/Point;)D
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/Point",
            "<",
            "Lorg/apache/commons/math3/geometry/euclidean/twod/Euclidean2D;",
            ">;)D"
        }
    .end annotation

    .prologue
    .line 303
    .local p1, "p":Lorg/apache/commons/math3/geometry/Point;, "Lorg/apache/commons/math3/geometry/Point<Lorg/apache/commons/math3/geometry/euclidean/twod/Euclidean2D;>;"
    move-object v4, p1

    check-cast v4, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    .line 304
    .local v4, "p3":Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;
    iget-wide v6, v4, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->x:D

    iget-wide v8, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->x:D

    sub-double v0, v6, v8

    .line 305
    .local v0, "dx":D
    iget-wide v6, v4, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->y:D

    iget-wide v8, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->y:D

    sub-double v2, v6, v8

    .line 306
    .local v2, "dy":D
    mul-double v6, v0, v0

    mul-double v8, v2, v2

    add-double/2addr v6, v8

    invoke-static {v6, v7}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v6

    return-wide v6
.end method

.method public distance(Lorg/apache/commons/math3/geometry/Vector;)D
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/Vector",
            "<",
            "Lorg/apache/commons/math3/geometry/euclidean/twod/Euclidean2D;",
            ">;)D"
        }
    .end annotation

    .prologue
    .line 298
    .local p1, "p":Lorg/apache/commons/math3/geometry/Vector;, "Lorg/apache/commons/math3/geometry/Vector<Lorg/apache/commons/math3/geometry/euclidean/twod/Euclidean2D;>;"
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->distance(Lorg/apache/commons/math3/geometry/Point;)D

    move-result-wide v0

    return-wide v0
.end method

.method public distance1(Lorg/apache/commons/math3/geometry/Vector;)D
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/Vector",
            "<",
            "Lorg/apache/commons/math3/geometry/euclidean/twod/Euclidean2D;",
            ">;)D"
        }
    .end annotation

    .prologue
    .line 289
    .local p1, "p":Lorg/apache/commons/math3/geometry/Vector;, "Lorg/apache/commons/math3/geometry/Vector<Lorg/apache/commons/math3/geometry/euclidean/twod/Euclidean2D;>;"
    move-object v4, p1

    check-cast v4, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    .line 290
    .local v4, "p3":Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;
    iget-wide v6, v4, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->x:D

    iget-wide v8, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->x:D

    sub-double/2addr v6, v8

    invoke-static {v6, v7}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v0

    .line 291
    .local v0, "dx":D
    iget-wide v6, v4, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->y:D

    iget-wide v8, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->y:D

    sub-double/2addr v6, v8

    invoke-static {v6, v7}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v2

    .line 292
    .local v2, "dy":D
    add-double v6, v0, v2

    return-wide v6
.end method

.method public distanceInf(Lorg/apache/commons/math3/geometry/Vector;)D
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/Vector",
            "<",
            "Lorg/apache/commons/math3/geometry/euclidean/twod/Euclidean2D;",
            ">;)D"
        }
    .end annotation

    .prologue
    .line 311
    .local p1, "p":Lorg/apache/commons/math3/geometry/Vector;, "Lorg/apache/commons/math3/geometry/Vector<Lorg/apache/commons/math3/geometry/euclidean/twod/Euclidean2D;>;"
    move-object v4, p1

    check-cast v4, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    .line 312
    .local v4, "p3":Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;
    iget-wide v6, v4, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->x:D

    iget-wide v8, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->x:D

    sub-double/2addr v6, v8

    invoke-static {v6, v7}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v0

    .line 313
    .local v0, "dx":D
    iget-wide v6, v4, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->y:D

    iget-wide v8, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->y:D

    sub-double/2addr v6, v8

    invoke-static {v6, v7}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v2

    .line 314
    .local v2, "dy":D
    invoke-static {v0, v1, v2, v3}, Lorg/apache/commons/math3/util/FastMath;->max(DD)D

    move-result-wide v6

    return-wide v6
.end method

.method public distanceSq(Lorg/apache/commons/math3/geometry/Vector;)D
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/Vector",
            "<",
            "Lorg/apache/commons/math3/geometry/euclidean/twod/Euclidean2D;",
            ">;)D"
        }
    .end annotation

    .prologue
    .line 319
    .local p1, "p":Lorg/apache/commons/math3/geometry/Vector;, "Lorg/apache/commons/math3/geometry/Vector<Lorg/apache/commons/math3/geometry/euclidean/twod/Euclidean2D;>;"
    move-object v4, p1

    check-cast v4, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    .line 320
    .local v4, "p3":Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;
    iget-wide v6, v4, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->x:D

    iget-wide v8, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->x:D

    sub-double v0, v6, v8

    .line 321
    .local v0, "dx":D
    iget-wide v6, v4, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->y:D

    iget-wide v8, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->y:D

    sub-double v2, v6, v8

    .line 322
    .local v2, "dy":D
    mul-double v6, v0, v0

    mul-double v8, v2, v2

    add-double/2addr v6, v8

    return-wide v6
.end method

.method public dotProduct(Lorg/apache/commons/math3/geometry/Vector;)D
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/Vector",
            "<",
            "Lorg/apache/commons/math3/geometry/euclidean/twod/Euclidean2D;",
            ">;)D"
        }
    .end annotation

    .prologue
    .line 327
    .local p1, "v":Lorg/apache/commons/math3/geometry/Vector;, "Lorg/apache/commons/math3/geometry/Vector<Lorg/apache/commons/math3/geometry/euclidean/twod/Euclidean2D;>;"
    move-object v8, p1

    check-cast v8, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    .line 328
    .local v8, "v2":Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;
    iget-wide v0, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->x:D

    iget-wide v2, v8, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->x:D

    iget-wide v4, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->y:D

    iget-wide v6, v8, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->y:D

    invoke-static/range {v0 .. v7}, Lorg/apache/commons/math3/util/MathArrays;->linearCombination(DDDD)D

    move-result-wide v0

    return-wide v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 8
    .param p1, "other"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 417
    if-ne p0, p1, :cond_1

    .line 429
    :cond_0
    :goto_0
    return v1

    .line 421
    :cond_1
    instance-of v3, p1, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    if-eqz v3, :cond_4

    move-object v0, p1

    .line 422
    check-cast v0, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    .line 423
    .local v0, "rhs":Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;
    invoke-virtual {v0}, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->isNaN()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 424
    invoke-virtual {p0}, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->isNaN()Z

    move-result v1

    goto :goto_0

    .line 427
    :cond_2
    iget-wide v4, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->x:D

    iget-wide v6, v0, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->x:D

    cmpl-double v3, v4, v6

    if-nez v3, :cond_3

    iget-wide v4, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->y:D

    iget-wide v6, v0, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->y:D

    cmpl-double v3, v4, v6

    if-eqz v3, :cond_0

    :cond_3
    move v1, v2

    goto :goto_0

    .end local v0    # "rhs":Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;
    :cond_4
    move v1, v2

    .line 429
    goto :goto_0
.end method

.method public getNorm()D
    .locals 6

    .prologue
    .line 187
    iget-wide v0, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->x:D

    iget-wide v2, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->x:D

    mul-double/2addr v0, v2

    iget-wide v2, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->y:D

    iget-wide v4, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->y:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v0

    return-wide v0
.end method

.method public getNorm1()D
    .locals 4

    .prologue
    .line 182
    iget-wide v0, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->x:D

    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v0

    iget-wide v2, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->y:D

    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v2

    add-double/2addr v0, v2

    return-wide v0
.end method

.method public getNormInf()D
    .locals 4

    .prologue
    .line 197
    iget-wide v0, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->x:D

    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v0

    iget-wide v2, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->y:D

    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lorg/apache/commons/math3/util/FastMath;->max(DD)D

    move-result-wide v0

    return-wide v0
.end method

.method public getNormSq()D
    .locals 6

    .prologue
    .line 192
    iget-wide v0, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->x:D

    iget-wide v2, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->x:D

    mul-double/2addr v0, v2

    iget-wide v2, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->y:D

    iget-wide v4, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->y:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    return-wide v0
.end method

.method public getSpace()Lorg/apache/commons/math3/geometry/Space;
    .locals 1

    .prologue
    .line 172
    invoke-static {}, Lorg/apache/commons/math3/geometry/euclidean/twod/Euclidean2D;->getInstance()Lorg/apache/commons/math3/geometry/euclidean/twod/Euclidean2D;

    move-result-object v0

    return-object v0
.end method

.method public getX()D
    .locals 2

    .prologue
    .line 151
    iget-wide v0, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->x:D

    return-wide v0
.end method

.method public getY()D
    .locals 2

    .prologue
    .line 159
    iget-wide v0, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->y:D

    return-wide v0
.end method

.method public bridge synthetic getZero()Lorg/apache/commons/math3/geometry/Vector;
    .locals 1

    .prologue
    .line 35
    invoke-virtual {p0}, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->getZero()Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    move-result-object v0

    return-object v0
.end method

.method public getZero()Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;
    .locals 1

    .prologue
    .line 177
    sget-object v0, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->ZERO:Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 441
    invoke-virtual {p0}, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->isNaN()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 442
    const/16 v0, 0x21e

    .line 444
    :goto_0
    return v0

    :cond_0
    iget-wide v0, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->x:D

    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/MathUtils;->hash(D)I

    move-result v0

    mul-int/lit8 v0, v0, 0x4c

    iget-wide v2, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->y:D

    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/MathUtils;->hash(D)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x7a

    goto :goto_0
.end method

.method public isInfinite()Z
    .locals 2

    .prologue
    .line 284
    invoke-virtual {p0}, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->isNaN()Z

    move-result v0

    if-nez v0, :cond_1

    iget-wide v0, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->x:D

    invoke-static {v0, v1}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v0

    if-nez v0, :cond_0

    iget-wide v0, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->y:D

    invoke-static {v0, v1}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isNaN()Z
    .locals 2

    .prologue
    .line 279
    iget-wide v0, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->x:D

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_0

    iget-wide v0, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->y:D

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic negate()Lorg/apache/commons/math3/geometry/Vector;
    .locals 1

    .prologue
    .line 35
    invoke-virtual {p0}, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->negate()Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    move-result-object v0

    return-object v0
.end method

.method public negate()Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;
    .locals 6

    .prologue
    .line 269
    new-instance v0, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    iget-wide v2, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->x:D

    neg-double v2, v2

    iget-wide v4, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->y:D

    neg-double v4, v4

    invoke-direct {v0, v2, v3, v4, v5}, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;-><init>(DD)V

    return-object v0
.end method

.method public bridge synthetic normalize()Lorg/apache/commons/math3/geometry/Vector;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathArithmeticException;
        }
    .end annotation

    .prologue
    .line 35
    invoke-virtual {p0}, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->normalize()Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    move-result-object v0

    return-object v0
.end method

.method public normalize()Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathArithmeticException;
        }
    .end annotation

    .prologue
    .line 226
    invoke-virtual {p0}, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->getNorm()D

    move-result-wide v0

    .line 227
    .local v0, "s":D
    const-wide/16 v2, 0x0

    cmpl-double v2, v0, v2

    if-nez v2, :cond_0

    .line 228
    new-instance v2, Lorg/apache/commons/math3/exception/MathArithmeticException;

    sget-object v3, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->CANNOT_NORMALIZE_A_ZERO_NORM_VECTOR:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-direct {v2, v3, v4}, Lorg/apache/commons/math3/exception/MathArithmeticException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v2

    .line 230
    :cond_0
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    div-double/2addr v2, v0

    invoke-virtual {p0, v2, v3}, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->scalarMultiply(D)Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    move-result-object v2

    return-object v2
.end method

.method public bridge synthetic scalarMultiply(D)Lorg/apache/commons/math3/geometry/Vector;
    .locals 1
    .param p1, "x0"    # D

    .prologue
    .line 35
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->scalarMultiply(D)Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    move-result-object v0

    return-object v0
.end method

.method public scalarMultiply(D)Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;
    .locals 7
    .param p1, "a"    # D

    .prologue
    .line 274
    new-instance v0, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    iget-wide v2, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->x:D

    mul-double/2addr v2, p1

    iget-wide v4, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->y:D

    mul-double/2addr v4, p1

    invoke-direct {v0, v2, v3, v4, v5}, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;-><init>(DD)V

    return-object v0
.end method

.method public bridge synthetic subtract(DLorg/apache/commons/math3/geometry/Vector;)Lorg/apache/commons/math3/geometry/Vector;
    .locals 1
    .param p1, "x0"    # D
    .param p3, "x1"    # Lorg/apache/commons/math3/geometry/Vector;

    .prologue
    .line 35
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->subtract(DLorg/apache/commons/math3/geometry/Vector;)Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic subtract(Lorg/apache/commons/math3/geometry/Vector;)Lorg/apache/commons/math3/geometry/Vector;
    .locals 1
    .param p1, "x0"    # Lorg/apache/commons/math3/geometry/Vector;

    .prologue
    .line 35
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->subtract(Lorg/apache/commons/math3/geometry/Vector;)Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    move-result-object v0

    return-object v0
.end method

.method public subtract(DLorg/apache/commons/math3/geometry/Vector;)Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;
    .locals 9
    .param p1, "factor"    # D
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(D",
            "Lorg/apache/commons/math3/geometry/Vector",
            "<",
            "Lorg/apache/commons/math3/geometry/euclidean/twod/Euclidean2D;",
            ">;)",
            "Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;"
        }
    .end annotation

    .prologue
    .line 220
    .local p3, "v":Lorg/apache/commons/math3/geometry/Vector;, "Lorg/apache/commons/math3/geometry/Vector<Lorg/apache/commons/math3/geometry/euclidean/twod/Euclidean2D;>;"
    move-object v0, p3

    check-cast v0, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    .line 221
    .local v0, "v2":Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;
    new-instance v1, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    iget-wide v2, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->x:D

    invoke-virtual {v0}, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->getX()D

    move-result-wide v4

    mul-double/2addr v4, p1

    sub-double/2addr v2, v4

    iget-wide v4, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->y:D

    invoke-virtual {v0}, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->getY()D

    move-result-wide v6

    mul-double/2addr v6, p1

    sub-double/2addr v4, v6

    invoke-direct {v1, v2, v3, v4, v5}, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;-><init>(DD)V

    return-object v1
.end method

.method public subtract(Lorg/apache/commons/math3/geometry/Vector;)Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/Vector",
            "<",
            "Lorg/apache/commons/math3/geometry/euclidean/twod/Euclidean2D;",
            ">;)",
            "Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;"
        }
    .end annotation

    .prologue
    .line 214
    .local p1, "p":Lorg/apache/commons/math3/geometry/Vector;, "Lorg/apache/commons/math3/geometry/Vector<Lorg/apache/commons/math3/geometry/euclidean/twod/Euclidean2D;>;"
    move-object v0, p1

    check-cast v0, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    .line 215
    .local v0, "p3":Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;
    new-instance v1, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    iget-wide v2, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->x:D

    iget-wide v4, v0, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->x:D

    sub-double/2addr v2, v4

    iget-wide v4, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->y:D

    iget-wide v6, v0, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->y:D

    sub-double/2addr v4, v6

    invoke-direct {v1, v2, v3, v4, v5}, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;-><init>(DD)V

    return-object v1
.end method

.method public toArray()[D
    .locals 4

    .prologue
    .line 167
    const/4 v0, 0x2

    new-array v0, v0, [D

    const/4 v1, 0x0

    iget-wide v2, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->x:D

    aput-wide v2, v0, v1

    const/4 v1, 0x1

    iget-wide v2, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->y:D

    aput-wide v2, v0, v1

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 452
    invoke-static {}, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2DFormat;->getInstance()Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2DFormat;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2DFormat;->format(Lorg/apache/commons/math3/geometry/Vector;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString(Ljava/text/NumberFormat;)Ljava/lang/String;
    .locals 1
    .param p1, "format"    # Ljava/text/NumberFormat;

    .prologue
    .line 457
    new-instance v0, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2DFormat;

    invoke-direct {v0, p1}, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2DFormat;-><init>(Ljava/text/NumberFormat;)V

    invoke-virtual {v0, p0}, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2DFormat;->format(Lorg/apache/commons/math3/geometry/Vector;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
