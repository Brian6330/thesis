.class final Lorg/apache/commons/math3/linear/RealVector$2;
.super Lorg/apache/commons/math3/linear/RealVector;
.source "RealVector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/commons/math3/linear/RealVector;->unmodifiableRealVector(Lorg/apache/commons/math3/linear/RealVector;)Lorg/apache/commons/math3/linear/RealVector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/math3/linear/RealVector$2$UnmodifiableEntry;
    }
.end annotation


# instance fields
.field final synthetic val$v:Lorg/apache/commons/math3/linear/RealVector;


# direct methods
.method constructor <init>(Lorg/apache/commons/math3/linear/RealVector;)V
    .locals 0

    .prologue
    .line 1215
    iput-object p1, p0, Lorg/apache/commons/math3/linear/RealVector$2;->val$v:Lorg/apache/commons/math3/linear/RealVector;

    invoke-direct {p0}, Lorg/apache/commons/math3/linear/RealVector;-><init>()V

    .line 1596
    return-void
.end method


# virtual methods
.method public add(Lorg/apache/commons/math3/linear/RealVector;)Lorg/apache/commons/math3/linear/RealVector;
    .locals 1
    .param p1, "w"    # Lorg/apache/commons/math3/linear/RealVector;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    .prologue
    .line 1307
    iget-object v0, p0, Lorg/apache/commons/math3/linear/RealVector$2;->val$v:Lorg/apache/commons/math3/linear/RealVector;

    invoke-virtual {v0, p1}, Lorg/apache/commons/math3/linear/RealVector;->add(Lorg/apache/commons/math3/linear/RealVector;)Lorg/apache/commons/math3/linear/RealVector;

    move-result-object v0

    return-object v0
.end method

.method public addToEntry(ID)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathUnsupportedOperationException;
        }
    .end annotation

    .prologue
    .line 1506
    new-instance v0, Lorg/apache/commons/math3/exception/MathUnsupportedOperationException;

    invoke-direct {v0}, Lorg/apache/commons/math3/exception/MathUnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public append(D)Lorg/apache/commons/math3/linear/RealVector;
    .locals 1
    .param p1, "d"    # D

    .prologue
    .line 1524
    iget-object v0, p0, Lorg/apache/commons/math3/linear/RealVector$2;->val$v:Lorg/apache/commons/math3/linear/RealVector;

    invoke-virtual {v0, p1, p2}, Lorg/apache/commons/math3/linear/RealVector;->append(D)Lorg/apache/commons/math3/linear/RealVector;

    move-result-object v0

    return-object v0
.end method

.method public append(Lorg/apache/commons/math3/linear/RealVector;)Lorg/apache/commons/math3/linear/RealVector;
    .locals 1
    .param p1, "w"    # Lorg/apache/commons/math3/linear/RealVector;

    .prologue
    .line 1518
    iget-object v0, p0, Lorg/apache/commons/math3/linear/RealVector$2;->val$v:Lorg/apache/commons/math3/linear/RealVector;

    invoke-virtual {v0, p1}, Lorg/apache/commons/math3/linear/RealVector;->append(Lorg/apache/commons/math3/linear/RealVector;)Lorg/apache/commons/math3/linear/RealVector;

    move-result-object v0

    return-object v0
.end method

.method public combine(DDLorg/apache/commons/math3/linear/RealVector;)Lorg/apache/commons/math3/linear/RealVector;
    .locals 7
    .param p1, "a"    # D
    .param p3, "b"    # D
    .param p5, "y"    # Lorg/apache/commons/math3/linear/RealVector;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    .prologue
    .line 1580
    iget-object v1, p0, Lorg/apache/commons/math3/linear/RealVector$2;->val$v:Lorg/apache/commons/math3/linear/RealVector;

    move-wide v2, p1

    move-wide v4, p3

    move-object v6, p5

    invoke-virtual/range {v1 .. v6}, Lorg/apache/commons/math3/linear/RealVector;->combine(DDLorg/apache/commons/math3/linear/RealVector;)Lorg/apache/commons/math3/linear/RealVector;

    move-result-object v0

    return-object v0
