.class public Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;
.super Ljava/lang/Object;
.source "Vector1D.java"

# interfaces
.implements Lorg/apache/commons/math3/geometry/Vector;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/apache/commons/math3/geometry/Vector",
        "<",
        "Lorg/apache/commons/math3/geometry/euclidean/oned/Euclidean1D;",
        ">;"
    }
.end annotation


# static fields
.field public static final NEGATIVE_INFINITY:Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;

.field public static final NaN:Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;

.field public static final ONE:Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;

.field public static final POSITIVE_INFINITY:Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;

.field public static final ZERO:Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;

.field private static final serialVersionUID:J = 0x68deb3d42eaab0b5L


# instance fields
.field private final x:D


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 36
    new-instance v0, Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;

    const-wide/16 v2, 0x0

    invoke-direct {v0, v2, v3}, Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;-><init>(D)V

    sput-object v0, Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;->ZERO:Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;

    .line 39
    new-instance v0, Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    invoke-direct {v0, v2, v3}, Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;-><init>(D)V

    sput-object v0, Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;->ONE:Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;

    .line 43
    new-instance v0, Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;

    const-wide/high16 v2, 0x7ff8000000000000L    # NaN

    invoke-direct {v0, v2, v3}, Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;-><init>(D)V

    sput-object v0, Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;->NaN:Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;

    .line 47
    new-instance v0, Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;

    const-wide/high16 v2, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    invoke-direct {v0, v2, v3}, Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;-><init>(D)V

    sput-object v0, Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;->POSITIVE_INFINITY:Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;

    .line 51
    new-instance v0, Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;

    const-wide/high16 v2, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    invoke-direct {v0, v2, v3}, Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;-><init>(D)V

    sput-object v0, Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;->NEGATIVE_INFINITY:Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;

    return-void
.end method

.method public constructor <init>(D)V
    .locals 1
    .param p1, "x"    # D

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    iput-wide p1, p0, Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;->x:D

    .line 67
    return-void
.end method

.method public constructor <init>(DLorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;)V
    .locals 3
    .param p1, "a"    # D
    .param p3, "u"    # Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;

    .prologue
    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    iget-wide v0, p3, Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;->x:D

    mul-double/2addr v0, p1

    iput-wide v0, p0, Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;->x:D

    .line 77
    return-void
.end method

.method public constructor <init>(DLorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;DLorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;)V
    .locals 4
    .param p1, "a1"    # D
    .param p3, "u1"    # Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;
    .param p4, "a2"    # D
    .param p6, "u2"    # Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;

    .prologue
    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    iget-wide v0, p3, Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;->x:D

    mul-double/2addr v0, p1

    iget-wide v2, p6, Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;->x:D

    mul-double/2addr v2, p4

    add-double/2addr v0, v2

    iput-wide v0, p0, Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;->x:D

    .line 89
    return-void
.end method

.method public constructor <init>(DLorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;DLorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;DLorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;)V
    .locals 5
    .param p1, "a1"    # D
    .param p3, "u1"    # Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;
    .param p4, "a2"    # D
    .param p6, "u2"    # Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;
    .param p7, "a3"    # D
    .param p9, "u3"    # Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;

    .prologue
    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 103
    iget-wide v0, p3, Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;->x:D

    mul-double/2addr v0, p1

    iget-wide v2, p6, Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;->x:D

    mul-double/2addr v2, p4

    add-double/2addr v0, v2

    iget-wide v2, p9, Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;->x:D

    mul-double/2addr v2, p7

    add-double/2addr v0, v2

    iput-wide v0, p0, Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;->x:D

    .line 104
    return-void
.end method

.method public constructor <init>(DLorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;DLorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;DLorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;DLorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;)V
    .locals 6
    .param p1, "a1"    # D
    .param p3, "u1"    # Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;
    .param p4, "a2"    # D
    .param p6, "u2"    # Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;
    .param p7, "a3"    # D
    .param p9, "u3"    # Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;
    .param p10, "a4"    # D
    .param p12, "u4"    # Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;

    .prologue
    .line 119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 120
    iget-wide v2, p3, Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;->x:D

    mul-double/2addr v2, p1

    iget-wide v4, p6, Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;->x:D

    mul-double/2addr v4, p4

    add-double/2addr v2, v4

    iget-wide v4, p9, Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;->x:D

    mul-double/2addr v4, p7

    add-double/2addr v2, v4

    move-object/from16 v0, p12

    iget-wide v4, v0, Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;->x:D

    mul-double v4, v4, p10

    add-double/2addr v2, v4

    iput-wide v2, p0, Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;->x:D

    .line 121
    return-void
