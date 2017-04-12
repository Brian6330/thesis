.class public Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
.super Ljava/lang/Object;
.source "Vector3D.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Lorg/apache/commons/math3/geometry/Vector;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;",
        "Lorg/apache/commons/math3/geometry/Vector",
        "<",
        "Lorg/apache/commons/math3/geometry/euclidean/threed/Euclidean3D;",
        ">;"
    }
.end annotation


# static fields
.field public static final MINUS_I:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

.field public static final MINUS_J:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

.field public static final MINUS_K:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

.field public static final NEGATIVE_INFINITY:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

.field public static final NaN:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

.field public static final PLUS_I:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

.field public static final PLUS_J:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

.field public static final PLUS_K:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

.field public static final POSITIVE_INFINITY:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

.field public static final ZERO:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

.field private static final serialVersionUID:J = 0x123a77380306b8a3L


# instance fields
.field private final x:D

.field private final y:D

.field private final z:D


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    .line 41
    new-instance v1, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    invoke-direct/range {v1 .. v7}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;-><init>(DDD)V

    sput-object v1, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->ZERO:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    .line 44
    new-instance v1, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    invoke-direct/range {v1 .. v7}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;-><init>(DDD)V

    sput-object v1, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->PLUS_I:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    .line 47
    new-instance v1, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    const-wide/high16 v2, -0x4010000000000000L    # -1.0

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    invoke-direct/range {v1 .. v7}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;-><init>(DDD)V

    sput-object v1, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->MINUS_I:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    .line 50
    new-instance v1, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    const-wide/16 v2, 0x0

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    const-wide/16 v6, 0x0

    invoke-direct/range {v1 .. v7}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;-><init>(DDD)V

    sput-object v1, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->PLUS_J:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    .line 53
    new-instance v1, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    const-wide/16 v2, 0x0

    const-wide/high16 v4, -0x4010000000000000L    # -1.0

    const-wide/16 v6, 0x0

    invoke-direct/range {v1 .. v7}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;-><init>(DDD)V

    sput-object v1, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->MINUS_J:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    .line 56
    new-instance v1, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x0

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    invoke-direct/range {v1 .. v7}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;-><init>(DDD)V

    sput-object v1, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->PLUS_K:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    .line 59
    new-instance v1, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x0

    const-wide/high16 v6, -0x4010000000000000L    # -1.0

    invoke-direct/range {v1 .. v7}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;-><init>(DDD)V

    sput-object v1, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->MINUS_K:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    .line 63
    new-instance v1, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    const-wide/high16 v2, 0x7ff8000000000000L    # NaN

    const-wide/high16 v4, 0x7ff8000000000000L    # NaN

    const-wide/high16 v6, 0x7ff8000000000000L    # NaN

    invoke-direct/range {v1 .. v7}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;-><init>(DDD)V

    sput-object v1, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->NaN:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    .line 67
    new-instance v1, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    const-wide/high16 v2, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    const-wide/high16 v4, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    const-wide/high16 v6, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    invoke-direct/range {v1 .. v7}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;-><init>(DDD)V

    sput-object v1, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->POSITIVE_INFINITY:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    .line 71
    new-instance v1, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    const-wide/high16 v2, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    const-wide/high16 v4, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    const-wide/high16 v6, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    invoke-direct/range {v1 .. v7}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;-><init>(DDD)V

    sput-object v1, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->NEGATIVE_INFINITY:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    return-void
.end method

.method public constructor <init>(DD)V
    .locals 5
    .param p1, "alpha"    # D
    .param p3, "delta"    # D

    .prologue
    .line 124
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 125
    invoke-static {p3, p4}, Lorg/apache/commons/math3/util/FastMath;->cos(D)D

    move-result-wide v0

    .line 126
    .local v0, "cosDelta":D
    invoke-static {p1, p2}, Lorg/apache/commons/math3/util/FastMath;->cos(D)D

    move-result-wide v2

    mul-double/2addr v2, v0

    iput-wide v2, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->x:D

    .line 127
    invoke-static {p1, p2}, Lorg/apache/commons/math3/util/FastMath;->sin(D)D

    move-result-wide v2

    mul-double/2addr v2, v0

    iput-wide v2, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->y:D

    .line 128
    invoke-static {p3, p4}, Lorg/apache/commons/math3/util/FastMath;->sin(D)D

    move-result-wide v2

    iput-wide v2, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->z:D

    .line 129
    return-void
.end method

.method public constructor <init>(DDD)V
    .locals 1
    .param p1, "x"    # D
    .param p3, "y"    # D
    .param p5, "z"    # D

    .prologue
    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 96
    iput-wide p1, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->x:D

    .line 97
    iput-wide p3, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->y:D

    .line 98
    iput-wide p5, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->z:D

    .line 99
    return-void
.end method

.method public constructor <init>(DLorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)V
    .locals 3
    .param p1, "a"    # D
    .param p3, "u"    # Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    .prologue
    .line 137
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 138
    iget-wide v0, p3, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->x:D

    mul-double/2addr v0, p1

    iput-wide v0, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->x:D

    .line 139
    iget-wide v0, p3, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->y:D

    mul-double/2addr v0, p1

    iput-wide v0, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->y:D

    .line 140
    iget-wide v0, p3, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->z:D

    mul-double/2addr v0, p1

    iput-wide v0, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->z:D

    .line 141
    return-void