.end method

.method public combineToSelf(DDLorg/apache/commons/math3/linear/RealVector;)Lorg/apache/commons/math3/linear/RealVector;
    .locals 1
    .param p1, "a"    # D
    .param p3, "b"    # D
    .param p5, "y"    # Lorg/apache/commons/math3/linear/RealVector;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathUnsupportedOperationException;
        }
    .end annotation

    .prologue
    .line 1592
    new-instance v0, Lorg/apache/commons/math3/exception/MathUnsupportedOperationException;

    invoke-direct {v0}, Lorg/apache/commons/math3/exception/MathUnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public copy()Lorg/apache/commons/math3/linear/RealVector;
    .locals 1

    .prologue
    .line 1300
    iget-object v0, p0, Lorg/apache/commons/math3/linear/RealVector$2;->val$v:Lorg/apache/commons/math3/linear/RealVector;

    invoke-virtual {v0}, Lorg/apache/commons/math3/linear/RealVector;->copy()Lorg/apache/commons/math3/linear/RealVector;

    move-result-object v0

    return-object v0
.end method

.method public cosine(Lorg/apache/commons/math3/linear/RealVector;)D
    .locals 2
    .param p1, "w"    # Lorg/apache/commons/math3/linear/RealVector;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;,
            Lorg/apache/commons/math3/exception/MathArithmeticException;
        }
    .end annotation

    .prologue
    .line 1414
    iget-object v0, p0, Lorg/apache/commons/math3/linear/RealVector$2;->val$v:Lorg/apache/commons/math3/linear/RealVector;

    invoke-virtual {v0, p1}, Lorg/apache/commons/math3/linear/RealVector;->cosine(Lorg/apache/commons/math3/linear/RealVector;)D

    move-result-wide v0

    return-wide v0
.end method

.method public dotProduct(Lorg/apache/commons/math3/linear/RealVector;)D
    .locals 2
    .param p1, "w"    # Lorg/apache/commons/math3/linear/RealVector;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    .prologue
    .line 1407
    iget-object v0, p0, Lorg/apache/commons/math3/linear/RealVector$2;->val$v:Lorg/apache/commons/math3/linear/RealVector;

    invoke-virtual {v0, p1}, Lorg/apache/commons/math3/linear/RealVector;->dotProduct(Lorg/apache/commons/math3/linear/RealVector;)D

    move-result-wide v0

    return-wide v0
.end method

.method public ebeDivide(Lorg/apache/commons/math3/linear/RealVector;)Lorg/apache/commons/math3/linear/RealVector;
    .locals 1
    .param p1, "w"    # Lorg/apache/commons/math3/linear/RealVector;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    .prologue
    .line 1400
    iget-object v0, p0, Lorg/apache/commons/math3/linear/RealVector$2;->val$v:Lorg/apache/commons/math3/linear/RealVector;

    invoke-virtual {v0, p1}, Lorg/apache/commons/math3/linear/RealVector;->ebeDivide(Lorg/apache/commons/math3/linear/RealVector;)Lorg/apache/commons/math3/linear/RealVector;

    move-result-object v0

    return-object v0
.end method

.method public ebeMultiply(Lorg/apache/commons/math3/linear/RealVector;)Lorg/apache/commons/math3/linear/RealVector;
    .locals 1
    .param p1, "w"    # Lorg/apache/commons/math3/linear/RealVector;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    .prologue
    .line 1393
    iget-object v0, p0, Lorg/apache/commons/math3/linear/RealVector$2;->val$v:Lorg/apache/commons/math3/linear/RealVector;

    invoke-virtual {v0, p1}, Lorg/apache/commons/math3/linear/RealVector;->ebeMultiply(Lorg/apache/commons/math3/linear/RealVector;)Lorg/apache/commons/math3/linear/RealVector;

    move-result-object v0

    return-object v0
.end method

