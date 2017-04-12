.class public Linfo/smapper/smapper/algorithms/PositionCalculator;
.super Ljava/lang/Object;
.source "PositionCalculator.java"


# instance fields
.field cellCircles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Linfo/smapper/smapper/algorithms/trilateration/CellCircle;",
            ">;"
        }
    .end annotation
.end field

.field cells:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Linfo/smapper/smapper/data/CellData;",
            ">;"
        }
    .end annotation
.end field

.field optimum:Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresOptimizer$Optimum;

.field point:[D

.field useHeuristic:Z


# direct methods
.method public constructor <init>(Ljava/util/List;Z)V
    .locals 1
    .param p2, "useHeuristic"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Linfo/smapper/smapper/data/CellData;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 28
    .local p1, "cells":Ljava/util/List;, "Ljava/util/List<Linfo/smapper/smapper/data/CellData;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Linfo/smapper/smapper/algorithms/PositionCalculator;->cellCircles:Ljava/util/List;

    .line 23
    const/4 v0, 0x2

    new-array v0, v0, [D

    iput-object v0, p0, Linfo/smapper/smapper/algorithms/PositionCalculator;->point:[D

    .line 24
    const/4 v0, 0x0

    iput-boolean v0, p0, Linfo/smapper/smapper/algorithms/PositionCalculator;->useHeuristic:Z

    .line 29
    iput-object p1, p0, Linfo/smapper/smapper/algorithms/PositionCalculator;->cells:Ljava/util/List;

    .line 30
    iput-boolean p2, p0, Linfo/smapper/smapper/algorithms/PositionCalculator;->useHeuristic:Z

    .line 31
    invoke-direct {p0}, Linfo/smapper/smapper/algorithms/PositionCalculator;->createCellCircles()V

    .line 32
    return-void
.end method

.method private createCellCircles()V
    .locals 12

    .prologue
    .line 35
    iget-object v2, p0, Linfo/smapper/smapper/algorithms/PositionCalculator;->cells:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Linfo/smapper/smapper/data/CellData;

    .line 36
    .local v0, "cell":Linfo/smapper/smapper/data/CellData;
    new-instance v10, Linfo/smapper/smapper/algorithms/trilateration/RadiusCalculator;

    invoke-direct {v10, v0}, Linfo/smapper/smapper/algorithms/trilateration/RadiusCalculator;-><init>(Linfo/smapper/smapper/data/CellData;)V

    .line 41
    .local v10, "radiusCalculator":Linfo/smapper/smapper/algorithms/trilateration/RadiusCalculator;
    iget-boolean v2, p0, Linfo/smapper/smapper/algorithms/PositionCalculator;->useHeuristic:Z

    if-eqz v2, :cond_0

    .line 42
    invoke-virtual {v10}, Linfo/smapper/smapper/algorithms/trilateration/RadiusCalculator;->calculateHeuristic()D

    move-result-wide v6

    .line 43
    .local v6, "radius":D
    invoke-virtual {v0}, Linfo/smapper/smapper/data/CellData;->getCellLocationOpenCellId()Landroid/location/Location;

    move-result-object v9

    .line 44
    .local v9, "location":Landroid/location/Location;
    new-instance v1, Linfo/smapper/smapper/algorithms/trilateration/CellCircle;

    invoke-virtual {v9}, Landroid/location/Location;->getLongitude()D

    move-result-wide v2

    invoke-virtual {v9}, Landroid/location/Location;->getLatitude()D

    move-result-wide v4

    const/4 v8, 0x1

    invoke-direct/range {v1 .. v8}, Linfo/smapper/smapper/algorithms/trilateration/CellCircle;-><init>(DDDZ)V

    .line 51
    .local v1, "cellCircle":Linfo/smapper/smapper/algorithms/trilateration/CellCircle;
    :goto_1
    iget-object v2, p0, Linfo/smapper/smapper/algorithms/PositionCalculator;->cellCircles:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 46
    .end local v1    # "cellCircle":Linfo/smapper/smapper/algorithms/trilateration/CellCircle;
    .end local v6    # "radius":D
    .end local v9    # "location":Landroid/location/Location;
    :cond_0
    invoke-virtual {v10}, Linfo/smapper/smapper/algorithms/trilateration/RadiusCalculator;->calculate()D

    move-result-wide v6

    .line 47
    .restart local v6    # "radius":D
    invoke-virtual {v0}, Linfo/smapper/smapper/data/CellData;->getCellLocationOpenCellId()Landroid/location/Location;

    move-result-object v9

    .line 48
    .restart local v9    # "location":Landroid/location/Location;
    new-instance v1, Linfo/smapper/smapper/algorithms/trilateration/CellCircle;

    invoke-virtual {v9}, Landroid/location/Location;->getLongitude()D

    move-result-wide v2

    invoke-virtual {v9}, Landroid/location/Location;->getLatitude()D

    move-result-wide v4

    const/4 v8, 0x0

    invoke-direct/range {v1 .. v8}, Linfo/smapper/smapper/algorithms/trilateration/CellCircle;-><init>(DDDZ)V

    .restart local v1    # "cellCircle":Linfo/smapper/smapper/algorithms/trilateration/CellCircle;
    goto :goto_1

    .line 53
    .end local v0    # "cell":Linfo/smapper/smapper/data/CellData;
    .end local v1    # "cellCircle":Linfo/smapper/smapper/algorithms/trilateration/CellCircle;
    .end local v6    # "radius":D
    .end local v9    # "location":Landroid/location/Location;
    .end local v10    # "radiusCalculator":Linfo/smapper/smapper/algorithms/trilateration/RadiusCalculator;
    :cond_1
    return-void
.end method


# virtual methods
.method public calculatePositions()[D
    .locals 12

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 56
    new-instance v0, Linfo/smapper/smapper/algorithms/trilateration/CellCircleConverter;

    iget-object v5, p0, Linfo/smapper/smapper/algorithms/PositionCalculator;->cellCircles:Ljava/util/List;

    invoke-direct {v0, v5}, Linfo/smapper/smapper/algorithms/trilateration/CellCircleConverter;-><init>(Ljava/util/List;)V

    .line 57
    .local v0, "converter":Linfo/smapper/smapper/algorithms/trilateration/CellCircleConverter;
    invoke-virtual {v0}, Linfo/smapper/smapper/algorithms/trilateration/CellCircleConverter;->getPoints()[[D

    move-result-object v3

    .line 58
    .local v3, "positions":[[D
    invoke-virtual {v0}, Linfo/smapper/smapper/algorithms/trilateration/CellCircleConverter;->getDistances()[D

    move-result-object v2

    .line 60
    .local v2, "distances":[D
    new-instance v4, Linfo/smapper/smapper/algorithms/trilateration/NonLinearLeastSquaresSolver;

    new-instance v5, Linfo/smapper/smapper/algorithms/trilateration/TrilaterationFunction;

    invoke-direct {v5, v3, v2}, Linfo/smapper/smapper/algorithms/trilateration/TrilaterationFunction;-><init>([[D[D)V

    new-instance v6, Lorg/apache/commons/math3/fitting/leastsquares/LevenbergMarquardtOptimizer;

    invoke-direct {v6}, Lorg/apache/commons/math3/fitting/leastsquares/LevenbergMarquardtOptimizer;-><init>()V

    invoke-direct {v4, v5, v6}, Linfo/smapper/smapper/algorithms/trilateration/NonLinearLeastSquaresSolver;-><init>(Linfo/smapper/smapper/algorithms/trilateration/TrilaterationFunction;Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresOptimizer;)V

    .line 61
    .local v4, "solver":Linfo/smapper/smapper/algorithms/trilateration/NonLinearLeastSquaresSolver;
    invoke-virtual {v4}, Linfo/smapper/smapper/algorithms/trilateration/NonLinearLeastSquaresSolver;->solve()Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresOptimizer$Optimum;

    move-result-object v5

    iput-object v5, p0, Linfo/smapper/smapper/algorithms/PositionCalculator;->optimum:Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresOptimizer$Optimum;

    .line 63
    iget-object v5, p0, Linfo/smapper/smapper/algorithms/PositionCalculator;->optimum:Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresOptimizer$Optimum;

    invoke-interface {v5}, Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresOptimizer$Optimum;->getPoint()Lorg/apache/commons/math3/linear/RealVector;

    move-result-object v5

    invoke-virtual {v5}, Lorg/apache/commons/math3/linear/RealVector;->toArray()[D

    move-result-object v5

    iput-object v5, p0, Linfo/smapper/smapper/algorithms/PositionCalculator;->point:[D

    .line 65
    const/4 v5, 0x2

    new-array v1, v5, [D

    .line 67
    .local v1, "coordinate":[D
    iget-boolean v5, p0, Linfo/smapper/smapper/algorithms/PositionCalculator;->useHeuristic:Z

    if-eqz v5, :cond_0

    .line 68
    iget-object v5, p0, Linfo/smapper/smapper/algorithms/PositionCalculator;->point:[D

    aget-wide v6, v5, v11

    aput-wide v6, v1, v10

    .line 69
    iget-object v5, p0, Linfo/smapper/smapper/algorithms/PositionCalculator;->point:[D

    aget-wide v6, v5, v10

    aput-wide v6, v1, v11

    .line 77
    :goto_0
    return-object v1

    .line 71
    :cond_0
    iget-object v5, p0, Linfo/smapper/smapper/algorithms/PositionCalculator;->point:[D

    aget-wide v6, v5, v11

    iget-object v5, p0, Linfo/smapper/smapper/algorithms/PositionCalculator;->point:[D

    aget-wide v8, v5, v10

    invoke-static {v6, v7, v8, v9}, Linfo/smapper/smapper/algorithms/trilateration/ApproxSwissProj;->CHtoWGSlat(DD)D

    move-result-wide v6

    aput-wide v6, v1, v10

    .line 72
    iget-object v5, p0, Linfo/smapper/smapper/algorithms/PositionCalculator;->point:[D

    aget-wide v6, v5, v11

    iget-object v5, p0, Linfo/smapper/smapper/algorithms/PositionCalculator;->point:[D

    aget-wide v8, v5, v10

    invoke-static {v6, v7, v8, v9}, Linfo/smapper/smapper/algorithms/trilateration/ApproxSwissProj;->CHtoWGSlng(DD)D

    move-result-wide v6

    aput-wide v6, v1, v11

    goto :goto_0
.end method
