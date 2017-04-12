.class public Lorg/apache/commons/math3/linear/MatrixUtils;
.super Ljava/lang/Object;
.source "MatrixUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/math3/linear/MatrixUtils$BigFractionMatrixConverter;,
        Lorg/apache/commons/math3/linear/MatrixUtils$FractionMatrixConverter;
    }
.end annotation


# static fields
.field public static final DEFAULT_FORMAT:Lorg/apache/commons/math3/linear/RealMatrixFormat;

.field public static final OCTAVE_FORMAT:Lorg/apache/commons/math3/linear/RealMatrixFormat;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    .line 52
    invoke-static {}, Lorg/apache/commons/math3/linear/RealMatrixFormat;->getInstance()Lorg/apache/commons/math3/linear/RealMatrixFormat;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/math3/linear/MatrixUtils;->DEFAULT_FORMAT:Lorg/apache/commons/math3/linear/RealMatrixFormat;

    .line 58
    new-instance v0, Lorg/apache/commons/math3/linear/RealMatrixFormat;

    const-string v1, "["

    const-string v2, "]"

    const-string v3, ""

    const-string v4, ""

    const-string v5, "; "

    const-string v6, ", "

    invoke-direct/range {v0 .. v6}, Lorg/apache/commons/math3/linear/RealMatrixFormat;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lorg/apache/commons/math3/linear/MatrixUtils;->OCTAVE_FORMAT:Lorg/apache/commons/math3/linear/RealMatrixFormat;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    return-void
.end method

.method public static bigFractionMatrixToRealMatrix(Lorg/apache/commons/math3/linear/FieldMatrix;)Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/linear/FieldMatrix",
            "<",
            "Lorg/apache/commons/math3/fraction/BigFraction;",
            ">;)",
            "Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;"
        }
    .end annotation

    .prologue
    .line 663
    .local p0, "m":Lorg/apache/commons/math3/linear/FieldMatrix;, "Lorg/apache/commons/math3/linear/FieldMatrix<Lorg/apache/commons/math3/fraction/BigFraction;>;"
    new-instance v0, Lorg/apache/commons/math3/linear/MatrixUtils$BigFractionMatrixConverter;

    invoke-direct {v0}, Lorg/apache/commons/math3/linear/MatrixUtils$BigFractionMatrixConverter;-><init>()V

    .line 664
    .local v0, "converter":Lorg/apache/commons/math3/linear/MatrixUtils$BigFractionMatrixConverter;
    invoke-interface {p0, v0}, Lorg/apache/commons/math3/linear/FieldMatrix;->walkInOptimizedOrder(Lorg/apache/commons/math3/linear/FieldMatrixPreservingVisitor;)Lorg/apache/commons/math3/FieldElement;

    .line 665
    invoke-virtual {v0}, Lorg/apache/commons/math3/linear/MatrixUtils$BigFractionMatrixConverter;->getConvertedMatrix()Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    move-result-object v1

    return-object v1
.end method