.end method

.method public constructor <init>(DLorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;DLorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)V
    .locals 8
    .param p1, "a1"    # D
    .param p3, "u1"    # Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    .param p4, "a2"    # D
    .param p6, "u2"    # Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    .prologue
    .line 151
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 152
    iget-wide v2, p3, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->x:D

    iget-wide v6, p6, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->x:D

    move-wide v0, p1

    move-wide v4, p4

    invoke-static/range {v0 .. v7}, Lorg/apache/commons/math3/util/MathArrays;->linearCombination(DDDD)D

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->x:D

    .line 153
    iget-wide v2, p3, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->y:D

    iget-wide v6, p6, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->y:D

    move-wide v0, p1

    move-wide v4, p4

    invoke-static/range {v0 .. v7}, Lorg/apache/commons/math3/util/MathArrays;->linearCombination(DDDD)D

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->y:D

    .line 154
    iget-wide v2, p3, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->z:D

    iget-wide v6, p6, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->z:D

    move-wide v0, p1

    move-wide v4, p4

    invoke-static/range {v0 .. v7}, Lorg/apache/commons/math3/util/MathArrays;->linearCombination(DDDD)D

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->z:D

    .line 155
    return-void
.end method

.method public constructor <init>(DLorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;DLorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;DLorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)V
    .locals 15
    .param p1, "a1"    # D
    .param p3, "u1"    # Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    .param p4, "a2"    # D
    .param p6, "u2"    # Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    .param p7, "a3"    # D
    .param p9, "u3"    # Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    .prologue
    .line 168
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 169
    move-object/from16 v0, p3

    iget-wide v4, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->x:D

    move-object/from16 v0, p6

    iget-wide v8, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->x:D

    move-object/from16 v0, p9

    iget-wide v12, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->x:D

    move-wide/from16 v2, p1

    move-wide/from16 v6, p4

    move-wide/from16 v10, p7

    invoke-static/range {v2 .. v13}, Lorg/apache/commons/math3/util/MathArrays;->linearCombination(DDDDDD)D

    move-result-wide v2

    iput-wide v2, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->x:D

    .line 170
    move-object/from16 v0, p3

    iget-wide v4, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->y:D

    move-object/from16 v0, p6

    iget-wide v8, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->y:D

    move-object/from16 v0, p9

    iget-wide v12, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->y:D

    move-wide/from16 v2, p1

    move-wide/from16 v6, p4

    move-wide/from16 v10, p7

    invoke-static/range {v2 .. v13}, Lorg/apache/commons/math3/util/MathArrays;->linearCombination(DDDDDD)D

    move-result-wide v2

    iput-wide v2, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->y:D

    .line 171
    move-object/from16 v0, p3

    iget-wide v4, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->z:D

    move-object/from16 v0, p6

    iget-wide v8, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->z:D

    move-object/from16 v0, p9

    iget-wide v12, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->z:D

    move-wide/from16 v2, p1

    move-wide/from16 v6, p4

    move-wide/from16 v10, p7

    invoke-static/range {v2 .. v13}, Lorg/apache/commons/math3/util/MathArrays;->linearCombination(DDDDDD)D

    move-result-wide v2

    iput-wide v2, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->z:D

    .line 172
    return-void
.end method

.method public constructor <init>(DLorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;DLorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;DLorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;DLorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)V
    .locals 18
    .param p1, "a1"    # D
    .param p3, "u1"    # Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    .param p4, "a2"    # D
    .param p6, "u2"    # Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    .param p7, "a3"    # D
    .param p9, "u3"    # Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    .param p10, "a4"    # D
    .param p12, "u4"    # Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    .prologue
    .line 187
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 188
    move-object/from16 v0, p3

    iget-wide v4, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->x:D

    move-object/from16 v0, p6

    iget-wide v8, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->x:D

    move-object/from16 v0, p9

    iget-wide v12, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->x:D

    move-object/from16 v0, p12

    iget-wide v0, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->x:D

    move-wide/from16 v16, v0

    move-wide/from16 v2, p1

    move-wide/from16 v6, p4

    move-wide/from16 v10, p7

    move-wide/from16 v14, p10

    invoke-static/range {v2 .. v17}, Lorg/apache/commons/math3/util/MathArrays;->linearCombination(DDDDDDDD)D

    move-result-wide v2

    move-object/from16 v0, p0

    iput-wide v2, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->x:D

    .line 189
    move-object/from16 v0, p3

    iget-wide v4, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->y:D

    move-object/from16 v0, p6

    iget-wide v8, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->y:D

    move-object/from16 v0, p9

    iget-wide v12, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->y:D

    move-object/from16 v0, p12

    iget-wide v0, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->y:D

    move-wide/from16 v16, v0

    move-wide/from16 v2, p1

    move-wide/from16 v6, p4

    move-wide/from16 v10, p7

    move-wide/from16 v14, p10

    invoke-static/range {v2 .. v17}, Lorg/apache/commons/math3/util/MathArrays;->linearCombination(DDDDDDDD)D

    move-result-wide v2

    move-object/from16 v0, p0

    iput-wide v2, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->y:D

    .line 190
    move-object/from16 v0, p3

    iget-wide v4, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->z:D

    move-object/from16 v0, p6

    iget-wide v8, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->z:D

    move-object/from16 v0, p9

    iget-wide v12, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->z:D

    move-object/from16 v0, p12

    iget-wide v0, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->z:D

    move-wide/from16 v16, v0

    move-wide/from16 v2, p1

    move-wide/from16 v6, p4

    move-wide/from16 v10, p7

    move-wide/from16 v14, p10

    invoke-static/range {v2 .. v17}, Lorg/apache/commons/math3/util/MathArrays;->linearCombination(DDDDDDDD)D

    move-result-wide v2

    move-object/from16 v0, p0

    iput-wide v2, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->z:D

    .line 191
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
    const/4 v2, 0x3

    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 108
    array-length v0, p1

    if-eq v0, v2, :cond_0

    .line 109
    new-instance v0, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    array-length v1, p1

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v0

    .line 111
    :cond_0
    const/4 v0, 0x0

    aget-wide v0, p1, v0

    iput-wide v0, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->x:D

    .line 112
    const/4 v0, 0x1

    aget-wide v0, p1, v0

    iput-wide v0, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->y:D

    .line 113
    const/4 v0, 0x2

    aget-wide v0, p1, v0

    iput-wide v0, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->z:D

    .line 114
    return-void