.method public getDimension()I
    .locals 1

    .prologue
    .line 1512
    iget-object v0, p0, Lorg/apache/commons/math3/linear/RealVector$2;->val$v:Lorg/apache/commons/math3/linear/RealVector;

    invoke-virtual {v0}, Lorg/apache/commons/math3/linear/RealVector;->getDimension()I

    move-result v0

    return v0
.end method

.method public getDistance(Lorg/apache/commons/math3/linear/RealVector;)D
    .locals 2
    .param p1, "w"    # Lorg/apache/commons/math3/linear/RealVector;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    .prologue
    .line 1439
    iget-object v0, p0, Lorg/apache/commons/math3/linear/RealVector$2;->val$v:Lorg/apache/commons/math3/linear/RealVector;

    invoke-virtual {v0, p1}, Lorg/apache/commons/math3/linear/RealVector;->getDistance(Lorg/apache/commons/math3/linear/RealVector;)D

    move-result-wide v0

    return-wide v0
.end method

.method public getEntry(I)D
    .locals 2
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/OutOfRangeException;
        }
    .end annotation

    .prologue
    .line 1482
    iget-object v0, p0, Lorg/apache/commons/math3/linear/RealVector$2;->val$v:Lorg/apache/commons/math3/linear/RealVector;

    invoke-virtual {v0, p1}, Lorg/apache/commons/math3/linear/RealVector;->getEntry(I)D

    move-result-wide v0

    return-wide v0
.end method

.method public getL1Distance(Lorg/apache/commons/math3/linear/RealVector;)D
    .locals 2
    .param p1, "w"    # Lorg/apache/commons/math3/linear/RealVector;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    .prologue
    .line 1446
    iget-object v0, p0, Lorg/apache/commons/math3/linear/RealVector$2;->val$v:Lorg/apache/commons/math3/linear/RealVector;

    invoke-virtual {v0, p1}, Lorg/apache/commons/math3/linear/RealVector;->getL1Distance(Lorg/apache/commons/math3/linear/RealVector;)D

    move-result-wide v0

    return-wide v0
.end method

.method public getL1Norm()D
    .locals 2

    .prologue
    .line 1426
    iget-object v0, p0, Lorg/apache/commons/math3/linear/RealVector$2;->val$v:Lorg/apache/commons/math3/linear/RealVector;

    invoke-virtual {v0}, Lorg/apache/commons/math3/linear/RealVector;->getL1Norm()D

    move-result-wide v0

    return-wide v0
.end method

.method public getLInfDistance(Lorg/apache/commons/math3/linear/RealVector;)D
    .locals 2
    .param p1, "w"    # Lorg/apache/commons/math3/linear/RealVector;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    .prologue
    .line 1453
    iget-object v0, p0, Lorg/apache/commons/math3/linear/RealVector$2;->val$v:Lorg/apache/commons/math3/linear/RealVector;

    invoke-virtual {v0, p1}, Lorg/apache/commons/math3/linear/RealVector;->getLInfDistance(Lorg/apache/commons/math3/linear/RealVector;)D

    move-result-wide v0

    return-wide v0
.end method

.method public getLInfNorm()D
    .locals 2

    .prologue
    .line 1432
    iget-object v0, p0, Lorg/apache/commons/math3/linear/RealVector$2;->val$v:Lorg/apache/commons/math3/linear/RealVector;

    invoke-virtual {v0}, Lorg/apache/commons/math3/linear/RealVector;->getLInfNorm()D

    move-result-wide v0

    return-wide v0
.end method

.method public getNorm()D
    .locals 2

    .prologue
    .line 1420
    iget-object v0, p0, Lorg/apache/commons/math3/linear/RealVector$2;->val$v:Lorg/apache/commons/math3/linear/RealVector;

    invoke-virtual {v0}, Lorg/apache/commons/math3/linear/RealVector;->getNorm()D

    move-result-wide v0

    return-wide v0
.end method

