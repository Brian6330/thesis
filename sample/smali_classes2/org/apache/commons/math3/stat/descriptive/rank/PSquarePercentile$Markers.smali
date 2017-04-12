.class Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Markers;
.super Ljava/lang/Object;
.source "PSquarePercentile.java"

# interfaces
.implements Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$PSquareMarkers;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Markers"
.end annotation


# static fields
.field private static final HIGH:I = 0x4

.field private static final LOW:I = 0x2

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private transient k:I

.field private final markerArray:[Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;


# direct methods
.method private constructor <init>(Ljava/util/List;D)V
    .locals 2
    .param p2, "p"    # D
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Double;",
            ">;D)V"
        }
    .end annotation

    .prologue
    .line 366
    .local p1, "initialFive":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Double;>;"
    invoke-static {p1, p2, p3}, Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Markers;->createMarkerArray(Ljava/util/List;D)[Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Markers;-><init>([Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;)V

    .line 367
    return-void
.end method

.method synthetic constructor <init>(Ljava/util/List;DLorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/util/List;
    .param p2, "x1"    # D
    .param p4, "x2"    # Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$1;

    .prologue
    .line 316
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Markers;-><init>(Ljava/util/List;D)V

    return-void
.end method

.method private constructor <init>([Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;)V
    .locals 6
    .param p1, "theMarkerArray"    # [Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x5

    .line 346
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 339
    const/4 v1, -0x1

    iput v1, p0, Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Markers;->k:I

    .line 347
    invoke-static {p1}, Lorg/apache/commons/math3/util/MathUtils;->checkNotNull(Ljava/lang/Object;)V

    .line 348
    iput-object p1, p0, Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Markers;->markerArray:[Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;

    .line 349
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_0
    if-ge v0, v4, :cond_0

    .line 350
    iget-object v1, p0, Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Markers;->markerArray:[Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;

    aget-object v1, v1, v0

    iget-object v2, p0, Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Markers;->markerArray:[Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;

    add-int/lit8 v3, v0, -0x1

    aget-object v2, v2, v3

    # invokes: Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;->previous(Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;)Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;
    invoke-static {v1, v2}, Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;->access$000(Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;)Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Markers;->markerArray:[Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;

    add-int/lit8 v3, v0, 0x1

    aget-object v2, v2, v3

    # invokes: Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;->next(Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;)Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;
    invoke-static {v1, v2}, Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;->access$100(Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;)Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;

    move-result-object v1

    # invokes: Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;->index(I)Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;
    invoke-static {v1, v0}, Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;->access$200(Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;I)Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;

    .line 349
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 353
    :cond_0
    iget-object v1, p0, Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Markers;->markerArray:[Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;

    aget-object v1, v1, v5

    iget-object v2, p0, Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Markers;->markerArray:[Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;

    aget-object v2, v2, v5

    # invokes: Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;->previous(Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;)Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;
    invoke-static {v1, v2}, Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;->access$000(Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;)Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Markers;->markerArray:[Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;

    const/4 v3, 0x1

    aget-object v2, v2, v3

    # invokes: Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;->next(Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;)Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;
    invoke-static {v1, v2}, Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;->access$100(Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;)Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;

    move-result-object v1

    # invokes: Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;->index(I)Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;
    invoke-static {v1, v5}, Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;->access$200(Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;I)Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;

    .line 355
    iget-object v1, p0, Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Markers;->markerArray:[Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;

    aget-object v1, v1, v4

    iget-object v2, p0, Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Markers;->markerArray:[Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;

    const/4 v3, 0x4

    aget-object v2, v2, v3

    # invokes: Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;->previous(Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;)Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;
    invoke-static {v1, v2}, Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;->access$000(Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;)Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Markers;->markerArray:[Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;

    aget-object v2, v2, v4

    # invokes: Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;->next(Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;)Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;
    invoke-static {v1, v2}, Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;->access$100(Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;)Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;

    move-result-object v1

    # invokes: Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;->index(I)Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;
    invoke-static {v1, v4}, Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;->access$200(Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;I)Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;

    .line 357
    return-void
.end method

.method private adjustHeightsOfMarkers()V
    .locals 2

    .prologue
    .line 486
    const/4 v0, 0x2

    .local v0, "i":I
    :goto_0
    const/4 v1, 0x4

    if-gt v0, v1, :cond_0

    .line 487
    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Markers;->estimate(I)D

    .line 486
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 489
    :cond_0
    return-void
.end method

.method private static createMarkerArray(Ljava/util/List;D)[Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;
    .locals 13
    .param p1, "p"    # D
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Double;",
            ">;D)[",
            "Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;"
        }
    .end annotation

    .prologue
    .line 378
    .local p0, "initialFive":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Double;>;"
    if-nez p0, :cond_0

    const/4 v0, -0x1

    .line 380
    .local v0, "countObserved":I
    :goto_0
    const/4 v1, 0x5

    if-ge v0, v1, :cond_1

    .line 381
    new-instance v1, Lorg/apache/commons/math3/exception/InsufficientDataException;

    sget-object v2, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->INSUFFICIENT_OBSERVED_POINTS_IN_SAMPLE:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const/4 v5, 0x5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-direct {v1, v2, v3}, Lorg/apache/commons/math3/exception/InsufficientDataException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v1

    .line 378
    .end local v0    # "countObserved":I
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0

    .line 385
    .restart local v0    # "countObserved":I
    :cond_1
    invoke-static {p0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 386
    const/4 v1, 0x6

    new-array v11, v1, [Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;

    const/4 v1, 0x0

    new-instance v2, Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;-><init>(Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$1;)V

    aput-object v2, v11, v1

    const/4 v12, 0x1

    new-instance v1, Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;

    const/4 v2, 0x0

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    const-wide/16 v6, 0x0

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    const/4 v10, 0x0

    invoke-direct/range {v1 .. v10}, Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;-><init>(DDDDLorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$1;)V

    aput-object v1, v11, v12

    const/4 v12, 0x2

    new-instance v1, Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;

    const/4 v2, 0x1

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    mul-double/2addr v6, p1

    add-double/2addr v4, v6

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    div-double v6, p1, v6

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    const/4 v10, 0x0

    invoke-direct/range {v1 .. v10}, Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;-><init>(DDDDLorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$1;)V

    aput-object v1, v11, v12

    const/4 v12, 0x3

    new-instance v1, Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;

    const/4 v2, 0x2

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v6, 0x4010000000000000L    # 4.0

    mul-double/2addr v6, p1

    add-double/2addr v4, v6

    const-wide/high16 v8, 0x4008000000000000L    # 3.0

    const/4 v10, 0x0

    move-wide v6, p1

    invoke-direct/range {v1 .. v10}, Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;-><init>(DDDDLorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$1;)V

    aput-object v1, v11, v12

    const/4 v12, 0x4

    new-instance v1, Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;

    const/4 v2, 0x3

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    const-wide/high16 v4, 0x4008000000000000L    # 3.0

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    mul-double/2addr v6, p1

    add-double/2addr v4, v6

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    add-double/2addr v6, p1

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    div-double/2addr v6, v8

    const-wide/high16 v8, 0x4010000000000000L    # 4.0

    const/4 v10, 0x0

    invoke-direct/range {v1 .. v10}, Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;-><init>(DDDDLorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$1;)V

    aput-object v1, v11, v12

    const/4 v12, 0x5

    new-instance v1, Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;

    const/4 v2, 0x4

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    const-wide/high16 v4, 0x4014000000000000L    # 5.0

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v8, 0x4014000000000000L    # 5.0

    const/4 v10, 0x0

    invoke-direct/range {v1 .. v10}, Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;-><init>(DDDDLorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$1;)V

    aput-object v1, v11, v12

    return-object v11
.end method

.method private findCellAndUpdateMinMax(D)I
    .locals 7
    .param p1, "observation"    # D

    .prologue
    const/4 v6, 0x5

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x4

    const/4 v2, 0x1

    .line 463
    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Markers;->k:I

    .line 464
    invoke-virtual {p0, v2}, Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Markers;->height(I)D

    move-result-wide v0

    cmpg-double v0, p1, v0

    if-gez v0, :cond_0

    .line 465
    iget-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Markers;->markerArray:[Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;

    aget-object v0, v0, v2

    # setter for: Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;->markerHeight:D
    invoke-static {v0, p1, p2}, Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;->access$502(Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;D)D

    .line 466
    iput v2, p0, Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Markers;->k:I

    .line 479
    :goto_0
    iget v0, p0, Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Markers;->k:I

    return v0

    .line 467
    :cond_0
    invoke-virtual {p0, v4}, Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Markers;->height(I)D

    move-result-wide v0

    cmpg-double v0, p1, v0

    if-gez v0, :cond_1

    .line 468
    iput v2, p0, Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Markers;->k:I

    goto :goto_0

    .line 469
    :cond_1
    invoke-virtual {p0, v5}, Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Markers;->height(I)D

    move-result-wide v0

    cmpg-double v0, p1, v0

    if-gez v0, :cond_2

    .line 470
    iput v4, p0, Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Markers;->k:I

    goto :goto_0

    .line 471
    :cond_2
    invoke-virtual {p0, v3}, Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Markers;->height(I)D

    move-result-wide v0

    cmpg-double v0, p1, v0

    if-gez v0, :cond_3

    .line 472
    iput v5, p0, Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Markers;->k:I

    goto :goto_0

    .line 473
    :cond_3
    invoke-virtual {p0, v6}, Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Markers;->height(I)D

    move-result-wide v0

    cmpg-double v0, p1, v0

    if-gtz v0, :cond_4

    .line 474
    iput v3, p0, Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Markers;->k:I

    goto :goto_0

    .line 476
    :cond_4
    iget-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Markers;->markerArray:[Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;

    aget-object v0, v0, v6

    # setter for: Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;->markerHeight:D
    invoke-static {v0, p1, p2}, Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;->access$502(Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;D)D

    .line 477
    iput v3, p0, Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Markers;->k:I

    goto :goto_0
.end method

.method private incrementPositions(III)V
    .locals 2
    .param p1, "d"    # I
    .param p2, "startIndex"    # I
    .param p3, "endIndex"    # I

    .prologue
    .line 511
    move v0, p2

    .local v0, "i":I
    :goto_0
    if-gt v0, p3, :cond_0

    .line 512
    iget-object v1, p0, Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Markers;->markerArray:[Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;

    aget-object v1, v1, v0

    # invokes: Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;->incrementPosition(I)V
    invoke-static {v1, p1}, Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;->access$700(Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;I)V

    .line 511
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 514
    :cond_0
    return-void
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 6
    .param p1, "anInputStream"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x5

    .line 536
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 538
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_0
    if-ge v0, v4, :cond_0

    .line 539
    iget-object v1, p0, Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Markers;->markerArray:[Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;

    aget-object v1, v1, v0

    iget-object v2, p0, Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Markers;->markerArray:[Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;

    add-int/lit8 v3, v0, -0x1

    aget-object v2, v2, v3

    # invokes: Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;->previous(Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;)Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;
    invoke-static {v1, v2}, Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;->access$000(Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;)Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Markers;->markerArray:[Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;

    add-int/lit8 v3, v0, 0x1

    aget-object v2, v2, v3

    # invokes: Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;->next(Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;)Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;
    invoke-static {v1, v2}, Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;->access$100(Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;)Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;

    move-result-object v1

    # invokes: Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;->index(I)Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;
    invoke-static {v1, v0}, Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;->access$200(Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;I)Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;

    .line 538
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 542
    :cond_0
    iget-object v1, p0, Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Markers;->markerArray:[Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;

    aget-object v1, v1, v5

    iget-object v2, p0, Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Markers;->markerArray:[Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;

    aget-object v2, v2, v5

    # invokes: Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;->previous(Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;)Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;
    invoke-static {v1, v2}, Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;->access$000(Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;)Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Markers;->markerArray:[Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;

    const/4 v3, 0x1

    aget-object v2, v2, v3

    # invokes: Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;->next(Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;)Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;
    invoke-static {v1, v2}, Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;->access$100(Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;)Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;

    move-result-object v1

    # invokes: Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;->index(I)Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;
    invoke-static {v1, v5}, Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;->access$200(Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;I)Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;

    .line 544
    iget-object v1, p0, Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Markers;->markerArray:[Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;

    aget-object v1, v1, v4

    iget-object v2, p0, Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Markers;->markerArray:[Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;

    const/4 v3, 0x4

    aget-object v2, v2, v3

    # invokes: Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;->previous(Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;)Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;
    invoke-static {v1, v2}, Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;->access$000(Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;)Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Markers;->markerArray:[Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;

    aget-object v2, v2, v4

    # invokes: Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;->next(Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;)Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;
    invoke-static {v1, v2}, Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;->access$100(Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;)Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;

    move-result-object v1

    # invokes: Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;->index(I)Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;
    invoke-static {v1, v4}, Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;->access$200(Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;I)Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;

    .line 546
    return-void
.end method

.method private updateDesiredPositions()V
    .locals 2

    .prologue
    .line 521
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Markers;->markerArray:[Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 522
    iget-object v1, p0, Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Markers;->markerArray:[Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;

    aget-object v1, v1, v0

    # invokes: Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;->updateDesiredPosition()V
    invoke-static {v1}, Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;->access$800(Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;)V

    .line 521
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 524
    :cond_0
    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 10

    .prologue
    const/4 v9, 0x5

    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    .line 569
    new-instance v1, Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Markers;

    const/4 v0, 0x6

    new-array v2, v0, [Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;

    const/4 v0, 0x0

    new-instance v3, Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;-><init>(Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$1;)V

    aput-object v3, v2, v0

    iget-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Markers;->markerArray:[Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;

    aget-object v0, v0, v5

    invoke-virtual {v0}, Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;

    aput-object v0, v2, v5

    iget-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Markers;->markerArray:[Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;

    aget-object v0, v0, v6

    invoke-virtual {v0}, Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;

    aput-object v0, v2, v6

    iget-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Markers;->markerArray:[Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;

    aget-object v0, v0, v7

    invoke-virtual {v0}, Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;

    aput-object v0, v2, v7

    iget-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Markers;->markerArray:[Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;

    aget-object v0, v0, v8

    invoke-virtual {v0}, Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;

    aput-object v0, v2, v8

    iget-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Markers;->markerArray:[Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;

    aget-object v0, v0, v9

    invoke-virtual {v0}, Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;

    aput-object v0, v2, v9

    invoke-direct {v1, v2}, Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Markers;-><init>([Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;)V

    return-object v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 412
    const/4 v0, 0x0

    .line 413
    .local v0, "result":Z
    if-ne p0, p1, :cond_1

    .line 414
    const/4 v0, 0x1

    .line 419
    :cond_0
    :goto_0
    return v0

    .line 415
    :cond_1
    if-eqz p1, :cond_0

    instance-of v2, p1, Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Markers;

    if-eqz v2, :cond_0

    move-object v1, p1

    .line 416
    check-cast v1, Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Markers;

    .line 417
    .local v1, "that":Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Markers;
    iget-object v2, p0, Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Markers;->markerArray:[Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;

    iget-object v3, v1, Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Markers;->markerArray:[Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;

    invoke-static {v2, v3}, Ljava/util/Arrays;->deepEquals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public estimate(I)D
    .locals 4
    .param p1, "index"    # I

    .prologue
    const/4 v3, 0x4

    const/4 v2, 0x2

    .line 495
    if-lt p1, v2, :cond_0

    if-le p1, v3, :cond_1

    .line 496
    :cond_0
    new-instance v0, Lorg/apache/commons/math3/exception/OutOfRangeException;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/commons/math3/exception/OutOfRangeException;-><init>(Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;)V

    throw v0

    .line 498
    :cond_1
    iget-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Markers;->markerArray:[Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;

    aget-object v0, v0, p1

    # invokes: Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;->estimate()D
    invoke-static {v0}, Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;->access$600(Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;)D

    move-result-wide v0

    return-wide v0
.end method

.method public getPercentileValue()D
    .locals 2

    .prologue
    .line 452
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Markers;->height(I)D

    move-result-wide v0

    return-wide v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 400
    iget-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Markers;->markerArray:[Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;

    invoke-static {v0}, Ljava/util/Arrays;->deepHashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public height(I)D
    .locals 4
    .param p1, "markerIndex"    # I

    .prologue
    .line 555
    iget-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Markers;->markerArray:[Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;

    array-length v0, v0

    if-ge p1, v0, :cond_0

    if-gtz p1, :cond_1

    .line 556
    :cond_0
    new-instance v0, Lorg/apache/commons/math3/exception/OutOfRangeException;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Markers;->markerArray:[Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;

    array-length v3, v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/commons/math3/exception/OutOfRangeException;-><init>(Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;)V

    throw v0

    .line 559
    :cond_1
    iget-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Markers;->markerArray:[Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;

    aget-object v0, v0, p1

    # getter for: Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;->markerHeight:D
    invoke-static {v0}, Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;->access$500(Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;)D

    move-result-wide v0

    return-wide v0
.end method

.method public processDataPoint(D)D
    .locals 5
    .param p1, "inputDataPoint"    # D

    .prologue
    .line 431
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Markers;->findCellAndUpdateMinMax(D)I

    move-result v0

    .line 434
    .local v0, "kthCell":I
    const/4 v1, 0x1

    add-int/lit8 v2, v0, 0x1

    const/4 v3, 0x5

    invoke-direct {p0, v1, v2, v3}, Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Markers;->incrementPositions(III)V

    .line 437
    invoke-direct {p0}, Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Markers;->updateDesiredPositions()V

    .line 440
    invoke-direct {p0}, Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Markers;->adjustHeightsOfMarkers()V

    .line 443
    invoke-virtual {p0}, Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Markers;->getPercentileValue()D

    move-result-wide v2

    return-wide v2
.end method

.method public toString()Ljava/lang/String;
    .locals 9

    .prologue
    const/4 v8, 0x5

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 585
    const-string v0, "m1=[%s],m2=[%s],m3=[%s],m4=[%s],m5=[%s]"

    new-array v1, v8, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Markers;->markerArray:[Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;

    aget-object v3, v3, v4

    invoke-virtual {v3}, Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    iget-object v2, p0, Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Markers;->markerArray:[Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;

    aget-object v2, v2, v5

    invoke-virtual {v2}, Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    iget-object v2, p0, Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Markers;->markerArray:[Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;

    aget-object v2, v2, v6

    invoke-virtual {v2}, Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    iget-object v2, p0, Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Markers;->markerArray:[Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;

    aget-object v2, v2, v7

    invoke-virtual {v2}, Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v6

    iget-object v2, p0, Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Markers;->markerArray:[Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;

    aget-object v2, v2, v8

    invoke-virtual {v2}, Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v7

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
