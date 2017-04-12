.class Lorg/apache/commons/math3/geometry/euclidean/twod/hull/MonotoneChain$1;
.super Ljava/lang/Object;
.source "MonotoneChain.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/commons/math3/geometry/euclidean/twod/hull/MonotoneChain;->findHullVertices(Ljava/util/Collection;)Ljava/util/Collection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/commons/math3/geometry/euclidean/twod/hull/MonotoneChain;


# direct methods
.method constructor <init>(Lorg/apache/commons/math3/geometry/euclidean/twod/hull/MonotoneChain;)V
    .locals 0

    .prologue
    .line 82
    iput-object p1, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/hull/MonotoneChain$1;->this$0:Lorg/apache/commons/math3/geometry/euclidean/twod/hull/MonotoneChain;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 82
    check-cast p1, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    .end local p1    # "x0":Ljava/lang/Object;
    check-cast p2, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/math3/geometry/euclidean/twod/hull/MonotoneChain$1;->compare(Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;)I

    move-result v0

    return v0
.end method

.method public compare(Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;)I
    .locals 7
    .param p1, "o1"    # Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;
    .param p2, "o2"    # Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    .prologue
    .line 84
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/hull/MonotoneChain$1;->this$0:Lorg/apache/commons/math3/geometry/euclidean/twod/hull/MonotoneChain;

    invoke-virtual {v0}, Lorg/apache/commons/math3/geometry/euclidean/twod/hull/MonotoneChain;->getTolerance()D

    move-result-wide v4

    .line 87
    .local v4, "tolerance":D
    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->getX()D

    move-result-wide v0

    invoke-virtual {p2}, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->getX()D

    move-result-wide v2

    invoke-static/range {v0 .. v5}, Lorg/apache/commons/math3/util/Precision;->compareTo(DDD)I

    move-result v6

    .line 88
    .local v6, "diff":I
    if-nez v6, :cond_0

    .line 89
    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->getY()D

    move-result-wide v0

    invoke-virtual {p2}, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->getY()D

    move-result-wide v2

    invoke-static/range {v0 .. v5}, Lorg/apache/commons/math3/util/Precision;->compareTo(DDD)I

    move-result v6

    .line 91
    .end local v6    # "diff":I
    :cond_0
    return v6
.end method