.method public getSubVector(II)Lorg/apache/commons/math3/linear/RealVector;
    .locals 1
    .param p1, "index"    # I
    .param p2, "n"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/OutOfRangeException;,
            Lorg/apache/commons/math3/exception/NotPositiveException;
        }
    .end annotation

    .prologue
    .line 1531
    iget-object v0, p0, Lorg/apache/commons/math3/linear/RealVector$2;->val$v:Lorg/apache/commons/math3/linear/RealVector;

    invoke-virtual {v0, p1, p2}, Lorg/apache/commons/math3/linear/RealVector;->getSubVector(II)Lorg/apache/commons/math3/linear/RealVector;

    move-result-object v0

    return-object v0
.end method

.method public isInfinite()Z
    .locals 1

    .prologue
    .line 1573
    iget-object v0, p0, Lorg/apache/commons/math3/linear/RealVector$2;->val$v:Lorg/apache/commons/math3/linear/RealVector;

    invoke-virtual {v0}, Lorg/apache/commons/math3/linear/RealVector;->isInfinite()Z

    move-result v0

    return v0
.end method

.method public isNaN()Z
    .locals 1

    .prologue
    .line 1567
    iget-object v0, p0, Lorg/apache/commons/math3/linear/RealVector$2;->val$v:Lorg/apache/commons/math3/linear/RealVector;

    invoke-virtual {v0}, Lorg/apache/commons/math3/linear/RealVector;->isNaN()Z

    move-result v0

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Lorg/apache/commons/math3/linear/RealVector$Entry;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1236
    iget-object v1, p0, Lorg/apache/commons/math3/linear/RealVector$2;->val$v:Lorg/apache/commons/math3/linear/RealVector;

    invoke-virtual {v1}, Lorg/apache/commons/math3/linear/RealVector;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 1237
    .local v0, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/apache/commons/math3/linear/RealVector$Entry;>;"
    new-instance v1, Lorg/apache/commons/math3/linear/RealVector$2$1;

    invoke-direct {v1, p0, v0}, Lorg/apache/commons/math3/linear/RealVector$2$1;-><init>(Lorg/apache/commons/math3/linear/RealVector$2;Ljava/util/Iterator;)V

    return-object v1
.end method

.method public map(Lorg/apache/commons/math3/analysis/UnivariateFunction;)Lorg/apache/commons/math3/linear/RealVector;
    .locals 1
    .param p1, "function"    # Lorg/apache/commons/math3/analysis/UnivariateFunction;

    .prologue
    .line 1230
    iget-object v0, p0, Lorg/apache/commons/math3/linear/RealVector$2;->val$v:Lorg/apache/commons/math3/linear/RealVector;

    invoke-virtual {v0, p1}, Lorg/apache/commons/math3/linear/RealVector;->map(Lorg/apache/commons/math3/analysis/UnivariateFunction;)Lorg/apache/commons/math3/linear/RealVector;

    move-result-object v0

    return-object v0
.end method

.method public mapAdd(D)Lorg/apache/commons/math3/linear/RealVector;
    .locals 1
    .param p1, "d"    # D

    .prologue
    .line 1320
    iget-object v0, p0, Lorg/apache/commons/math3/linear/RealVector$2;->val$v:Lorg/apache/commons/math3/linear/RealVector;

    invoke-virtual {v0, p1, p2}, Lorg/apache/commons/math3/linear/RealVector;->mapAdd(D)Lorg/apache/commons/math3/linear/RealVector;

    move-result-object v0

    return-object v0
.end method

.method public mapAddToSelf(D)Lorg/apache/commons/math3/linear/RealVector;
    .locals 1
    .param p1, "d"    # D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathUnsupportedOperationException;
        }
    .end annotation

    .prologue
    .line 1332
    new-instance v0, Lorg/apache/commons/math3/exception/MathUnsupportedOperationException;

    invoke-direct {v0}, Lorg/apache/commons/math3/exception/MathUnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public mapDivide(D)Lorg/apache/commons/math3/linear/RealVector;
    .locals 1
    .param p1, "d"    # D

    .prologue
    .line 1374
    iget-object v0, p0, Lorg/apache/commons/math3/linear/RealVector$2;->val$v:Lorg/apache/commons/math3/linear/RealVector;

    invoke-virtual {v0, p1, p2}, Lorg/apache/commons/math3/linear/RealVector;->mapDivide(D)Lorg/apache/commons/math3/linear/RealVector;

    move-result-object v0

    return-object v0