.method public static blockInverse(Lorg/apache/commons/math3/linear/RealMatrix;I)Lorg/apache/commons/math3/linear/RealMatrix;
    .locals 32
    .param p0, "m"    # Lorg/apache/commons/math3/linear/RealMatrix;
    .param p1, "splitIndex"    # I

    .prologue
    .line 1012
    invoke-interface/range {p0 .. p0}, Lorg/apache/commons/math3/linear/RealMatrix;->getRowDimension()I

    move-result v16

    .line 1013
    .local v16, "n":I
    invoke-interface/range {p0 .. p0}, Lorg/apache/commons/math3/linear/RealMatrix;->getColumnDimension()I

    move-result v29

    move/from16 v0, v29

    move/from16 v1, v16

    if-eq v0, v1, :cond_0

    .line 1014
    new-instance v29, Lorg/apache/commons/math3/linear/NonSquareMatrixException;

    invoke-interface/range {p0 .. p0}, Lorg/apache/commons/math3/linear/RealMatrix;->getRowDimension()I

    move-result v30

    invoke-interface/range {p0 .. p0}, Lorg/apache/commons/math3/linear/RealMatrix;->getColumnDimension()I

    move-result v31

    invoke-direct/range {v29 .. v31}, Lorg/apache/commons/math3/linear/NonSquareMatrixException;-><init>(II)V

    throw v29

    .line 1018
    :cond_0
    add-int/lit8 v22, p1, 0x1

    .line 1020
    .local v22, "splitIndex1":I
    const/16 v29, 0x0

    const/16 v30, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v29

    move/from16 v2, p1

    move/from16 v3, v30

    move/from16 v4, p1

    invoke-interface {v0, v1, v2, v3, v4}, Lorg/apache/commons/math3/linear/RealMatrix;->getSubMatrix(IIII)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v6

    .line 1021
    .local v6, "a":Lorg/apache/commons/math3/linear/RealMatrix;
    const/16 v29, 0x0

    add-int/lit8 v30, v16, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v29

    move/from16 v2, p1

    move/from16 v3, v22

    move/from16 v4, v30

    invoke-interface {v0, v1, v2, v3, v4}, Lorg/apache/commons/math3/linear/RealMatrix;->getSubMatrix(IIII)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v10

    .line 1022
    .local v10, "b":Lorg/apache/commons/math3/linear/RealMatrix;
    add-int/lit8 v29, v16, -0x1

    const/16 v30, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v22

    move/from16 v2, v29

    move/from16 v3, v30

    move/from16 v4, p1

    invoke-interface {v0, v1, v2, v3, v4}, Lorg/apache/commons/math3/linear/RealMatrix;->getSubMatrix(IIII)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v11

    .line 1023
    .local v11, "c":Lorg/apache/commons/math3/linear/RealMatrix;
    add-int/lit8 v29, v16, -0x1

    add-int/lit8 v30, v16, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v22

    move/from16 v2, v29

    move/from16 v3, v22

    move/from16 v4, v30

    invoke-interface {v0, v1, v2, v3, v4}, Lorg/apache/commons/math3/linear/RealMatrix;->getSubMatrix(IIII)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v12

    .line 1025
    .local v12, "d":Lorg/apache/commons/math3/linear/RealMatrix;
    new-instance v7, Lorg/apache/commons/math3/linear/SingularValueDecomposition;

    invoke-direct {v7, v6}, Lorg/apache/commons/math3/linear/SingularValueDecomposition;-><init>(Lorg/apache/commons/math3/linear/RealMatrix;)V

    .line 1026
    .local v7, "aDec":Lorg/apache/commons/math3/linear/SingularValueDecomposition;
    invoke-virtual {v7}, Lorg/apache/commons/math3/linear/SingularValueDecomposition;->getSolver()Lorg/apache/commons/math3/linear/DecompositionSolver;

    move-result-object v9

    .line 1027
    .local v9, "aSolver":Lorg/apache/commons/math3/linear/DecompositionSolver;
    invoke-interface {v9}, Lorg/apache/commons/math3/linear/DecompositionSolver;->isNonSingular()Z

    move-result v29

    if-nez v29, :cond_1

    .line 1028
    new-instance v29, Lorg/apache/commons/math3/linear/SingularMatrixException;

    invoke-direct/range {v29 .. v29}, Lorg/apache/commons/math3/linear/SingularMatrixException;-><init>()V

    throw v29

    .line 1030
    :cond_1
    invoke-interface {v9}, Lorg/apache/commons/math3/linear/DecompositionSolver;->getInverse()Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v8

    .line 1032
    .local v8, "aInv":Lorg/apache/commons/math3/linear/RealMatrix;
    new-instance v13, Lorg/apache/commons/math3/linear/SingularValueDecomposition;

    invoke-direct {v13, v12}, Lorg/apache/commons/math3/linear/SingularValueDecomposition;-><init>(Lorg/apache/commons/math3/linear/RealMatrix;)V

    .line 1033
    .local v13, "dDec":Lorg/apache/commons/math3/linear/SingularValueDecomposition;
    invoke-virtual {v13}, Lorg/apache/commons/math3/linear/SingularValueDecomposition;->getSolver()Lorg/apache/commons/math3/linear/DecompositionSolver;

    move-result-object v15

    .line 1034
    .local v15, "dSolver":Lorg/apache/commons/math3/linear/DecompositionSolver;
    invoke-interface {v15}, Lorg/apache/commons/math3/linear/DecompositionSolver;->isNonSingular()Z

    move-result v29

    if-nez v29, :cond_2

    .line 1035
    new-instance v29, Lorg/apache/commons/math3/linear/SingularMatrixException;

    invoke-direct/range {v29 .. v29}, Lorg/apache/commons/math3/linear/SingularMatrixException;-><init>()V

    throw v29

    .line 1037
    :cond_2
    invoke-interface {v15}, Lorg/apache/commons/math3/linear/DecompositionSolver;->getInverse()Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v14

    .line 1039
    .local v14, "dInv":Lorg/apache/commons/math3/linear/RealMatrix;
    invoke-interface {v10, v14}, Lorg/apache/commons/math3/linear/RealMatrix;->multiply(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-interface {v0, v11}, Lorg/apache/commons/math3/linear/RealMatrix;->multiply(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-interface {v6, v0}, Lorg/apache/commons/math3/linear/RealMatrix;->subtract(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v23

    .line 1040
    .local v23, "tmp1":Lorg/apache/commons/math3/linear/RealMatrix;
    new-instance v24, Lorg/apache/commons/math3/linear/SingularValueDecomposition;

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Lorg/apache/commons/math3/linear/SingularValueDecomposition;-><init>(Lorg/apache/commons/math3/linear/RealMatrix;)V

    .line 1041
    .local v24, "tmp1Dec":Lorg/apache/commons/math3/linear/SingularValueDecomposition;
    invoke-virtual/range {v24 .. v24}, Lorg/apache/commons/math3/linear/SingularValueDecomposition;->getSolver()Lorg/apache/commons/math3/linear/DecompositionSolver;

    move-result-object v25

    .line 1042
    .local v25, "tmp1Solver":Lorg/apache/commons/math3/linear/DecompositionSolver;
    invoke-interface/range {v25 .. v25}, Lorg/apache/commons/math3/linear/DecompositionSolver;->isNonSingular()Z

    move-result v29

    if-nez v29, :cond_3

    .line 1043
    new-instance v29, Lorg/apache/commons/math3/linear/SingularMatrixException;

    invoke-direct/range {v29 .. v29}, Lorg/apache/commons/math3/linear/SingularMatrixException;-><init>()V

    throw v29

    .line 1045
    :cond_3
    invoke-interface/range {v25 .. v25}, Lorg/apache/commons/math3/linear/DecompositionSolver;->getInverse()Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v18

    .line 1047
    .local v18, "result00":Lorg/apache/commons/math3/linear/RealMatrix;
    invoke-interface {v11, v8}, Lorg/apache/commons/math3/linear/RealMatrix;->multiply(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-interface {v0, v10}, Lorg/apache/commons/math3/linear/RealMatrix;->multiply(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-interface {v12, v0}, Lorg/apache/commons/math3/linear/RealMatrix;->subtract(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v26

    .line 1048
    .local v26, "tmp2":Lorg/apache/commons/math3/linear/RealMatrix;
    new-instance v27, Lorg/apache/commons/math3/linear/SingularValueDecomposition;

    move-object/from16 v0, v27

    move-object/from16 v1, v26

    invoke-direct {v0, v1}, Lorg/apache/commons/math3/linear/SingularValueDecomposition;-><init>(Lorg/apache/commons/math3/linear/RealMatrix;)V

    .line 1049
    .local v27, "tmp2Dec":Lorg/apache/commons/math3/linear/SingularValueDecomposition;
    invoke-virtual/range {v27 .. v27}, Lorg/apache/commons/math3/linear/SingularValueDecomposition;->getSolver()Lorg/apache/commons/math3/linear/DecompositionSolver;

    move-result-object v28

    .line 1050
    .local v28, "tmp2Solver":Lorg/apache/commons/math3/linear/DecompositionSolver;
    invoke-interface/range {v28 .. v28}, Lorg/apache/commons/math3/linear/DecompositionSolver;->isNonSingular()Z

    move-result v29

    if-nez v29, :cond_4

    .line 1051
    new-instance v29, Lorg/apache/commons/math3/linear/SingularMatrixException;

    invoke-direct/range {v29 .. v29}, Lorg/apache/commons/math3/linear/SingularMatrixException;-><init>()V

    throw v29

    .line 1053
    :cond_4
    invoke-interface/range {v28 .. v28}, Lorg/apache/commons/math3/linear/DecompositionSolver;->getInverse()Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v21

    .line 1055
    .local v21, "result11":Lorg/apache/commons/math3/linear/RealMatrix;
    invoke-interface {v8, v10}, Lorg/apache/commons/math3/linear/RealMatrix;->multiply(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v29

    move-object/from16 v0, v29

    move-object/from16 v1, v21

    invoke-interface {v0, v1}, Lorg/apache/commons/math3/linear/RealMatrix;->multiply(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v29

    const-wide/high16 v30, -0x4010000000000000L    # -1.0

    invoke-interface/range {v29 .. v31}, Lorg/apache/commons/math3/linear/RealMatrix;->scalarMultiply(D)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v19

    .line 1056
    .local v19, "result01":Lorg/apache/commons/math3/linear/RealMatrix;
    invoke-interface {v14, v11}, Lorg/apache/commons/math3/linear/RealMatrix;->multiply(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v29

    move-object/from16 v0, v29

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Lorg/apache/commons/math3/linear/RealMatrix;->multiply(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v29

    const-wide/high16 v30, -0x4010000000000000L    # -1.0

    invoke-interface/range {v29 .. v31}, Lorg/apache/commons/math3/linear/RealMatrix;->scalarMultiply(D)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v20

    .line 1058
    .local v20, "result10":Lorg/apache/commons/math3/linear/RealMatrix;
    new-instance v17, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    move-object/from16 v0, v17

    move/from16 v1, v16

    move/from16 v2, v16

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;-><init>(II)V

    .line 1059
    .local v17, "result":Lorg/apache/commons/math3/linear/RealMatrix;
    invoke-interface/range {v18 .. v18}, Lorg/apache/commons/math3/linear/RealMatrix;->getData()[[D

    move-result-object v29

    const/16 v30, 0x0

    const/16 v31, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v29

    move/from16 v2, v30

    move/from16 v3, v31

    invoke-interface {v0, v1, v2, v3}, Lorg/apache/commons/math3/linear/RealMatrix;->setSubMatrix([[DII)V

    .line 1060
    invoke-interface/range {v19 .. v19}, Lorg/apache/commons/math3/linear/RealMatrix;->getData()[[D

    move-result-object v29

    const/16 v30, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v29

    move/from16 v2, v30

    move/from16 v3, v22

    invoke-interface {v0, v1, v2, v3}, Lorg/apache/commons/math3/linear/RealMatrix;->setSubMatrix([[DII)V

    .line 1061
    invoke-interface/range {v20 .. v20}, Lorg/apache/commons/math3/linear/RealMatrix;->getData()[[D

    move-result-object v29

    const/16 v30, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v29

    move/from16 v2, v22

    move/from16 v3, v30

    invoke-interface {v0, v1, v2, v3}, Lorg/apache/commons/math3/linear/RealMatrix;->setSubMatrix([[DII)V

    .line 1062
    invoke-interface/range {v21 .. v21}, Lorg/apache/commons/math3/linear/RealMatrix;->getData()[[D

    move-result-object v29

    move-object/from16 v0, v17

    move-object/from16 v1, v29

    move/from16 v2, v22

    move/from16 v3, v22

    invoke-interface {v0, v1, v2, v3}, Lorg/apache/commons/math3/linear/RealMatrix;->setSubMatrix([[DII)V

    .line 1064
    return-object v17
.end method

.method public static checkAdditionCompatible(Lorg/apache/commons/math3/linear/AnyMatrix;Lorg/apache/commons/math3/linear/AnyMatrix;)V
    .locals 5
    .param p0, "left"    # Lorg/apache/commons/math3/linear/AnyMatrix;
    .param p1, "right"    # Lorg/apache/commons/math3/linear/AnyMatrix;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/linear/MatrixDimensionMismatchException;
        }
    .end annotation

    .prologue
    .line 571
    invoke-interface {p0}, Lorg/apache/commons/math3/linear/AnyMatrix;->getRowDimension()I

    move-result v0

    invoke-interface {p1}, Lorg/apache/commons/math3/linear/AnyMatrix;->getRowDimension()I

    move-result v1

    if-ne v0, v1, :cond_0

    invoke-interface {p0}, Lorg/apache/commons/math3/linear/AnyMatrix;->getColumnDimension()I

    move-result v0

    invoke-interface {p1}, Lorg/apache/commons/math3/linear/AnyMatrix;->getColumnDimension()I

    move-result v1

    if-eq v0, v1, :cond_1

    .line 573
    :cond_0
    new-instance v0, Lorg/apache/commons/math3/linear/MatrixDimensionMismatchException;

    invoke-interface {p0}, Lorg/apache/commons/math3/linear/AnyMatrix;->getRowDimension()I

    move-result v1

    invoke-interface {p0}, Lorg/apache/commons/math3/linear/AnyMatrix;->getColumnDimension()I

    move-result v2

    invoke-interface {p1}, Lorg/apache/commons/math3/linear/AnyMatrix;->getRowDimension()I

    move-result v3

    invoke-interface {p1}, Lorg/apache/commons/math3/linear/AnyMatrix;->getColumnDimension()I

    move-result v4

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/apache/commons/math3/linear/MatrixDimensionMismatchException;-><init>(IIII)V

    throw v0

    .line 576
    :cond_1
    return-void
.end method

.method public static checkColumnIndex(Lorg/apache/commons/math3/linear/AnyMatrix;I)V
    .locals 5
    .param p0, "m"    # Lorg/apache/commons/math3/linear/AnyMatrix;
    .param p1, "column"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/OutOfRangeException;
        }
    .end annotation

    .prologue
    .line 483
    if-ltz p1, :cond_0

    invoke-interface {p0}, Lorg/apache/commons/math3/linear/AnyMatrix;->getColumnDimension()I

    move-result v0

    if-lt p1, v0, :cond_1

    .line 484
    :cond_0
    new-instance v0, Lorg/apache/commons/math3/exception/OutOfRangeException;

    sget-object v1, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->COLUMN_INDEX:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p0}, Lorg/apache/commons/math3/linear/AnyMatrix;->getColumnDimension()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/apache/commons/math3/exception/OutOfRangeException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;)V

    throw v0

    .line 487
    :cond_1
    return-void
.end method

.method public static checkMatrixIndex(Lorg/apache/commons/math3/linear/AnyMatrix;II)V
    .locals 0
    .param p0, "m"    # Lorg/apache/commons/math3/linear/AnyMatrix;
    .param p1, "row"    # I
    .param p2, "column"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/OutOfRangeException;
        }
    .end annotation

    .prologue
    .line 454
    invoke-static {p0, p1}, Lorg/apache/commons/math3/linear/MatrixUtils;->checkRowIndex(Lorg/apache/commons/math3/linear/AnyMatrix;I)V

    .line 455
    invoke-static {p0, p2}, Lorg/apache/commons/math3/linear/MatrixUtils;->checkColumnIndex(Lorg/apache/commons/math3/linear/AnyMatrix;I)V

    .line 456
    return-void
.end method

.method public static checkMultiplicationCompatible(Lorg/apache/commons/math3/linear/AnyMatrix;Lorg/apache/commons/math3/linear/AnyMatrix;)V
    .locals 3
    .param p0, "left"    # Lorg/apache/commons/math3/linear/AnyMatrix;
    .param p1, "right"    # Lorg/apache/commons/math3/linear/AnyMatrix;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    .prologue
    .line 606
    invoke-interface {p0}, Lorg/apache/commons/math3/linear/AnyMatrix;->getColumnDimension()I

    move-result v0

    invoke-interface {p1}, Lorg/apache/commons/math3/linear/AnyMatrix;->getRowDimension()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 607
    new-instance v0, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    invoke-interface {p0}, Lorg/apache/commons/math3/linear/AnyMatrix;->getColumnDimension()I

    move-result v1

    invoke-interface {p1}, Lorg/apache/commons/math3/linear/AnyMatrix;->getRowDimension()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v0

    .line 610
    :cond_0
    return-void
.end method

.method public static checkRowIndex(Lorg/apache/commons/math3/linear/AnyMatrix;I)V
    .locals 5
    .param p0, "m"    # Lorg/apache/commons/math3/linear/AnyMatrix;
    .param p1, "row"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/OutOfRangeException;
        }
    .end annotation

    .prologue
    .line 467
    if-ltz p1, :cond_0

    invoke-interface {p0}, Lorg/apache/commons/math3/linear/AnyMatrix;->getRowDimension()I

    move-result v0

    if-lt p1, v0, :cond_1

    .line 469
    :cond_0
    new-instance v0, Lorg/apache/commons/math3/exception/OutOfRangeException;

    sget-object v1, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->ROW_INDEX:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p0}, Lorg/apache/commons/math3/linear/AnyMatrix;->getRowDimension()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/apache/commons/math3/exception/OutOfRangeException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;)V

    throw v0

    .line 472
    :cond_1
    return-void
.end method

.method public static checkSubMatrixIndex(Lorg/apache/commons/math3/linear/AnyMatrix;IIII)V
    .locals 5
    .param p0, "m"    # Lorg/apache/commons/math3/linear/AnyMatrix;
    .param p1, "startRow"    # I
    .param p2, "endRow"    # I
    .param p3, "startColumn"    # I
    .param p4, "endColumn"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NumberIsTooSmallException;,
            Lorg/apache/commons/math3/exception/OutOfRangeException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 506
    invoke-static {p0, p1}, Lorg/apache/commons/math3/linear/MatrixUtils;->checkRowIndex(Lorg/apache/commons/math3/linear/AnyMatrix;I)V

    .line 507
    invoke-static {p0, p2}, Lorg/apache/commons/math3/linear/MatrixUtils;->checkRowIndex(Lorg/apache/commons/math3/linear/AnyMatrix;I)V

    .line 508
    if-ge p2, p1, :cond_0

    .line 509
    new-instance v0, Lorg/apache/commons/math3/exception/NumberIsTooSmallException;

    sget-object v1, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->INITIAL_ROW_AFTER_FINAL_ROW:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/apache/commons/math3/exception/NumberIsTooSmallException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;Ljava/lang/Number;Ljava/lang/Number;Z)V

    throw v0

    .line 513
    :cond_0
    invoke-static {p0, p3}, Lorg/apache/commons/math3/linear/MatrixUtils;->checkColumnIndex(Lorg/apache/commons/math3/linear/AnyMatrix;I)V

    .line 514
    invoke-static {p0, p4}, Lorg/apache/commons/math3/linear/MatrixUtils;->checkColumnIndex(Lorg/apache/commons/math3/linear/AnyMatrix;I)V

    .line 515
    if-ge p4, p3, :cond_1

    .line 516
    new-instance v0, Lorg/apache/commons/math3/exception/NumberIsTooSmallException;

    sget-object v1, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->INITIAL_COLUMN_AFTER_FINAL_COLUMN:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/apache/commons/math3/exception/NumberIsTooSmallException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;Ljava/lang/Number;Ljava/lang/Number;Z)V

    throw v0

    .line 521
    :cond_1
    return-void
.end method

.method public static checkSubMatrixIndex(Lorg/apache/commons/math3/linear/AnyMatrix;[I[I)V
    .locals 7
    .param p0, "m"    # Lorg/apache/commons/math3/linear/AnyMatrix;
    .param p1, "selectedRows"    # [I
    .param p2, "selectedColumns"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NoDataException;,
            Lorg/apache/commons/math3/exception/NullArgumentException;,
            Lorg/apache/commons/math3/exception/OutOfRangeException;
        }
    .end annotation

    .prologue
    .line 540
    if-nez p1, :cond_0

    .line 541
    new-instance v5, Lorg/apache/commons/math3/exception/NullArgumentException;

    invoke-direct {v5}, Lorg/apache/commons/math3/exception/NullArgumentException;-><init>()V

    throw v5

    .line 543
    :cond_0
    if-nez p2, :cond_1

    .line 544
    new-instance v5, Lorg/apache/commons/math3/exception/NullArgumentException;

    invoke-direct {v5}, Lorg/apache/commons/math3/exception/NullArgumentException;-><init>()V

    throw v5

    .line 546
    :cond_1
    array-length v5, p1

    if-nez v5, :cond_2

    .line 547
    new-instance v5, Lorg/apache/commons/math3/exception/NoDataException;

    sget-object v6, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->EMPTY_SELECTED_ROW_INDEX_ARRAY:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-direct {v5, v6}, Lorg/apache/commons/math3/exception/NoDataException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;)V

    throw v5

    .line 549
    :cond_2
    array-length v5, p2

    if-nez v5, :cond_3

    .line 550
    new-instance v5, Lorg/apache/commons/math3/exception/NoDataException;

    sget-object v6, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->EMPTY_SELECTED_COLUMN_INDEX_ARRAY:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-direct {v5, v6}, Lorg/apache/commons/math3/exception/NoDataException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;)V

    throw v5

    .line 553
    :cond_3
    move-object v0, p1

    .local v0, "arr$":[I
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_4

    aget v4, v0, v2

    .line 554
    .local v4, "row":I
    invoke-static {p0, v4}, Lorg/apache/commons/math3/linear/MatrixUtils;->checkRowIndex(Lorg/apache/commons/math3/linear/AnyMatrix;I)V

    .line 553
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 556
    .end local v4    # "row":I
    :cond_4
    move-object v0, p2

    array-length v3, v0

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v3, :cond_5

    aget v1, v0, v2

    .line 557
    .local v1, "column":I
    invoke-static {p0, v1}, Lorg/apache/commons/math3/linear/MatrixUtils;->checkColumnIndex(Lorg/apache/commons/math3/linear/AnyMatrix;I)V

    .line 556
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 559
    .end local v1    # "column":I
    :cond_5
    return-void
.end method

.method public static checkSubtractionCompatible(Lorg/apache/commons/math3/linear/AnyMatrix;Lorg/apache/commons/math3/linear/AnyMatrix;)V
    .locals 5
    .param p0, "left"    # Lorg/apache/commons/math3/linear/AnyMatrix;
    .param p1, "right"    # Lorg/apache/commons/math3/linear/AnyMatrix;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/linear/MatrixDimensionMismatchException;
        }
    .end annotation

    .prologue
    .line 588
    invoke-interface {p0}, Lorg/apache/commons/math3/linear/AnyMatrix;->getRowDimension()I

    move-result v0

    invoke-interface {p1}, Lorg/apache/commons/math3/linear/AnyMatrix;->getRowDimension()I

    move-result v1

    if-ne v0, v1, :cond_0

    invoke-interface {p0}, Lorg/apache/commons/math3/linear/AnyMatrix;->getColumnDimension()I

    move-result v0

    invoke-interface {p1}, Lorg/apache/commons/math3/linear/AnyMatrix;->getColumnDimension()I

    move-result v1

    if-eq v0, v1, :cond_1

    .line 590
    :cond_0
    new-instance v0, Lorg/apache/commons/math3/linear/MatrixDimensionMismatchException;

    invoke-interface {p0}, Lorg/apache/commons/math3/linear/AnyMatrix;->getRowDimension()I

    move-result v1

    invoke-interface {p0}, Lorg/apache/commons/math3/linear/AnyMatrix;->getColumnDimension()I

    move-result v2

    invoke-interface {p1}, Lorg/apache/commons/math3/linear/AnyMatrix;->getRowDimension()I

    move-result v3

    invoke-interface {p1}, Lorg/apache/commons/math3/linear/AnyMatrix;->getColumnDimension()I

    move-result v4

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/apache/commons/math3/linear/MatrixDimensionMismatchException;-><init>(IIII)V

    throw v0

    .line 593
    :cond_1
    return-void
.end method

.method public static checkSymmetric(Lorg/apache/commons/math3/linear/RealMatrix;D)V
    .locals 1
    .param p0, "matrix"    # Lorg/apache/commons/math3/linear/RealMatrix;
    .param p1, "eps"    # D

    .prologue
    .line 426
    const/4 v0, 0x1

    invoke-static {p0, p1, p2, v0}, Lorg/apache/commons/math3/linear/MatrixUtils;->isSymmetricInternal(Lorg/apache/commons/math3/linear/RealMatrix;DZ)Z

    .line 427
    return-void
.end method

.method public static createColumnFieldMatrix([Lorg/apache/commons/math3/FieldElement;)Lorg/apache/commons/math3/linear/FieldMatrix;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lorg/apache/commons/math3/FieldElement",
            "<TT;>;>([TT;)",
            "Lorg/apache/commons/math3/linear/FieldMatrix",
            "<TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NoDataException;,
            Lorg/apache/commons/math3/exception/NullArgumentException;
        }
    .end annotation

    .prologue
    .local p0, "columnData":[Lorg/apache/commons/math3/FieldElement;, "[TT;"
    const/4 v5, 0x0

    .line 362
    if-nez p0, :cond_0

    .line 363
    new-instance v3, Lorg/apache/commons/math3/exception/NullArgumentException;

    invoke-direct {v3}, Lorg/apache/commons/math3/exception/NullArgumentException;-><init>()V

    throw v3

    .line 365
    :cond_0
    array-length v2, p0

    .line 366
    .local v2, "nRows":I
    if-nez v2, :cond_1

    .line 367
    new-instance v3, Lorg/apache/commons/math3/exception/NoDataException;

    sget-object v4, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->AT_LEAST_ONE_ROW:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-direct {v3, v4}, Lorg/apache/commons/math3/exception/NoDataException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;)V

    throw v3

    .line 369
    :cond_1
    aget-object v3, p0, v5

    invoke-interface {v3}, Lorg/apache/commons/math3/FieldElement;->getField()Lorg/apache/commons/math3/Field;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {v3, v2, v4}, Lorg/apache/commons/math3/linear/MatrixUtils;->createFieldMatrix(Lorg/apache/commons/math3/Field;II)Lorg/apache/commons/math3/linear/FieldMatrix;

    move-result-object v1

    .line 370
    .local v1, "m":Lorg/apache/commons/math3/linear/FieldMatrix;, "Lorg/apache/commons/math3/linear/FieldMatrix<TT;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_2

    .line 371
    aget-object v3, p0, v0

    invoke-interface {v1, v0, v5, v3}, Lorg/apache/commons/math3/linear/FieldMatrix;->setEntry(IILorg/apache/commons/math3/FieldElement;)V

    .line 370
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 373
    :cond_2
    return-object v1
.end method

.method public static createColumnRealMatrix([D)Lorg/apache/commons/math3/linear/RealMatrix;
    .locals 6
    .param p0, "columnData"    # [D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NoDataException;,
            Lorg/apache/commons/math3/exception/NullArgumentException;
        }
    .end annotation

    .prologue
    .line 338
    if-nez p0, :cond_0

    .line 339
    new-instance v3, Lorg/apache/commons/math3/exception/NullArgumentException;

    invoke-direct {v3}, Lorg/apache/commons/math3/exception/NullArgumentException;-><init>()V

    throw v3

    .line 341
    :cond_0
    array-length v2, p0

    .line 342
    .local v2, "nRows":I
    const/4 v3, 0x1

    invoke-static {v2, v3}, Lorg/apache/commons/math3/linear/MatrixUtils;->createRealMatrix(II)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v1

    .line 343
    .local v1, "m":Lorg/apache/commons/math3/linear/RealMatrix;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_1

    .line 344
    const/4 v3, 0x0

    aget-wide v4, p0, v0

    invoke-interface {v1, v0, v3, v4, v5}, Lorg/apache/commons/math3/linear/RealMatrix;->setEntry(IID)V

    .line 343
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 346
    :cond_1
    return-object v1
.end method

.method public static createFieldDiagonalMatrix([Lorg/apache/commons/math3/FieldElement;)Lorg/apache/commons/math3/linear/FieldMatrix;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lorg/apache/commons/math3/FieldElement",
            "<TT;>;>([TT;)",
            "Lorg/apache/commons/math3/linear/FieldMatrix",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 233
    .local p0, "diagonal":[Lorg/apache/commons/math3/FieldElement;, "[TT;"
    const/4 v2, 0x0

    aget-object v2, p0, v2

    invoke-interface {v2}, Lorg/apache/commons/math3/FieldElement;->getField()Lorg/apache/commons/math3/Field;

    move-result-object v2

    array-length v3, p0

    array-length v4, p0

    invoke-static {v2, v3, v4}, Lorg/apache/commons/math3/linear/MatrixUtils;->createFieldMatrix(Lorg/apache/commons/math3/Field;II)Lorg/apache/commons/math3/linear/FieldMatrix;

    move-result-object v1

    .line 235
    .local v1, "m":Lorg/apache/commons/math3/linear/FieldMatrix;, "Lorg/apache/commons/math3/linear/FieldMatrix<TT;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_0

    .line 236
    aget-object v2, p0, v0

    invoke-interface {v1, v0, v0, v2}, Lorg/apache/commons/math3/linear/FieldMatrix;->setEntry(IILorg/apache/commons/math3/FieldElement;)V

    .line 235
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 238
    :cond_0
    return-object v1
.end method

.method public static createFieldIdentityMatrix(Lorg/apache/commons/math3/Field;I)Lorg/apache/commons/math3/linear/FieldMatrix;
    .locals 7
    .param p1, "dimension"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lorg/apache/commons/math3/FieldElement",
            "<TT;>;>(",
            "Lorg/apache/commons/math3/Field",
            "<TT;>;I)",
            "Lorg/apache/commons/math3/linear/FieldMatrix",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 195
    .local p0, "field":Lorg/apache/commons/math3/Field;, "Lorg/apache/commons/math3/Field<TT;>;"
    invoke-interface {p0}, Lorg/apache/commons/math3/Field;->getZero()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/commons/math3/FieldElement;

    .line 196
    .local v4, "zero":Lorg/apache/commons/math3/FieldElement;, "TT;"
    invoke-interface {p0}, Lorg/apache/commons/math3/Field;->getOne()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/math3/FieldElement;

    .line 197
    .local v2, "one":Lorg/apache/commons/math3/FieldElement;, "TT;"
    invoke-static {p0, p1, p1}, Lorg/apache/commons/math3/util/MathArrays;->buildArray(Lorg/apache/commons/math3/Field;II)[[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[Lorg/apache/commons/math3/FieldElement;

    .line 198
    .local v0, "d":[[Lorg/apache/commons/math3/FieldElement;, "[[TT;"
    const/4 v3, 0x0

    .local v3, "row":I
    :goto_0
    if-ge v3, p1, :cond_0

    .line 199
    aget-object v1, v0, v3

    .line 200
    .local v1, "dRow":[Lorg/apache/commons/math3/FieldElement;, "[TT;"
    invoke-static {v1, v4}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    .line 201
    aput-object v2, v1, v3

    .line 198
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 203
    .end local v1    # "dRow":[Lorg/apache/commons/math3/FieldElement;, "[TT;"
    :cond_0
    new-instance v5, Lorg/apache/commons/math3/linear/Array2DRowFieldMatrix;

    const/4 v6, 0x0

    invoke-direct {v5, p0, v0, v6}, Lorg/apache/commons/math3/linear/Array2DRowFieldMatrix;-><init>(Lorg/apache/commons/math3/Field;[[Lorg/apache/commons/math3/FieldElement;Z)V

    return-object v5
.end method

.method public static createFieldMatrix(Lorg/apache/commons/math3/Field;II)Lorg/apache/commons/math3/linear/FieldMatrix;
    .locals 2
    .param p1, "rows"    # I
    .param p2, "columns"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lorg/apache/commons/math3/FieldElement",
            "<TT;>;>(",
            "Lorg/apache/commons/math3/Field",
            "<TT;>;II)",
            "Lorg/apache/commons/math3/linear/FieldMatrix",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 103
    .local p0, "field":Lorg/apache/commons/math3/Field;, "Lorg/apache/commons/math3/Field<TT;>;"
    mul-int v0, p1, p2

    const/16 v1, 0x1000

    if-gt v0, v1, :cond_0

    new-instance v0, Lorg/apache/commons/math3/linear/Array2DRowFieldMatrix;

    invoke-direct {v0, p0, p1, p2}, Lorg/apache/commons/math3/linear/Array2DRowFieldMatrix;-><init>(Lorg/apache/commons/math3/Field;II)V

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;

    invoke-direct {v0, p0, p1, p2}, Lorg/apache/commons/math3/linear/BlockFieldMatrix;-><init>(Lorg/apache/commons/math3/Field;II)V

    goto :goto_0
.end method

.method public static createFieldMatrix([[Lorg/apache/commons/math3/FieldElement;)Lorg/apache/commons/math3/linear/FieldMatrix;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lorg/apache/commons/math3/FieldElement",
            "<TT;>;>([[TT;)",
            "Lorg/apache/commons/math3/linear/FieldMatrix",
            "<TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;,
            Lorg/apache/commons/math3/exception/NoDataException;,
            Lorg/apache/commons/math3/exception/NullArgumentException;
        }
    .end annotation

    .prologue
    .local p0, "data":[[Lorg/apache/commons/math3/FieldElement;, "[[TT;"
    const/4 v1, 0x0

    .line 159
    if-eqz p0, :cond_0

    aget-object v0, p0, v1

    if-nez v0, :cond_1

    .line 161
    :cond_0
    new-instance v0, Lorg/apache/commons/math3/exception/NullArgumentException;

    invoke-direct {v0}, Lorg/apache/commons/math3/exception/NullArgumentException;-><init>()V

    throw v0

    .line 163
    :cond_1
    array-length v0, p0

    aget-object v1, p0, v1

    array-length v1, v1

    mul-int/2addr v0, v1

    const/16 v1, 0x1000

    if-gt v0, v1, :cond_2

    new-instance v0, Lorg/apache/commons/math3/linear/Array2DRowFieldMatrix;

    invoke-direct {v0, p0}, Lorg/apache/commons/math3/linear/Array2DRowFieldMatrix;-><init>([[Lorg/apache/commons/math3/FieldElement;)V

    :goto_0
    return-object v0

    :cond_2
    new-instance v0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;

    invoke-direct {v0, p0}, Lorg/apache/commons/math3/linear/BlockFieldMatrix;-><init>([[Lorg/apache/commons/math3/FieldElement;)V

    goto :goto_0
.end method

.method public static createFieldVector([Lorg/apache/commons/math3/FieldElement;)Lorg/apache/commons/math3/linear/FieldVector;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lorg/apache/commons/math3/FieldElement",
            "<TT;>;>([TT;)",
            "Lorg/apache/commons/math3/linear/FieldVector",
            "<TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NoDataException;,
            Lorg/apache/commons/math3/exception/NullArgumentException;,
            Lorg/apache/commons/math3/exception/ZeroException;
        }
    .end annotation

    .prologue
    .local p0, "data":[Lorg/apache/commons/math3/FieldElement;, "[TT;"
    const/4 v2, 0x0

    .line 269
    if-nez p0, :cond_0

    .line 270
    new-instance v0, Lorg/apache/commons/math3/exception/NullArgumentException;

    invoke-direct {v0}, Lorg/apache/commons/math3/exception/NullArgumentException;-><init>()V

    throw v0

    .line 272
    :cond_0
    array-length v0, p0

    if-nez v0, :cond_1

    .line 273
    new-instance v0, Lorg/apache/commons/math3/exception/ZeroException;

    sget-object v1, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->VECTOR_MUST_HAVE_AT_LEAST_ONE_ELEMENT:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    new-array v2, v2, [Ljava/lang/Object;

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/exception/ZeroException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v0

    .line 275
    :cond_1
    new-instance v0, Lorg/apache/commons/math3/linear/ArrayFieldVector;

    aget-object v1, p0, v2

    invoke-interface {v1}, Lorg/apache/commons/math3/FieldElement;->getField()Lorg/apache/commons/math3/Field;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v1, p0, v2}, Lorg/apache/commons/math3/linear/ArrayFieldVector;-><init>(Lorg/apache/commons/math3/Field;[Lorg/apache/commons/math3/FieldElement;Z)V

    return-object v0
.end method

.method public static createRealDiagonalMatrix([D)Lorg/apache/commons/math3/linear/RealMatrix;
    .locals 4
    .param p0, "diagonal"    # [D

    .prologue
    .line 215
    array-length v2, p0

    array-length v3, p0

    invoke-static {v2, v3}, Lorg/apache/commons/math3/linear/MatrixUtils;->createRealMatrix(II)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v1

    .line 216
    .local v1, "m":Lorg/apache/commons/math3/linear/RealMatrix;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_0

    .line 217
    aget-wide v2, p0, v0

    invoke-interface {v1, v0, v0, v2, v3}, Lorg/apache/commons/math3/linear/RealMatrix;->setEntry(IID)V

    .line 216
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 219
    :cond_0
    return-object v1
.end method

.method public static createRealIdentityMatrix(I)Lorg/apache/commons/math3/linear/RealMatrix;
    .locals 4
    .param p0, "dimension"    # I

    .prologue
    .line 176
    invoke-static {p0, p0}, Lorg/apache/commons/math3/linear/MatrixUtils;->createRealMatrix(II)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v1

    .line 177
    .local v1, "m":Lorg/apache/commons/math3/linear/RealMatrix;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p0, :cond_0

    .line 178
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    invoke-interface {v1, v0, v0, v2, v3}, Lorg/apache/commons/math3/linear/RealMatrix;->setEntry(IID)V

    .line 177
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 180
    :cond_0
    return-object v1
.end method

.method public static createRealMatrix(II)Lorg/apache/commons/math3/linear/RealMatrix;
    .locals 2
    .param p0, "rows"    # I
    .param p1, "columns"    # I

    .prologue
    .line 81
    mul-int v0, p0, p1

    const/16 v1, 0x1000

    if-gt v0, v1, :cond_0

    new-instance v0, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    invoke-direct {v0, p0, p1}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;-><init>(II)V

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lorg/apache/commons/math3/linear/BlockRealMatrix;

    invoke-direct {v0, p0, p1}, Lorg/apache/commons/math3/linear/BlockRealMatrix;-><init>(II)V

    goto :goto_0
.end method

.method public static createRealMatrix([[D)Lorg/apache/commons/math3/linear/RealMatrix;
    .locals 2
    .param p0, "data"    # [[D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;,
            Lorg/apache/commons/math3/exception/DimensionMismatchException;,
            Lorg/apache/commons/math3/exception/NoDataException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 130
    if-eqz p0, :cond_0

    aget-object v0, p0, v1

    if-nez v0, :cond_1

    .line 132
    :cond_0
    new-instance v0, Lorg/apache/commons/math3/exception/NullArgumentException;

    invoke-direct {v0}, Lorg/apache/commons/math3/exception/NullArgumentException;-><init>()V

    throw v0

    .line 134
    :cond_1
    array-length v0, p0

    aget-object v1, p0, v1

    array-length v1, v1

    mul-int/2addr v0, v1

    const/16 v1, 0x1000

    if-gt v0, v1, :cond_2

    new-instance v0, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    invoke-direct {v0, p0}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;-><init>([[D)V

    :goto_0
    return-object v0

    :cond_2
    new-instance v0, Lorg/apache/commons/math3/linear/BlockRealMatrix;

    invoke-direct {v0, p0}, Lorg/apache/commons/math3/linear/BlockRealMatrix;-><init>([[D)V

    goto :goto_0
.end method

.method public static createRealVector([D)Lorg/apache/commons/math3/linear/RealVector;
    .locals 2
    .param p0, "data"    # [D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NoDataException;,
            Lorg/apache/commons/math3/exception/NullArgumentException;
        }
    .end annotation

    .prologue
    .line 251
    if-nez p0, :cond_0

    .line 252
    new-instance v0, Lorg/apache/commons/math3/exception/NullArgumentException;

    invoke-direct {v0}, Lorg/apache/commons/math3/exception/NullArgumentException;-><init>()V

    throw v0

    .line 254
    :cond_0
    new-instance v0, Lorg/apache/commons/math3/linear/ArrayRealVector;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;-><init>([DZ)V

    return-object v0
.end method

.method public static createRowFieldMatrix([Lorg/apache/commons/math3/FieldElement;)Lorg/apache/commons/math3/linear/FieldMatrix;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lorg/apache/commons/math3/FieldElement",
            "<TT;>;>([TT;)",
            "Lorg/apache/commons/math3/linear/FieldMatrix",
            "<TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NoDataException;,
            Lorg/apache/commons/math3/exception/NullArgumentException;
        }
    .end annotation

    .prologue
    .local p0, "rowData":[Lorg/apache/commons/math3/FieldElement;, "[TT;"
    const/4 v5, 0x0

    .line 313
    if-nez p0, :cond_0

    .line 314
    new-instance v3, Lorg/apache/commons/math3/exception/NullArgumentException;

    invoke-direct {v3}, Lorg/apache/commons/math3/exception/NullArgumentException;-><init>()V

    throw v3

    .line 316
    :cond_0
    array-length v2, p0

    .line 317
    .local v2, "nCols":I
    if-nez v2, :cond_1

    .line 318
    new-instance v3, Lorg/apache/commons/math3/exception/NoDataException;

    sget-object v4, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->AT_LEAST_ONE_COLUMN:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-direct {v3, v4}, Lorg/apache/commons/math3/exception/NoDataException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;)V

    throw v3

    .line 320
    :cond_1
    aget-object v3, p0, v5

    invoke-interface {v3}, Lorg/apache/commons/math3/FieldElement;->getField()Lorg/apache/commons/math3/Field;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {v3, v4, v2}, Lorg/apache/commons/math3/linear/MatrixUtils;->createFieldMatrix(Lorg/apache/commons/math3/Field;II)Lorg/apache/commons/math3/linear/FieldMatrix;

    move-result-object v1

    .line 321
    .local v1, "m":Lorg/apache/commons/math3/linear/FieldMatrix;, "Lorg/apache/commons/math3/linear/FieldMatrix<TT;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_2

    .line 322
    aget-object v3, p0, v0

    invoke-interface {v1, v5, v0, v3}, Lorg/apache/commons/math3/linear/FieldMatrix;->setEntry(IILorg/apache/commons/math3/FieldElement;)V

    .line 321
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 324
    :cond_2
    return-object v1
.end method

.method public static createRowRealMatrix([D)Lorg/apache/commons/math3/linear/RealMatrix;
    .locals 6
    .param p0, "rowData"    # [D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NoDataException;,
            Lorg/apache/commons/math3/exception/NullArgumentException;
        }
    .end annotation

    .prologue
    .line 289
    if-nez p0, :cond_0

    .line 290
    new-instance v3, Lorg/apache/commons/math3/exception/NullArgumentException;

    invoke-direct {v3}, Lorg/apache/commons/math3/exception/NullArgumentException;-><init>()V

    throw v3

    .line 292
    :cond_0
    array-length v2, p0

    .line 293
    .local v2, "nCols":I
    const/4 v3, 0x1

    invoke-static {v3, v2}, Lorg/apache/commons/math3/linear/MatrixUtils;->createRealMatrix(II)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v1

    .line 294
    .local v1, "m":Lorg/apache/commons/math3/linear/RealMatrix;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_1

    .line 295
    const/4 v3, 0x0

    aget-wide v4, p0, v0

    invoke-interface {v1, v3, v0, v4, v5}, Lorg/apache/commons/math3/linear/RealMatrix;->setEntry(IID)V

    .line 294
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 297
    :cond_1
    return-object v1
.end method

.method public static deserializeRealMatrix(Ljava/lang/Object;Ljava/lang/String;Ljava/io/ObjectInputStream;)V
    .locals 14
    .param p0, "instance"    # Ljava/lang/Object;
    .param p1, "fieldName"    # Ljava/lang/String;
    .param p2, "ois"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 879
    :try_start_0
    invoke-virtual/range {p2 .. p2}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v9

    .line 880
    .local v9, "n":I
    invoke-virtual/range {p2 .. p2}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v7

    .line 881
    .local v7, "m":I
    filled-new-array {v9, v7}, [I

    move-result-object v11

    sget-object v12, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v12, v11}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[D

    .line 882
    .local v0, "data":[[D
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v9, :cond_1

    .line 883
    aget-object v1, v0, v3

    .line 884
    .local v1, "dataI":[D
    const/4 v6, 0x0

    .local v6, "j":I
    :goto_1
    if-ge v6, v7, :cond_0

    .line 885
    invoke-virtual/range {p2 .. p2}, Ljava/io/ObjectInputStream;->readDouble()D

    move-result-wide v12

    aput-wide v12, v1, v6

    .line 884
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 882
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 890
    .end local v1    # "dataI":[D
    .end local v6    # "j":I
    :cond_1
    new-instance v8, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    const/4 v11, 0x0

    invoke-direct {v8, v0, v11}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;-><init>([[DZ)V

    .line 893
    .local v8, "matrix":Lorg/apache/commons/math3/linear/RealMatrix;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 895
    .local v2, "f":Ljava/lang/reflect/Field;
    const/4 v11, 0x1

    invoke-virtual {v2, v11}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 896
    invoke-virtual {v2, p0, v8}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1

    .line 907
    return-void

    .line 898
    .end local v0    # "data":[[D
    .end local v2    # "f":Ljava/lang/reflect/Field;
    .end local v3    # "i":I
    .end local v7    # "m":I
    .end local v8    # "matrix":Lorg/apache/commons/math3/linear/RealMatrix;
    .end local v9    # "n":I
    :catch_0
    move-exception v10

    .line 899
    .local v10, "nsfe":Ljava/lang/NoSuchFieldException;
    new-instance v5, Ljava/io/IOException;

    invoke-direct {v5}, Ljava/io/IOException;-><init>()V

    .line 900
    .local v5, "ioe":Ljava/io/IOException;
    invoke-virtual {v5, v10}, Ljava/io/IOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 901
    throw v5

    .line 902
    .end local v5    # "ioe":Ljava/io/IOException;
    .end local v10    # "nsfe":Ljava/lang/NoSuchFieldException;
    :catch_1
    move-exception v4

    .line 903
    .local v4, "iae":Ljava/lang/IllegalAccessException;
    new-instance v5, Ljava/io/IOException;

    invoke-direct {v5}, Ljava/io/IOException;-><init>()V

    .line 904
    .restart local v5    # "ioe":Ljava/io/IOException;
    invoke-virtual {v5, v4}, Ljava/io/IOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 905
    throw v5
.end method

.method public static deserializeRealVector(Ljava/lang/Object;Ljava/lang/String;Ljava/io/ObjectInputStream;)V
    .locals 10
    .param p0, "instance"    # Ljava/lang/Object;
    .param p1, "fieldName"    # Ljava/lang/String;
    .param p2, "ois"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 774
    :try_start_0
    invoke-virtual {p2}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v5

    .line 775
    .local v5, "n":I
    new-array v0, v5, [D

    .line 776
    .local v0, "data":[D
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v5, :cond_0

    .line 777
    invoke-virtual {p2}, Ljava/io/ObjectInputStream;->readDouble()D

    move-result-wide v8

    aput-wide v8, v0, v2

    .line 776
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 781
    :cond_0
    new-instance v7, Lorg/apache/commons/math3/linear/ArrayRealVector;

    const/4 v8, 0x0

    invoke-direct {v7, v0, v8}, Lorg/apache/commons/math3/linear/ArrayRealVector;-><init>([DZ)V

    .line 784
    .local v7, "vector":Lorg/apache/commons/math3/linear/RealVector;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 786
    .local v1, "f":Ljava/lang/reflect/Field;
    const/4 v8, 0x1

    invoke-virtual {v1, v8}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 787
    invoke-virtual {v1, p0, v7}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1

    .line 799
    return-void

    .line 789
    .end local v0    # "data":[D
    .end local v1    # "f":Ljava/lang/reflect/Field;
    .end local v2    # "i":I
    .end local v5    # "n":I
    .end local v7    # "vector":Lorg/apache/commons/math3/linear/RealVector;
    :catch_0
    move-exception v6

    .line 790
    .local v6, "nsfe":Ljava/lang/NoSuchFieldException;
    new-instance v4, Ljava/io/IOException;

    invoke-direct {v4}, Ljava/io/IOException;-><init>()V

    .line 791
    .local v4, "ioe":Ljava/io/IOException;
    invoke-virtual {v4, v6}, Ljava/io/IOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 792
    throw v4

    .line 793
    .end local v4    # "ioe":Ljava/io/IOException;
    .end local v6    # "nsfe":Ljava/lang/NoSuchFieldException;
    :catch_1
    move-exception v3

    .line 794
    .local v3, "iae":Ljava/lang/IllegalAccessException;
    new-instance v4, Ljava/io/IOException;

    invoke-direct {v4}, Ljava/io/IOException;-><init>()V

    .line 795
    .restart local v4    # "ioe":Ljava/io/IOException;
    invoke-virtual {v4, v3}, Ljava/io/IOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 796
    throw v4
.end method

.method public static fractionMatrixToRealMatrix(Lorg/apache/commons/math3/linear/FieldMatrix;)Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/linear/FieldMatrix",
            "<",
            "Lorg/apache/commons/math3/fraction/Fraction;",
            ">;)",
            "Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;"
        }
    .end annotation

    .prologue
    .line 618
    .local p0, "m":Lorg/apache/commons/math3/linear/FieldMatrix;, "Lorg/apache/commons/math3/linear/FieldMatrix<Lorg/apache/commons/math3/fraction/Fraction;>;"
    new-instance v0, Lorg/apache/commons/math3/linear/MatrixUtils$FractionMatrixConverter;

    invoke-direct {v0}, Lorg/apache/commons/math3/linear/MatrixUtils$FractionMatrixConverter;-><init>()V

    .line 619
    .local v0, "converter":Lorg/apache/commons/math3/linear/MatrixUtils$FractionMatrixConverter;
    invoke-interface {p0, v0}, Lorg/apache/commons/math3/linear/FieldMatrix;->walkInOptimizedOrder(Lorg/apache/commons/math3/linear/FieldMatrixPreservingVisitor;)Lorg/apache/commons/math3/FieldElement;

    .line 620
    invoke-virtual {v0}, Lorg/apache/commons/math3/linear/MatrixUtils$FractionMatrixConverter;->getConvertedMatrix()Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    move-result-object v1

    return-object v1
.end method

.method public static inverse(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;
    .locals 2
    .param p0, "matrix"    # Lorg/apache/commons/math3/linear/RealMatrix;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;,
            Lorg/apache/commons/math3/linear/SingularMatrixException;,
            Lorg/apache/commons/math3/linear/NonSquareMatrixException;
        }
    .end annotation

    .prologue
    .line 1085
    const-wide/16 v0, 0x0

    invoke-static {p0, v0, v1}, Lorg/apache/commons/math3/linear/MatrixUtils;->inverse(Lorg/apache/commons/math3/linear/RealMatrix;D)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v0

    return-object v0
.end method

.method public static inverse(Lorg/apache/commons/math3/linear/RealMatrix;D)Lorg/apache/commons/math3/linear/RealMatrix;
    .locals 5
    .param p0, "matrix"    # Lorg/apache/commons/math3/linear/RealMatrix;
    .param p1, "threshold"    # D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;,
            Lorg/apache/commons/math3/linear/SingularMatrixException;,
            Lorg/apache/commons/math3/linear/NonSquareMatrixException;
        }
    .end annotation

    .prologue
    .line 1105
    invoke-static {p0}, Lorg/apache/commons/math3/util/MathUtils;->checkNotNull(Ljava/lang/Object;)V

    .line 1107
    invoke-interface {p0}, Lorg/apache/commons/math3/linear/RealMatrix;->isSquare()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1108
    new-instance v1, Lorg/apache/commons/math3/linear/NonSquareMatrixException;

    invoke-interface {p0}, Lorg/apache/commons/math3/linear/RealMatrix;->getRowDimension()I

    move-result v2

    invoke-interface {p0}, Lorg/apache/commons/math3/linear/RealMatrix;->getColumnDimension()I

    move-result v3

    invoke-direct {v1, v2, v3}, Lorg/apache/commons/math3/linear/NonSquareMatrixException;-><init>(II)V

    throw v1

    .line 1112
    :cond_0
    instance-of v1, p0, Lorg/apache/commons/math3/linear/DiagonalMatrix;

    if-eqz v1, :cond_1

    .line 1113
    check-cast p0, Lorg/apache/commons/math3/linear/DiagonalMatrix;

    .end local p0    # "matrix":Lorg/apache/commons/math3/linear/RealMatrix;
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/math3/linear/DiagonalMatrix;->inverse(D)Lorg/apache/commons/math3/linear/DiagonalMatrix;

    move-result-object v1

    .line 1116
    :goto_0
    return-object v1

    .line 1115
    .restart local p0    # "matrix":Lorg/apache/commons/math3/linear/RealMatrix;
    :cond_1
    new-instance v0, Lorg/apache/commons/math3/linear/QRDecomposition;

    invoke-direct {v0, p0, p1, p2}, Lorg/apache/commons/math3/linear/QRDecomposition;-><init>(Lorg/apache/commons/math3/linear/RealMatrix;D)V

    .line 1116
    .local v0, "decomposition":Lorg/apache/commons/math3/linear/QRDecomposition;
    invoke-virtual {v0}, Lorg/apache/commons/math3/linear/QRDecomposition;->getSolver()Lorg/apache/commons/math3/linear/DecompositionSolver;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/commons/math3/linear/DecompositionSolver;->getInverse()Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v1

    goto :goto_0
.end method

.method public static isSymmetric(Lorg/apache/commons/math3/linear/RealMatrix;D)Z
    .locals 1
    .param p0, "matrix"    # Lorg/apache/commons/math3/linear/RealMatrix;
    .param p1, "eps"    # D

    .prologue
    .line 439
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lorg/apache/commons/math3/linear/MatrixUtils;->isSymmetricInternal(Lorg/apache/commons/math3/linear/RealMatrix;DZ)Z

    move-result v0

    return v0
.end method

.method private static isSymmetricInternal(Lorg/apache/commons/math3/linear/RealMatrix;DZ)Z
    .locals 17
    .param p0, "matrix"    # Lorg/apache/commons/math3/linear/RealMatrix;
    .param p1, "relativeTolerance"    # D
    .param p3, "raiseException"    # Z

    .prologue
    .line 390
    invoke-interface/range {p0 .. p0}, Lorg/apache/commons/math3/linear/RealMatrix;->getRowDimension()I

    move-result v8

    .line 391
    .local v8, "rows":I
    invoke-interface/range {p0 .. p0}, Lorg/apache/commons/math3/linear/RealMatrix;->getColumnDimension()I

    move-result v9

    if-eq v8, v9, :cond_1

    .line 392
    if-eqz p3, :cond_0

    .line 393
    new-instance v9, Lorg/apache/commons/math3/linear/NonSquareMatrixException;

    invoke-interface/range {p0 .. p0}, Lorg/apache/commons/math3/linear/RealMatrix;->getColumnDimension()I

    move-result v10

    invoke-direct {v9, v8, v10}, Lorg/apache/commons/math3/linear/NonSquareMatrixException;-><init>(II)V

    throw v9

    .line 395
    :cond_0
    const/4 v9, 0x0

    .line 412
    :goto_0
    return v9

    .line 398
    :cond_1
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v8, :cond_5

    .line 399
    add-int/lit8 v3, v2, 0x1

    .local v3, "j":I
    :goto_2
    if-ge v3, v8, :cond_4

    .line 400
    move-object/from16 v0, p0

    invoke-interface {v0, v2, v3}, Lorg/apache/commons/math3/linear/RealMatrix;->getEntry(II)D

    move-result-wide v4

    .line 401
    .local v4, "mij":D
    move-object/from16 v0, p0

    invoke-interface {v0, v3, v2}, Lorg/apache/commons/math3/linear/RealMatrix;->getEntry(II)D

    move-result-wide v6

    .line 402
    .local v6, "mji":D
    sub-double v10, v4, v6

    invoke-static {v10, v11}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v10

    invoke-static {v4, v5}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v12

    invoke-static {v6, v7}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v14

    invoke-static {v12, v13, v14, v15}, Lorg/apache/commons/math3/util/FastMath;->max(DD)D

    move-result-wide v12

    mul-double v12, v12, p1

    cmpl-double v9, v10, v12

    if-lez v9, :cond_3

    .line 404
    if-eqz p3, :cond_2

    .line 405
    new-instance v9, Lorg/apache/commons/math3/linear/NonSymmetricMatrixException;

    move-wide/from16 v0, p1

    invoke-direct {v9, v2, v3, v0, v1}, Lorg/apache/commons/math3/linear/NonSymmetricMatrixException;-><init>(IID)V

    throw v9

    .line 407
    :cond_2
    const/4 v9, 0x0

    goto :goto_0

    .line 399
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 398
    .end local v4    # "mij":D
    .end local v6    # "mji":D
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 412
    .end local v3    # "j":I
    :cond_5
    const/4 v9, 0x1

    goto :goto_0
.end method

.method public static serializeRealMatrix(Lorg/apache/commons/math3/linear/RealMatrix;Ljava/io/ObjectOutputStream;)V
    .locals 6
    .param p0, "matrix"    # Lorg/apache/commons/math3/linear/RealMatrix;
    .param p1, "oos"    # Ljava/io/ObjectOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 844
    invoke-interface {p0}, Lorg/apache/commons/math3/linear/RealMatrix;->getRowDimension()I

    move-result v3

    .line 845
    .local v3, "n":I
    invoke-interface {p0}, Lorg/apache/commons/math3/linear/RealMatrix;->getColumnDimension()I

    move-result v2

    .line 846
    .local v2, "m":I
    invoke-virtual {p1, v3}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 847
    invoke-virtual {p1, v2}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 848
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v3, :cond_1

    .line 849
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_1
    if-ge v1, v2, :cond_0

    .line 850
    invoke-interface {p0, v0, v1}, Lorg/apache/commons/math3/linear/RealMatrix;->getEntry(II)D

    move-result-wide v4

    invoke-virtual {p1, v4, v5}, Ljava/io/ObjectOutputStream;->writeDouble(D)V

    .line 849
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 848
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 853
    .end local v1    # "j":I
    :cond_1
    return-void
.end method

.method public static serializeRealVector(Lorg/apache/commons/math3/linear/RealVector;Ljava/io/ObjectOutputStream;)V
    .locals 4
    .param p0, "vector"    # Lorg/apache/commons/math3/linear/RealVector;
    .param p1, "oos"    # Ljava/io/ObjectOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 743
    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/RealVector;->getDimension()I

    move-result v1

    .line 744
    .local v1, "n":I
    invoke-virtual {p1, v1}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 745
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 746
    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/linear/RealVector;->getEntry(I)D

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Ljava/io/ObjectOutputStream;->writeDouble(D)V

    .line 745
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 748
    :cond_0
    return-void
.end method

.method public static solveLowerTriangularSystem(Lorg/apache/commons/math3/linear/RealMatrix;Lorg/apache/commons/math3/linear/RealVector;)V
    .locals 12
    .param p0, "rm"    # Lorg/apache/commons/math3/linear/RealMatrix;
    .param p1, "b"    # Lorg/apache/commons/math3/linear/RealVector;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;,
            Lorg/apache/commons/math3/exception/MathArithmeticException;,
            Lorg/apache/commons/math3/linear/NonSquareMatrixException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 930
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    invoke-interface {p0}, Lorg/apache/commons/math3/linear/RealMatrix;->getRowDimension()I

    move-result v8

    invoke-virtual {p1}, Lorg/apache/commons/math3/linear/RealVector;->getDimension()I

    move-result v9

    if-eq v8, v9, :cond_3

    .line 931
    :cond_0
    new-instance v9, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    if-nez p0, :cond_1

    move v8, v7

    :goto_0
    if-nez p1, :cond_2

    :goto_1
    invoke-direct {v9, v8, v7}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v9

    :cond_1
    invoke-interface {p0}, Lorg/apache/commons/math3/linear/RealMatrix;->getRowDimension()I

    move-result v8

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Lorg/apache/commons/math3/linear/RealVector;->getDimension()I

    move-result v7

    goto :goto_1

    .line 935
    :cond_3
    invoke-interface {p0}, Lorg/apache/commons/math3/linear/RealMatrix;->getColumnDimension()I

    move-result v8

    invoke-interface {p0}, Lorg/apache/commons/math3/linear/RealMatrix;->getRowDimension()I

    move-result v9

    if-eq v8, v9, :cond_4

    .line 936
    new-instance v7, Lorg/apache/commons/math3/linear/NonSquareMatrixException;

    invoke-interface {p0}, Lorg/apache/commons/math3/linear/RealMatrix;->getRowDimension()I

    move-result v8

    invoke-interface {p0}, Lorg/apache/commons/math3/linear/RealMatrix;->getColumnDimension()I

    move-result v9

    invoke-direct {v7, v8, v9}, Lorg/apache/commons/math3/linear/NonSquareMatrixException;-><init>(II)V

    throw v7

    .line 939
    :cond_4
    invoke-interface {p0}, Lorg/apache/commons/math3/linear/RealMatrix;->getRowDimension()I

    move-result v6

    .line 940
    .local v6, "rows":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_2
    if-ge v4, v6, :cond_7

    .line 941
    invoke-interface {p0, v4, v4}, Lorg/apache/commons/math3/linear/RealMatrix;->getEntry(II)D

    move-result-wide v2

    .line 942
    .local v2, "diag":D
    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v8

    sget-wide v10, Lorg/apache/commons/math3/util/Precision;->SAFE_MIN:D

    cmpg-double v8, v8, v10

    if-gez v8, :cond_5

    .line 943
    new-instance v8, Lorg/apache/commons/math3/exception/MathArithmeticException;

    sget-object v9, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->ZERO_DENOMINATOR:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    new-array v7, v7, [Ljava/lang/Object;

    invoke-direct {v8, v9, v7}, Lorg/apache/commons/math3/exception/MathArithmeticException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v8

    .line 945
    :cond_5
    invoke-virtual {p1, v4}, Lorg/apache/commons/math3/linear/RealVector;->getEntry(I)D

    move-result-wide v8

    div-double v0, v8, v2

    .line 946
    .local v0, "bi":D
    invoke-virtual {p1, v4, v0, v1}, Lorg/apache/commons/math3/linear/RealVector;->setEntry(ID)V

    .line 947
    add-int/lit8 v5, v4, 0x1

    .local v5, "j":I
    :goto_3
    if-ge v5, v6, :cond_6

    .line 948
    invoke-virtual {p1, v5}, Lorg/apache/commons/math3/linear/RealVector;->getEntry(I)D

    move-result-wide v8

    invoke-interface {p0, v5, v4}, Lorg/apache/commons/math3/linear/RealMatrix;->getEntry(II)D

    move-result-wide v10

    mul-double/2addr v10, v0

    sub-double/2addr v8, v10

    invoke-virtual {p1, v5, v8, v9}, Lorg/apache/commons/math3/linear/RealVector;->setEntry(ID)V

    .line 947
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 940
    :cond_6
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 951
    .end local v0    # "bi":D
    .end local v2    # "diag":D
    .end local v5    # "j":I
    :cond_7
    return-void
.end method

.method public static solveUpperTriangularSystem(Lorg/apache/commons/math3/linear/RealMatrix;Lorg/apache/commons/math3/linear/RealVector;)V
    .locals 13
    .param p0, "rm"    # Lorg/apache/commons/math3/linear/RealMatrix;
    .param p1, "b"    # Lorg/apache/commons/math3/linear/RealVector;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;,
            Lorg/apache/commons/math3/exception/MathArithmeticException;,
            Lorg/apache/commons/math3/linear/NonSquareMatrixException;
        }
    .end annotation

    .prologue
    const/4 v12, -0x1

    const/4 v7, 0x0

    .line 975
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    invoke-interface {p0}, Lorg/apache/commons/math3/linear/RealMatrix;->getRowDimension()I

    move-result v8

    invoke-virtual {p1}, Lorg/apache/commons/math3/linear/RealVector;->getDimension()I

    move-result v9

    if-eq v8, v9, :cond_3

    .line 976
    :cond_0
    new-instance v9, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    if-nez p0, :cond_1

    move v8, v7

    :goto_0
    if-nez p1, :cond_2

    :goto_1
    invoke-direct {v9, v8, v7}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v9

    :cond_1
    invoke-interface {p0}, Lorg/apache/commons/math3/linear/RealMatrix;->getRowDimension()I

    move-result v8

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Lorg/apache/commons/math3/linear/RealVector;->getDimension()I

    move-result v7

    goto :goto_1

    .line 980
    :cond_3
    invoke-interface {p0}, Lorg/apache/commons/math3/linear/RealMatrix;->getColumnDimension()I

    move-result v8

    invoke-interface {p0}, Lorg/apache/commons/math3/linear/RealMatrix;->getRowDimension()I

    move-result v9

    if-eq v8, v9, :cond_4

    .line 981
    new-instance v7, Lorg/apache/commons/math3/linear/NonSquareMatrixException;

    invoke-interface {p0}, Lorg/apache/commons/math3/linear/RealMatrix;->getRowDimension()I

    move-result v8

    invoke-interface {p0}, Lorg/apache/commons/math3/linear/RealMatrix;->getColumnDimension()I

    move-result v9

    invoke-direct {v7, v8, v9}, Lorg/apache/commons/math3/linear/NonSquareMatrixException;-><init>(II)V

    throw v7

    .line 984
    :cond_4
    invoke-interface {p0}, Lorg/apache/commons/math3/linear/RealMatrix;->getRowDimension()I

    move-result v6

    .line 985
    .local v6, "rows":I
    add-int/lit8 v4, v6, -0x1

    .local v4, "i":I
    :goto_2
    if-le v4, v12, :cond_7

    .line 986
    invoke-interface {p0, v4, v4}, Lorg/apache/commons/math3/linear/RealMatrix;->getEntry(II)D

    move-result-wide v2

    .line 987
    .local v2, "diag":D
    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v8

    sget-wide v10, Lorg/apache/commons/math3/util/Precision;->SAFE_MIN:D

    cmpg-double v8, v8, v10

    if-gez v8, :cond_5

    .line 988
    new-instance v8, Lorg/apache/commons/math3/exception/MathArithmeticException;

    sget-object v9, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->ZERO_DENOMINATOR:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    new-array v7, v7, [Ljava/lang/Object;

    invoke-direct {v8, v9, v7}, Lorg/apache/commons/math3/exception/MathArithmeticException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v8

    .line 990
    :cond_5
    invoke-virtual {p1, v4}, Lorg/apache/commons/math3/linear/RealVector;->getEntry(I)D

    move-result-wide v8

    div-double v0, v8, v2

    .line 991
    .local v0, "bi":D
    invoke-virtual {p1, v4, v0, v1}, Lorg/apache/commons/math3/linear/RealVector;->setEntry(ID)V

    .line 992
    add-int/lit8 v5, v4, -0x1

    .local v5, "j":I
    :goto_3
    if-le v5, v12, :cond_6

    .line 993
    invoke-virtual {p1, v5}, Lorg/apache/commons/math3/linear/RealVector;->getEntry(I)D

    move-result-wide v8

    invoke-interface {p0, v5, v4}, Lorg/apache/commons/math3/linear/RealMatrix;->getEntry(II)D

    move-result-wide v10

    mul-double/2addr v10, v0

    sub-double/2addr v8, v10

    invoke-virtual {p1, v5, v8, v9}, Lorg/apache/commons/math3/linear/RealVector;->setEntry(ID)V

    .line 992
    add-int/lit8 v5, v5, -0x1

    goto :goto_3

    .line 985
    :cond_6
    add-int/lit8 v4, v4, -0x1

    goto :goto_2

    .line 996
    .end local v0    # "bi":D
    .end local v2    # "diag":D
    .end local v5    # "j":I
    :cond_7
    return-void
.end method
