.class public Lorg/apache/commons/math3/geometry/spherical/twod/Vertex;
.super Ljava/lang/Object;
.source "Vertex.java"


# instance fields
.field private final circles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/apache/commons/math3/geometry/spherical/twod/Circle;",
            ">;"
        }
    .end annotation
.end field

.field private incoming:Lorg/apache/commons/math3/geometry/spherical/twod/Edge;

.field private final location:Lorg/apache/commons/math3/geometry/spherical/twod/S2Point;

.field private outgoing:Lorg/apache/commons/math3/geometry/spherical/twod/Edge;


# direct methods
.method constructor <init>(Lorg/apache/commons/math3/geometry/spherical/twod/S2Point;)V
    .locals 1
    .param p1, "location"    # Lorg/apache/commons/math3/geometry/spherical/twod/S2Point;

    .prologue
    const/4 v0, 0x0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Lorg/apache/commons/math3/geometry/spherical/twod/Vertex;->location:Lorg/apache/commons/math3/geometry/spherical/twod/S2Point;

    .line 46
    iput-object v0, p0, Lorg/apache/commons/math3/geometry/spherical/twod/Vertex;->incoming:Lorg/apache/commons/math3/geometry/spherical/twod/Edge;

    .line 47
    iput-object v0, p0, Lorg/apache/commons/math3/geometry/spherical/twod/Vertex;->outgoing:Lorg/apache/commons/math3/geometry/spherical/twod/Edge;

    .line 48
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/math3/geometry/spherical/twod/Vertex;->circles:Ljava/util/List;

    .line 49
    return-void
.end method


# virtual methods
.method bindWith(Lorg/apache/commons/math3/geometry/spherical/twod/Circle;)V
    .locals 1
    .param p1, "circle"    # Lorg/apache/commons/math3/geometry/spherical/twod/Circle;

    .prologue
    .line 62
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/spherical/twod/Vertex;->circles:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 63
    return-void
.end method

.method public getIncoming()Lorg/apache/commons/math3/geometry/spherical/twod/Edge;
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/spherical/twod/Vertex;->incoming:Lorg/apache/commons/math3/geometry/spherical/twod/Edge;

    return-object v0
.end method

.method public getLocation()Lorg/apache/commons/math3/geometry/spherical/twod/S2Point;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/spherical/twod/Vertex;->location:Lorg/apache/commons/math3/geometry/spherical/twod/S2Point;

    return-object v0
.end method

.method public getOutgoing()Lorg/apache/commons/math3/geometry/spherical/twod/Edge;
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/spherical/twod/Vertex;->outgoing:Lorg/apache/commons/math3/geometry/spherical/twod/Edge;

    return-object v0
.end method

.method setIncoming(Lorg/apache/commons/math3/geometry/spherical/twod/Edge;)V
    .locals 1
    .param p1, "incoming"    # Lorg/apache/commons/math3/geometry/spherical/twod/Edge;

    .prologue
    .line 94
    iput-object p1, p0, Lorg/apache/commons/math3/geometry/spherical/twod/Vertex;->incoming:Lorg/apache/commons/math3/geometry/spherical/twod/Edge;

    .line 95
    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/spherical/twod/Edge;->getCircle()Lorg/apache/commons/math3/geometry/spherical/twod/Circle;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/geometry/spherical/twod/Vertex;->bindWith(Lorg/apache/commons/math3/geometry/spherical/twod/Circle;)V

    .line 96
    return-void
.end method

.method setOutgoing(Lorg/apache/commons/math3/geometry/spherical/twod/Edge;)V
    .locals 1
    .param p1, "outgoing"    # Lorg/apache/commons/math3/geometry/spherical/twod/Edge;

    .prologue
    .line 113
    iput-object p1, p0, Lorg/apache/commons/math3/geometry/spherical/twod/Vertex;->outgoing:Lorg/apache/commons/math3/geometry/spherical/twod/Edge;

    .line 114
    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/spherical/twod/Edge;->getCircle()Lorg/apache/commons/math3/geometry/spherical/twod/Circle;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/geometry/spherical/twod/Vertex;->bindWith(Lorg/apache/commons/math3/geometry/spherical/twod/Circle;)V

    .line 115
    return-void
.end method

.method sharedCircleWith(Lorg/apache/commons/math3/geometry/spherical/twod/Vertex;)Lorg/apache/commons/math3/geometry/spherical/twod/Circle;
    .locals 5
    .param p1, "vertex"    # Lorg/apache/commons/math3/geometry/spherical/twod/Vertex;

    .prologue
    .line 76
    iget-object v4, p0, Lorg/apache/commons/math3/geometry/spherical/twod/Vertex;->circles:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/geometry/spherical/twod/Circle;

    .line 77
    .local v0, "circle1":Lorg/apache/commons/math3/geometry/spherical/twod/Circle;
    iget-object v4, p1, Lorg/apache/commons/math3/geometry/spherical/twod/Vertex;->circles:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/math3/geometry/spherical/twod/Circle;

    .line 78
    .local v1, "circle2":Lorg/apache/commons/math3/geometry/spherical/twod/Circle;
    if-ne v0, v1, :cond_1

    .line 83
    .end local v0    # "circle1":Lorg/apache/commons/math3/geometry/spherical/twod/Circle;
    .end local v1    # "circle2":Lorg/apache/commons/math3/geometry/spherical/twod/Circle;
    .end local v3    # "i$":Ljava/util/Iterator;
    :goto_0
    return-object v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method