.end method

.method public mapDivideToSelf(D)Lorg/apache/commons/math3/linear/RealVector;
    .locals 1
    .param p1, "d"    # D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathUnsupportedOperationException;
        }
    .end annotation

    .prologue
    .line 1386
    new-instance v0, Lorg/apache/commons/math3/exception/MathUnsupportedOperationException;

    invoke-direct {v0}, Lorg/apache/commons/math3/exception/MathUnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public mapMultiply(D)Lorg/apache/commons/math3/linear/RealVector;
    .locals 1
    .param p1, "d"    # D

    .prologue
    .line 1356
    iget-object v0, p0, Lorg/apache/commons/math3/linear/RealVector$2;->val$v:Lorg/apache/commons/math3/linear/RealVector;

    invoke-virtual {v0, p1, p2}, Lorg/apache/commons/math3/linear/RealVector;->mapMultiply(D)Lorg/apache/commons/math3/linear/RealVector;

    move-result-object v0

    return-object v0
.end method

.method public mapMultiplyToSelf(D)Lorg/apache/commons/math3/linear/RealVector;
    .locals 1
    .param p1, "d"    # D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathUnsupportedOperationException;
        }
    .end annotation

    .prologue
    .line 1368
    new-instance v0, Lorg/apache/commons/math3/exception/MathUnsupportedOperationException;

    invoke-direct {v0}, Lorg/apache/commons/math3/exception/MathUnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public mapSubtract(D)Lorg/apache/commons/math3/linear/RealVector;
    .locals 1
    .param p1, "d"    # D

    .prologue
    .line 1338
    iget-object v0, p0, Lorg/apache/commons/math3/linear/RealVector$2;->val$v:Lorg/apache/commons/math3/linear/RealVector;

    invoke-virtual {v0, p1, p2}, Lorg/apache/commons/math3/linear/RealVector;->mapSubtract(D)Lorg/apache/commons/math3/linear/RealVector;

    move-result-object v0

    return-object v0
.end method

.method public mapSubtractToSelf(D)Lorg/apache/commons/math3/linear/RealVector;
    .locals 1
    .param p1, "d"    # D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathUnsupportedOperationException;
        }
    .end annotation

    .prologue
    .line 1350
    new-instance v0, Lorg/apache/commons/math3/exception/MathUnsupportedOperationException;

    invoke-direct {v0}, Lorg/apache/commons/math3/exception/MathUnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public mapToSelf(Lorg/apache/commons/math3/analysis/UnivariateFunction;)Lorg/apache/commons/math3/linear/RealVector;
    .locals 1
    .param p1, "function"    # Lorg/apache/commons/math3/analysis/UnivariateFunction;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathUnsupportedOperationException;
        }
    .end annotation

    .prologue
    .line 1224
    new-instance v0, Lorg/apache/commons/math3/exception/MathUnsupportedOperationException;

    invoke-direct {v0}, Lorg/apache/commons/math3/exception/MathUnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public outerProduct(Lorg/apache/commons/math3/linear/RealVector;)Lorg/apache/commons/math3/linear/RealMatrix;
    .locals 1
    .param p1, "w"    # Lorg/apache/commons/math3/linear/RealVector;

    .prologue
    .line 1476
    iget-object v0, p0, Lorg/apache/commons/math3/linear/RealVector$2;->val$v:Lorg/apache/commons/math3/linear/RealVector;

    invoke-virtual {v0, p1}, Lorg/apache/commons/math3/linear/RealVector;->outerProduct(Lorg/apache/commons/math3/linear/RealVector;)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v0

    return-object v0
