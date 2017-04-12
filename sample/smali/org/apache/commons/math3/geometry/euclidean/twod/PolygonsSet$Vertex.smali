.class Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$Vertex;
.super Ljava/lang/Object;
.source "PolygonsSet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Vertex"
.end annotation


# instance fields
.field private incoming:Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$Edge;

.field private final lines:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/apache/commons/math3/geometry/euclidean/twod/Line;",
            ">;"
        }
    .end annotation
.end field

.field private final location:Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

.field private outgoing:Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$Edge;


# direct methods
.method public constructor <init>(Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;)V
    .locals 1
    .param p1, "location"    # Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    .prologue
    const/4 v0, 0x0

    .line 429
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 430
    iput-object p1, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$Vertex;->location:Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    .line 431
    iput-object v0, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$Vertex;->incoming:Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$Edge;

    .line 432
    iput-object v0, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$Vertex;->outgoing:Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$Edge;

    .line 433
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$Vertex;->lines:Ljava/util/List;

    .line 434
    return-void
.end method


# virtual methods
.method public bindWith(Lorg/apache/commons/math3/geometry/euclidean/twod/Line;)V
    .locals 1
    .param p1, "line"    # Lorg/apache/commons/math3/geometry/euclidean/twod/Line;

    .prologue
    .line 447
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$Vertex;->lines:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 448
    return-void
.end method

.method public getIncoming()Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$Edge;
    .locals 1

    .prologue
    .line 487
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$Vertex;->incoming:Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$Edge;

    return-object v0
.end method

.method public getLocation()Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;
    .locals 1

    .prologue
    .line 440
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$Vertex;->location:Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    return-object v0
.end method

.method public getOutgoing()Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$Edge;
    .locals 1

    .prologue
    .line 506
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$Vertex;->outgoing:Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$Edge;

    return-object v0
.end method

.method public setIncoming(Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$Edge;)V
    .locals 1
    .param p1, "incoming"    # Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$Edge;

    .prologue
    .line 479
    iput-object p1, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$Vertex;->incoming:Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$Edge;

    .line 480
    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$Edge;->getLine()Lorg/apache/commons/math3/geometry/euclidean/twod/Line;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$Vertex;->bindWith(Lorg/apache/commons/math3/geometry/euclidean/twod/Line;)V

    .line 481
    return-void
.end method

.method public setOutgoing(Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$Edge;)V
    .locals 1
    .param p1, "outgoing"    # Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$Edge;

    .prologue
    .line 498
    iput-object p1, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$Vertex;->outgoing:Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$Edge;

    .line 499
    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$Edge;->getLine()Lorg/apache/commons/math3/geometry/euclidean/twod/Line;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$Vertex;->bindWith(Lorg/apache/commons/math3/geometry/euclidean/twod/Line;)V

    .line 500
    return-void
.end method

.method public sharedLineWith(Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$Vertex;)Lorg/apache/commons/math3/geometry/euclidean/twod/Line;
    .locals 5
    .param p1, "vertex"    # Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$Vertex;

    .prologue
    .line 461
    iget-object v4, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$Vertex;->lines:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;

    .line 462
    .local v2, "line1":Lorg/apache/commons/math3/geometry/euclidean/twod/Line;
    iget-object v4, p1, Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$Vertex;->lines:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;

    .line 463
    .local v3, "line2":Lorg/apache/commons/math3/geometry/euclidean/twod/Line;
    if-ne v2, v3, :cond_1

    .line 468
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "line1":Lorg/apache/commons/math3/geometry/euclidean/twod/Line;
    .end local v3    # "line2":Lorg/apache/commons/math3/geometry/euclidean/twod/Line;
    :goto_0
    return-object v2

    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method