.end method

.method public static angle(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)D
    .locals 14
    .param p0, "v1"    # Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    .param p1, "v2"    # Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathArithmeticException;
        }
    .end annotation

    .prologue
    const-wide/16 v12, 0x0

    .line 351
    invoke-virtual {p0}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getNorm()D

    move-result-wide v8

    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getNorm()D

    move-result-wide v10

    mul-double v2, v8, v10

    .line 352
    .local v2, "normProduct":D
    cmpl-double v7, v2, v12

    if-nez v7, :cond_0

    .line 353
    new-instance v7, Lorg/apache/commons/math3/exception/MathArithmeticException;

    sget-object v8, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->ZERO_NORM:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/Object;

    invoke-direct {v7, v8, v9}, Lorg/apache/commons/math3/exception/MathArithmeticException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v7

    .line 356
    :cond_0
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->dotProduct(Lorg/apache/commons/math3/geometry/Vector;)D

    move-result-wide v0

    .line 357
    .local v0, "dot":D
    const-wide v8, 0x3fefff2e48e8a71eL    # 0.9999

    mul-double v4, v2, v8

    .line 358
    .local v4, "threshold":D
    neg-double v8, v4

    cmpg-double v7, v0, v8

    if-ltz v7, :cond_1

    cmpl-double v7, v0, v4

    if-lez v7, :cond_3

    .line 360
    :cond_1
    invoke-static {p0, p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->crossProduct(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object v6

    .line 361
    .local v6, "v3":Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    cmpl-double v7, v0, v12

    if-ltz v7, :cond_2

    .line 362
    invoke-virtual {v6}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getNorm()D

    move-result-wide v8

    div-double/2addr v8, v2

    invoke-static {v8, v9}, Lorg/apache/commons/math3/util/FastMath;->asin(D)D

    move-result-wide v8

    .line 368
    .end local v6    # "v3":Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    :goto_0
    return-wide v8

    .line 364
    .restart local v6    # "v3":Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    :cond_2
    const-wide v8, 0x400921fb54442d18L    # Math.PI

    invoke-virtual {v6}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getNorm()D

    move-result-wide v10

    div-double/2addr v10, v2

    invoke-static {v10, v11}, Lorg/apache/commons/math3/util/FastMath;->asin(D)D

    move-result-wide v10

    sub-double/2addr v8, v10

    goto :goto_0

    .line 368
    .end local v6    # "v3":Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    :cond_3
    div-double v8, v0, v2

    invoke-static {v8, v9}, Lorg/apache/commons/math3/util/FastMath;->acos(D)D

    move-result-wide v8

    goto :goto_0
.end method

.method public static crossProduct(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    .locals 1
    .param p0, "v1"    # Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    .param p1, "v2"    # Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    .prologue
    .line 524
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->crossProduct(Lorg/apache/commons/math3/geometry/Vector;)Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object v0

    return-object v0
.end method

.method public static distance(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)D
    .locals 2
    .param p0, "v1"    # Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    .param p1, "v2"    # Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    .prologue
    .line 548
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->distance(Lorg/apache/commons/math3/geometry/Vector;)D

    move-result-wide v0

    return-wide v0
.end method

.method public static distance1(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)D
    .locals 2
    .param p0, "v1"    # Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    .param p1, "v2"    # Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    .prologue
    .line 536
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->distance1(Lorg/apache/commons/math3/geometry/Vector;)D

    move-result-wide v0

    return-wide v0
.end method

.method public static distanceInf(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)D
    .locals 2
    .param p0, "v1"    # Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    .param p1, "v2"    # Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    .prologue
    .line 560
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->distanceInf(Lorg/apache/commons/math3/geometry/Vector;)D

    move-result-wide v0

    return-wide v0
.end method

.method public static distanceSq(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)D
    .locals 2
    .param p0, "v1"    # Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    .param p1, "v2"    # Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    .prologue
    .line 572
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->distanceSq(Lorg/apache/commons/math3/geometry/Vector;)D

    move-result-wide v0

    return-wide v0
.end method

.method public static dotProduct(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)D
    .locals 2
    .param p0, "v1"    # Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    .param p1, "v2"    # Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    .prologue
    .line 515
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->dotProduct(Lorg/apache/commons/math3/geometry/Vector;)D

    move-result-wide v0

    return-wide v0
.end method


# virtual methods
.method public bridge synthetic add(DLorg/apache/commons/math3/geometry/Vector;)Lorg/apache/commons/math3/geometry/Vector;
    .locals 1
    .param p1, "x0"    # D
    .param p3, "x1"    # Lorg/apache/commons/math3/geometry/Vector;

    .prologue
    .line 38
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->add(DLorg/apache/commons/math3/geometry/Vector;)Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic add(Lorg/apache/commons/math3/geometry/Vector;)Lorg/apache/commons/math3/geometry/Vector;
    .locals 1
    .param p1, "x0"    # Lorg/apache/commons/math3/geometry/Vector;

    .prologue
    .line 38
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->add(Lorg/apache/commons/math3/geometry/Vector;)Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object v0

    return-object v0
.end method

.method public add(DLorg/apache/commons/math3/geometry/Vector;)Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    .locals 7
    .param p1, "factor"    # D
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(D",
            "Lorg/apache/commons/math3/geometry/Vector",
            "<",
            "Lorg/apache/commons/math3/geometry/euclidean/threed/Euclidean3D;",
            ">;)",
            "Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;"
        }
    .end annotation

    .prologue
    .line 281
    .local p3, "v":Lorg/apache/commons/math3/geometry/Vector;, "Lorg/apache/commons/math3/geometry/Vector<Lorg/apache/commons/math3/geometry/euclidean/threed/Euclidean3D;>;"
    new-instance v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    move-object v6, p3

    check-cast v6, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-object v3, p0

    move-wide v4, p1

    invoke-direct/range {v0 .. v6}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;-><init>(DLorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;DLorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)V

    return-object v0
.end method

.method public add(Lorg/apache/commons/math3/geometry/Vector;)Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/Vector",
            "<",
            "Lorg/apache/commons/math3/geometry/euclidean/threed/Euclidean3D;",
            ">;)",
            "Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;"
        }
    .end annotation

    .prologue
    .line 275
    .local p1, "v":Lorg/apache/commons/math3/geometry/Vector;, "Lorg/apache/commons/math3/geometry/Vector<Lorg/apache/commons/math3/geometry/euclidean/threed/Euclidean3D;>;"
    move-object v0, p1

    check-cast v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    .line 276
    .local v0, "v3":Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    new-instance v1, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    iget-wide v2, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->x:D

    iget-wide v4, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->x:D

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->y:D

    iget-wide v6, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->y:D

    add-double/2addr v4, v6

    iget-wide v6, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->z:D

    iget-wide v8, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->z:D

    add-double/2addr v6, v8

    invoke-direct/range {v1 .. v7}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;-><init>(DDD)V

    return-object v1
.end method

.method public crossProduct(Lorg/apache/commons/math3/geometry/Vector;)Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/Vector",
            "<",
            "Lorg/apache/commons/math3/geometry/euclidean/threed/Euclidean3D;",
            ">;)",
            "Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;"
        }
    .end annotation

    .prologue
    .line 462
    .local p1, "v":Lorg/apache/commons/math3/geometry/Vector;, "Lorg/apache/commons/math3/geometry/Vector<Lorg/apache/commons/math3/geometry/euclidean/threed/Euclidean3D;>;"
    move-object v8, p1

    check-cast v8, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    .line 463
    .local v8, "v3":Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    new-instance v9, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    iget-wide v0, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->y:D

    iget-wide v2, v8, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->z:D

    iget-wide v4, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->z:D

    neg-double v4, v4

    iget-wide v6, v8, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->y:D

    invoke-static/range {v0 .. v7}, Lorg/apache/commons/math3/util/MathArrays;->linearCombination(DDDD)D

    move-result-wide v10

    iget-wide v0, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->z:D

    iget-wide v2, v8, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->x:D

    iget-wide v4, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->x:D

    neg-double v4, v4

    iget-wide v6, v8, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->z:D

    invoke-static/range {v0 .. v7}, Lorg/apache/commons/math3/util/MathArrays;->linearCombination(DDDD)D

    move-result-wide v12

    iget-wide v0, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->x:D

    iget-wide v2, v8, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->y:D

    iget-wide v4, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->y:D

    neg-double v4, v4

    iget-wide v6, v8, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->x:D

    invoke-static/range {v0 .. v7}, Lorg/apache/commons/math3/util/MathArrays;->linearCombination(DDDD)D

    move-result-wide v6

    move-object v1, v9

    move-wide v2, v10

    move-wide v4, v12

    invoke-direct/range {v1 .. v7}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;-><init>(DDD)V

    return-object v9
.end method

.method public distance(Lorg/apache/commons/math3/geometry/Point;)D
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/Point",
            "<",
            "Lorg/apache/commons/math3/geometry/euclidean/threed/Euclidean3D;",
            ">;)D"
        }
    .end annotation

    .prologue
    .line 484
    .local p1, "v":Lorg/apache/commons/math3/geometry/Point;, "Lorg/apache/commons/math3/geometry/Point<Lorg/apache/commons/math3/geometry/euclidean/threed/Euclidean3D;>;"
    move-object v6, p1

    check-cast v6, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    .line 485
    .local v6, "v3":Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    iget-wide v8, v6, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->x:D

    iget-wide v10, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->x:D

    sub-double v0, v8, v10

    .line 486
    .local v0, "dx":D
    iget-wide v8, v6, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->y:D

    iget-wide v10, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->y:D

    sub-double v2, v8, v10

    .line 487
    .local v2, "dy":D
    iget-wide v8, v6, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->z:D

    iget-wide v10, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->z:D

    sub-double v4, v8, v10

    .line 488
    .local v4, "dz":D
    mul-double v8, v0, v0

    mul-double v10, v2, v2

    add-double/2addr v8, v10

    mul-double v10, v4, v4

    add-double/2addr v8, v10

    invoke-static {v8, v9}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v8

    return-wide v8
