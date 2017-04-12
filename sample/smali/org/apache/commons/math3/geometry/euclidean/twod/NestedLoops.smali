.class Lorg/apache/commons/math3/geometry/euclidean/twod/NestedLoops;
.super Ljava/lang/Object;
.source "NestedLoops.java"


# instance fields
.field private loop:[Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

.field private originalIsClockwise:Z

.field private polygon:Lorg/apache/commons/math3/geometry/partitioning/Region;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/commons/math3/geometry/partitioning/Region",
            "<",
            "Lorg/apache/commons/math3/geometry/euclidean/twod/Euclidean2D;",
            ">;"
        }
    .end annotation
.end field

.field private surrounded:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/apache/commons/math3/geometry/euclidean/twod/NestedLoops;",
            ">;"
        }
    .end annotation
.end field

.field private final tolerance:D


# direct methods
.method public constructor <init>(D)V
    .locals 1
    .param p1, "tolerance"    # D

    .prologue
    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/NestedLoops;->surrounded:Ljava/util/ArrayList;

    .line 74
    iput-wide p1, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/NestedLoops;->tolerance:D

    .line 75
    return-void
.end method

.method private constructor <init>([Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;D)V
    .locals 12
    .param p1, "loop"    # [Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;
    .param p2, "tolerance"    # D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathIllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    const/4 v2, 0x0

    aget-object v2, p1, v2

    if-nez v2, :cond_0

    .line 88
    new-instance v2, Lorg/apache/commons/math3/exception/MathIllegalArgumentException;

    sget-object v3, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->OUTLINE_BOUNDARY_LOOP_OPEN:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-direct {v2, v3, v4}, Lorg/apache/commons/math3/exception/MathIllegalArgumentException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v2

    .line 91
    :cond_0
    iput-object p1, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/NestedLoops;->loop:[Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    .line 92
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/NestedLoops;->surrounded:Ljava/util/ArrayList;

    .line 93
    iput-wide p2, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/NestedLoops;->tolerance:D

    .line 96
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 97
    .local v8, "edges":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane<Lorg/apache/commons/math3/geometry/euclidean/twod/Euclidean2D;>;>;"
    array-length v2, p1

    add-int/lit8 v2, v2, -0x1

    aget-object v0, p1, v2

    .line 98
    .local v0, "current":Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_0
    array-length v2, p1

    if-ge v9, v2, :cond_1

    .line 99
    move-object v11, v0

    .line 100
    .local v11, "previous":Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;
    aget-object v0, p1, v9

    .line 101
    new-instance v10, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;

    invoke-direct {v10, v11, v0, p2, p3}, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;-><init>(Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;D)V

    .line 102
    .local v10, "line":Lorg/apache/commons/math3/geometry/euclidean/twod/Line;
    new-instance v1, Lorg/apache/commons/math3/geometry/euclidean/oned/IntervalsSet;

    invoke-virtual {v10, v11}, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->toSubSpace(Lorg/apache/commons/math3/geometry/Point;)Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;->getX()D

    move-result-wide v2

    invoke-virtual {v10, v0}, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->toSubSpace(Lorg/apache/commons/math3/geometry/Point;)Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;

    move-result-object v4

    invoke-virtual {v4}, Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;->getX()D

    move-result-wide v4

    move-wide v6, p2

    invoke-direct/range {v1 .. v7}, Lorg/apache/commons/math3/geometry/euclidean/oned/IntervalsSet;-><init>(DDD)V

    .line 106
    .local v1, "region":Lorg/apache/commons/math3/geometry/euclidean/oned/IntervalsSet;
    new-instance v2, Lorg/apache/commons/math3/geometry/euclidean/twod/SubLine;

    invoke-direct {v2, v10, v1}, Lorg/apache/commons/math3/geometry/euclidean/twod/SubLine;-><init>(Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;Lorg/apache/commons/math3/geometry/partitioning/Region;)V

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 98
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 108
    .end local v1    # "region":Lorg/apache/commons/math3/geometry/euclidean/oned/IntervalsSet;
    .end local v10    # "line":Lorg/apache/commons/math3/geometry/euclidean/twod/Line;
    .end local v11    # "previous":Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;
    :cond_1
    new-instance v2, Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet;

    invoke-direct {v2, v8, p2, p3}, Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet;-><init>(Ljava/util/Collection;D)V

    iput-object v2, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/NestedLoops;->polygon:Lorg/apache/commons/math3/geometry/partitioning/Region;

    .line 111
    iget-object v2, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/NestedLoops;->polygon:Lorg/apache/commons/math3/geometry/partitioning/Region;

    invoke-interface {v2}, Lorg/apache/commons/math3/geometry/partitioning/Region;->getSize()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 112
    new-instance v2, Lorg/apache/commons/math3/geometry/partitioning/RegionFactory;

    invoke-direct {v2}, Lorg/apache/commons/math3/geometry/partitioning/RegionFactory;-><init>()V

    iget-object v3, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/NestedLoops;->polygon:Lorg/apache/commons/math3/geometry/partitioning/Region;

    invoke-virtual {v2, v3}, Lorg/apache/commons/math3/geometry/partitioning/RegionFactory;->getComplement(Lorg/apache/commons/math3/geometry/partitioning/Region;)Lorg/apache/commons/math3/geometry/partitioning/Region;

    move-result-object v2

    iput-object v2, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/NestedLoops;->polygon:Lorg/apache/commons/math3/geometry/partitioning/Region;

    .line 113
    const/4 v2, 0x0

    iput-boolean v2, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/NestedLoops;->originalIsClockwise:Z

    .line 118
    :goto_1
    return-void

    .line 115
    :cond_2
    const/4 v2, 0x1

    iput-boolean v2, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/NestedLoops;->originalIsClockwise:Z

    goto :goto_1
.end method

.method private add(Lorg/apache/commons/math3/geometry/euclidean/twod/NestedLoops;)V
    .locals 7
    .param p1, "node"    # Lorg/apache/commons/math3/geometry/euclidean/twod/NestedLoops;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathIllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 137
    iget-object v4, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/NestedLoops;->surrounded:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/geometry/euclidean/twod/NestedLoops;

    .line 138
    .local v0, "child":Lorg/apache/commons/math3/geometry/euclidean/twod/NestedLoops;
    iget-object v4, v0, Lorg/apache/commons/math3/geometry/euclidean/twod/NestedLoops;->polygon:Lorg/apache/commons/math3/geometry/partitioning/Region;

    iget-object v5, p1, Lorg/apache/commons/math3/geometry/euclidean/twod/NestedLoops;->polygon:Lorg/apache/commons/math3/geometry/partitioning/Region;

    invoke-interface {v4, v5}, Lorg/apache/commons/math3/geometry/partitioning/Region;->contains(Lorg/apache/commons/math3/geometry/partitioning/Region;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 139
    invoke-direct {v0, p1}, Lorg/apache/commons/math3/geometry/euclidean/twod/NestedLoops;->add(Lorg/apache/commons/math3/geometry/euclidean/twod/NestedLoops;)V

    .line 163
    .end local v0    # "child":Lorg/apache/commons/math3/geometry/euclidean/twod/NestedLoops;
    :goto_0
    return-void

    .line 145
    :cond_1
    iget-object v4, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/NestedLoops;->surrounded:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/apache/commons/math3/geometry/euclidean/twod/NestedLoops;>;"
    :cond_2
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 146
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/geometry/euclidean/twod/NestedLoops;

    .line 147
    .restart local v0    # "child":Lorg/apache/commons/math3/geometry/euclidean/twod/NestedLoops;
    iget-object v4, p1, Lorg/apache/commons/math3/geometry/euclidean/twod/NestedLoops;->polygon:Lorg/apache/commons/math3/geometry/partitioning/Region;

    iget-object v5, v0, Lorg/apache/commons/math3/geometry/euclidean/twod/NestedLoops;->polygon:Lorg/apache/commons/math3/geometry/partitioning/Region;

    invoke-interface {v4, v5}, Lorg/apache/commons/math3/geometry/partitioning/Region;->contains(Lorg/apache/commons/math3/geometry/partitioning/Region;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 148
    iget-object v4, p1, Lorg/apache/commons/math3/geometry/euclidean/twod/NestedLoops;->surrounded:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 149
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    .line 154
    .end local v0    # "child":Lorg/apache/commons/math3/geometry/euclidean/twod/NestedLoops;
    :cond_3
    new-instance v1, Lorg/apache/commons/math3/geometry/partitioning/RegionFactory;

    invoke-direct {v1}, Lorg/apache/commons/math3/geometry/partitioning/RegionFactory;-><init>()V

    .line 155
    .local v1, "factory":Lorg/apache/commons/math3/geometry/partitioning/RegionFactory;, "Lorg/apache/commons/math3/geometry/partitioning/RegionFactory<Lorg/apache/commons/math3/geometry/euclidean/twod/Euclidean2D;>;"
    iget-object v4, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/NestedLoops;->surrounded:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/geometry/euclidean/twod/NestedLoops;

    .line 156
    .restart local v0    # "child":Lorg/apache/commons/math3/geometry/euclidean/twod/NestedLoops;
    iget-object v4, p1, Lorg/apache/commons/math3/geometry/euclidean/twod/NestedLoops;->polygon:Lorg/apache/commons/math3/geometry/partitioning/Region;

    iget-object v5, v0, Lorg/apache/commons/math3/geometry/euclidean/twod/NestedLoops;->polygon:Lorg/apache/commons/math3/geometry/partitioning/Region;

    invoke-virtual {v1, v4, v5}, Lorg/apache/commons/math3/geometry/partitioning/RegionFactory;->intersection(Lorg/apache/commons/math3/geometry/partitioning/Region;Lorg/apache/commons/math3/geometry/partitioning/Region;)Lorg/apache/commons/math3/geometry/partitioning/Region;

    move-result-object v4

    invoke-interface {v4}, Lorg/apache/commons/math3/geometry/partitioning/Region;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_4

    .line 157
    new-instance v4, Lorg/apache/commons/math3/exception/MathIllegalArgumentException;

    sget-object v5, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->CROSSING_BOUNDARY_LOOPS:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-direct {v4, v5, v6}, Lorg/apache/commons/math3/exception/MathIllegalArgumentException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v4

    .line 161
    .end local v0    # "child":Lorg/apache/commons/math3/geometry/euclidean/twod/NestedLoops;
    :cond_5
    iget-object v4, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/NestedLoops;->surrounded:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private setClockWise(Z)V
    .locals 7
    .param p1, "clockwise"    # Z

    .prologue
    .line 182
    iget-boolean v5, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/NestedLoops;->originalIsClockwise:Z

    xor-int/2addr v5, p1

    if-eqz v5, :cond_0

    .line 184
    const/4 v3, -0x1

    .line 185
    .local v3, "min":I
    iget-object v5, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/NestedLoops;->loop:[Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    array-length v2, v5

    .line 186
    .local v2, "max":I
    :goto_0
    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v2, v2, -0x1

    if-ge v3, v2, :cond_0

    .line 187
    iget-object v5, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/NestedLoops;->loop:[Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    aget-object v4, v5, v3

    .line 188
    .local v4, "tmp":Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;
    iget-object v5, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/NestedLoops;->loop:[Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    iget-object v6, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/NestedLoops;->loop:[Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    aget-object v6, v6, v2

    aput-object v6, v5, v3

    .line 189
    iget-object v5, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/NestedLoops;->loop:[Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    aput-object v4, v5, v2

    goto :goto_0

    .line 194
    .end local v2    # "max":I
    .end local v3    # "min":I
    .end local v4    # "tmp":Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;
    :cond_0
    iget-object v5, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/NestedLoops;->surrounded:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/geometry/euclidean/twod/NestedLoops;

    .line 195
    .local v0, "child":Lorg/apache/commons/math3/geometry/euclidean/twod/NestedLoops;
    if-nez p1, :cond_1

    const/4 v5, 0x1

    :goto_2
    invoke-direct {v0, v5}, Lorg/apache/commons/math3/geometry/euclidean/twod/NestedLoops;->setClockWise(Z)V

    goto :goto_1

    :cond_1
    const/4 v5, 0x0

    goto :goto_2

    .line 198
    .end local v0    # "child":Lorg/apache/commons/math3/geometry/euclidean/twod/NestedLoops;
    :cond_2
    return-void
.end method


# virtual methods
.method public add([Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;)V
    .locals 4
    .param p1, "bLoop"    # [Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathIllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 126
    new-instance v0, Lorg/apache/commons/math3/geometry/euclidean/twod/NestedLoops;

    iget-wide v2, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/NestedLoops;->tolerance:D

    invoke-direct {v0, p1, v2, v3}, Lorg/apache/commons/math3/geometry/euclidean/twod/NestedLoops;-><init>([Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;D)V

    invoke-direct {p0, v0}, Lorg/apache/commons/math3/geometry/euclidean/twod/NestedLoops;->add(Lorg/apache/commons/math3/geometry/euclidean/twod/NestedLoops;)V

    .line 127
    return-void
.end method

.method public correctOrientation()V
    .locals 3

    .prologue
    .line 171
    iget-object v2, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/NestedLoops;->surrounded:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/geometry/euclidean/twod/NestedLoops;

    .line 172
    .local v0, "child":Lorg/apache/commons/math3/geometry/euclidean/twod/NestedLoops;
    const/4 v2, 0x1

    invoke-direct {v0, v2}, Lorg/apache/commons/math3/geometry/euclidean/twod/NestedLoops;->setClockWise(Z)V

    goto :goto_0

    .line 174
    .end local v0    # "child":Lorg/apache/commons/math3/geometry/euclidean/twod/NestedLoops;
    :cond_0
    return-void
.end method
