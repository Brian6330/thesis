.class public Linfo/smapper/smapper/algorithms/trilateration/RadiusCalculator;
.super Ljava/lang/Object;
.source "RadiusCalculator.java"


# instance fields
.field cell:Linfo/smapper/smapper/data/CellData;

.field minPower:I

.field range:D

.field strength:I


# direct methods
.method public constructor <init>(Linfo/smapper/smapper/data/CellData;)V
    .locals 2
    .param p1, "cell"    # Linfo/smapper/smapper/data/CellData;

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    const/16 v0, 0x71

    iput v0, p0, Linfo/smapper/smapper/algorithms/trilateration/RadiusCalculator;->minPower:I

    .line 15
    iput-object p1, p0, Linfo/smapper/smapper/algorithms/trilateration/RadiusCalculator;->cell:Linfo/smapper/smapper/data/CellData;

    .line 16
    invoke-virtual {p1}, Linfo/smapper/smapper/data/CellData;->getSignalStrength()I

    move-result v0

    iput v0, p0, Linfo/smapper/smapper/algorithms/trilateration/RadiusCalculator;->strength:I

    .line 17
    iget-object v0, p0, Linfo/smapper/smapper/algorithms/trilateration/RadiusCalculator;->cell:Linfo/smapper/smapper/data/CellData;

    invoke-virtual {v0}, Linfo/smapper/smapper/data/CellData;->getCellRange()I

    move-result v0

    int-to-double v0, v0

    iput-wide v0, p0, Linfo/smapper/smapper/algorithms/trilateration/RadiusCalculator;->range:D

    .line 18
    return-void
.end method


# virtual methods
.method public calculate()D
    .locals 8

    .prologue
    .line 21
    iget v6, p0, Linfo/smapper/smapper/algorithms/trilateration/RadiusCalculator;->strength:I

    iget v7, p0, Linfo/smapper/smapper/algorithms/trilateration/RadiusCalculator;->minPower:I

    add-int/2addr v6, v7

    int-to-double v2, v6

    .line 22
    .local v2, "power":D
    const-wide/high16 v6, 0x4024000000000000L    # 10.0

    invoke-static {v6, v7, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    .line 23
    .local v0, "pow":D
    iget-wide v6, p0, Linfo/smapper/smapper/algorithms/trilateration/RadiusCalculator;->range:D

    div-double v4, v6, v0

    .line 27
    .local v4, "radius":D
    return-wide v4
.end method

.method public calculateHeuristic()D
    .locals 8

    .prologue
    .line 31
    iget v6, p0, Linfo/smapper/smapper/algorithms/trilateration/RadiusCalculator;->strength:I

    iget v7, p0, Linfo/smapper/smapper/algorithms/trilateration/RadiusCalculator;->minPower:I

    add-int/2addr v6, v7

    int-to-double v2, v6

    .line 32
    .local v2, "power":D
    const-wide/high16 v6, 0x4024000000000000L    # 10.0

    invoke-static {v6, v7, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    .line 33
    .local v0, "pow":D
    iget-wide v6, p0, Linfo/smapper/smapper/algorithms/trilateration/RadiusCalculator;->range:D

    mul-double v4, v6, v0

    .line 37
    .local v4, "radius":D
    return-wide v4
.end method