.end method

.method public distance(Lorg/apache/commons/math3/geometry/Vector;)D
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/Vector",
            "<",
            "Lorg/apache/commons/math3/geometry/euclidean/threed/Euclidean3D;",
            ">;)D"
        }
    .end annotation

    .prologue
    .line 479
    .local p1, "v":Lorg/apache/commons/math3/geometry/Vector;, "Lorg/apache/commons/math3/geometry/Vector<Lorg/apache/commons/math3/geometry/euclidean/threed/Euclidean3D;>;"
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->distance(Lorg/apache/commons/math3/geometry/Point;)D

    move-result-wide v0

    return-wide v0
.end method

.method public distance1(Lorg/apache/commons/math3/geometry/Vector;)D
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/Vector",
            "<",
            "Lorg/apache/commons/math3/geometry/euclidean/threed/Euclidean3D;",
            ">;)D"
        }
    .end annotation

    .prologue
    .line 470
    .local p1, "v":Lorg/apache/commons/math3/geometry/Vector;, "Lorg/apache/commons/math3/geometry/Vector<Lorg/apache/commons/math3/geometry/euclidean/threed/Euclidean3D;>;"
    move-object v6, p1

    check-cast v6, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    .line 471
    .local v6, "v3":Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    iget-wide v8, v6, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->x:D

    iget-wide v10, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->x:D

    sub-double/2addr v8, v10

    invoke-static {v8, v9}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v0

    .line 472
    .local v0, "dx":D
    iget-wide v8, v6, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->y:D

    iget-wide v10, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->y:D

    sub-double/2addr v8, v10

    invoke-static {v8, v9}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v2

    .line 473
    .local v2, "dy":D
    iget-wide v8, v6, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->z:D

    iget-wide v10, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->z:D

    sub-double/2addr v8, v10

    invoke-static {v8, v9}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v4

    .line 474
    .local v4, "dz":D
    add-double v8, v0, v2

    add-double/2addr v8, v4

    return-wide v8
