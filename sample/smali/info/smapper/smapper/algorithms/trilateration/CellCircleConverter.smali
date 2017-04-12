.class public Linfo/smapper/smapper/algorithms/trilateration/CellCircleConverter;
.super Ljava/lang/Object;
.source "CellCircleConverter.java"


# instance fields
.field private circles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Linfo/smapper/smapper/algorithms/trilateration/CellCircle;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Linfo/smapper/smapper/algorithms/trilateration/CellCircle;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 11
    .local p1, "circles":Ljava/util/List;, "Ljava/util/List<Linfo/smapper/smapper/algorithms/trilateration/CellCircle;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object p1, p0, Linfo/smapper/smapper/algorithms/trilateration/CellCircleConverter;->circles:Ljava/util/List;

    .line 13
    return-void
.end method


# virtual methods
.method public getDistances()[D
    .locals 4

    .prologue
    .line 16
    iget-object v2, p0, Linfo/smapper/smapper/algorithms/trilateration/CellCircleConverter;->circles:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    new-array v0, v2, [D

    .line 18
    .local v0, "distances":[D
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Linfo/smapper/smapper/algorithms/trilateration/CellCircleConverter;->circles:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 19
    iget-object v2, p0, Linfo/smapper/smapper/algorithms/trilateration/CellCircleConverter;->circles:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Linfo/smapper/smapper/algorithms/trilateration/CellCircle;

    invoke-virtual {v2}, Linfo/smapper/smapper/algorithms/trilateration/CellCircle;->getRadius()D

    move-result-wide v2

    aput-wide v2, v0, v1

    .line 18
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 22
    :cond_0
    return-object v0
.end method

.method public getPoints()[[D
    .locals 4

    .prologue
    .line 26
    iget-object v2, p0, Linfo/smapper/smapper/algorithms/trilateration/CellCircleConverter;->circles:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x2

    filled-new-array {v2, v3}, [I

    move-result-object v2

    sget-object v3, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v3, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[D

    .line 28
    .local v1, "points":[[D
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Linfo/smapper/smapper/algorithms/trilateration/CellCircleConverter;->circles:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 29
    iget-object v2, p0, Linfo/smapper/smapper/algorithms/trilateration/CellCircleConverter;->circles:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Linfo/smapper/smapper/algorithms/trilateration/CellCircle;

    invoke-virtual {v2}, Linfo/smapper/smapper/algorithms/trilateration/CellCircle;->getPoint()[D

    move-result-object v2

    aput-object v2, v1, v0

    .line 28
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 32
    :cond_0
    return-object v1
.end method