.end method

.method public static distance(Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;)D
    .locals 2
    .param p0, "p1"    # Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;
    .param p1, "p2"    # Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;

    .prologue
    .line 264
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;->distance(Lorg/apache/commons/math3/geometry/Vector;)D

    move-result-wide v0

    return-wide v0
.end method

.method public static distanceInf(Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;)D
    .locals 2
    .param p0, "p1"    # Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;
    .param p1, "p2"    # Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;

    .prologue
    .line 276
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;->distanceInf(Lorg/apache/commons/math3/geometry/Vector;)D

    move-result-wide v0

    return-wide v0
.end method

.method public static distanceSq(Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;)D
    .locals 2
    .param p0, "p1"    # Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;
    .param p1, "p2"    # Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;

    .prologue
    .line 288
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;->distanceSq(Lorg/apache/commons/math3/geometry/Vector;)D

    move-result-wide v0

    return-wide v0
.end method


# virtual methods
.method public bridge synthetic add(DLorg/apache/commons/math3/geometry/Vector;)Lorg/apache/commons/math3/geometry/Vector;
    .locals 1
    .param p1, "x0"    # D
    .param p3, "x1"    # Lorg/apache/commons/math3/geometry/Vector;

    .prologue
    .line 33
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;->add(DLorg/apache/commons/math3/geometry/Vector;)Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic add(Lorg/apache/commons/math3/geometry/Vector;)Lorg/apache/commons/math3/geometry/Vector;
    .locals 1
    .param p1, "x0"    # Lorg/apache/commons/math3/geometry/Vector;

    .prologue
    .line 33
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;->add(Lorg/apache/commons/math3/geometry/Vector;)Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;

    move-result-object v0

    return-object v0
.end method

.method public add(DLorg/apache/commons/math3/geometry/Vector;)Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;
    .locals 7
    .param p1, "factor"    # D
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(D",
            "Lorg/apache/commons/math3/geometry/Vector",
            "<",
            "Lorg/apache/commons/math3/geometry/euclidean/oned/Euclidean1D;",
            ">;)",
            "Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;"
        }
    .end annotation

    .prologue
    .line 169
    .local p3, "v":Lorg/apache/commons/math3/geometry/Vector;, "Lorg/apache/commons/math3/geometry/Vector<Lorg/apache/commons/math3/geometry/euclidean/oned/Euclidean1D;>;"
    move-object v0, p3

    check-cast v0, Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;

    .line 170
    .local v0, "v1":Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;
    new-instance v1, Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;

    iget-wide v2, p0, Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;->x:D

    invoke-virtual {v0}, Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;->getX()D

    move-result-wide v4

    mul-double/2addr v4, p1

    add-double/2addr v2, v4

    invoke-direct {v1, v2, v3}, Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;-><init>(D)V

    return-object v1
.end method

.method public add(Lorg/apache/commons/math3/geometry/Vector;)Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/Vector",
            "<",
            "Lorg/apache/commons/math3/geometry/euclidean/oned/Euclidean1D;",
            ">;)",
            "Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;"
        }
    .end annotation

    .prologue
    .line 163
    .local p1, "v":Lorg/apache/commons/math3/geometry/Vector;, "Lorg/apache/commons/math3/geometry/Vector<Lorg/apache/commons/math3/geometry/euclidean/oned/Euclidean1D;>;"
    move-object v0, p1

    check-cast v0, Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;

    .line 164
    .local v0, "v1":Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;
    new-instance v1, Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;

    iget-wide v2, p0, Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;->x:D

    invoke-virtual {v0}, Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;->getX()D

    move-result-wide v4

    add-double/2addr v2, v4

    invoke-direct {v1, v2, v3}, Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;-><init>(D)V

    return-object v1
.end method

.method public distance(Lorg/apache/commons/math3/geometry/Point;)D
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/Point",
            "<",
            "Lorg/apache/commons/math3/geometry/euclidean/oned/Euclidean1D;",
            ">;)D"
        }
    .end annotation

    .prologue
    .line 230
    .local p1, "p":Lorg/apache/commons/math3/geometry/Point;, "Lorg/apache/commons/math3/geometry/Point<Lorg/apache/commons/math3/geometry/euclidean/oned/Euclidean1D;>;"
    move-object v2, p1

    check-cast v2, Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;

    .line 231
    .local v2, "p3":Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;
    iget-wide v4, v2, Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;->x:D

    iget-wide v6, p0, Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;->x:D

    sub-double v0, v4, v6

    .line 232
    .local v0, "dx":D
    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v4

    return-wide v4