.end method

.method public distanceInf(Lorg/apache/commons/math3/geometry/Vector;)D
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/Vector",
            "<",
            "Lorg/apache/commons/math3/geometry/euclidean/threed/Euclidean3D;",
            ">;)D"
        }
    .end annotation

    .prologue
    .line 493
    .local p1, "v":Lorg/apache/commons/math3/geometry/Vector;, "Lorg/apache/commons/math3/geometry/Vector<Lorg/apache/commons/math3/geometry/euclidean/threed/Euclidean3D;>;"
    move-object v6, p1

    check-cast v6, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    .line 494
    .local v6, "v3":Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    iget-wide v8, v6, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->x:D

    iget-wide v10, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->x:D

    sub-double/2addr v8, v10

    invoke-static {v8, v9}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v0

    .line 495
    .local v0, "dx":D
    iget-wide v8, v6, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->y:D

    iget-wide v10, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->y:D

    sub-double/2addr v8, v10

    invoke-static {v8, v9}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v2

    .line 496
    .local v2, "dy":D
    iget-wide v8, v6, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->z:D

    iget-wide v10, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->z:D

    sub-double/2addr v8, v10

    invoke-static {v8, v9}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v4

    .line 497
    .local v4, "dz":D
    invoke-static {v0, v1, v2, v3}, Lorg/apache/commons/math3/util/FastMath;->max(DD)D

    move-result-wide v8

    invoke-static {v8, v9, v4, v5}, Lorg/apache/commons/math3/util/FastMath;->max(DD)D

    move-result-wide v8

    return-wide v8
.end method

.method public distanceSq(Lorg/apache/commons/math3/geometry/Vector;)D
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/Vector",
            "<",
            "Lorg/apache/commons/math3/geometry/euclidean/threed/Euclidean3D;",
            ">;)D"
        }
    .end annotation

    .prologue
    .line 502
    .local p1, "v":Lorg/apache/commons/math3/geometry/Vector;, "Lorg/apache/commons/math3/geometry/Vector<Lorg/apache/commons/math3/geometry/euclidean/threed/Euclidean3D;>;"
    move-object v6, p1

    check-cast v6, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    .line 503
    .local v6, "v3":Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    iget-wide v8, v6, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->x:D

    iget-wide v10, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->x:D

    sub-double v0, v8, v10

    .line 504
    .local v0, "dx":D
    iget-wide v8, v6, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->y:D

    iget-wide v10, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->y:D

    sub-double v2, v8, v10

    .line 505
    .local v2, "dy":D
    iget-wide v8, v6, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->z:D

    iget-wide v10, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->z:D

    sub-double v4, v8, v10

    .line 506
    .local v4, "dz":D
    mul-double v8, v0, v0

    mul-double v10, v2, v2

    add-double/2addr v8, v10

    mul-double v10, v4, v4

    add-double/2addr v8, v10

    return-wide v8
