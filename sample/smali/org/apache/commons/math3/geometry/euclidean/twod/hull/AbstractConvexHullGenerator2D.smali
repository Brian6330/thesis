.class abstract Lorg/apache/commons/math3/geometry/euclidean/twod/hull/AbstractConvexHullGenerator2D;
.super Ljava/lang/Object;
.source "AbstractConvexHullGenerator2D.java"

# interfaces
.implements Lorg/apache/commons/math3/geometry/euclidean/twod/hull/ConvexHullGenerator2D;


# static fields
.field private static final DEFAULT_TOLERANCE:D = 1.0E-10


# instance fields
.field private final includeCollinearPoints:Z

.field private final tolerance:D


# direct methods
.method protected constructor <init>(Z)V
    .locals 2
    .param p1, "includeCollinearPoints"    # Z

    .prologue
    .line 55
    const-wide v0, 0x3ddb7cdfd9d7bdbbL    # 1.0E-10

    invoke-direct {p0, p1, v0, v1}, Lorg/apache/commons/math3/geometry/euclidean/twod/hull/AbstractConvexHullGenerator2D;-><init>(ZD)V

    .line 56
    return-void
.end method

.method protected constructor <init>(ZD)V
    .locals 0
    .param p1, "includeCollinearPoints"    # Z
    .param p2, "tolerance"    # D

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    iput-boolean p1, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/hull/AbstractConvexHullGenerator2D;->includeCollinearPoints:Z

    .line 67
    iput-wide p2, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/hull/AbstractConvexHullGenerator2D;->tolerance:D

    .line 68
    return-void
.end method


# virtual methods
.method protected abstract findHullVertices(Ljava/util/Collection;)Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;",
            ">;)",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;",
            ">;"
        }
    .end annotation
.end method

.method public generate(Ljava/util/Collection;)Lorg/apache/commons/math3/geometry/euclidean/twod/hull/ConvexHull2D;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;",
            ">;)",
            "Lorg/apache/commons/math3/geometry/euclidean/twod/hull/ConvexHull2D;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;,
            Lorg/apache/commons/math3/exception/ConvergenceException;
        }
    .end annotation

    .prologue
    .line 91
    .local p1, "points":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;>;"
    invoke-static {p1}, Lorg/apache/commons/math3/util/MathUtils;->checkNotNull(Ljava/lang/Object;)V

    .line 93
    const/4 v1, 0x0

    .line 94
    .local v1, "hullVertices":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;>;"
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v2

    const/4 v3, 0x2

    if-ge v2, v3, :cond_0

    .line 95
    move-object v1, p1

    .line 101
    :goto_0
    :try_start_0
    new-instance v3, Lorg/apache/commons/math3/geometry/euclidean/twod/hull/ConvexHull2D;

    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v2

    new-array v2, v2, [Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    invoke-interface {v1, v2}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    iget-wide v4, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/hull/AbstractConvexHullGenerator2D;->tolerance:D

    invoke-direct {v3, v2, v4, v5}, Lorg/apache/commons/math3/geometry/euclidean/twod/hull/ConvexHull2D;-><init>([Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;D)V
    :try_end_0
    .catch Lorg/apache/commons/math3/exception/MathIllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    .line 97
    :cond_0
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/geometry/euclidean/twod/hull/AbstractConvexHullGenerator2D;->findHullVertices(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v1

    goto :goto_0

    .line 103
    :catch_0
    move-exception v0

    .line 105
    .local v0, "e":Lorg/apache/commons/math3/exception/MathIllegalArgumentException;
    new-instance v2, Lorg/apache/commons/math3/exception/ConvergenceException;

    invoke-direct {v2}, Lorg/apache/commons/math3/exception/ConvergenceException;-><init>()V

    throw v2
.end method

.method public bridge synthetic generate(Ljava/util/Collection;)Lorg/apache/commons/math3/geometry/hull/ConvexHull;
    .locals 1
    .param p1, "x0"    # Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;,
            Lorg/apache/commons/math3/exception/ConvergenceException;
        }
    .end annotation

    .prologue
    .line 32
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/geometry/euclidean/twod/hull/AbstractConvexHullGenerator2D;->generate(Ljava/util/Collection;)Lorg/apache/commons/math3/geometry/euclidean/twod/hull/ConvexHull2D;

    move-result-object v0

    return-object v0
.end method

.method public getTolerance()D
    .locals 2

    .prologue
    .line 75
    iget-wide v0, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/hull/AbstractConvexHullGenerator2D;->tolerance:D

    return-wide v0
.end method

.method public isIncludeCollinearPoints()Z
    .locals 1

    .prologue
    .line 84
    iget-boolean v0, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/hull/AbstractConvexHullGenerator2D;->includeCollinearPoints:Z

    return v0
.end method