.end method

.method public distance(Lorg/apache/commons/math3/geometry/Vector;)D
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/Vector",
            "<",
            "Lorg/apache/commons/math3/geometry/euclidean/oned/Euclidean1D;",
            ">;)D"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 225
    .local p1, "p":Lorg/apache/commons/math3/geometry/Vector;, "Lorg/apache/commons/math3/geometry/Vector<Lorg/apache/commons/math3/geometry/euclidean/oned/Euclidean1D;>;"
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;->distance(Lorg/apache/commons/math3/geometry/Point;)D

    move-result-wide v0

    return-wide v0
.end method

.method public distance1(Lorg/apache/commons/math3/geometry/Vector;)D
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/Vector",
            "<",
            "Lorg/apache/commons/math3/geometry/euclidean/oned/Euclidean1D;",
            ">;)D"
        }
    .end annotation

    .prologue
    .line 215
    .local p1, "p":Lorg/apache/commons/math3/geometry/Vector;, "Lorg/apache/commons/math3/geometry/Vector<Lorg/apache/commons/math3/geometry/euclidean/oned/Euclidean1D;>;"
    move-object v2, p1

    check-cast v2, Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;

    .line 216
    .local v2, "p3":Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;
    iget-wide v4, v2, Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;->x:D

    iget-wide v6, p0, Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;->x:D

    sub-double/2addr v4, v6

    invoke-static {v4, v5}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v0

    .line 217
    .local v0, "dx":D
    return-wide v0
.end method

.method public distanceInf(Lorg/apache/commons/math3/geometry/Vector;)D
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/Vector",
            "<",
            "Lorg/apache/commons/math3/geometry/euclidean/oned/Euclidean1D;",
            ">;)D"
        }
    .end annotation

    .prologue
    .line 237
    .local p1, "p":Lorg/apache/commons/math3/geometry/Vector;, "Lorg/apache/commons/math3/geometry/Vector<Lorg/apache/commons/math3/geometry/euclidean/oned/Euclidean1D;>;"
    move-object v2, p1

    check-cast v2, Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;

    .line 238
    .local v2, "p3":Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;
    iget-wide v4, v2, Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;->x:D

    iget-wide v6, p0, Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;->x:D

    sub-double/2addr v4, v6

    invoke-static {v4, v5}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v0

    .line 239
    .local v0, "dx":D
    return-wide v0
.end method

.method public distanceSq(Lorg/apache/commons/math3/geometry/Vector;)D
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/Vector",
            "<",
            "Lorg/apache/commons/math3/geometry/euclidean/oned/Euclidean1D;",
            ">;)D"
        }
    .end annotation

    .prologue
    .line 244
    .local p1, "p":Lorg/apache/commons/math3/geometry/Vector;, "Lorg/apache/commons/math3/geometry/Vector<Lorg/apache/commons/math3/geometry/euclidean/oned/Euclidean1D;>;"
    move-object v2, p1

    check-cast v2, Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;

    .line 245
    .local v2, "p3":Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;
    iget-wide v4, v2, Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;->x:D

    iget-wide v6, p0, Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;->x:D

    sub-double v0, v4, v6

    .line 246
    .local v0, "dx":D
    mul-double v4, v0, v0

    return-wide v4
.end method