.end method

.method public dotProduct(Lorg/apache/commons/math3/geometry/Vector;)D
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/Vector",
            "<",
            "Lorg/apache/commons/math3/geometry/euclidean/threed/Euclidean3D;",
            ">;)D"
        }
    .end annotation

    .prologue
    .line 453
    .local p1, "v":Lorg/apache/commons/math3/geometry/Vector;, "Lorg/apache/commons/math3/geometry/Vector<Lorg/apache/commons/math3/geometry/euclidean/threed/Euclidean3D;>;"
    move-object v12, p1

    check-cast v12, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    .line 454
    .local v12, "v3":Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    iget-wide v0, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->x:D

    iget-wide v2, v12, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->x:D

    iget-wide v4, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->y:D

    iget-wide v6, v12, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->y:D

    iget-wide v8, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->z:D

    iget-wide v10, v12, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->z:D

    invoke-static/range {v0 .. v11}, Lorg/apache/commons/math3/util/MathArrays;->linearCombination(DDDDDD)D

    move-result-wide v0

    return-wide v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 8
    .param p1, "other"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 414
    if-ne p0, p1, :cond_1

    .line 426
    :cond_0
    :goto_0
    return v1

    .line 418
    :cond_1
    instance-of v3, p1, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    if-eqz v3, :cond_4

    move-object v0, p1

    .line 419
    check-cast v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    .line 420
    .local v0, "rhs":Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    invoke-virtual {v0}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->isNaN()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 421
    invoke-virtual {p0}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->isNaN()Z

    move-result v1

    goto :goto_0

    .line 424
    :cond_2
    iget-wide v4, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->x:D

    iget-wide v6, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->x:D

    cmpl-double v3, v4, v6

    if-nez v3, :cond_3

    iget-wide v4, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->y:D

    iget-wide v6, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->y:D

    cmpl-double v3, v4, v6

    if-nez v3, :cond_3

    iget-wide v4, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->z:D

    iget-wide v6, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->z:D

    cmpl-double v3, v4, v6

    if-eqz v3, :cond_0

    :cond_3
    move v1, v2

    goto :goto_0

    .end local v0    # "rhs":Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    :cond_4
    move v1, v2

    .line 426
    goto :goto_0
.end method

.method public getAlpha()D
    .locals 4

    .prologue
    .line 262
    iget-wide v0, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->y:D

    iget-wide v2, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->x:D

    invoke-static {v0, v1, v2, v3}, Lorg/apache/commons/math3/util/FastMath;->atan2(DD)D

    move-result-wide v0

    return-wide v0
.end method

.method public getDelta()D
    .locals 4

    .prologue
    .line 270
    iget-wide v0, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->z:D

    invoke-virtual {p0}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getNorm()D

    move-result-wide v2

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->asin(D)D

    move-result-wide v0

    return-wide v0
.end method

.method public getNorm()D
    .locals 6

    .prologue
    .line 243
    iget-wide v0, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->x:D

    iget-wide v2, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->x:D

    mul-double/2addr v0, v2

    iget-wide v2, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->y:D

    iget-wide v4, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->y:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->z:D

    iget-wide v4, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->z:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v0

    return-wide v0
.end method

.method public getNorm1()D
    .locals 4

    .prologue
    .line 237
    iget-wide v0, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->x:D

    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v0

    iget-wide v2, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->y:D

    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v2

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->z:D

    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v2

    add-double/2addr v0, v2

    return-wide v0
.end method

.method public getNormInf()D
    .locals 4

    .prologue
    .line 254
    iget-wide v0, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->x:D

    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v0

    iget-wide v2, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->y:D

    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lorg/apache/commons/math3/util/FastMath;->max(DD)D

    move-result-wide v0

    iget-wide v2, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->z:D

    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lorg/apache/commons/math3/util/FastMath;->max(DD)D

    move-result-wide v0

    return-wide v0
.end method

.method public getNormSq()D
    .locals 6

    .prologue
    .line 249
    iget-wide v0, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->x:D

    iget-wide v2, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->x:D

    mul-double/2addr v0, v2

    iget-wide v2, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->y:D

    iget-wide v4, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->y:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->z:D

    iget-wide v4, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->z:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    return-wide v0
.end method

.method public getSpace()Lorg/apache/commons/math3/geometry/Space;
    .locals 1

    .prologue
    .line 227
    invoke-static {}, Lorg/apache/commons/math3/geometry/euclidean/threed/Euclidean3D;->getInstance()Lorg/apache/commons/math3/geometry/euclidean/threed/Euclidean3D;

    move-result-object v0

    return-object v0
.end method

.method public getX()D
    .locals 2

    .prologue
    .line 198
    iget-wide v0, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->x:D

    return-wide v0
.end method

.method public getY()D
    .locals 2

    .prologue
    .line 206
    iget-wide v0, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->y:D

    return-wide v0
.end method

.method public getZ()D
    .locals 2

    .prologue
    .line 214
    iget-wide v0, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->z:D

    return-wide v0
.end method

