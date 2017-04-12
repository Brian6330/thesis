.class Lorg/apache/commons/math3/linear/MatrixUtils$BigFractionMatrixConverter;
.super Lorg/apache/commons/math3/linear/DefaultFieldMatrixPreservingVisitor;
.source "MatrixUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/math3/linear/MatrixUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BigFractionMatrixConverter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/commons/math3/linear/DefaultFieldMatrixPreservingVisitor",
        "<",
        "Lorg/apache/commons/math3/fraction/BigFraction;",
        ">;"
    }
.end annotation


# instance fields
.field private data:[[D


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 674
    sget-object v0, Lorg/apache/commons/math3/fraction/BigFraction;->ZERO:Lorg/apache/commons/math3/fraction/BigFraction;

    invoke-direct {p0, v0}, Lorg/apache/commons/math3/linear/DefaultFieldMatrixPreservingVisitor;-><init>(Lorg/apache/commons/math3/FieldElement;)V

    .line 675
    return-void
.end method


# virtual methods
.method getConvertedMatrix()Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;
    .locals 3

    .prologue
    .line 696
    new-instance v0, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    iget-object v1, p0, Lorg/apache/commons/math3/linear/MatrixUtils$BigFractionMatrixConverter;->data:[[D

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;-><init>([[DZ)V

    return-object v0
.end method

.method public start(IIIIII)V
    .locals 2
    .param p1, "rows"    # I
    .param p2, "columns"    # I
    .param p3, "startRow"    # I
    .param p4, "endRow"    # I
    .param p5, "startColumn"    # I
    .param p6, "endColumn"    # I

    .prologue
    .line 681
    filled-new-array {p1, p2}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[D

    iput-object v0, p0, Lorg/apache/commons/math3/linear/MatrixUtils$BigFractionMatrixConverter;->data:[[D

    .line 682
    return-void
.end method

.method public bridge synthetic visit(IILorg/apache/commons/math3/FieldElement;)V
    .locals 0
    .param p1, "x0"    # I
    .param p2, "x1"    # I
    .param p3, "x2"    # Lorg/apache/commons/math3/FieldElement;

    .prologue
    .line 669
    check-cast p3, Lorg/apache/commons/math3/fraction/BigFraction;

    .end local p3    # "x2":Lorg/apache/commons/math3/FieldElement;
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/commons/math3/linear/MatrixUtils$BigFractionMatrixConverter;->visit(IILorg/apache/commons/math3/fraction/BigFraction;)V

    return-void
.end method

.method public visit(IILorg/apache/commons/math3/fraction/BigFraction;)V
    .locals 4
    .param p1, "row"    # I
    .param p2, "column"    # I
    .param p3, "value"    # Lorg/apache/commons/math3/fraction/BigFraction;

    .prologue
    .line 687
    iget-object v0, p0, Lorg/apache/commons/math3/linear/MatrixUtils$BigFractionMatrixConverter;->data:[[D

    aget-object v0, v0, p1

    invoke-virtual {p3}, Lorg/apache/commons/math3/fraction/BigFraction;->doubleValue()D

    move-result-wide v2

    aput-wide v2, v0, p2

    .line 688
    return-void
.end method