.method public dotProduct(Lorg/apache/commons/math3/geometry/Vector;)D
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/Vector",
            "<",
            "Lorg/apache/commons/math3/geometry/euclidean/oned/Euclidean1D;",
            ">;)D"
        }
    .end annotation

    .prologue
    .line 251
    .local p1, "v":Lorg/apache/commons/math3/geometry/Vector;, "Lorg/apache/commons/math3/geometry/Vector<Lorg/apache/commons/math3/geometry/euclidean/oned/Euclidean1D;>;"
    move-object v0, p1

    check-cast v0, Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;

    .line 252
    .local v0, "v1":Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;
    iget-wide v2, p0, Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;->x:D

    iget-wide v4, v0, Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;->x:D

    mul-double/2addr v2, v4

    return-wide v2
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 8
    .param p1, "other"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 313
    if-ne p0, p1, :cond_1

    .line 325
    :cond_0
    :goto_0
    return v1

    .line 317
    :cond_1
    instance-of v3, p1, Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;

    if-eqz v3, :cond_3

    move-object v0, p1

    .line 318
    check-cast v0, Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;

    .line 319
    .local v0, "rhs":Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;
    invoke-virtual {v0}, Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;->isNaN()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 320
    invoke-virtual {p0}, Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;->isNaN()Z

    move-result v1

    goto :goto_0

    .line 323
    :cond_2
    iget-wide v4, p0, Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;->x:D

    iget-wide v6, v0, Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;->x:D

    cmpl-double v3, v4, v6

    if-eqz v3, :cond_0

    move v1, v2

    goto :goto_0

    .end local v0    # "rhs":Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;
    :cond_3
    move v1, v2

    .line 325
    goto :goto_0
.end method

.method public getNorm()D
    .locals 2

    .prologue
    .line 148
    iget-wide v0, p0, Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;->x:D

    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v0

    return-wide v0
.end method

.method public getNorm1()D
    .locals 2

    .prologue
    .line 143
    iget-wide v0, p0, Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;->x:D

    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v0

    return-wide v0
.end method

.method public getNormInf()D
    .locals 2

    .prologue
    .line 158
    iget-wide v0, p0, Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;->x:D

    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v0

    return-wide v0
.end method

.method public getNormSq()D
    .locals 4

    .prologue
    .line 153
    iget-wide v0, p0, Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;->x:D

    iget-wide v2, p0, Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;->x:D

    mul-double/2addr v0, v2

    return-wide v0
.end method

.method public getSpace()Lorg/apache/commons/math3/geometry/Space;
    .locals 1

    .prologue
    .line 133
    invoke-static {}, Lorg/apache/commons/math3/geometry/euclidean/oned/Euclidean1D;->getInstance()Lorg/apache/commons/math3/geometry/euclidean/oned/Euclidean1D;

    move-result-object v0

    return-object v0
.end method

.method public getX()D
    .locals 2

    .prologue
    .line 128
    iget-wide v0, p0, Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;->x:D

    return-wide v0
.end method

.method public bridge synthetic getZero()Lorg/apache/commons/math3/geometry/Vector;
    .locals 1

    .prologue
    .line 33
    invoke-virtual {p0}, Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;->getZero()Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;

    move-result-object v0

    return-object v0
.end method

.method public getZero()Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;
    .locals 1

    .prologue
    .line 138
    sget-object v0, Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;->ZERO:Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 337
    invoke-virtual {p0}, Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;->isNaN()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 338
    const/16 v0, 0x1e69

    .line 340
    :goto_0
    return v0

    :cond_0
    iget-wide v0, p0, Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;->x:D

    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/MathUtils;->hash(D)I

    move-result v0

    mul-int/lit16 v0, v0, 0x3e5

    goto :goto_0
.end method

.method public isInfinite()Z
    .locals 2

    .prologue
    .line 210
    invoke-virtual {p0}, Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;->isNaN()Z

    move-result v0

    if-nez v0, :cond_0

    iget-wide v0, p0, Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;->x:D

    invoke-static {v0, v1}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isNaN()Z
    .locals 2

    .prologue
    .line 205
    iget-wide v0, p0, Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;->x:D

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic negate()Lorg/apache/commons/math3/geometry/Vector;
    .locals 1

    .prologue
    .line 33
    invoke-virtual {p0}, Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;->negate()Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;

    move-result-object v0

    return-object v0
.end method

.method public negate()Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;
    .locals 4

    .prologue
    .line 195
    new-instance v0, Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;

    iget-wide v2, p0, Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;->x:D

    neg-double v2, v2

    invoke-direct {v0, v2, v3}, Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;-><init>(D)V

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
    .line 33
    invoke-virtual {p0}, Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;->normalize()Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;

    move-result-object v0

    return-object v0
.end method

.method public normalize()Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathArithmeticException;
        }
    .end annotation

    .prologue
    .line 187
    invoke-virtual {p0}, Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;->getNorm()D

    move-result-wide v0

    .line 188
    .local v0, "s":D
    const-wide/16 v2, 0x0

    cmpl-double v2, v0, v2

    if-nez v2, :cond_0

    .line 189
    new-instance v2, Lorg/apache/commons/math3/exception/MathArithmeticException;

    sget-object v3, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->CANNOT_NORMALIZE_A_ZERO_NORM_VECTOR:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-direct {v2, v3, v4}, Lorg/apache/commons/math3/exception/MathArithmeticException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v2

    .line 191
    :cond_0
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    div-double/2addr v2, v0

    invoke-virtual {p0, v2, v3}, Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;->scalarMultiply(D)Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;

    move-result-object v2

    return-object v2