.method public bridge synthetic getZero()Lorg/apache/commons/math3/geometry/Vector;
    .locals 1

    .prologue
    .line 38
    invoke-virtual {p0}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getZero()Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object v0

    return-object v0
.end method

.method public getZero()Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    .locals 1

    .prologue
    .line 232
    sget-object v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->ZERO:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 438
    invoke-virtual {p0}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->isNaN()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 439
    const/16 v0, 0x282

    .line 441
    :goto_0
    return v0

    :cond_0
    iget-wide v0, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->x:D

    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/MathUtils;->hash(D)I

    move-result v0

    mul-int/lit16 v0, v0, 0xa4

    iget-wide v2, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->y:D

    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/MathUtils;->hash(D)I

    move-result v1

    mul-int/lit8 v1, v1, 0x3

    add-int/2addr v0, v1

    iget-wide v2, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->z:D

    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/MathUtils;->hash(D)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit16 v0, v0, 0x283

    goto :goto_0
.end method

.method public isInfinite()Z
    .locals 2

    .prologue
    .line 389
    invoke-virtual {p0}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->isNaN()Z

    move-result v0

    if-nez v0, :cond_1

    iget-wide v0, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->x:D

    invoke-static {v0, v1}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v0

    if-nez v0, :cond_0

    iget-wide v0, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->y:D

    invoke-static {v0, v1}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v0

    if-nez v0, :cond_0

    iget-wide v0, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->z:D

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
    .line 384
    iget-wide v0, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->x:D

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_0

    iget-wide v0, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->y:D

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_0

    iget-wide v0, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->z:D

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
    .line 38
    invoke-virtual {p0}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->negate()Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object v0

    return-object v0
.end method

.method public negate()Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    .locals 8

    .prologue
    .line 374
    new-instance v1, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    iget-wide v2, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->x:D

    neg-double v2, v2

    iget-wide v4, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->y:D

    neg-double v4, v4

    iget-wide v6, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->z:D

    neg-double v6, v6

    invoke-direct/range {v1 .. v7}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;-><init>(DDD)V

    return-object v1
.end method

.method public bridge synthetic normalize()Lorg/apache/commons/math3/geometry/Vector;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathArithmeticException;
        }
    .end annotation

    .prologue
    .line 38
    invoke-virtual {p0}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->normalize()Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object v0

    return-object v0
.end method

.method public normalize()Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathArithmeticException;
        }
    .end annotation

    .prologue
    .line 297
    invoke-virtual {p0}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getNorm()D

    move-result-wide v0

    .line 298
    .local v0, "s":D
    const-wide/16 v2, 0x0

    cmpl-double v2, v0, v2

    if-nez v2, :cond_0

    .line 299
    new-instance v2, Lorg/apache/commons/math3/exception/MathArithmeticException;

    sget-object v3, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->CANNOT_NORMALIZE_A_ZERO_NORM_VECTOR:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-direct {v2, v3, v4}, Lorg/apache/commons/math3/exception/MathArithmeticException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v2

    .line 301
    :cond_0
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    div-double/2addr v2, v0

    invoke-virtual {p0, v2, v3}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->scalarMultiply(D)Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object v2

    return-object v2
.end method

.method public orthogonal()Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathArithmeticException;
        }
    .end annotation

    .prologue
    .line 321
    const-wide v0, 0x3fe3333333333333L    # 0.6

    invoke-virtual {p0}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getNorm()D

    move-result-wide v2

    mul-double v10, v0, v2

    .line 322
    .local v10, "threshold":D
    const-wide/16 v0, 0x0

    cmpl-double v0, v10, v0

    if-nez v0, :cond_0

    .line 323
    new-instance v0, Lorg/apache/commons/math3/exception/MathArithmeticException;

    sget-object v1, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->ZERO_NORM:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/exception/MathArithmeticException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v0

    .line 326
    :cond_0
    iget-wide v0, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->x:D

    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v0

    cmpg-double v0, v0, v10

    if-gtz v0, :cond_1

    .line 327
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    iget-wide v2, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->y:D

    iget-wide v4, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->y:D

    mul-double/2addr v2, v4

    iget-wide v4, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->z:D

    iget-wide v6, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->z:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v2

    div-double v8, v0, v2

    .line 328
    .local v8, "inverse":D
    new-instance v1, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    const-wide/16 v2, 0x0

    iget-wide v4, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->z:D

    mul-double/2addr v4, v8

    neg-double v6, v8

    iget-wide v12, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->y:D

    mul-double/2addr v6, v12

    invoke-direct/range {v1 .. v7}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;-><init>(DDD)V

    .line 334
    :goto_0
    return-object v1

    .line 329
    .end local v8    # "inverse":D
    :cond_1
    iget-wide v0, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->y:D

    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v0

    cmpg-double v0, v0, v10

    if-gtz v0, :cond_2

    .line 330
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    iget-wide v2, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->x:D

    iget-wide v4, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->x:D

    mul-double/2addr v2, v4

    iget-wide v4, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->z:D

    iget-wide v6, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->z:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v2

    div-double v8, v0, v2

    .line 331
    .restart local v8    # "inverse":D
    new-instance v1, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    neg-double v2, v8

    iget-wide v4, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->z:D

    mul-double/2addr v2, v4

    const-wide/16 v4, 0x0

    iget-wide v6, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->x:D

    mul-double/2addr v6, v8

    invoke-direct/range {v1 .. v7}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;-><init>(DDD)V

    goto :goto_0

    .line 333
    .end local v8    # "inverse":D
    :cond_2
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    iget-wide v2, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->x:D

    iget-wide v4, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->x:D

    mul-double/2addr v2, v4

    iget-wide v4, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->y:D

    iget-wide v6, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->y:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v2

    div-double v8, v0, v2

    .line 334
    .restart local v8    # "inverse":D
    new-instance v1, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    iget-wide v2, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->y:D

    mul-double/2addr v2, v8

    neg-double v4, v8

    iget-wide v6, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->x:D

    mul-double/2addr v4, v6

    const-wide/16 v6, 0x0

    invoke-direct/range {v1 .. v7}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;-><init>(DDD)V

    goto :goto_0