.end method

.method public set(D)V
    .locals 1
    .param p1, "value"    # D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathUnsupportedOperationException;
        }
    .end annotation

    .prologue
    .line 1555
    new-instance v0, Lorg/apache/commons/math3/exception/MathUnsupportedOperationException;

    invoke-direct {v0}, Lorg/apache/commons/math3/exception/MathUnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public setEntry(ID)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathUnsupportedOperationException;
        }
    .end annotation

    .prologue
    .line 1494
    new-instance v0, Lorg/apache/commons/math3/exception/MathUnsupportedOperationException;

    invoke-direct {v0}, Lorg/apache/commons/math3/exception/MathUnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public setSubVector(ILorg/apache/commons/math3/linear/RealVector;)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "w"    # Lorg/apache/commons/math3/linear/RealVector;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathUnsupportedOperationException;
        }
    .end annotation

    .prologue
    .line 1543
    new-instance v0, Lorg/apache/commons/math3/exception/MathUnsupportedOperationException;

    invoke-direct {v0}, Lorg/apache/commons/math3/exception/MathUnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public sparseIterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Lorg/apache/commons/math3/linear/RealVector$Entry;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1267
    iget-object v1, p0, Lorg/apache/commons/math3/linear/RealVector$2;->val$v:Lorg/apache/commons/math3/linear/RealVector;

    invoke-virtual {v1}, Lorg/apache/commons/math3/linear/RealVector;->sparseIterator()Ljava/util/Iterator;

    move-result-object v0

    .line 1269
    .local v0, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/apache/commons/math3/linear/RealVector$Entry;>;"
    new-instance v1, Lorg/apache/commons/math3/linear/RealVector$2$2;

    invoke-direct {v1, p0, v0}, Lorg/apache/commons/math3/linear/RealVector$2$2;-><init>(Lorg/apache/commons/math3/linear/RealVector$2;Ljava/util/Iterator;)V

    return-object v1
.end method

.method public subtract(Lorg/apache/commons/math3/linear/RealVector;)Lorg/apache/commons/math3/linear/RealVector;
    .locals 1
    .param p1, "w"    # Lorg/apache/commons/math3/linear/RealVector;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    .prologue
    .line 1314
    iget-object v0, p0, Lorg/apache/commons/math3/linear/RealVector$2;->val$v:Lorg/apache/commons/math3/linear/RealVector;

    invoke-virtual {v0, p1}, Lorg/apache/commons/math3/linear/RealVector;->subtract(Lorg/apache/commons/math3/linear/RealVector;)Lorg/apache/commons/math3/linear/RealVector;

    move-result-object v0

    return-object v0
.end method

.method public toArray()[D
    .locals 1

    .prologue
    .line 1561
    iget-object v0, p0, Lorg/apache/commons/math3/linear/RealVector$2;->val$v:Lorg/apache/commons/math3/linear/RealVector;

    invoke-virtual {v0}, Lorg/apache/commons/math3/linear/RealVector;->toArray()[D

    move-result-object v0

    return-object v0
.end method

.method public unitVector()Lorg/apache/commons/math3/linear/RealVector;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathArithmeticException;
        }
    .end annotation

    .prologue
    .line 1459
    iget-object v0, p0, Lorg/apache/commons/math3/linear/RealVector$2;->val$v:Lorg/apache/commons/math3/linear/RealVector;

    invoke-virtual {v0}, Lorg/apache/commons/math3/linear/RealVector;->unitVector()Lorg/apache/commons/math3/linear/RealVector;

    move-result-object v0

    return-object v0
.end method

.method public unitize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathUnsupportedOperationException;
        }
    .end annotation

    .prologue
    .line 1470
    new-instance v0, Lorg/apache/commons/math3/exception/MathUnsupportedOperationException;

    invoke-direct {v0}, Lorg/apache/commons/math3/exception/MathUnsupportedOperationException;-><init>()V

    throw v0
.end method