.end method

.method public bridge synthetic scalarMultiply(D)Lorg/apache/commons/math3/geometry/Vector;
    .locals 1
    .param p1, "x0"    # D

    .prologue
    .line 33
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;->scalarMultiply(D)Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;

    move-result-object v0

    return-object v0
.end method

.method public scalarMultiply(D)Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;
    .locals 5
    .param p1, "a"    # D

    .prologue
    .line 200
    new-instance v0, Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;

    iget-wide v2, p0, Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;->x:D

    mul-double/2addr v2, p1

    invoke-direct {v0, v2, v3}, Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;-><init>(D)V

    return-object v0
.end method

.method public bridge synthetic subtract(DLorg/apache/commons/math3/geometry/Vector;)Lorg/apache/commons/math3/geometry/Vector;
    .locals 1
    .param p1, "x0"    # D
    .param p3, "x1"    # Lorg/apache/commons/math3/geometry/Vector;

    .prologue
    .line 33
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;->subtract(DLorg/apache/commons/math3/geometry/Vector;)Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic subtract(Lorg/apache/commons/math3/geometry/Vector;)Lorg/apache/commons/math3/geometry/Vector;
    .locals 1
    .param p1, "x0"    # Lorg/apache/commons/math3/geometry/Vector;

    .prologue
    .line 33
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;->subtract(Lorg/apache/commons/math3/geometry/Vector;)Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;

    move-result-object v0

    return-object v0
.end method

.method public subtract(DLorg/apache/commons/math3/geometry/Vector;)Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;
    .locals 7
    .param p1, "factor"    # D
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(D",
            "Lorg/apache/commons/math3/geometry/Vector",
            "<",
            "Lorg/apache/commons/math3/geometry/euclidean/oned/Euclidean1D;",
            ">;)",
            "Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;"
        }
    .end annotation

    .prologue
    .line 181
    .local p3, "v":Lorg/apache/commons/math3/geometry/Vector;, "Lorg/apache/commons/math3/geometry/Vector<Lorg/apache/commons/math3/geometry/euclidean/oned/Euclidean1D;>;"
    move-object v0, p3

    check-cast v0, Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;

    .line 182
    .local v0, "v1":Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;
    new-instance v1, Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;

    iget-wide v2, p0, Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;->x:D

    invoke-virtual {v0}, Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;->getX()D

    move-result-wide v4

    mul-double/2addr v4, p1

    sub-double/2addr v2, v4

    invoke-direct {v1, v2, v3}, Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;-><init>(D)V

    return-object v1
.end method

.method public subtract(Lorg/apache/commons/math3/geometry/Vector;)Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/Vector",
            "<",
            "Lorg/apache/commons/math3/geometry/euclidean/oned/Euclidean1D;",
            ">;)",
            "Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;"
        }
    .end annotation

    .prologue
    .line 175
    .local p1, "p":Lorg/apache/commons/math3/geometry/Vector;, "Lorg/apache/commons/math3/geometry/Vector<Lorg/apache/commons/math3/geometry/euclidean/oned/Euclidean1D;>;"
    move-object v0, p1

    check-cast v0, Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;

    .line 176
    .local v0, "p3":Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;
    new-instance v1, Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;

    iget-wide v2, p0, Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;->x:D

    iget-wide v4, v0, Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;->x:D

    sub-double/2addr v2, v4

    invoke-direct {v1, v2, v3}, Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;-><init>(D)V

    return-object v1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 348
    invoke-static {}, Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1DFormat;->getInstance()Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1DFormat;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1DFormat;->format(Lorg/apache/commons/math3/geometry/Vector;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString(Ljava/text/NumberFormat;)Ljava/lang/String;
    .locals 1
    .param p1, "format"    # Ljava/text/NumberFormat;

    .prologue
    .line 353
    new-instance v0, Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1DFormat;

    invoke-direct {v0, p1}, Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1DFormat;-><init>(Ljava/text/NumberFormat;)V

    invoke-virtual {v0, p0}, Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1DFormat;->format(Lorg/apache/commons/math3/geometry/Vector;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