.end method

.method public bridge synthetic scalarMultiply(D)Lorg/apache/commons/math3/geometry/Vector;
    .locals 1
    .param p1, "x0"    # D

    .prologue
    .line 38
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->scalarMultiply(D)Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object v0

    return-object v0
.end method

.method public scalarMultiply(D)Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    .locals 9
    .param p1, "a"    # D

    .prologue
    .line 379
    new-instance v1, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    iget-wide v2, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->x:D

    mul-double/2addr v2, p1

    iget-wide v4, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->y:D

    mul-double/2addr v4, p1

    iget-wide v6, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->z:D

    mul-double/2addr v6, p1

    invoke-direct/range {v1 .. v7}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;-><init>(DDD)V

    return-object v1
.end method

.method public bridge synthetic subtract(DLorg/apache/commons/math3/geometry/Vector;)Lorg/apache/commons/math3/geometry/Vector;
    .locals 1
    .param p1, "x0"    # D
    .param p3, "x1"    # Lorg/apache/commons/math3/geometry/Vector;

    .prologue
    .line 38
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->subtract(DLorg/apache/commons/math3/geometry/Vector;)Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic subtract(Lorg/apache/commons/math3/geometry/Vector;)Lorg/apache/commons/math3/geometry/Vector;
    .locals 1
    .param p1, "x0"    # Lorg/apache/commons/math3/geometry/Vector;

    .prologue
    .line 38
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->subtract(Lorg/apache/commons/math3/geometry/Vector;)Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object v0

    return-object v0
.end method

.method public subtract(DLorg/apache/commons/math3/geometry/Vector;)Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    .locals 7
    .param p1, "factor"    # D
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(D",
            "Lorg/apache/commons/math3/geometry/Vector",
            "<",
            "Lorg/apache/commons/math3/geometry/euclidean/threed/Euclidean3D;",
            ">;)",
            "Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;"
        }
    .end annotation

    .prologue
    .line 292
    .local p3, "v":Lorg/apache/commons/math3/geometry/Vector;, "Lorg/apache/commons/math3/geometry/Vector<Lorg/apache/commons/math3/geometry/euclidean/threed/Euclidean3D;>;"
    new-instance v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    neg-double v4, p1

    move-object v6, p3

    check-cast v6, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-object v3, p0

    invoke-direct/range {v0 .. v6}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;-><init>(DLorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;DLorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)V

    return-object v0
.end method

.method public subtract(Lorg/apache/commons/math3/geometry/Vector;)Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/Vector",
            "<",
            "Lorg/apache/commons/math3/geometry/euclidean/threed/Euclidean3D;",
            ">;)",
            "Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;"
        }
    .end annotation

    .prologue
    .line 286
    .local p1, "v":Lorg/apache/commons/math3/geometry/Vector;, "Lorg/apache/commons/math3/geometry/Vector<Lorg/apache/commons/math3/geometry/euclidean/threed/Euclidean3D;>;"
    move-object v0, p1

    check-cast v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    .line 287
    .local v0, "v3":Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    new-instance v1, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    iget-wide v2, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->x:D

    iget-wide v4, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->x:D

    sub-double/2addr v2, v4

    iget-wide v4, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->y:D

    iget-wide v6, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->y:D

    sub-double/2addr v4, v6

    iget-wide v6, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->z:D

    iget-wide v8, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->z:D

    sub-double/2addr v6, v8

    invoke-direct/range {v1 .. v7}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;-><init>(DDD)V

    return-object v1
.end method

.method public toArray()[D
    .locals 4

    .prologue
    .line 222
    const/4 v0, 0x3

    new-array v0, v0, [D

    const/4 v1, 0x0

    iget-wide v2, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->x:D

    aput-wide v2, v0, v1

    const/4 v1, 0x1

    iget-wide v2, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->y:D

    aput-wide v2, v0, v1

    const/4 v1, 0x2

    iget-wide v2, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->z:D

    aput-wide v2, v0, v1

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 580
    invoke-static {}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3DFormat;->getInstance()Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3DFormat;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3DFormat;->format(Lorg/apache/commons/math3/geometry/Vector;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString(Ljava/text/NumberFormat;)Ljava/lang/String;
    .locals 1
    .param p1, "format"    # Ljava/text/NumberFormat;

    .prologue
    .line 585
    new-instance v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3DFormat;

    invoke-direct {v0, p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3DFormat;-><init>(Ljava/text/NumberFormat;)V

    invoke-virtual {v0, p0}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3DFormat;->format(Lorg/apache/commons/math3/geometry/Vector;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
