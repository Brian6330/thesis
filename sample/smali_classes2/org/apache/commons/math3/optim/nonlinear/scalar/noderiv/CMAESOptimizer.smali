.class public Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;
.super Lorg/apache/commons/math3/optim/nonlinear/scalar/MultivariateOptimizer;
.source "CMAESOptimizer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer$FitnessFunction;,
        Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer$ValuePenaltyPair;,
        Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer$DoubleIndex;,
        Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer$PopulationSize;,
        Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer$Sigma;
    }
.end annotation


# instance fields
.field private B:Lorg/apache/commons/math3/linear/RealMatrix;

.field private BD:Lorg/apache/commons/math3/linear/RealMatrix;

.field private C:Lorg/apache/commons/math3/linear/RealMatrix;

.field private D:Lorg/apache/commons/math3/linear/RealMatrix;

.field private cc:D

.field private ccov1:D

.field private ccov1Sep:D

.field private ccovmu:D

.field private ccovmuSep:D

.field private final checkFeasableCount:I

.field private chiN:D

.field private cs:D

.field private damps:D

.field private diagC:Lorg/apache/commons/math3/linear/RealMatrix;

.field private diagD:Lorg/apache/commons/math3/linear/RealMatrix;

.field private diagonalOnly:I

.field private dimension:I

.field private fitnessHistory:[D

.field private final generateStatistics:Z

.field private historySize:I

.field private inputSigma:[D

.field private final isActiveCMA:Z

.field private isMinimize:Z

.field private iterations:I

.field private lambda:I

.field private logMu2:D

.field private final maxIterations:I

.field private mu:I

.field private mueff:D

.field private normps:D

.field private pc:Lorg/apache/commons/math3/linear/RealMatrix;

.field private ps:Lorg/apache/commons/math3/linear/RealMatrix;

.field private final random:Lorg/apache/commons/math3/random/RandomGenerator;

.field private sigma:D

.field private final statisticsDHistory:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/apache/commons/math3/linear/RealMatrix;",
            ">;"
        }
    .end annotation
.end field

.field private final statisticsFitnessHistory:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation
.end field

.field private final statisticsMeanHistory:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/apache/commons/math3/linear/RealMatrix;",
            ">;"
        }
    .end annotation
.end field

.field private final statisticsSigmaHistory:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation
.end field

.field private final stopFitness:D

.field private stopTolFun:D

.field private stopTolHistFun:D

.field private stopTolUpX:D

.field private stopTolX:D

.field private weights:Lorg/apache/commons/math3/linear/RealMatrix;

.field private xmean:Lorg/apache/commons/math3/linear/RealMatrix;


# direct methods
.method public constructor <init>(IDZIILorg/apache/commons/math3/random/RandomGenerator;ZLorg/apache/commons/math3/optim/ConvergenceChecker;)V
    .locals 2
    .param p1, "maxIterations"    # I
    .param p2, "stopFitness"    # D
    .param p4, "isActiveCMA"    # Z
    .param p5, "diagonalOnly"    # I
    .param p6, "checkFeasableCount"    # I
    .param p7, "random"    # Lorg/apache/commons/math3/random/RandomGenerator;
    .param p8, "generateStatistics"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IDZII",
            "Lorg/apache/commons/math3/random/RandomGenerator;",
            "Z",
            "Lorg/apache/commons/math3/optim/ConvergenceChecker",
            "<",
            "Lorg/apache/commons/math3/optim/PointValuePair;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 233
    .local p9, "checker":Lorg/apache/commons/math3/optim/ConvergenceChecker;, "Lorg/apache/commons/math3/optim/ConvergenceChecker<Lorg/apache/commons/math3/optim/PointValuePair;>;"
    invoke-direct {p0, p9}, Lorg/apache/commons/math3/optim/nonlinear/scalar/MultivariateOptimizer;-><init>(Lorg/apache/commons/math3/optim/ConvergenceChecker;)V

    .line 121
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->isMinimize:Z

    .line 202
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->statisticsSigmaHistory:Ljava/util/List;

    .line 204
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->statisticsMeanHistory:Ljava/util/List;

    .line 206
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->statisticsFitnessHistory:Ljava/util/List;

    .line 208
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->statisticsDHistory:Ljava/util/List;

    .line 234
    iput p1, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->maxIterations:I

    .line 235
    iput-wide p2, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->stopFitness:D

    .line 236
    iput-boolean p4, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->isActiveCMA:Z

    .line 237
    iput p5, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->diagonalOnly:I

    .line 238
    iput p6, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->checkFeasableCount:I

    .line 239
    iput-object p7, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->random:Lorg/apache/commons/math3/random/RandomGenerator;

    .line 240
    iput-boolean p8, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->generateStatistics:Z

    .line 241
    return-void
.end method

.method static synthetic access$400(Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;)Z
    .locals 1
    .param p0, "x0"    # Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;

    .prologue
    .line 81
    iget-boolean v0, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->isMinimize:Z

    return v0
.end method

.method private checkParameters()V
    .locals 12

    .prologue
    .line 559
    invoke-virtual {p0}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->getStartPoint()[D

    move-result-object v1

    .line 560
    .local v1, "init":[D
    invoke-virtual {p0}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->getLowerBound()[D

    move-result-object v2

    .line 561
    .local v2, "lB":[D
    invoke-virtual {p0}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->getUpperBound()[D

    move-result-object v3

    .line 563
    .local v3, "uB":[D
    iget-object v4, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->inputSigma:[D

    if-eqz v4, :cond_2

    .line 564
    iget-object v4, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->inputSigma:[D

    array-length v4, v4

    array-length v5, v1

    if-eq v4, v5, :cond_0

    .line 565
    new-instance v4, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    iget-object v5, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->inputSigma:[D

    array-length v5, v5

    array-length v6, v1

    invoke-direct {v4, v5, v6}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v4

    .line 567
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v4, v1

    if-ge v0, v4, :cond_2

    .line 568
    iget-object v4, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->inputSigma:[D

    aget-wide v4, v4, v0

    aget-wide v6, v3, v0

    aget-wide v8, v2, v0

    sub-double/2addr v6, v8

    cmpl-double v4, v4, v6

    if-lez v4, :cond_1

    .line 569
    new-instance v4, Lorg/apache/commons/math3/exception/OutOfRangeException;

    iget-object v5, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->inputSigma:[D

    aget-wide v6, v5, v0

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aget-wide v8, v3, v0

    aget-wide v10, v2, v0

    sub-double/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v7

    invoke-direct {v4, v5, v6, v7}, Lorg/apache/commons/math3/exception/OutOfRangeException;-><init>(Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;)V

    throw v4

    .line 567
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 573
    .end local v0    # "i":I
    :cond_2
    return-void
.end method

.method private static copyColumn(Lorg/apache/commons/math3/linear/RealMatrix;ILorg/apache/commons/math3/linear/RealMatrix;I)V
    .locals 4
    .param p0, "m1"    # Lorg/apache/commons/math3/linear/RealMatrix;
    .param p1, "col1"    # I
    .param p2, "m2"    # Lorg/apache/commons/math3/linear/RealMatrix;
    .param p3, "col2"    # I

    .prologue
    .line 1164
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {p0}, Lorg/apache/commons/math3/linear/RealMatrix;->getRowDimension()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 1165
    invoke-interface {p0, v0, p1}, Lorg/apache/commons/math3/linear/RealMatrix;->getEntry(II)D

    move-result-wide v2

    invoke-interface {p2, v0, p3, v2, v3}, Lorg/apache/commons/math3/linear/RealMatrix;->setEntry(IID)V

    .line 1164
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1167
    :cond_0
    return-void
.end method

.method private static diag(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;
    .locals 7
    .param p0, "m"    # Lorg/apache/commons/math3/linear/RealMatrix;

    .prologue
    const/4 v3, 0x1

    const/4 v6, 0x0

    .line 1139
    invoke-interface {p0}, Lorg/apache/commons/math3/linear/RealMatrix;->getColumnDimension()I

    move-result v2

    if-ne v2, v3, :cond_1

    .line 1140
    invoke-interface {p0}, Lorg/apache/commons/math3/linear/RealMatrix;->getRowDimension()I

    move-result v2

    invoke-interface {p0}, Lorg/apache/commons/math3/linear/RealMatrix;->getRowDimension()I

    move-result v3

    filled-new-array {v2, v3}, [I

    move-result-object v2

    sget-object v3, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v3, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[D

    .line 1141
    .local v0, "d":[[D
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {p0}, Lorg/apache/commons/math3/linear/RealMatrix;->getRowDimension()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 1142
    aget-object v2, v0, v1

    invoke-interface {p0, v1, v6}, Lorg/apache/commons/math3/linear/RealMatrix;->getEntry(II)D

    move-result-wide v4

    aput-wide v4, v2, v1

    .line 1141
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1144
    :cond_0
    new-instance v2, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    invoke-direct {v2, v0, v6}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;-><init>([[DZ)V

    .line 1150
    :goto_1
    return-object v2

    .line 1146
    .end local v0    # "d":[[D
    .end local v1    # "i":I
    :cond_1
    invoke-interface {p0}, Lorg/apache/commons/math3/linear/RealMatrix;->getRowDimension()I

    move-result v2

    filled-new-array {v2, v3}, [I

    move-result-object v2

    sget-object v3, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v3, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[D

    .line 1147
    .restart local v0    # "d":[[D
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_2
    invoke-interface {p0}, Lorg/apache/commons/math3/linear/RealMatrix;->getColumnDimension()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 1148
    aget-object v2, v0, v1

    invoke-interface {p0, v1, v1}, Lorg/apache/commons/math3/linear/RealMatrix;->getEntry(II)D

    move-result-wide v4

    aput-wide v4, v2, v6

    .line 1147
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1150
    :cond_2
    new-instance v2, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    invoke-direct {v2, v0, v6}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;-><init>([[DZ)V

    goto :goto_1
.end method

.method private static divide(Lorg/apache/commons/math3/linear/RealMatrix;Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;
    .locals 8
    .param p0, "m"    # Lorg/apache/commons/math3/linear/RealMatrix;
    .param p1, "n"    # Lorg/apache/commons/math3/linear/RealMatrix;

    .prologue
    .line 1078
    invoke-interface {p0}, Lorg/apache/commons/math3/linear/RealMatrix;->getRowDimension()I

    move-result v3

    invoke-interface {p0}, Lorg/apache/commons/math3/linear/RealMatrix;->getColumnDimension()I

    move-result v4

    filled-new-array {v3, v4}, [I

    move-result-object v3

    sget-object v4, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v4, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[D

    .line 1079
    .local v1, "d":[[D
    const/4 v2, 0x0

    .local v2, "r":I
    :goto_0
    invoke-interface {p0}, Lorg/apache/commons/math3/linear/RealMatrix;->getRowDimension()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 1080
    const/4 v0, 0x0

    .local v0, "c":I
    :goto_1
    invoke-interface {p0}, Lorg/apache/commons/math3/linear/RealMatrix;->getColumnDimension()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 1081
    aget-object v3, v1, v2

    invoke-interface {p0, v2, v0}, Lorg/apache/commons/math3/linear/RealMatrix;->getEntry(II)D

    move-result-wide v4

    invoke-interface {p1, v2, v0}, Lorg/apache/commons/math3/linear/RealMatrix;->getEntry(II)D

    move-result-wide v6

    div-double/2addr v4, v6

    aput-wide v4, v3, v0

    .line 1080
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1079
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1084
    .end local v0    # "c":I
    :cond_1
    new-instance v3, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    const/4 v4, 0x0

    invoke-direct {v3, v1, v4}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;-><init>([[DZ)V

    return-object v3
.end method

.method private static eye(II)Lorg/apache/commons/math3/linear/RealMatrix;
    .locals 6
    .param p0, "n"    # I
    .param p1, "m"    # I

    .prologue
    .line 1189
    filled-new-array {p0, p1}, [I

    move-result-object v2

    sget-object v3, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v3, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[D

    .line 1190
    .local v0, "d":[[D
    const/4 v1, 0x0

    .local v1, "r":I
    :goto_0
    if-ge v1, p0, :cond_1

    .line 1191
    if-ge v1, p1, :cond_0

    .line 1192
    aget-object v2, v0, v1

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    aput-wide v4, v2, v1

    .line 1190
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1195
    :cond_1
    new-instance v2, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v3}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;-><init>([[DZ)V

    return-object v2
.end method

.method private initializeCMA([D)V
    .locals 24
    .param p1, "guess"    # [D

    .prologue
    .line 581
    move-object/from16 v0, p0

    iget v2, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->lambda:I

    if-gtz v2, :cond_0

    .line 582
    new-instance v2, Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;

    move-object/from16 v0, p0

    iget v3, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->lambda:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;-><init>(Ljava/lang/Number;)V

    throw v2

    .line 585
    :cond_0
    move-object/from16 v0, p1

    array-length v2, v0

    const/4 v3, 0x1

    filled-new-array {v2, v3}, [I

    move-result-object v2

    sget-object v3, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v3, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [[D

    .line 586
    .local v10, "sigmaArray":[[D
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    move-object/from16 v0, p1

    array-length v2, v0

    if-ge v8, v2, :cond_1

    .line 587
    aget-object v2, v10, v8

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->inputSigma:[D

    aget-wide v4, v4, v8

    aput-wide v4, v2, v3

    .line 586
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 589
    :cond_1
    new-instance v9, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    const/4 v2, 0x0

    invoke-direct {v9, v10, v2}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;-><init>([[DZ)V

    .line 590
    .local v9, "insigma":Lorg/apache/commons/math3/linear/RealMatrix;
    invoke-static {v9}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->max(Lorg/apache/commons/math3/linear/RealMatrix;)D

    move-result-wide v2

    move-object/from16 v0, p0

    iput-wide v2, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->sigma:D

    .line 593
    const-wide v2, 0x408f400000000000L    # 1000.0

    invoke-static {v9}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->max(Lorg/apache/commons/math3/linear/RealMatrix;)D

    move-result-wide v4

    mul-double/2addr v2, v4

    move-object/from16 v0, p0

    iput-wide v2, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->stopTolUpX:D

    .line 594
    const-wide v2, 0x3da5fd7fe1796495L    # 1.0E-11

    invoke-static {v9}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->max(Lorg/apache/commons/math3/linear/RealMatrix;)D

    move-result-wide v4

    mul-double/2addr v2, v4

    move-object/from16 v0, p0

    iput-wide v2, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->stopTolX:D

    .line 595
    const-wide v2, 0x3d719799812dea11L    # 1.0E-12

    move-object/from16 v0, p0

    iput-wide v2, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->stopTolFun:D

    .line 596
    const-wide v2, 0x3d3c25c268497682L    # 1.0E-13

    move-object/from16 v0, p0

    iput-wide v2, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->stopTolHistFun:D

    .line 599
    move-object/from16 v0, p0

    iget v2, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->lambda:I

    div-int/lit8 v2, v2, 0x2

    move-object/from16 v0, p0

    iput v2, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->mu:I

    .line 600
    move-object/from16 v0, p0

    iget v2, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->mu:I

    int-to-double v2, v2

    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    add-double/2addr v2, v4

    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/FastMath;->log(D)D

    move-result-wide v2

    move-object/from16 v0, p0

    iput-wide v2, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->logMu2:D

    .line 601
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    move-object/from16 v0, p0

    iget v4, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->mu:I

    int-to-double v4, v4

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    invoke-static/range {v2 .. v7}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->sequence(DDD)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v2

    invoke-static {v2}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->log(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v2

    const-wide/high16 v4, -0x4010000000000000L    # -1.0

    invoke-interface {v2, v4, v5}, Lorg/apache/commons/math3/linear/RealMatrix;->scalarMultiply(D)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v2

    move-object/from16 v0, p0

    iget-wide v4, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->logMu2:D

    invoke-interface {v2, v4, v5}, Lorg/apache/commons/math3/linear/RealMatrix;->scalarAdd(D)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->weights:Lorg/apache/commons/math3/linear/RealMatrix;

    .line 602
    const-wide/16 v12, 0x0

    .line 603
    .local v12, "sumw":D
    const-wide/16 v14, 0x0

    .line 604
    .local v14, "sumwq":D
    const/4 v8, 0x0

    :goto_1
    move-object/from16 v0, p0

    iget v2, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->mu:I

    if-ge v8, v2, :cond_2

    .line 605
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->weights:Lorg/apache/commons/math3/linear/RealMatrix;

    const/4 v3, 0x0

    invoke-interface {v2, v8, v3}, Lorg/apache/commons/math3/linear/RealMatrix;->getEntry(II)D

    move-result-wide v16

    .line 606
    .local v16, "w":D
    add-double v12, v12, v16

    .line 607
    mul-double v2, v16, v16

    add-double/2addr v14, v2

    .line 604
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 609
    .end local v16    # "w":D
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->weights:Lorg/apache/commons/math3/linear/RealMatrix;

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    div-double/2addr v4, v12

    invoke-interface {v2, v4, v5}, Lorg/apache/commons/math3/linear/RealMatrix;->scalarMultiply(D)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->weights:Lorg/apache/commons/math3/linear/RealMatrix;

    .line 610
    mul-double v2, v12, v12

    div-double/2addr v2, v14

    move-object/from16 v0, p0

    iput-wide v2, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->mueff:D

    .line 613
    const-wide/high16 v2, 0x4010000000000000L    # 4.0

    move-object/from16 v0, p0

    iget-wide v4, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->mueff:D

    move-object/from16 v0, p0

    iget v6, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->dimension:I

    int-to-double v6, v6

    div-double/2addr v4, v6

    add-double/2addr v2, v4

    move-object/from16 v0, p0

    iget v4, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->dimension:I

    add-int/lit8 v4, v4, 0x4

    int-to-double v4, v4

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->mueff:D

    move-wide/from16 v18, v0

    mul-double v6, v6, v18

    move-object/from16 v0, p0

    iget v11, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->dimension:I

    int-to-double v0, v11

    move-wide/from16 v18, v0

    div-double v6, v6, v18

    add-double/2addr v4, v6

    div-double/2addr v2, v4

    move-object/from16 v0, p0

    iput-wide v2, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->cc:D

    .line 615
    move-object/from16 v0, p0

    iget-wide v2, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->mueff:D

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    add-double/2addr v2, v4

    move-object/from16 v0, p0

    iget v4, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->dimension:I

    int-to-double v4, v4

    move-object/from16 v0, p0

    iget-wide v6, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->mueff:D

    add-double/2addr v4, v6

    const-wide/high16 v6, 0x4008000000000000L    # 3.0

    add-double/2addr v4, v6

    div-double/2addr v2, v4

    move-object/from16 v0, p0

    iput-wide v2, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->cs:D

    .line 616
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    const-wide/16 v6, 0x0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->mueff:D

    move-wide/from16 v18, v0

    const-wide/high16 v20, 0x3ff0000000000000L    # 1.0

    sub-double v18, v18, v20

    move-object/from16 v0, p0

    iget v11, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->dimension:I

    add-int/lit8 v11, v11, 0x1

    int-to-double v0, v11

    move-wide/from16 v20, v0

    div-double v18, v18, v20

    invoke-static/range {v18 .. v19}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v18

    const-wide/high16 v20, 0x3ff0000000000000L    # 1.0

    sub-double v18, v18, v20

    move-wide/from16 v0, v18

    invoke-static {v6, v7, v0, v1}, Lorg/apache/commons/math3/util/FastMath;->max(DD)D

    move-result-wide v6

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    const-wide v4, 0x3fd3333333333333L    # 0.3

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    move-object/from16 v0, p0

    iget v11, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->dimension:I

    int-to-double v0, v11

    move-wide/from16 v18, v0

    const-wide v20, 0x3eb0c6f7a0b5ed8dL    # 1.0E-6

    move-object/from16 v0, p0

    iget v11, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->maxIterations:I

    int-to-double v0, v11

    move-wide/from16 v22, v0

    add-double v20, v20, v22

    div-double v18, v18, v20

    sub-double v6, v6, v18

    invoke-static {v4, v5, v6, v7}, Lorg/apache/commons/math3/util/FastMath;->max(DD)D

    move-result-wide v4

    mul-double/2addr v2, v4

    move-object/from16 v0, p0

    iget-wide v4, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->cs:D

    add-double/2addr v2, v4

    move-object/from16 v0, p0

    iput-wide v2, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->damps:D

    .line 620
    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    move-object/from16 v0, p0

    iget v4, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->dimension:I

    int-to-double v4, v4

    const-wide v6, 0x3ff4cccccccccccdL    # 1.3

    add-double/2addr v4, v6

    move-object/from16 v0, p0

    iget v6, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->dimension:I

    int-to-double v6, v6

    const-wide v18, 0x3ff4cccccccccccdL    # 1.3

    add-double v6, v6, v18

    mul-double/2addr v4, v6

    move-object/from16 v0, p0

    iget-wide v6, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->mueff:D

    add-double/2addr v4, v6

    div-double/2addr v2, v4

    move-object/from16 v0, p0

    iput-wide v2, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->ccov1:D

    .line 621
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    move-object/from16 v0, p0

    iget-wide v4, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->ccov1:D

    sub-double/2addr v2, v4

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    move-object/from16 v0, p0

    iget-wide v6, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->mueff:D

    const-wide/high16 v18, 0x4000000000000000L    # 2.0

    sub-double v6, v6, v18

    const-wide/high16 v18, 0x3ff0000000000000L    # 1.0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->mueff:D

    move-wide/from16 v20, v0

    div-double v18, v18, v20

    add-double v6, v6, v18

    mul-double/2addr v4, v6

    move-object/from16 v0, p0

    iget v6, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->dimension:I

    add-int/lit8 v6, v6, 0x2

    move-object/from16 v0, p0

    iget v7, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->dimension:I

    add-int/lit8 v7, v7, 0x2

    mul-int/2addr v6, v7

    int-to-double v6, v6

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->mueff:D

    move-wide/from16 v18, v0

    add-double v6, v6, v18

    div-double/2addr v4, v6

    invoke-static {v2, v3, v4, v5}, Lorg/apache/commons/math3/util/FastMath;->min(DD)D

    move-result-wide v2

    move-object/from16 v0, p0

    iput-wide v2, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->ccovmu:D

    .line 623
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    move-object/from16 v0, p0

    iget-wide v4, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->ccov1:D

    move-object/from16 v0, p0

    iget v6, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->dimension:I

    int-to-double v6, v6

    const-wide/high16 v18, 0x3ff8000000000000L    # 1.5

    add-double v6, v6, v18

    mul-double/2addr v4, v6

    const-wide/high16 v6, 0x4008000000000000L    # 3.0

    div-double/2addr v4, v6

    invoke-static {v2, v3, v4, v5}, Lorg/apache/commons/math3/util/FastMath;->min(DD)D

    move-result-wide v2

    move-object/from16 v0, p0

    iput-wide v2, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->ccov1Sep:D

    .line 624
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    move-object/from16 v0, p0

    iget-wide v4, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->ccov1:D

    sub-double/2addr v2, v4

    move-object/from16 v0, p0

    iget-wide v4, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->ccovmu:D

    move-object/from16 v0, p0

    iget v6, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->dimension:I

    int-to-double v6, v6

    const-wide/high16 v18, 0x3ff8000000000000L    # 1.5

    add-double v6, v6, v18

    mul-double/2addr v4, v6

    const-wide/high16 v6, 0x4008000000000000L    # 3.0

    div-double/2addr v4, v6

    invoke-static {v2, v3, v4, v5}, Lorg/apache/commons/math3/util/FastMath;->min(DD)D

    move-result-wide v2

    move-object/from16 v0, p0

    iput-wide v2, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->ccovmuSep:D

    .line 625
    move-object/from16 v0, p0

    iget v2, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->dimension:I

    int-to-double v2, v2

    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v2

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v18, 0x4010000000000000L    # 4.0

    move-object/from16 v0, p0

    iget v11, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->dimension:I

    int-to-double v0, v11

    move-wide/from16 v20, v0

    mul-double v18, v18, v20

    div-double v6, v6, v18

    sub-double/2addr v4, v6

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v18, 0x4035000000000000L    # 21.0

    move-object/from16 v0, p0

    iget v11, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->dimension:I

    int-to-double v0, v11

    move-wide/from16 v20, v0

    mul-double v18, v18, v20

    move-object/from16 v0, p0

    iget v11, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->dimension:I

    int-to-double v0, v11

    move-wide/from16 v20, v0

    mul-double v18, v18, v20

    div-double v6, v6, v18

    add-double/2addr v4, v6

    mul-double/2addr v2, v4

    move-object/from16 v0, p0

    iput-wide v2, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->chiN:D

    .line 628
    invoke-static/range {p1 .. p1}, Lorg/apache/commons/math3/linear/MatrixUtils;->createColumnRealMatrix([D)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->xmean:Lorg/apache/commons/math3/linear/RealMatrix;

    .line 629
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    move-object/from16 v0, p0

    iget-wide v4, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->sigma:D

    div-double/2addr v2, v4

    invoke-interface {v9, v2, v3}, Lorg/apache/commons/math3/linear/RealMatrix;->scalarMultiply(D)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->diagD:Lorg/apache/commons/math3/linear/RealMatrix;

    .line 630
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->diagD:Lorg/apache/commons/math3/linear/RealMatrix;

    invoke-static {v2}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->square(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->diagC:Lorg/apache/commons/math3/linear/RealMatrix;

    .line 631
    move-object/from16 v0, p0

    iget v2, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->dimension:I

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->zeros(II)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->pc:Lorg/apache/commons/math3/linear/RealMatrix;

    .line 632
    move-object/from16 v0, p0

    iget v2, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->dimension:I

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->zeros(II)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->ps:Lorg/apache/commons/math3/linear/RealMatrix;

    .line 633
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->ps:Lorg/apache/commons/math3/linear/RealMatrix;

    invoke-interface {v2}, Lorg/apache/commons/math3/linear/RealMatrix;->getFrobeniusNorm()D

    move-result-wide v2

    move-object/from16 v0, p0

    iput-wide v2, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->normps:D

    .line 635
    move-object/from16 v0, p0

    iget v2, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->dimension:I

    move-object/from16 v0, p0

    iget v3, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->dimension:I

    invoke-static {v2, v3}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->eye(II)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->B:Lorg/apache/commons/math3/linear/RealMatrix;

    .line 636
    move-object/from16 v0, p0

    iget v2, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->dimension:I

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->ones(II)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->D:Lorg/apache/commons/math3/linear/RealMatrix;

    .line 637
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->B:Lorg/apache/commons/math3/linear/RealMatrix;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->diagD:Lorg/apache/commons/math3/linear/RealMatrix;

    invoke-interface {v3}, Lorg/apache/commons/math3/linear/RealMatrix;->transpose()Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->dimension:I

    const/4 v5, 0x1

    invoke-static {v3, v4, v5}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->repmat(Lorg/apache/commons/math3/linear/RealMatrix;II)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->times(Lorg/apache/commons/math3/linear/RealMatrix;Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->BD:Lorg/apache/commons/math3/linear/RealMatrix;

    .line 638
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->B:Lorg/apache/commons/math3/linear/RealMatrix;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->D:Lorg/apache/commons/math3/linear/RealMatrix;

    invoke-static {v3}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->square(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v3

    invoke-static {v3}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->diag(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->B:Lorg/apache/commons/math3/linear/RealMatrix;

    invoke-interface {v4}, Lorg/apache/commons/math3/linear/RealMatrix;->transpose()Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/apache/commons/math3/linear/RealMatrix;->multiply(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/apache/commons/math3/linear/RealMatrix;->multiply(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->C:Lorg/apache/commons/math3/linear/RealMatrix;

    .line 639
    move-object/from16 v0, p0

    iget v2, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->dimension:I

    mul-int/lit8 v2, v2, 0x1e

    int-to-double v2, v2

    move-object/from16 v0, p0

    iget v4, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->lambda:I

    int-to-double v4, v4

    div-double/2addr v2, v4

    double-to-int v2, v2

    add-int/lit8 v2, v2, 0xa

    move-object/from16 v0, p0

    iput v2, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->historySize:I

    .line 640
    move-object/from16 v0, p0

    iget v2, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->historySize:I

    new-array v2, v2, [D

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->fitnessHistory:[D

    .line 641
    const/4 v8, 0x0

    :goto_2
    move-object/from16 v0, p0

    iget v2, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->historySize:I

    if-ge v8, v2, :cond_3

    .line 642
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->fitnessHistory:[D

    const-wide v4, 0x7fefffffffffffffL    # Double.MAX_VALUE

    aput-wide v4, v2, v8

    .line 641
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 644
    :cond_3
    return-void
.end method

.method private static inverse([I)[I
    .locals 3
    .param p0, "indices"    # [I

    .prologue
    .line 1309
    array-length v2, p0

    new-array v1, v2, [I

    .line 1310
    .local v1, "inverse":[I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_0

    .line 1311
    aget v2, p0, v0

    aput v0, v1, v2

    .line 1310
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1313
    :cond_0
    return-object v1
.end method

.method private static log(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;
    .locals 6
    .param p0, "m"    # Lorg/apache/commons/math3/linear/RealMatrix;

    .prologue
    .line 1019
    invoke-interface {p0}, Lorg/apache/commons/math3/linear/RealMatrix;->getRowDimension()I

    move-result v3

    invoke-interface {p0}, Lorg/apache/commons/math3/linear/RealMatrix;->getColumnDimension()I

    move-result v4

    filled-new-array {v3, v4}, [I

    move-result-object v3

    sget-object v4, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v4, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[D

    .line 1020
    .local v1, "d":[[D
    const/4 v2, 0x0

    .local v2, "r":I
    :goto_0
    invoke-interface {p0}, Lorg/apache/commons/math3/linear/RealMatrix;->getRowDimension()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 1021
    const/4 v0, 0x0

    .local v0, "c":I
    :goto_1
    invoke-interface {p0}, Lorg/apache/commons/math3/linear/RealMatrix;->getColumnDimension()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 1022
    aget-object v3, v1, v2

    invoke-interface {p0, v2, v0}, Lorg/apache/commons/math3/linear/RealMatrix;->getEntry(II)D

    move-result-wide v4

    invoke-static {v4, v5}, Lorg/apache/commons/math3/util/FastMath;->log(D)D

    move-result-wide v4

    aput-wide v4, v3, v0

    .line 1021
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1020
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1025
    .end local v0    # "c":I
    :cond_1
    new-instance v3, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    const/4 v4, 0x0

    invoke-direct {v3, v1, v4}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;-><init>([[DZ)V

    return-object v3
.end method

.method private static max(Lorg/apache/commons/math3/linear/RealMatrix;)D
    .locals 7
    .param p0, "m"    # Lorg/apache/commons/math3/linear/RealMatrix;

    .prologue
    .line 1247
    const-wide v4, -0x10000000000001L

    .line 1248
    .local v4, "max":D
    const/4 v1, 0x0

    .local v1, "r":I
    :goto_0
    invoke-interface {p0}, Lorg/apache/commons/math3/linear/RealMatrix;->getRowDimension()I

    move-result v6

    if-ge v1, v6, :cond_2

    .line 1249
    const/4 v0, 0x0

    .local v0, "c":I
    :goto_1
    invoke-interface {p0}, Lorg/apache/commons/math3/linear/RealMatrix;->getColumnDimension()I

    move-result v6

    if-ge v0, v6, :cond_1

    .line 1250
    invoke-interface {p0, v1, v0}, Lorg/apache/commons/math3/linear/RealMatrix;->getEntry(II)D

    move-result-wide v2

    .line 1251
    .local v2, "e":D
    cmpg-double v6, v4, v2

    if-gez v6, :cond_0

    .line 1252
    move-wide v4, v2

    .line 1249
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1248
    .end local v2    # "e":D
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1256
    .end local v0    # "c":I
    :cond_2
    return-wide v4
.end method

.method private static max([D)D
    .locals 6
    .param p0, "m"    # [D

    .prologue
    .line 1281
    const-wide v0, -0x10000000000001L

    .line 1282
    .local v0, "max":D
    const/4 v2, 0x0

    .local v2, "r":I
    :goto_0
    array-length v3, p0

    if-ge v2, v3, :cond_1

    .line 1283
    aget-wide v4, p0, v2

    cmpg-double v3, v0, v4

    if-gez v3, :cond_0

    .line 1284
    aget-wide v0, p0, v2

    .line 1282
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1287
    :cond_1
    return-wide v0
.end method

.method private static min(Lorg/apache/commons/math3/linear/RealMatrix;)D
    .locals 7
    .param p0, "m"    # Lorg/apache/commons/math3/linear/RealMatrix;

    .prologue
    .line 1264
    const-wide v4, 0x7fefffffffffffffL    # Double.MAX_VALUE

    .line 1265
    .local v4, "min":D
    const/4 v1, 0x0

    .local v1, "r":I
    :goto_0
    invoke-interface {p0}, Lorg/apache/commons/math3/linear/RealMatrix;->getRowDimension()I

    move-result v6

    if-ge v1, v6, :cond_2

    .line 1266
    const/4 v0, 0x0

    .local v0, "c":I
    :goto_1
    invoke-interface {p0}, Lorg/apache/commons/math3/linear/RealMatrix;->getColumnDimension()I

    move-result v6

    if-ge v0, v6, :cond_1

    .line 1267
    invoke-interface {p0, v1, v0}, Lorg/apache/commons/math3/linear/RealMatrix;->getEntry(II)D

    move-result-wide v2

    .line 1268
    .local v2, "e":D
    cmpl-double v6, v4, v2

    if-lez v6, :cond_0

    .line 1269
    move-wide v4, v2

    .line 1266
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1265
    .end local v2    # "e":D
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1273
    .end local v0    # "c":I
    :cond_2
    return-wide v4
.end method

.method private static min([D)D
    .locals 6
    .param p0, "m"    # [D

    .prologue
    .line 1295
    const-wide v0, 0x7fefffffffffffffL    # Double.MAX_VALUE

    .line 1296
    .local v0, "min":D
    const/4 v2, 0x0

    .local v2, "r":I
    :goto_0
    array-length v3, p0

    if-ge v2, v3, :cond_1

    .line 1297
    aget-wide v4, p0, v2

    cmpl-double v3, v0, v4

    if-lez v3, :cond_0

    .line 1298
    aget-wide v0, p0, v2

    .line 1296
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1301
    :cond_1
    return-wide v0
.end method

.method private static ones(II)Lorg/apache/commons/math3/linear/RealMatrix;
    .locals 6
    .param p0, "n"    # I
    .param p1, "m"    # I

    .prologue
    .line 1175
    filled-new-array {p0, p1}, [I

    move-result-object v2

    sget-object v3, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v3, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[D

    .line 1176
    .local v0, "d":[[D
    const/4 v1, 0x0

    .local v1, "r":I
    :goto_0
    if-ge v1, p0, :cond_0

    .line 1177
    aget-object v2, v0, v1

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    invoke-static {v2, v4, v5}, Ljava/util/Arrays;->fill([DD)V

    .line 1176
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1179
    :cond_0
    new-instance v2, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v3}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;-><init>([[DZ)V

    return-object v2
.end method

.method private static push([DD)V
    .locals 5
    .param p0, "vals"    # [D
    .param p1, "val"    # D

    .prologue
    .line 811
    array-length v1, p0

    add-int/lit8 v0, v1, -0x1

    .local v0, "i":I
    :goto_0
    if-lez v0, :cond_0

    .line 812
    add-int/lit8 v1, v0, -0x1

    aget-wide v2, p0, v1

    aput-wide v2, p0, v0

    .line 811
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 814
    :cond_0
    const/4 v1, 0x0

    aput-wide p1, p0, v1

    .line 815
    return-void
.end method

.method private randn(I)[D
    .locals 4
    .param p1, "size"    # I

    .prologue
    .line 1333
    new-array v1, p1, [D

    .line 1334
    .local v1, "randn":[D
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p1, :cond_0

    .line 1335
    iget-object v2, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->random:Lorg/apache/commons/math3/random/RandomGenerator;

    invoke-interface {v2}, Lorg/apache/commons/math3/random/RandomGenerator;->nextGaussian()D

    move-result-wide v2

    aput-wide v2, v1, v0

    .line 1334
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1337
    :cond_0
    return-object v1
.end method

.method private randn1(II)Lorg/apache/commons/math3/linear/RealMatrix;
    .locals 6
    .param p1, "size"    # I
    .param p2, "popSize"    # I

    .prologue
    .line 1346
    filled-new-array {p1, p2}, [I

    move-result-object v3

    sget-object v4, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v4, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[D

    .line 1347
    .local v1, "d":[[D
    const/4 v2, 0x0

    .local v2, "r":I
    :goto_0
    if-ge v2, p1, :cond_1

    .line 1348
    const/4 v0, 0x0

    .local v0, "c":I
    :goto_1
    if-ge v0, p2, :cond_0

    .line 1349
    aget-object v3, v1, v2

    iget-object v4, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->random:Lorg/apache/commons/math3/random/RandomGenerator;

    invoke-interface {v4}, Lorg/apache/commons/math3/random/RandomGenerator;->nextGaussian()D

    move-result-wide v4

    aput-wide v4, v3, v0

    .line 1348
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1347
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1352
    .end local v0    # "c":I
    :cond_1
    new-instance v3, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    const/4 v4, 0x0

    invoke-direct {v3, v1, v4}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;-><init>([[DZ)V

    return-object v3
.end method

.method private static repmat(Lorg/apache/commons/math3/linear/RealMatrix;II)Lorg/apache/commons/math3/linear/RealMatrix;
    .locals 8
    .param p0, "mat"    # Lorg/apache/commons/math3/linear/RealMatrix;
    .param p1, "n"    # I
    .param p2, "m"    # I

    .prologue
    .line 1214
    invoke-interface {p0}, Lorg/apache/commons/math3/linear/RealMatrix;->getRowDimension()I

    move-result v4

    .line 1215
    .local v4, "rd":I
    invoke-interface {p0}, Lorg/apache/commons/math3/linear/RealMatrix;->getColumnDimension()I

    move-result v1

    .line 1216
    .local v1, "cd":I
    mul-int v5, p1, v4

    mul-int v6, p2, v1

    filled-new-array {v5, v6}, [I

    move-result-object v5

    sget-object v6, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v6, v5}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [[D

    .line 1217
    .local v2, "d":[[D
    const/4 v3, 0x0

    .local v3, "r":I
    :goto_0
    mul-int v5, p1, v4

    if-ge v3, v5, :cond_1

    .line 1218
    const/4 v0, 0x0

    .local v0, "c":I
    :goto_1
    mul-int v5, p2, v1

    if-ge v0, v5, :cond_0

    .line 1219
    aget-object v5, v2, v3

    rem-int v6, v3, v4

    rem-int v7, v0, v1

    invoke-interface {p0, v6, v7}, Lorg/apache/commons/math3/linear/RealMatrix;->getEntry(II)D

    move-result-wide v6

    aput-wide v6, v5, v0

    .line 1218
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1217
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1222
    .end local v0    # "c":I
    :cond_1
    new-instance v5, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    const/4 v6, 0x0

    invoke-direct {v5, v2, v6}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;-><init>([[DZ)V

    return-object v5
.end method

.method private static reverse([I)[I
    .locals 3
    .param p0, "indices"    # [I

    .prologue
    .line 1321
    array-length v2, p0

    new-array v1, v2, [I

    .line 1322
    .local v1, "reverse":[I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_0

    .line 1323
    array-length v2, p0

    sub-int/2addr v2, v0

    add-int/lit8 v2, v2, -0x1

    aget v2, p0, v2

    aput v2, v1, v0

    .line 1322
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1325
    :cond_0
    return-object v1
.end method

.method private static selectColumns(Lorg/apache/commons/math3/linear/RealMatrix;[I)Lorg/apache/commons/math3/linear/RealMatrix;
    .locals 6
    .param p0, "m"    # Lorg/apache/commons/math3/linear/RealMatrix;
    .param p1, "cols"    # [I

    .prologue
    .line 1093
    invoke-interface {p0}, Lorg/apache/commons/math3/linear/RealMatrix;->getRowDimension()I

    move-result v3

    array-length v4, p1

    filled-new-array {v3, v4}, [I

    move-result-object v3

    sget-object v4, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v4, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[D

    .line 1094
    .local v1, "d":[[D
    const/4 v2, 0x0

    .local v2, "r":I
    :goto_0
    invoke-interface {p0}, Lorg/apache/commons/math3/linear/RealMatrix;->getRowDimension()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 1095
    const/4 v0, 0x0

    .local v0, "c":I
    :goto_1
    array-length v3, p1

    if-ge v0, v3, :cond_0

    .line 1096
    aget-object v3, v1, v2

    aget v4, p1, v0

    invoke-interface {p0, v2, v4}, Lorg/apache/commons/math3/linear/RealMatrix;->getEntry(II)D

    move-result-wide v4

    aput-wide v4, v3, v0

    .line 1095
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1094
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1099
    .end local v0    # "c":I
    :cond_1
    new-instance v3, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    const/4 v4, 0x0

    invoke-direct {v3, v1, v4}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;-><init>([[DZ)V

    return-object v3
.end method

.method private static sequence(DDD)Lorg/apache/commons/math3/linear/RealMatrix;
    .locals 10
    .param p0, "start"    # D
    .param p2, "end"    # D
    .param p4, "step"    # D

    .prologue
    .line 1232
    sub-double v6, p2, p0

    div-double/2addr v6, p4

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    add-double/2addr v6, v8

    double-to-int v2, v6

    .line 1233
    .local v2, "size":I
    const/4 v3, 0x1

    filled-new-array {v2, v3}, [I

    move-result-object v3

    sget-object v6, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v6, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[D

    .line 1234
    .local v0, "d":[[D
    move-wide v4, p0

    .line 1235
    .local v4, "value":D
    const/4 v1, 0x0

    .local v1, "r":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 1236
    aget-object v3, v0, v1

    const/4 v6, 0x0

    aput-wide v4, v3, v6

    .line 1237
    add-double/2addr v4, p4

    .line 1235
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1239
    :cond_0
    new-instance v3, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    const/4 v6, 0x0

    invoke-direct {v3, v0, v6}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;-><init>([[DZ)V

    return-object v3
.end method

.method private sortedIndices([D)[I
    .locals 6
    .param p1, "doubles"    # [D

    .prologue
    .line 824
    array-length v3, p1

    new-array v0, v3, [Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer$DoubleIndex;

    .line 825
    .local v0, "dis":[Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer$DoubleIndex;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v3, p1

    if-ge v1, v3, :cond_0

    .line 826
    new-instance v3, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer$DoubleIndex;

    aget-wide v4, p1, v1

    invoke-direct {v3, v4, v5, v1}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer$DoubleIndex;-><init>(DI)V

    aput-object v3, v0, v1

    .line 825
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 828
    :cond_0
    invoke-static {v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 829
    array-length v3, p1

    new-array v2, v3, [I

    .line 830
    .local v2, "indices":[I
    const/4 v1, 0x0

    :goto_1
    array-length v3, p1

    if-ge v1, v3, :cond_1

    .line 831
    aget-object v3, v0, v1

    # getter for: Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer$DoubleIndex;->index:I
    invoke-static {v3}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer$DoubleIndex;->access$300(Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer$DoubleIndex;)I

    move-result v3

    aput v3, v2, v1

    .line 830
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 833
    :cond_1
    return-object v2
.end method

.method private static sqrt(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;
    .locals 6
    .param p0, "m"    # Lorg/apache/commons/math3/linear/RealMatrix;

    .prologue
    .line 1033
    invoke-interface {p0}, Lorg/apache/commons/math3/linear/RealMatrix;->getRowDimension()I

    move-result v3

    invoke-interface {p0}, Lorg/apache/commons/math3/linear/RealMatrix;->getColumnDimension()I

    move-result v4

    filled-new-array {v3, v4}, [I

    move-result-object v3

    sget-object v4, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v4, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[D

    .line 1034
    .local v1, "d":[[D
    const/4 v2, 0x0

    .local v2, "r":I
    :goto_0
    invoke-interface {p0}, Lorg/apache/commons/math3/linear/RealMatrix;->getRowDimension()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 1035
    const/4 v0, 0x0

    .local v0, "c":I
    :goto_1
    invoke-interface {p0}, Lorg/apache/commons/math3/linear/RealMatrix;->getColumnDimension()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 1036
    aget-object v3, v1, v2

    invoke-interface {p0, v2, v0}, Lorg/apache/commons/math3/linear/RealMatrix;->getEntry(II)D

    move-result-wide v4

    invoke-static {v4, v5}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v4

    aput-wide v4, v3, v0

    .line 1035
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1034
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1039
    .end local v0    # "c":I
    :cond_1
    new-instance v3, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    const/4 v4, 0x0

    invoke-direct {v3, v1, v4}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;-><init>([[DZ)V

    return-object v3
.end method

.method private static square(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;
    .locals 8
    .param p0, "m"    # Lorg/apache/commons/math3/linear/RealMatrix;

    .prologue
    .line 1047
    invoke-interface {p0}, Lorg/apache/commons/math3/linear/RealMatrix;->getRowDimension()I

    move-result v5

    invoke-interface {p0}, Lorg/apache/commons/math3/linear/RealMatrix;->getColumnDimension()I

    move-result v6

    filled-new-array {v5, v6}, [I

    move-result-object v5

    sget-object v6, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v6, v5}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[D

    .line 1048
    .local v1, "d":[[D
    const/4 v4, 0x0

    .local v4, "r":I
    :goto_0
    invoke-interface {p0}, Lorg/apache/commons/math3/linear/RealMatrix;->getRowDimension()I

    move-result v5

    if-ge v4, v5, :cond_1

    .line 1049
    const/4 v0, 0x0

    .local v0, "c":I
    :goto_1
    invoke-interface {p0}, Lorg/apache/commons/math3/linear/RealMatrix;->getColumnDimension()I

    move-result v5

    if-ge v0, v5, :cond_0

    .line 1050
    invoke-interface {p0, v4, v0}, Lorg/apache/commons/math3/linear/RealMatrix;->getEntry(II)D

    move-result-wide v2

    .line 1051
    .local v2, "e":D
    aget-object v5, v1, v4

    mul-double v6, v2, v2

    aput-wide v6, v5, v0

    .line 1049
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1048
    .end local v2    # "e":D
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1054
    .end local v0    # "c":I
    :cond_1
    new-instance v5, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    const/4 v6, 0x0

    invoke-direct {v5, v1, v6}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;-><init>([[DZ)V

    return-object v5
.end method

.method private static sumRows(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;
    .locals 9
    .param p0, "m"    # Lorg/apache/commons/math3/linear/RealMatrix;

    .prologue
    const/4 v8, 0x0

    .line 1122
    const/4 v3, 0x1

    invoke-interface {p0}, Lorg/apache/commons/math3/linear/RealMatrix;->getColumnDimension()I

    move-result v6

    filled-new-array {v3, v6}, [I

    move-result-object v3

    sget-object v6, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v6, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[D

    .line 1123
    .local v1, "d":[[D
    const/4 v0, 0x0

    .local v0, "c":I
    :goto_0
    invoke-interface {p0}, Lorg/apache/commons/math3/linear/RealMatrix;->getColumnDimension()I

    move-result v3

    if-ge v0, v3, :cond_1

    .line 1124
    const-wide/16 v4, 0x0

    .line 1125
    .local v4, "sum":D
    const/4 v2, 0x0

    .local v2, "r":I
    :goto_1
    invoke-interface {p0}, Lorg/apache/commons/math3/linear/RealMatrix;->getRowDimension()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 1126
    invoke-interface {p0, v2, v0}, Lorg/apache/commons/math3/linear/RealMatrix;->getEntry(II)D

    move-result-wide v6

    add-double/2addr v4, v6

    .line 1125
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1128
    :cond_0
    aget-object v3, v1, v8

    aput-wide v4, v3, v0

    .line 1123
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1130
    .end local v2    # "r":I
    .end local v4    # "sum":D
    :cond_1
    new-instance v3, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    invoke-direct {v3, v1, v8}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;-><init>([[DZ)V

    return-object v3
.end method

.method private static times(Lorg/apache/commons/math3/linear/RealMatrix;Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;
    .locals 8
    .param p0, "m"    # Lorg/apache/commons/math3/linear/RealMatrix;
    .param p1, "n"    # Lorg/apache/commons/math3/linear/RealMatrix;

    .prologue
    .line 1063
    invoke-interface {p0}, Lorg/apache/commons/math3/linear/RealMatrix;->getRowDimension()I

    move-result v3

    invoke-interface {p0}, Lorg/apache/commons/math3/linear/RealMatrix;->getColumnDimension()I

    move-result v4

    filled-new-array {v3, v4}, [I

    move-result-object v3

    sget-object v4, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v4, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[D

    .line 1064
    .local v1, "d":[[D
    const/4 v2, 0x0

    .local v2, "r":I
    :goto_0
    invoke-interface {p0}, Lorg/apache/commons/math3/linear/RealMatrix;->getRowDimension()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 1065
    const/4 v0, 0x0

    .local v0, "c":I
    :goto_1
    invoke-interface {p0}, Lorg/apache/commons/math3/linear/RealMatrix;->getColumnDimension()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 1066
    aget-object v3, v1, v2

    invoke-interface {p0, v2, v0}, Lorg/apache/commons/math3/linear/RealMatrix;->getEntry(II)D

    move-result-wide v4

    invoke-interface {p1, v2, v0}, Lorg/apache/commons/math3/linear/RealMatrix;->getEntry(II)D

    move-result-wide v6

    mul-double/2addr v4, v6

    aput-wide v4, v3, v0

    .line 1065
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1064
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1069
    .end local v0    # "c":I
    :cond_1
    new-instance v3, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    const/4 v4, 0x0

    invoke-direct {v3, v1, v4}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;-><init>([[DZ)V

    return-object v3
.end method

.method private static triu(Lorg/apache/commons/math3/linear/RealMatrix;I)Lorg/apache/commons/math3/linear/RealMatrix;
    .locals 6
    .param p0, "m"    # Lorg/apache/commons/math3/linear/RealMatrix;
    .param p1, "k"    # I

    .prologue
    .line 1108
    invoke-interface {p0}, Lorg/apache/commons/math3/linear/RealMatrix;->getRowDimension()I

    move-result v3

    invoke-interface {p0}, Lorg/apache/commons/math3/linear/RealMatrix;->getColumnDimension()I

    move-result v4

    filled-new-array {v3, v4}, [I

    move-result-object v3

    sget-object v4, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v4, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[D

    .line 1109
    .local v1, "d":[[D
    const/4 v2, 0x0

    .local v2, "r":I
    :goto_0
    invoke-interface {p0}, Lorg/apache/commons/math3/linear/RealMatrix;->getRowDimension()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 1110
    const/4 v0, 0x0

    .local v0, "c":I
    :goto_1
    invoke-interface {p0}, Lorg/apache/commons/math3/linear/RealMatrix;->getColumnDimension()I

    move-result v3

    if-ge v0, v3, :cond_1

    .line 1111
    aget-object v3, v1, v2

    sub-int v4, v0, p1

    if-gt v2, v4, :cond_0

    invoke-interface {p0, v2, v0}, Lorg/apache/commons/math3/linear/RealMatrix;->getEntry(II)D

    move-result-wide v4

    :goto_2
    aput-wide v4, v3, v0

    .line 1110
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1111
    :cond_0
    const-wide/16 v4, 0x0

    goto :goto_2

    .line 1109
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1114
    .end local v0    # "c":I
    :cond_2
    new-instance v3, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    const/4 v4, 0x0

    invoke-direct {v3, v1, v4}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;-><init>([[DZ)V

    return-object v3
.end method

.method private updateBD(D)V
    .locals 11
    .param p1, "negccov"    # D

    .prologue
    .line 774
    iget-wide v4, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->ccov1:D

    iget-wide v6, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->ccovmu:D

    add-double/2addr v4, v6

    add-double/2addr v4, p1

    const-wide/16 v6, 0x0

    cmpl-double v4, v4, v6

    if-lez v4, :cond_4

    iget v4, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->iterations:I

    int-to-double v4, v4

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    rem-double/2addr v4, v6

    iget-wide v6, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->ccov1:D

    iget-wide v8, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->ccovmu:D

    add-double/2addr v6, v8

    add-double/2addr v6, p1

    div-double/2addr v4, v6

    iget v6, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->dimension:I

    int-to-double v6, v6

    div-double/2addr v4, v6

    const-wide/high16 v6, 0x4024000000000000L    # 10.0

    div-double/2addr v4, v6

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    cmpg-double v4, v4, v6

    if-gez v4, :cond_4

    .line 777
    iget-object v4, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->C:Lorg/apache/commons/math3/linear/RealMatrix;

    const/4 v5, 0x0

    invoke-static {v4, v5}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->triu(Lorg/apache/commons/math3/linear/RealMatrix;I)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v4

    iget-object v5, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->C:Lorg/apache/commons/math3/linear/RealMatrix;

    const/4 v6, 0x1

    invoke-static {v5, v6}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->triu(Lorg/apache/commons/math3/linear/RealMatrix;I)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v5

    invoke-interface {v5}, Lorg/apache/commons/math3/linear/RealMatrix;->transpose()Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v5

    invoke-interface {v4, v5}, Lorg/apache/commons/math3/linear/RealMatrix;->add(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v4

    iput-object v4, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->C:Lorg/apache/commons/math3/linear/RealMatrix;

    .line 779
    new-instance v0, Lorg/apache/commons/math3/linear/EigenDecomposition;

    iget-object v4, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->C:Lorg/apache/commons/math3/linear/RealMatrix;

    invoke-direct {v0, v4}, Lorg/apache/commons/math3/linear/EigenDecomposition;-><init>(Lorg/apache/commons/math3/linear/RealMatrix;)V

    .line 780
    .local v0, "eig":Lorg/apache/commons/math3/linear/EigenDecomposition;
    invoke-virtual {v0}, Lorg/apache/commons/math3/linear/EigenDecomposition;->getV()Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v4

    iput-object v4, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->B:Lorg/apache/commons/math3/linear/RealMatrix;

    .line 781
    invoke-virtual {v0}, Lorg/apache/commons/math3/linear/EigenDecomposition;->getD()Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v4

    iput-object v4, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->D:Lorg/apache/commons/math3/linear/RealMatrix;

    .line 782
    iget-object v4, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->D:Lorg/apache/commons/math3/linear/RealMatrix;

    invoke-static {v4}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->diag(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v4

    iput-object v4, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->diagD:Lorg/apache/commons/math3/linear/RealMatrix;

    .line 783
    iget-object v4, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->diagD:Lorg/apache/commons/math3/linear/RealMatrix;

    invoke-static {v4}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->min(Lorg/apache/commons/math3/linear/RealMatrix;)D

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmpg-double v4, v4, v6

    if-gtz v4, :cond_2

    .line 784
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget v4, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->dimension:I

    if-ge v1, v4, :cond_1

    .line 785
    iget-object v4, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->diagD:Lorg/apache/commons/math3/linear/RealMatrix;

    const/4 v5, 0x0

    invoke-interface {v4, v1, v5}, Lorg/apache/commons/math3/linear/RealMatrix;->getEntry(II)D

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmpg-double v4, v4, v6

    if-gez v4, :cond_0

    .line 786
    iget-object v4, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->diagD:Lorg/apache/commons/math3/linear/RealMatrix;

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    invoke-interface {v4, v1, v5, v6, v7}, Lorg/apache/commons/math3/linear/RealMatrix;->setEntry(IID)V

    .line 784
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 789
    :cond_1
    iget-object v4, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->diagD:Lorg/apache/commons/math3/linear/RealMatrix;

    invoke-static {v4}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->max(Lorg/apache/commons/math3/linear/RealMatrix;)D

    move-result-wide v4

    const-wide v6, 0x42d6bcc41e900000L    # 1.0E14

    div-double v2, v4, v6

    .line 790
    .local v2, "tfac":D
    iget-object v4, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->C:Lorg/apache/commons/math3/linear/RealMatrix;

    iget v5, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->dimension:I

    iget v6, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->dimension:I

    invoke-static {v5, v6}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->eye(II)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v5

    invoke-interface {v5, v2, v3}, Lorg/apache/commons/math3/linear/RealMatrix;->scalarMultiply(D)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v5

    invoke-interface {v4, v5}, Lorg/apache/commons/math3/linear/RealMatrix;->add(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v4

    iput-object v4, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->C:Lorg/apache/commons/math3/linear/RealMatrix;

    .line 791
    iget-object v4, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->diagD:Lorg/apache/commons/math3/linear/RealMatrix;

    iget v5, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->dimension:I

    const/4 v6, 0x1

    invoke-static {v5, v6}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->ones(II)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v5

    invoke-interface {v5, v2, v3}, Lorg/apache/commons/math3/linear/RealMatrix;->scalarMultiply(D)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v5

    invoke-interface {v4, v5}, Lorg/apache/commons/math3/linear/RealMatrix;->add(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v4

    iput-object v4, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->diagD:Lorg/apache/commons/math3/linear/RealMatrix;

    .line 793
    .end local v1    # "i":I
    .end local v2    # "tfac":D
    :cond_2
    iget-object v4, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->diagD:Lorg/apache/commons/math3/linear/RealMatrix;

    invoke-static {v4}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->max(Lorg/apache/commons/math3/linear/RealMatrix;)D

    move-result-wide v4

    const-wide v6, 0x42d6bcc41e900000L    # 1.0E14

    iget-object v8, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->diagD:Lorg/apache/commons/math3/linear/RealMatrix;

    invoke-static {v8}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->min(Lorg/apache/commons/math3/linear/RealMatrix;)D

    move-result-wide v8

    mul-double/2addr v6, v8

    cmpl-double v4, v4, v6

    if-lez v4, :cond_3

    .line 794
    iget-object v4, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->diagD:Lorg/apache/commons/math3/linear/RealMatrix;

    invoke-static {v4}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->max(Lorg/apache/commons/math3/linear/RealMatrix;)D

    move-result-wide v4

    const-wide v6, 0x42d6bcc41e900000L    # 1.0E14

    div-double/2addr v4, v6

    iget-object v6, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->diagD:Lorg/apache/commons/math3/linear/RealMatrix;

    invoke-static {v6}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->min(Lorg/apache/commons/math3/linear/RealMatrix;)D

    move-result-wide v6

    sub-double v2, v4, v6

    .line 795
    .restart local v2    # "tfac":D
    iget-object v4, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->C:Lorg/apache/commons/math3/linear/RealMatrix;

    iget v5, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->dimension:I

    iget v6, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->dimension:I

    invoke-static {v5, v6}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->eye(II)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v5

    invoke-interface {v5, v2, v3}, Lorg/apache/commons/math3/linear/RealMatrix;->scalarMultiply(D)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v5

    invoke-interface {v4, v5}, Lorg/apache/commons/math3/linear/RealMatrix;->add(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v4

    iput-object v4, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->C:Lorg/apache/commons/math3/linear/RealMatrix;

    .line 796
    iget-object v4, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->diagD:Lorg/apache/commons/math3/linear/RealMatrix;

    iget v5, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->dimension:I

    const/4 v6, 0x1

    invoke-static {v5, v6}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->ones(II)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v5

    invoke-interface {v5, v2, v3}, Lorg/apache/commons/math3/linear/RealMatrix;->scalarMultiply(D)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v5

    invoke-interface {v4, v5}, Lorg/apache/commons/math3/linear/RealMatrix;->add(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v4

    iput-object v4, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->diagD:Lorg/apache/commons/math3/linear/RealMatrix;

    .line 798
    .end local v2    # "tfac":D
    :cond_3
    iget-object v4, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->C:Lorg/apache/commons/math3/linear/RealMatrix;

    invoke-static {v4}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->diag(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v4

    iput-object v4, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->diagC:Lorg/apache/commons/math3/linear/RealMatrix;

    .line 799
    iget-object v4, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->diagD:Lorg/apache/commons/math3/linear/RealMatrix;

    invoke-static {v4}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->sqrt(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v4

    iput-object v4, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->diagD:Lorg/apache/commons/math3/linear/RealMatrix;

    .line 800
    iget-object v4, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->B:Lorg/apache/commons/math3/linear/RealMatrix;

    iget-object v5, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->diagD:Lorg/apache/commons/math3/linear/RealMatrix;

    invoke-interface {v5}, Lorg/apache/commons/math3/linear/RealMatrix;->transpose()Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v5

    iget v6, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->dimension:I

    const/4 v7, 0x1

    invoke-static {v5, v6, v7}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->repmat(Lorg/apache/commons/math3/linear/RealMatrix;II)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v5

    invoke-static {v4, v5}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->times(Lorg/apache/commons/math3/linear/RealMatrix;Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v4

    iput-object v4, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->BD:Lorg/apache/commons/math3/linear/RealMatrix;

    .line 802
    .end local v0    # "eig":Lorg/apache/commons/math3/linear/EigenDecomposition;
    :cond_4
    return-void
.end method

.method private updateCovariance(ZLorg/apache/commons/math3/linear/RealMatrix;Lorg/apache/commons/math3/linear/RealMatrix;[ILorg/apache/commons/math3/linear/RealMatrix;)V
    .locals 36
    .param p1, "hsig"    # Z
    .param p2, "bestArx"    # Lorg/apache/commons/math3/linear/RealMatrix;
    .param p3, "arz"    # Lorg/apache/commons/math3/linear/RealMatrix;
    .param p4, "arindex"    # [I
    .param p5, "xold"    # Lorg/apache/commons/math3/linear/RealMatrix;

    .prologue
    .line 710
    const-wide/16 v18, 0x0

    .line 711
    .local v18, "negccov":D
    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->ccov1:D

    move-wide/from16 v28, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->ccovmu:D

    move-wide/from16 v30, v0

    add-double v28, v28, v30

    const-wide/16 v30, 0x0

    cmpl-double v27, v28, v30

    if-lez v27, :cond_1

    .line 712
    const/16 v27, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->mu:I

    move/from16 v28, v0

    move-object/from16 v0, p5

    move/from16 v1, v27

    move/from16 v2, v28

    invoke-static {v0, v1, v2}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->repmat(Lorg/apache/commons/math3/linear/RealMatrix;II)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v27

    move-object/from16 v0, p2

    move-object/from16 v1, v27

    invoke-interface {v0, v1}, Lorg/apache/commons/math3/linear/RealMatrix;->subtract(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v27

    const-wide/high16 v28, 0x3ff0000000000000L    # 1.0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->sigma:D

    move-wide/from16 v30, v0

    div-double v28, v28, v30

    invoke-interface/range {v27 .. v29}, Lorg/apache/commons/math3/linear/RealMatrix;->scalarMultiply(D)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v10

    .line 714
    .local v10, "arpos":Lorg/apache/commons/math3/linear/RealMatrix;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->pc:Lorg/apache/commons/math3/linear/RealMatrix;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->pc:Lorg/apache/commons/math3/linear/RealMatrix;

    move-object/from16 v28, v0

    invoke-interface/range {v28 .. v28}, Lorg/apache/commons/math3/linear/RealMatrix;->transpose()Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v28

    invoke-interface/range {v27 .. v28}, Lorg/apache/commons/math3/linear/RealMatrix;->multiply(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v27

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->ccov1:D

    move-wide/from16 v28, v0

    invoke-interface/range {v27 .. v29}, Lorg/apache/commons/math3/linear/RealMatrix;->scalarMultiply(D)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v26

    .line 717
    .local v26, "roneu":Lorg/apache/commons/math3/linear/RealMatrix;
    if-eqz p1, :cond_2

    const-wide/16 v24, 0x0

    .line 718
    .local v24, "oldFac":D
    :goto_0
    const-wide/high16 v28, 0x3ff0000000000000L    # 1.0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->ccov1:D

    move-wide/from16 v30, v0

    sub-double v28, v28, v30

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->ccovmu:D

    move-wide/from16 v30, v0

    sub-double v28, v28, v30

    add-double v24, v24, v28

    .line 719
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->isActiveCMA:Z

    move/from16 v27, v0

    if-eqz v27, :cond_3

    .line 721
    const-wide/high16 v28, 0x3ff0000000000000L    # 1.0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->ccovmu:D

    move-wide/from16 v30, v0

    sub-double v28, v28, v30

    const-wide/high16 v30, 0x3fd0000000000000L    # 0.25

    mul-double v28, v28, v30

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->mueff:D

    move-wide/from16 v30, v0

    mul-double v28, v28, v30

    move-object/from16 v0, p0

    iget v0, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->dimension:I

    move/from16 v27, v0

    add-int/lit8 v27, v27, 0x2

    move/from16 v0, v27

    int-to-double v0, v0

    move-wide/from16 v30, v0

    const-wide/high16 v32, 0x3ff8000000000000L    # 1.5

    invoke-static/range {v30 .. v33}, Lorg/apache/commons/math3/util/FastMath;->pow(DD)D

    move-result-wide v30

    const-wide/high16 v32, 0x4000000000000000L    # 2.0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->mueff:D

    move-wide/from16 v34, v0

    mul-double v32, v32, v34

    add-double v30, v30, v32

    div-double v18, v28, v30

    .line 725
    const-wide v22, 0x3fe51eb851eb851fL    # 0.66

    .line 727
    .local v22, "negminresidualvariance":D
    const-wide/high16 v16, 0x3fe0000000000000L    # 0.5

    .line 729
    .local v16, "negalphaold":D
    invoke-static/range {p4 .. p4}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->reverse([I)[I

    move-result-object v5

    .line 730
    .local v5, "arReverseIndex":[I
    move-object/from16 v0, p0

    iget v0, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->mu:I

    move/from16 v27, v0

    move/from16 v0, v27

    invoke-static {v5, v0}, Lorg/apache/commons/math3/util/MathArrays;->copyOf([II)[I

    move-result-object v27

    move-object/from16 v0, p3

    move-object/from16 v1, v27

    invoke-static {v0, v1}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->selectColumns(Lorg/apache/commons/math3/linear/RealMatrix;[I)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v12

    .line 731
    .local v12, "arzneg":Lorg/apache/commons/math3/linear/RealMatrix;
    invoke-static {v12}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->square(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v27

    invoke-static/range {v27 .. v27}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->sumRows(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v27

    invoke-static/range {v27 .. v27}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->sqrt(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v6

    .line 732
    .local v6, "arnorms":Lorg/apache/commons/math3/linear/RealMatrix;
    const/16 v27, 0x0

    move/from16 v0, v27

    invoke-interface {v6, v0}, Lorg/apache/commons/math3/linear/RealMatrix;->getRow(I)[D

    move-result-object v27

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-direct {v0, v1}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->sortedIndices([D)[I

    move-result-object v15

    .line 733
    .local v15, "idxnorms":[I
    invoke-static {v6, v15}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->selectColumns(Lorg/apache/commons/math3/linear/RealMatrix;[I)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v9

    .line 734
    .local v9, "arnormsSorted":Lorg/apache/commons/math3/linear/RealMatrix;
    invoke-static {v15}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->reverse([I)[I

    move-result-object v14

    .line 735
    .local v14, "idxReverse":[I
    invoke-static {v6, v14}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->selectColumns(Lorg/apache/commons/math3/linear/RealMatrix;[I)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v8

    .line 736
    .local v8, "arnormsReverse":Lorg/apache/commons/math3/linear/RealMatrix;
    invoke-static {v8, v9}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->divide(Lorg/apache/commons/math3/linear/RealMatrix;Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v6

    .line 737
    invoke-static {v15}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->inverse([I)[I

    move-result-object v13

    .line 738
    .local v13, "idxInv":[I
    invoke-static {v6, v13}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->selectColumns(Lorg/apache/commons/math3/linear/RealMatrix;[I)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v7

    .line 740
    .local v7, "arnormsInv":Lorg/apache/commons/math3/linear/RealMatrix;
    const-wide v28, 0x3fd5c28f5c28f5c2L    # 0.33999999999999997

    invoke-static {v7}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->square(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->weights:Lorg/apache/commons/math3/linear/RealMatrix;

    move-object/from16 v30, v0

    move-object/from16 v0, v27

    move-object/from16 v1, v30

    invoke-interface {v0, v1}, Lorg/apache/commons/math3/linear/RealMatrix;->multiply(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v27

    const/16 v30, 0x0

    const/16 v31, 0x0

    move-object/from16 v0, v27

    move/from16 v1, v30

    move/from16 v2, v31

    invoke-interface {v0, v1, v2}, Lorg/apache/commons/math3/linear/RealMatrix;->getEntry(II)D

    move-result-wide v30

    div-double v20, v28, v30

    .line 742
    .local v20, "negcovMax":D
    cmpl-double v27, v18, v20

    if-lez v27, :cond_0

    .line 743
    move-wide/from16 v18, v20

    .line 745
    :cond_0
    move-object/from16 v0, p0

    iget v0, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->dimension:I

    move/from16 v27, v0

    const/16 v28, 0x1

    move/from16 v0, v27

    move/from16 v1, v28

    invoke-static {v7, v0, v1}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->repmat(Lorg/apache/commons/math3/linear/RealMatrix;II)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-static {v12, v0}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->times(Lorg/apache/commons/math3/linear/RealMatrix;Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v12

    .line 746
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->BD:Lorg/apache/commons/math3/linear/RealMatrix;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    invoke-interface {v0, v12}, Lorg/apache/commons/math3/linear/RealMatrix;->multiply(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v11

    .line 747
    .local v11, "artmp":Lorg/apache/commons/math3/linear/RealMatrix;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->weights:Lorg/apache/commons/math3/linear/RealMatrix;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->diag(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-interface {v11, v0}, Lorg/apache/commons/math3/linear/RealMatrix;->multiply(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v27

    invoke-interface {v11}, Lorg/apache/commons/math3/linear/RealMatrix;->transpose()Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v28

    invoke-interface/range {v27 .. v28}, Lorg/apache/commons/math3/linear/RealMatrix;->multiply(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v4

    .line 748
    .local v4, "Cneg":Lorg/apache/commons/math3/linear/RealMatrix;
    const-wide/high16 v28, 0x3fe0000000000000L    # 0.5

    mul-double v28, v28, v18

    add-double v24, v24, v28

    .line 749
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->C:Lorg/apache/commons/math3/linear/RealMatrix;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move-wide/from16 v1, v24

    invoke-interface {v0, v1, v2}, Lorg/apache/commons/math3/linear/RealMatrix;->scalarMultiply(D)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, v26

    invoke-interface {v0, v1}, Lorg/apache/commons/math3/linear/RealMatrix;->add(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v27

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->ccovmu:D

    move-wide/from16 v28, v0

    const-wide/high16 v30, 0x3fe0000000000000L    # 0.5

    mul-double v30, v30, v18

    add-double v28, v28, v30

    move-wide/from16 v0, v28

    invoke-interface {v10, v0, v1}, Lorg/apache/commons/math3/linear/RealMatrix;->scalarMultiply(D)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v28

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->weights:Lorg/apache/commons/math3/linear/RealMatrix;

    move-object/from16 v29, v0

    const/16 v30, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->dimension:I

    move/from16 v31, v0

    invoke-static/range {v29 .. v31}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->repmat(Lorg/apache/commons/math3/linear/RealMatrix;II)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v29

    invoke-interface {v10}, Lorg/apache/commons/math3/linear/RealMatrix;->transpose()Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v30

    invoke-static/range {v29 .. v30}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->times(Lorg/apache/commons/math3/linear/RealMatrix;Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v29

    invoke-interface/range {v28 .. v29}, Lorg/apache/commons/math3/linear/RealMatrix;->multiply(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v28

    invoke-interface/range {v27 .. v28}, Lorg/apache/commons/math3/linear/RealMatrix;->add(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v27

    move-wide/from16 v0, v18

    invoke-interface {v4, v0, v1}, Lorg/apache/commons/math3/linear/RealMatrix;->scalarMultiply(D)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v28

    invoke-interface/range {v27 .. v28}, Lorg/apache/commons/math3/linear/RealMatrix;->subtract(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->C:Lorg/apache/commons/math3/linear/RealMatrix;

    .line 765
    .end local v4    # "Cneg":Lorg/apache/commons/math3/linear/RealMatrix;
    .end local v5    # "arReverseIndex":[I
    .end local v6    # "arnorms":Lorg/apache/commons/math3/linear/RealMatrix;
    .end local v7    # "arnormsInv":Lorg/apache/commons/math3/linear/RealMatrix;
    .end local v8    # "arnormsReverse":Lorg/apache/commons/math3/linear/RealMatrix;
    .end local v9    # "arnormsSorted":Lorg/apache/commons/math3/linear/RealMatrix;
    .end local v10    # "arpos":Lorg/apache/commons/math3/linear/RealMatrix;
    .end local v11    # "artmp":Lorg/apache/commons/math3/linear/RealMatrix;
    .end local v12    # "arzneg":Lorg/apache/commons/math3/linear/RealMatrix;
    .end local v13    # "idxInv":[I
    .end local v14    # "idxReverse":[I
    .end local v15    # "idxnorms":[I
    .end local v16    # "negalphaold":D
    .end local v20    # "negcovMax":D
    .end local v22    # "negminresidualvariance":D
    .end local v24    # "oldFac":D
    .end local v26    # "roneu":Lorg/apache/commons/math3/linear/RealMatrix;
    :cond_1
    :goto_1
    move-object/from16 v0, p0

    move-wide/from16 v1, v18

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->updateBD(D)V

    .line 766
    return-void

    .line 717
    .restart local v10    # "arpos":Lorg/apache/commons/math3/linear/RealMatrix;
    .restart local v26    # "roneu":Lorg/apache/commons/math3/linear/RealMatrix;
    :cond_2
    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->ccov1:D

    move-wide/from16 v28, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->cc:D

    move-wide/from16 v30, v0

    mul-double v28, v28, v30

    const-wide/high16 v30, 0x4000000000000000L    # 2.0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->cc:D

    move-wide/from16 v32, v0

    sub-double v30, v30, v32

    mul-double v24, v28, v30

    goto/16 :goto_0

    .line 758
    .restart local v24    # "oldFac":D
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->C:Lorg/apache/commons/math3/linear/RealMatrix;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move-wide/from16 v1, v24

    invoke-interface {v0, v1, v2}, Lorg/apache/commons/math3/linear/RealMatrix;->scalarMultiply(D)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, v26

    invoke-interface {v0, v1}, Lorg/apache/commons/math3/linear/RealMatrix;->add(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v27

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->ccovmu:D

    move-wide/from16 v28, v0

    move-wide/from16 v0, v28

    invoke-interface {v10, v0, v1}, Lorg/apache/commons/math3/linear/RealMatrix;->scalarMultiply(D)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v28

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->weights:Lorg/apache/commons/math3/linear/RealMatrix;

    move-object/from16 v29, v0

    const/16 v30, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->dimension:I

    move/from16 v31, v0

    invoke-static/range {v29 .. v31}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->repmat(Lorg/apache/commons/math3/linear/RealMatrix;II)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v29

    invoke-interface {v10}, Lorg/apache/commons/math3/linear/RealMatrix;->transpose()Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v30

    invoke-static/range {v29 .. v30}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->times(Lorg/apache/commons/math3/linear/RealMatrix;Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v29

    invoke-interface/range {v28 .. v29}, Lorg/apache/commons/math3/linear/RealMatrix;->multiply(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v28

    invoke-interface/range {v27 .. v28}, Lorg/apache/commons/math3/linear/RealMatrix;->add(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->C:Lorg/apache/commons/math3/linear/RealMatrix;

    goto :goto_1
.end method

.method private updateCovarianceDiagonalOnly(ZLorg/apache/commons/math3/linear/RealMatrix;)V
    .locals 8
    .param p1, "hsig"    # Z
    .param p2, "bestArz"    # Lorg/apache/commons/math3/linear/RealMatrix;

    .prologue
    .line 679
    if-eqz p1, :cond_1

    const-wide/16 v0, 0x0

    .line 680
    .local v0, "oldFac":D
    :goto_0
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    iget-wide v4, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->ccov1Sep:D

    sub-double/2addr v2, v4

    iget-wide v4, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->ccovmuSep:D

    sub-double/2addr v2, v4

    add-double/2addr v0, v2

    .line 681
    iget-object v2, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->diagC:Lorg/apache/commons/math3/linear/RealMatrix;

    invoke-interface {v2, v0, v1}, Lorg/apache/commons/math3/linear/RealMatrix;->scalarMultiply(D)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->pc:Lorg/apache/commons/math3/linear/RealMatrix;

    invoke-static {v3}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->square(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v3

    iget-wide v4, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->ccov1Sep:D

    invoke-interface {v3, v4, v5}, Lorg/apache/commons/math3/linear/RealMatrix;->scalarMultiply(D)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/apache/commons/math3/linear/RealMatrix;->add(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->diagC:Lorg/apache/commons/math3/linear/RealMatrix;

    invoke-static {p2}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->square(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v4

    iget-object v5, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->weights:Lorg/apache/commons/math3/linear/RealMatrix;

    invoke-interface {v4, v5}, Lorg/apache/commons/math3/linear/RealMatrix;->multiply(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v4

    invoke-static {v3, v4}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->times(Lorg/apache/commons/math3/linear/RealMatrix;Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v3

    iget-wide v4, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->ccovmuSep:D

    invoke-interface {v3, v4, v5}, Lorg/apache/commons/math3/linear/RealMatrix;->scalarMultiply(D)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/apache/commons/math3/linear/RealMatrix;->add(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v2

    iput-object v2, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->diagC:Lorg/apache/commons/math3/linear/RealMatrix;

    .line 685
    iget-object v2, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->diagC:Lorg/apache/commons/math3/linear/RealMatrix;

    invoke-static {v2}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->sqrt(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v2

    iput-object v2, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->diagD:Lorg/apache/commons/math3/linear/RealMatrix;

    .line 686
    iget v2, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->diagonalOnly:I

    const/4 v3, 0x1

    if-le v2, v3, :cond_0

    iget v2, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->iterations:I

    iget v3, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->diagonalOnly:I

    if-le v2, v3, :cond_0

    .line 689
    const/4 v2, 0x0

    iput v2, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->diagonalOnly:I

    .line 690
    iget v2, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->dimension:I

    iget v3, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->dimension:I

    invoke-static {v2, v3}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->eye(II)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v2

    iput-object v2, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->B:Lorg/apache/commons/math3/linear/RealMatrix;

    .line 691
    iget-object v2, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->diagD:Lorg/apache/commons/math3/linear/RealMatrix;

    invoke-static {v2}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->diag(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v2

    iput-object v2, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->BD:Lorg/apache/commons/math3/linear/RealMatrix;

    .line 692
    iget-object v2, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->diagC:Lorg/apache/commons/math3/linear/RealMatrix;

    invoke-static {v2}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->diag(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v2

    iput-object v2, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->C:Lorg/apache/commons/math3/linear/RealMatrix;

    .line 694
    :cond_0
    return-void

    .line 679
    .end local v0    # "oldFac":D
    :cond_1
    iget-wide v2, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->ccov1Sep:D

    iget-wide v4, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->cc:D

    mul-double/2addr v2, v4

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    iget-wide v6, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->cc:D

    sub-double/2addr v4, v6

    mul-double v0, v2, v4

    goto :goto_0
.end method

.method private updateEvolutionPaths(Lorg/apache/commons/math3/linear/RealMatrix;Lorg/apache/commons/math3/linear/RealMatrix;)Z
    .locals 12
    .param p1, "zmean"    # Lorg/apache/commons/math3/linear/RealMatrix;
    .param p2, "xold"    # Lorg/apache/commons/math3/linear/RealMatrix;

    .prologue
    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    .line 655
    iget-object v1, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->ps:Lorg/apache/commons/math3/linear/RealMatrix;

    iget-wide v2, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->cs:D

    sub-double v2, v8, v2

    invoke-interface {v1, v2, v3}, Lorg/apache/commons/math3/linear/RealMatrix;->scalarMultiply(D)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->B:Lorg/apache/commons/math3/linear/RealMatrix;

    invoke-interface {v2, p1}, Lorg/apache/commons/math3/linear/RealMatrix;->multiply(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v2

    iget-wide v4, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->cs:D

    iget-wide v6, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->cs:D

    sub-double v6, v10, v6

    mul-double/2addr v4, v6

    iget-wide v6, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->mueff:D

    mul-double/2addr v4, v6

    invoke-static {v4, v5}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v4

    invoke-interface {v2, v4, v5}, Lorg/apache/commons/math3/linear/RealMatrix;->scalarMultiply(D)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/apache/commons/math3/linear/RealMatrix;->add(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->ps:Lorg/apache/commons/math3/linear/RealMatrix;

    .line 658
    iget-object v1, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->ps:Lorg/apache/commons/math3/linear/RealMatrix;

    invoke-interface {v1}, Lorg/apache/commons/math3/linear/RealMatrix;->getFrobeniusNorm()D

    move-result-wide v2

    iput-wide v2, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->normps:D

    .line 659
    iget-wide v2, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->normps:D

    iget-wide v4, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->cs:D

    sub-double v4, v8, v4

    iget v1, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->iterations:I

    mul-int/lit8 v1, v1, 0x2

    invoke-static {v4, v5, v1}, Lorg/apache/commons/math3/util/FastMath;->pow(DI)D

    move-result-wide v4

    sub-double v4, v8, v4

    invoke-static {v4, v5}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v4

    div-double/2addr v2, v4

    iget-wide v4, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->chiN:D

    div-double/2addr v2, v4

    const-wide v4, 0x3ff6666666666666L    # 1.4

    iget v1, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->dimension:I

    int-to-double v6, v1

    add-double/2addr v6, v8

    div-double v6, v10, v6

    add-double/2addr v4, v6

    cmpg-double v1, v2, v4

    if-gez v1, :cond_1

    const/4 v0, 0x1

    .line 662
    .local v0, "hsig":Z
    :goto_0
    iget-object v1, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->pc:Lorg/apache/commons/math3/linear/RealMatrix;

    iget-wide v2, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->cc:D

    sub-double v2, v8, v2

    invoke-interface {v1, v2, v3}, Lorg/apache/commons/math3/linear/RealMatrix;->scalarMultiply(D)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->pc:Lorg/apache/commons/math3/linear/RealMatrix;

    .line 663
    if-eqz v0, :cond_0

    .line 664
    iget-object v1, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->pc:Lorg/apache/commons/math3/linear/RealMatrix;

    iget-object v2, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->xmean:Lorg/apache/commons/math3/linear/RealMatrix;

    invoke-interface {v2, p2}, Lorg/apache/commons/math3/linear/RealMatrix;->subtract(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v2

    iget-wide v4, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->cc:D

    iget-wide v6, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->cc:D

    sub-double v6, v10, v6

    mul-double/2addr v4, v6

    iget-wide v6, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->mueff:D

    mul-double/2addr v4, v6

    invoke-static {v4, v5}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v4

    iget-wide v6, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->sigma:D

    div-double/2addr v4, v6

    invoke-interface {v2, v4, v5}, Lorg/apache/commons/math3/linear/RealMatrix;->scalarMultiply(D)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/apache/commons/math3/linear/RealMatrix;->add(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->pc:Lorg/apache/commons/math3/linear/RealMatrix;

    .line 666
    :cond_0
    return v0

    .line 659
    .end local v0    # "hsig":Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private valueRange([Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer$ValuePenaltyPair;)D
    .locals 10
    .param p1, "vpPairs"    # [Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer$ValuePenaltyPair;

    .prologue
    .line 842
    const-wide/high16 v4, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    .line 843
    .local v4, "max":D
    const-wide v6, 0x7fefffffffffffffL    # Double.MAX_VALUE

    .line 844
    .local v6, "min":D
    move-object v0, p1

    .local v0, "arr$":[Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer$ValuePenaltyPair;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_2

    aget-object v3, v0, v1

    .line 845
    .local v3, "vpPair":Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer$ValuePenaltyPair;
    # getter for: Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer$ValuePenaltyPair;->value:D
    invoke-static {v3}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer$ValuePenaltyPair;->access$000(Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer$ValuePenaltyPair;)D

    move-result-wide v8

    cmpl-double v8, v8, v4

    if-lez v8, :cond_0

    .line 846
    # getter for: Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer$ValuePenaltyPair;->value:D
    invoke-static {v3}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer$ValuePenaltyPair;->access$000(Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer$ValuePenaltyPair;)D

    move-result-wide v4

    .line 848
    :cond_0
    # getter for: Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer$ValuePenaltyPair;->value:D
    invoke-static {v3}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer$ValuePenaltyPair;->access$000(Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer$ValuePenaltyPair;)D

    move-result-wide v8

    cmpg-double v8, v8, v6

    if-gez v8, :cond_1

    .line 849
    # getter for: Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer$ValuePenaltyPair;->value:D
    invoke-static {v3}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer$ValuePenaltyPair;->access$000(Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer$ValuePenaltyPair;)D

    move-result-wide v6

    .line 844
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 852
    .end local v3    # "vpPair":Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer$ValuePenaltyPair;
    :cond_2
    sub-double v8, v4, v6

    return-wide v8
.end method

.method private static zeros(II)Lorg/apache/commons/math3/linear/RealMatrix;
    .locals 1
    .param p0, "n"    # I
    .param p1, "m"    # I

    .prologue
    .line 1204
    new-instance v0, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    invoke-direct {v0, p0, p1}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;-><init>(II)V

    return-object v0
.end method


# virtual methods
.method protected bridge synthetic doOptimize()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 81
    invoke-virtual {p0}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->doOptimize()Lorg/apache/commons/math3/optim/PointValuePair;

    move-result-object v0

    return-object v0
.end method

.method protected doOptimize()Lorg/apache/commons/math3/optim/PointValuePair;
    .locals 48

    .prologue
    .line 372
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->getGoalType()Lorg/apache/commons/math3/optim/nonlinear/scalar/GoalType;

    move-result-object v4

    sget-object v40, Lorg/apache/commons/math3/optim/nonlinear/scalar/GoalType;->MINIMIZE:Lorg/apache/commons/math3/optim/nonlinear/scalar/GoalType;

    move-object/from16 v0, v40

    invoke-virtual {v4, v0}, Lorg/apache/commons/math3/optim/nonlinear/scalar/GoalType;->equals(Ljava/lang/Object;)Z

    move-result v4

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->isMinimize:Z

    .line 373
    new-instance v19, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer$FitnessFunction;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer$FitnessFunction;-><init>(Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;)V

    .line 374
    .local v19, "fitfun":Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer$FitnessFunction;
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->getStartPoint()[D

    move-result-object v21

    .line 376
    .local v21, "guess":[D
    move-object/from16 v0, v21

    array-length v4, v0

    move-object/from16 v0, p0

    iput v4, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->dimension:I

    .line 377
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->initializeCMA([D)V

    .line 378
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput v4, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->iterations:I

    .line 379
    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer$FitnessFunction;->value([D)Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer$ValuePenaltyPair;

    move-result-object v33

    .line 380
    .local v33, "valuePenalty":Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer$ValuePenaltyPair;
    # getter for: Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer$ValuePenaltyPair;->value:D
    invoke-static/range {v33 .. v33}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer$ValuePenaltyPair;->access$000(Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer$ValuePenaltyPair;)D

    move-result-wide v40

    # getter for: Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer$ValuePenaltyPair;->penalty:D
    invoke-static/range {v33 .. v33}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer$ValuePenaltyPair;->access$100(Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer$ValuePenaltyPair;)D

    move-result-wide v42

    add-double v16, v40, v42

    .line 381
    .local v16, "bestValue":D
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->fitnessHistory:[D

    move-wide/from16 v0, v16

    invoke-static {v4, v0, v1}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->push([DD)V

    .line 382
    new-instance v30, Lorg/apache/commons/math3/optim/PointValuePair;

    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->getStartPoint()[D

    move-result-object v4

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->isMinimize:Z

    move/from16 v40, v0

    if-eqz v40, :cond_1

    move-wide/from16 v40, v16

    :goto_0
    move-object/from16 v0, v30

    move-wide/from16 v1, v40

    invoke-direct {v0, v4, v1, v2}, Lorg/apache/commons/math3/optim/PointValuePair;-><init>([DD)V

    .line 385
    .local v30, "optimum":Lorg/apache/commons/math3/optim/PointValuePair;
    const/16 v29, 0x0

    .line 390
    .local v29, "lastResult":Lorg/apache/commons/math3/optim/PointValuePair;
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput v4, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->iterations:I

    :goto_1
    move-object/from16 v0, p0

    iget v4, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->iterations:I

    move-object/from16 v0, p0

    iget v0, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->maxIterations:I

    move/from16 v40, v0

    move/from16 v0, v40

    if-gt v4, v0, :cond_4

    .line 391
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->incrementIterationCount()V

    .line 394
    move-object/from16 v0, p0

    iget v4, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->dimension:I

    move-object/from16 v0, p0

    iget v0, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->lambda:I

    move/from16 v40, v0

    move-object/from16 v0, p0

    move/from16 v1, v40

    invoke-direct {v0, v4, v1}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->randn1(II)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v7

    .line 395
    .local v7, "arz":Lorg/apache/commons/math3/linear/RealMatrix;
    move-object/from16 v0, p0

    iget v4, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->dimension:I

    move-object/from16 v0, p0

    iget v0, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->lambda:I

    move/from16 v40, v0

    move/from16 v0, v40

    invoke-static {v4, v0}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->zeros(II)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v10

    .line 396
    .local v10, "arx":Lorg/apache/commons/math3/linear/RealMatrix;
    move-object/from16 v0, p0

    iget v4, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->lambda:I

    new-array v0, v4, [D

    move-object/from16 v20, v0

    .line 397
    .local v20, "fitness":[D
    move-object/from16 v0, p0

    iget v4, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->lambda:I

    new-array v0, v4, [Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer$ValuePenaltyPair;

    move-object/from16 v34, v0

    .line 399
    .local v34, "valuePenaltyPairs":[Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer$ValuePenaltyPair;
    const/16 v28, 0x0

    .local v28, "k":I
    :goto_2
    move-object/from16 v0, p0

    iget v4, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->lambda:I

    move/from16 v0, v28

    if-ge v0, v4, :cond_5

    .line 400
    const/4 v11, 0x0

    .line 401
    .local v11, "arxk":Lorg/apache/commons/math3/linear/RealMatrix;
    const/16 v26, 0x0

    .local v26, "i":I
    :goto_3
    move-object/from16 v0, p0

    iget v4, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->checkFeasableCount:I

    add-int/lit8 v4, v4, 0x1

    move/from16 v0, v26

    if-ge v0, v4, :cond_0

    .line 402
    move-object/from16 v0, p0

    iget v4, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->diagonalOnly:I

    if-gtz v4, :cond_2

    .line 403
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->xmean:Lorg/apache/commons/math3/linear/RealMatrix;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->BD:Lorg/apache/commons/math3/linear/RealMatrix;

    move-object/from16 v40, v0

    move/from16 v0, v28

    invoke-interface {v7, v0}, Lorg/apache/commons/math3/linear/RealMatrix;->getColumnMatrix(I)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v41

    invoke-interface/range {v40 .. v41}, Lorg/apache/commons/math3/linear/RealMatrix;->multiply(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v40

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->sigma:D

    move-wide/from16 v42, v0

    move-object/from16 v0, v40

    move-wide/from16 v1, v42

    invoke-interface {v0, v1, v2}, Lorg/apache/commons/math3/linear/RealMatrix;->scalarMultiply(D)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v40

    move-object/from16 v0, v40

    invoke-interface {v4, v0}, Lorg/apache/commons/math3/linear/RealMatrix;->add(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v11

    .line 409
    :goto_4
    move-object/from16 v0, p0

    iget v4, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->checkFeasableCount:I

    move/from16 v0, v26

    if-ge v0, v4, :cond_0

    const/4 v4, 0x0

    invoke-interface {v11, v4}, Lorg/apache/commons/math3/linear/RealMatrix;->getColumn(I)[D

    move-result-object v4

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer$FitnessFunction;->isFeasible([D)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 416
    :cond_0
    const/4 v4, 0x0

    move/from16 v0, v28

    invoke-static {v11, v4, v10, v0}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->copyColumn(Lorg/apache/commons/math3/linear/RealMatrix;ILorg/apache/commons/math3/linear/RealMatrix;I)V

    .line 418
    :try_start_0
    move/from16 v0, v28

    invoke-interface {v10, v0}, Lorg/apache/commons/math3/linear/RealMatrix;->getColumn(I)[D

    move-result-object v4

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer$FitnessFunction;->value([D)Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer$ValuePenaltyPair;

    move-result-object v4

    aput-object v4, v34, v28
    :try_end_0
    .catch Lorg/apache/commons/math3/exception/TooManyEvaluationsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 399
    add-int/lit8 v28, v28, 0x1

    goto :goto_2

    .line 382
    .end local v7    # "arz":Lorg/apache/commons/math3/linear/RealMatrix;
    .end local v10    # "arx":Lorg/apache/commons/math3/linear/RealMatrix;
    .end local v11    # "arxk":Lorg/apache/commons/math3/linear/RealMatrix;
    .end local v20    # "fitness":[D
    .end local v26    # "i":I
    .end local v28    # "k":I
    .end local v29    # "lastResult":Lorg/apache/commons/math3/optim/PointValuePair;
    .end local v30    # "optimum":Lorg/apache/commons/math3/optim/PointValuePair;
    .end local v34    # "valuePenaltyPairs":[Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer$ValuePenaltyPair;
    :cond_1
    move-wide/from16 v0, v16

    neg-double v0, v0

    move-wide/from16 v40, v0

    goto/16 :goto_0

    .line 406
    .restart local v7    # "arz":Lorg/apache/commons/math3/linear/RealMatrix;
    .restart local v10    # "arx":Lorg/apache/commons/math3/linear/RealMatrix;
    .restart local v11    # "arxk":Lorg/apache/commons/math3/linear/RealMatrix;
    .restart local v20    # "fitness":[D
    .restart local v26    # "i":I
    .restart local v28    # "k":I
    .restart local v29    # "lastResult":Lorg/apache/commons/math3/optim/PointValuePair;
    .restart local v30    # "optimum":Lorg/apache/commons/math3/optim/PointValuePair;
    .restart local v34    # "valuePenaltyPairs":[Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer$ValuePenaltyPair;
    :cond_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->xmean:Lorg/apache/commons/math3/linear/RealMatrix;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->diagD:Lorg/apache/commons/math3/linear/RealMatrix;

    move-object/from16 v40, v0

    move/from16 v0, v28

    invoke-interface {v7, v0}, Lorg/apache/commons/math3/linear/RealMatrix;->getColumnMatrix(I)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v41

    invoke-static/range {v40 .. v41}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->times(Lorg/apache/commons/math3/linear/RealMatrix;Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v40

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->sigma:D

    move-wide/from16 v42, v0

    move-object/from16 v0, v40

    move-wide/from16 v1, v42

    invoke-interface {v0, v1, v2}, Lorg/apache/commons/math3/linear/RealMatrix;->scalarMultiply(D)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v40

    move-object/from16 v0, v40

    invoke-interface {v4, v0}, Lorg/apache/commons/math3/linear/RealMatrix;->add(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v11

    goto :goto_4

    .line 414
    :cond_3
    move-object/from16 v0, p0

    iget v4, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->dimension:I

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->randn(I)[D

    move-result-object v4

    move/from16 v0, v28

    invoke-interface {v7, v0, v4}, Lorg/apache/commons/math3/linear/RealMatrix;->setColumn(I[D)V

    .line 401
    add-int/lit8 v26, v26, 0x1

    goto/16 :goto_3

    .line 419
    :catch_0
    move-exception v18

    .line 521
    .end local v7    # "arz":Lorg/apache/commons/math3/linear/RealMatrix;
    .end local v10    # "arx":Lorg/apache/commons/math3/linear/RealMatrix;
    .end local v11    # "arxk":Lorg/apache/commons/math3/linear/RealMatrix;
    .end local v20    # "fitness":[D
    .end local v26    # "i":I
    .end local v28    # "k":I
    .end local v34    # "valuePenaltyPairs":[Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer$ValuePenaltyPair;
    :cond_4
    return-object v30

    .line 425
    .restart local v7    # "arz":Lorg/apache/commons/math3/linear/RealMatrix;
    .restart local v10    # "arx":Lorg/apache/commons/math3/linear/RealMatrix;
    .restart local v20    # "fitness":[D
    .restart local v28    # "k":I
    .restart local v34    # "valuePenaltyPairs":[Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer$ValuePenaltyPair;
    :cond_5
    move-object/from16 v0, p0

    move-object/from16 v1, v34

    invoke-direct {v0, v1}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->valueRange([Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer$ValuePenaltyPair;)D

    move-result-wide v36

    .line 426
    .local v36, "valueRange":D
    const/16 v27, 0x0

    .local v27, "iValue":I
    :goto_5
    move-object/from16 v0, v34

    array-length v4, v0

    move/from16 v0, v27

    if-ge v0, v4, :cond_6

    .line 427
    aget-object v4, v34, v27

    # getter for: Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer$ValuePenaltyPair;->value:D
    invoke-static {v4}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer$ValuePenaltyPair;->access$000(Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer$ValuePenaltyPair;)D

    move-result-wide v40

    aget-object v4, v34, v27

    # getter for: Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer$ValuePenaltyPair;->penalty:D
    invoke-static {v4}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer$ValuePenaltyPair;->access$100(Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer$ValuePenaltyPair;)D

    move-result-wide v42

    mul-double v42, v42, v36

    add-double v40, v40, v42

    aput-wide v40, v20, v27

    .line 426
    add-int/lit8 v27, v27, 0x1

    goto :goto_5

    .line 431
    :cond_6
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->sortedIndices([D)[I

    move-result-object v8

    .line 433
    .local v8, "arindex":[I
    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->xmean:Lorg/apache/commons/math3/linear/RealMatrix;

    .line 434
    .local v9, "xold":Lorg/apache/commons/math3/linear/RealMatrix;
    move-object/from16 v0, p0

    iget v4, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->mu:I

    invoke-static {v8, v4}, Lorg/apache/commons/math3/util/MathArrays;->copyOf([II)[I

    move-result-object v4

    invoke-static {v10, v4}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->selectColumns(Lorg/apache/commons/math3/linear/RealMatrix;[I)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v6

    .line 435
    .local v6, "bestArx":Lorg/apache/commons/math3/linear/RealMatrix;
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->weights:Lorg/apache/commons/math3/linear/RealMatrix;

    invoke-interface {v6, v4}, Lorg/apache/commons/math3/linear/RealMatrix;->multiply(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->xmean:Lorg/apache/commons/math3/linear/RealMatrix;

    .line 436
    move-object/from16 v0, p0

    iget v4, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->mu:I

    invoke-static {v8, v4}, Lorg/apache/commons/math3/util/MathArrays;->copyOf([II)[I

    move-result-object v4

    invoke-static {v7, v4}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->selectColumns(Lorg/apache/commons/math3/linear/RealMatrix;[I)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v12

    .line 437
    .local v12, "bestArz":Lorg/apache/commons/math3/linear/RealMatrix;
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->weights:Lorg/apache/commons/math3/linear/RealMatrix;

    invoke-interface {v12, v4}, Lorg/apache/commons/math3/linear/RealMatrix;->multiply(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v35

    .line 438
    .local v35, "zmean":Lorg/apache/commons/math3/linear/RealMatrix;
    move-object/from16 v0, p0

    move-object/from16 v1, v35

    invoke-direct {v0, v1, v9}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->updateEvolutionPaths(Lorg/apache/commons/math3/linear/RealMatrix;Lorg/apache/commons/math3/linear/RealMatrix;)Z

    move-result v5

    .line 439
    .local v5, "hsig":Z
    move-object/from16 v0, p0

    iget v4, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->diagonalOnly:I

    if-gtz v4, :cond_a

    move-object/from16 v4, p0

    .line 440
    invoke-direct/range {v4 .. v9}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->updateCovariance(ZLorg/apache/commons/math3/linear/RealMatrix;Lorg/apache/commons/math3/linear/RealMatrix;[ILorg/apache/commons/math3/linear/RealMatrix;)V

    .line 445
    :goto_6
    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->sigma:D

    move-wide/from16 v40, v0

    const-wide/high16 v42, 0x3ff0000000000000L    # 1.0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->normps:D

    move-wide/from16 v44, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->chiN:D

    move-wide/from16 v46, v0

    div-double v44, v44, v46

    const-wide/high16 v46, 0x3ff0000000000000L    # 1.0

    sub-double v44, v44, v46

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->cs:D

    move-wide/from16 v46, v0

    mul-double v44, v44, v46

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->damps:D

    move-wide/from16 v46, v0

    div-double v44, v44, v46

    invoke-static/range {v42 .. v45}, Lorg/apache/commons/math3/util/FastMath;->min(DD)D

    move-result-wide v42

    invoke-static/range {v42 .. v43}, Lorg/apache/commons/math3/util/FastMath;->exp(D)D

    move-result-wide v42

    mul-double v40, v40, v42

    move-wide/from16 v0, v40

    move-object/from16 v2, p0

    iput-wide v0, v2, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->sigma:D

    .line 446
    const/4 v4, 0x0

    aget v4, v8, v4

    aget-wide v14, v20, v4

    .line 447
    .local v14, "bestFitness":D
    array-length v4, v8

    add-int/lit8 v4, v4, -0x1

    aget v4, v8, v4

    aget-wide v38, v20, v4

    .line 448
    .local v38, "worstFitness":D
    cmpl-double v4, v16, v14

    if-lez v4, :cond_7

    .line 449
    move-wide/from16 v16, v14

    .line 450
    move-object/from16 v29, v30

    .line 451
    new-instance v30, Lorg/apache/commons/math3/optim/PointValuePair;

    .end local v30    # "optimum":Lorg/apache/commons/math3/optim/PointValuePair;
    const/4 v4, 0x0

    invoke-interface {v6, v4}, Lorg/apache/commons/math3/linear/RealMatrix;->getColumn(I)[D

    move-result-object v4

    move-object/from16 v0, v19

    # invokes: Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer$FitnessFunction;->repair([D)[D
    invoke-static {v0, v4}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer$FitnessFunction;->access$200(Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer$FitnessFunction;[D)[D

    move-result-object v4

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->isMinimize:Z

    move/from16 v40, v0

    if-eqz v40, :cond_b

    move-wide/from16 v40, v14

    :goto_7
    move-object/from16 v0, v30

    move-wide/from16 v1, v40

    invoke-direct {v0, v4, v1, v2}, Lorg/apache/commons/math3/optim/PointValuePair;-><init>([DD)V

    .line 453
    .restart local v30    # "optimum":Lorg/apache/commons/math3/optim/PointValuePair;
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->getConvergenceChecker()Lorg/apache/commons/math3/optim/ConvergenceChecker;

    move-result-object v4

    if-eqz v4, :cond_7

    if-eqz v29, :cond_7

    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->getConvergenceChecker()Lorg/apache/commons/math3/optim/ConvergenceChecker;

    move-result-object v4

    move-object/from16 v0, p0

    iget v0, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->iterations:I

    move/from16 v40, v0

    move/from16 v0, v40

    move-object/from16 v1, v30

    move-object/from16 v2, v29

    invoke-interface {v4, v0, v1, v2}, Lorg/apache/commons/math3/optim/ConvergenceChecker;->converged(ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 460
    :cond_7
    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->stopFitness:D

    move-wide/from16 v40, v0

    const-wide/16 v42, 0x0

    cmpl-double v4, v40, v42

    if-eqz v4, :cond_8

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->isMinimize:Z

    if-eqz v4, :cond_c

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->stopFitness:D

    move-wide/from16 v40, v0

    :goto_8
    cmpg-double v4, v14, v40

    if-ltz v4, :cond_4

    .line 463
    :cond_8
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->diagC:Lorg/apache/commons/math3/linear/RealMatrix;

    invoke-static {v4}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->sqrt(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v4

    const/16 v40, 0x0

    move/from16 v0, v40

    invoke-interface {v4, v0}, Lorg/apache/commons/math3/linear/RealMatrix;->getColumn(I)[D

    move-result-object v32

    .line 464
    .local v32, "sqrtDiagC":[D
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->pc:Lorg/apache/commons/math3/linear/RealMatrix;

    const/16 v40, 0x0

    move/from16 v0, v40

    invoke-interface {v4, v0}, Lorg/apache/commons/math3/linear/RealMatrix;->getColumn(I)[D

    move-result-object v31

    .line 465
    .local v31, "pcCol":[D
    const/16 v26, 0x0

    .restart local v26    # "i":I
    :goto_9
    move-object/from16 v0, p0

    iget v4, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->dimension:I

    move/from16 v0, v26

    if-ge v0, v4, :cond_9

    .line 466
    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->sigma:D

    move-wide/from16 v40, v0

    aget-wide v42, v31, v26

    invoke-static/range {v42 .. v43}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v42

    aget-wide v44, v32, v26

    invoke-static/range {v42 .. v45}, Lorg/apache/commons/math3/util/FastMath;->max(DD)D

    move-result-wide v42

    mul-double v40, v40, v42

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->stopTolX:D

    move-wide/from16 v42, v0

    cmpl-double v4, v40, v42

    if-lez v4, :cond_d

    .line 473
    :cond_9
    const/16 v26, 0x0

    :goto_a
    move-object/from16 v0, p0

    iget v4, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->dimension:I

    move/from16 v0, v26

    if-ge v0, v4, :cond_e

    .line 474
    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->sigma:D

    move-wide/from16 v40, v0

    aget-wide v42, v32, v26

    mul-double v40, v40, v42

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->stopTolUpX:D

    move-wide/from16 v42, v0

    cmpl-double v4, v40, v42

    if-gtz v4, :cond_4

    .line 473
    add-int/lit8 v26, v26, 0x1

    goto :goto_a

    .line 442
    .end local v14    # "bestFitness":D
    .end local v26    # "i":I
    .end local v31    # "pcCol":[D
    .end local v32    # "sqrtDiagC":[D
    .end local v38    # "worstFitness":D
    :cond_a
    move-object/from16 v0, p0

    invoke-direct {v0, v5, v12}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->updateCovarianceDiagonalOnly(ZLorg/apache/commons/math3/linear/RealMatrix;)V

    goto/16 :goto_6

    .line 451
    .end local v30    # "optimum":Lorg/apache/commons/math3/optim/PointValuePair;
    .restart local v14    # "bestFitness":D
    .restart local v38    # "worstFitness":D
    :cond_b
    neg-double v0, v14

    move-wide/from16 v40, v0

    goto/16 :goto_7

    .line 460
    .restart local v30    # "optimum":Lorg/apache/commons/math3/optim/PointValuePair;
    :cond_c
    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->stopFitness:D

    move-wide/from16 v40, v0

    move-wide/from16 v0, v40

    neg-double v0, v0

    move-wide/from16 v40, v0

    goto :goto_8

    .line 469
    .restart local v26    # "i":I
    .restart local v31    # "pcCol":[D
    .restart local v32    # "sqrtDiagC":[D
    :cond_d
    move-object/from16 v0, p0

    iget v4, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->dimension:I

    add-int/lit8 v4, v4, -0x1

    move/from16 v0, v26

    if-ge v0, v4, :cond_4

    .line 465
    add-int/lit8 v26, v26, 0x1

    goto :goto_9

    .line 478
    :cond_e
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->fitnessHistory:[D

    invoke-static {v4}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->min([D)D

    move-result-wide v22

    .line 479
    .local v22, "historyBest":D
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->fitnessHistory:[D

    invoke-static {v4}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->max([D)D

    move-result-wide v24

    .line 480
    .local v24, "historyWorst":D
    move-object/from16 v0, p0

    iget v4, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->iterations:I

    const/16 v40, 0x2

    move/from16 v0, v40

    if-le v4, v0, :cond_f

    move-wide/from16 v0, v24

    move-wide/from16 v2, v38

    invoke-static {v0, v1, v2, v3}, Lorg/apache/commons/math3/util/FastMath;->max(DD)D

    move-result-wide v40

    move-wide/from16 v0, v22

    invoke-static {v0, v1, v14, v15}, Lorg/apache/commons/math3/util/FastMath;->min(DD)D

    move-result-wide v42

    sub-double v40, v40, v42

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->stopTolFun:D

    move-wide/from16 v42, v0

    cmpg-double v4, v40, v42

    if-ltz v4, :cond_4

    .line 485
    :cond_f
    move-object/from16 v0, p0

    iget v4, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->iterations:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->fitnessHistory:[D

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    array-length v0, v0

    move/from16 v40, v0

    move/from16 v0, v40

    if-le v4, v0, :cond_10

    sub-double v40, v24, v22

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->stopTolHistFun:D

    move-wide/from16 v42, v0

    cmpg-double v4, v40, v42

    if-ltz v4, :cond_4

    .line 490
    :cond_10
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->diagD:Lorg/apache/commons/math3/linear/RealMatrix;

    invoke-static {v4}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->max(Lorg/apache/commons/math3/linear/RealMatrix;)D

    move-result-wide v40

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->diagD:Lorg/apache/commons/math3/linear/RealMatrix;

    invoke-static {v4}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->min(Lorg/apache/commons/math3/linear/RealMatrix;)D

    move-result-wide v42

    div-double v40, v40, v42

    const-wide v42, 0x416312d000000000L    # 1.0E7

    cmpl-double v4, v40, v42

    if-gtz v4, :cond_4

    .line 494
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->getConvergenceChecker()Lorg/apache/commons/math3/optim/ConvergenceChecker;

    move-result-object v4

    if-eqz v4, :cond_12

    .line 495
    new-instance v13, Lorg/apache/commons/math3/optim/PointValuePair;

    const/4 v4, 0x0

    invoke-interface {v6, v4}, Lorg/apache/commons/math3/linear/RealMatrix;->getColumn(I)[D

    move-result-object v4

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->isMinimize:Z

    move/from16 v40, v0

    if-eqz v40, :cond_16

    move-wide/from16 v40, v14

    :goto_b
    move-wide/from16 v0, v40

    invoke-direct {v13, v4, v0, v1}, Lorg/apache/commons/math3/optim/PointValuePair;-><init>([DD)V

    .line 498
    .local v13, "current":Lorg/apache/commons/math3/optim/PointValuePair;
    if-eqz v29, :cond_11

    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->getConvergenceChecker()Lorg/apache/commons/math3/optim/ConvergenceChecker;

    move-result-object v4

    move-object/from16 v0, p0

    iget v0, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->iterations:I

    move/from16 v40, v0

    move/from16 v0, v40

    move-object/from16 v1, v29

    invoke-interface {v4, v0, v13, v1}, Lorg/apache/commons/math3/optim/ConvergenceChecker;->converged(ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 502
    :cond_11
    move-object/from16 v29, v13

    .line 505
    .end local v13    # "current":Lorg/apache/commons/math3/optim/PointValuePair;
    :cond_12
    const-wide v40, 0x3fb999999999999aL    # 0.1

    move-object/from16 v0, p0

    iget v4, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->lambda:I

    int-to-double v0, v4

    move-wide/from16 v42, v0

    const-wide/high16 v44, 0x4010000000000000L    # 4.0

    div-double v42, v42, v44

    add-double v40, v40, v42

    move-wide/from16 v0, v40

    double-to-int v4, v0

    aget v4, v8, v4

    aget-wide v40, v20, v4

    cmpl-double v4, v16, v40

    if-nez v4, :cond_13

    .line 506
    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->sigma:D

    move-wide/from16 v40, v0

    const-wide v42, 0x3fc999999999999aL    # 0.2

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->cs:D

    move-wide/from16 v44, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->damps:D

    move-wide/from16 v46, v0

    div-double v44, v44, v46

    add-double v42, v42, v44

    invoke-static/range {v42 .. v43}, Lorg/apache/commons/math3/util/FastMath;->exp(D)D

    move-result-wide v42

    mul-double v40, v40, v42

    move-wide/from16 v0, v40

    move-object/from16 v2, p0

    iput-wide v0, v2, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->sigma:D

    .line 508
    :cond_13
    move-object/from16 v0, p0

    iget v4, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->iterations:I

    const/16 v40, 0x2

    move/from16 v0, v40

    if-le v4, v0, :cond_14

    move-wide/from16 v0, v24

    invoke-static {v0, v1, v14, v15}, Lorg/apache/commons/math3/util/FastMath;->max(DD)D

    move-result-wide v40

    move-wide/from16 v0, v22

    invoke-static {v0, v1, v14, v15}, Lorg/apache/commons/math3/util/FastMath;->min(DD)D

    move-result-wide v42

    sub-double v40, v40, v42

    const-wide/16 v42, 0x0

    cmpl-double v4, v40, v42

    if-nez v4, :cond_14

    .line 510
    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->sigma:D

    move-wide/from16 v40, v0

    const-wide v42, 0x3fc999999999999aL    # 0.2

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->cs:D

    move-wide/from16 v44, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->damps:D

    move-wide/from16 v46, v0

    div-double v44, v44, v46

    add-double v42, v42, v44

    invoke-static/range {v42 .. v43}, Lorg/apache/commons/math3/util/FastMath;->exp(D)D

    move-result-wide v42

    mul-double v40, v40, v42

    move-wide/from16 v0, v40

    move-object/from16 v2, p0

    iput-wide v0, v2, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->sigma:D

    .line 513
    :cond_14
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->fitnessHistory:[D

    invoke-static {v4, v14, v15}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->push([DD)V

    .line 514
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->generateStatistics:Z

    if-eqz v4, :cond_15

    .line 515
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->statisticsSigmaHistory:Ljava/util/List;

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->sigma:D

    move-wide/from16 v40, v0

    invoke-static/range {v40 .. v41}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v40

    move-object/from16 v0, v40

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 516
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->statisticsFitnessHistory:Ljava/util/List;

    invoke-static {v14, v15}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v40

    move-object/from16 v0, v40

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 517
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->statisticsMeanHistory:Ljava/util/List;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->xmean:Lorg/apache/commons/math3/linear/RealMatrix;

    move-object/from16 v40, v0

    invoke-interface/range {v40 .. v40}, Lorg/apache/commons/math3/linear/RealMatrix;->transpose()Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v40

    move-object/from16 v0, v40

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 518
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->statisticsDHistory:Ljava/util/List;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->diagD:Lorg/apache/commons/math3/linear/RealMatrix;

    move-object/from16 v40, v0

    invoke-interface/range {v40 .. v40}, Lorg/apache/commons/math3/linear/RealMatrix;->transpose()Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v40

    const-wide v42, 0x40f86a0000000000L    # 100000.0

    move-object/from16 v0, v40

    move-wide/from16 v1, v42

    invoke-interface {v0, v1, v2}, Lorg/apache/commons/math3/linear/RealMatrix;->scalarMultiply(D)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v40

    move-object/from16 v0, v40

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 390
    :cond_15
    move-object/from16 v0, p0

    iget v4, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->iterations:I

    add-int/lit8 v4, v4, 0x1

    move-object/from16 v0, p0

    iput v4, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->iterations:I

    goto/16 :goto_1

    .line 495
    :cond_16
    neg-double v0, v14

    move-wide/from16 v40, v0

    goto/16 :goto_b
.end method

.method public getStatisticsDHistory()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/apache/commons/math3/linear/RealMatrix;",
            ">;"
        }
    .end annotation

    .prologue
    .line 268
    iget-object v0, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->statisticsDHistory:Ljava/util/List;

    return-object v0
.end method

.method public getStatisticsFitnessHistory()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation

    .prologue
    .line 261
    iget-object v0, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->statisticsFitnessHistory:Ljava/util/List;

    return-object v0
.end method

.method public getStatisticsMeanHistory()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/apache/commons/math3/linear/RealMatrix;",
            ">;"
        }
    .end annotation

    .prologue
    .line 254
    iget-object v0, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->statisticsMeanHistory:Ljava/util/List;

    return-object v0
.end method

.method public getStatisticsSigmaHistory()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation

    .prologue
    .line 247
    iget-object v0, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->statisticsSigmaHistory:Ljava/util/List;

    return-object v0
.end method

.method public bridge synthetic optimize([Lorg/apache/commons/math3/optim/OptimizationData;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Lorg/apache/commons/math3/optim/OptimizationData;

    .prologue
    .line 81
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->optimize([Lorg/apache/commons/math3/optim/OptimizationData;)Lorg/apache/commons/math3/optim/PointValuePair;

    move-result-object v0

    return-object v0
.end method

.method public varargs optimize([Lorg/apache/commons/math3/optim/OptimizationData;)Lorg/apache/commons/math3/optim/PointValuePair;
    .locals 1
    .param p1, "optData"    # [Lorg/apache/commons/math3/optim/OptimizationData;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/TooManyEvaluationsException;,
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    .prologue
    .line 365
    invoke-super {p0, p1}, Lorg/apache/commons/math3/optim/nonlinear/scalar/MultivariateOptimizer;->optimize([Lorg/apache/commons/math3/optim/OptimizationData;)Lorg/apache/commons/math3/optim/PointValuePair;

    move-result-object v0

    return-object v0
.end method

.method protected varargs parseOptimizationData([Lorg/apache/commons/math3/optim/OptimizationData;)V
    .locals 5
    .param p1, "optData"    # [Lorg/apache/commons/math3/optim/OptimizationData;

    .prologue
    .line 537
    invoke-super {p0, p1}, Lorg/apache/commons/math3/optim/nonlinear/scalar/MultivariateOptimizer;->parseOptimizationData([Lorg/apache/commons/math3/optim/OptimizationData;)V

    .line 541
    move-object v0, p1

    .local v0, "arr$":[Lorg/apache/commons/math3/optim/OptimizationData;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_2

    aget-object v1, v0, v2

    .line 542
    .local v1, "data":Lorg/apache/commons/math3/optim/OptimizationData;
    instance-of v4, v1, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer$Sigma;

    if-eqz v4, :cond_1

    .line 543
    check-cast v1, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer$Sigma;

    .end local v1    # "data":Lorg/apache/commons/math3/optim/OptimizationData;
    invoke-virtual {v1}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer$Sigma;->getSigma()[D

    move-result-object v4

    iput-object v4, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->inputSigma:[D

    .line 541
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 546
    .restart local v1    # "data":Lorg/apache/commons/math3/optim/OptimizationData;
    :cond_1
    instance-of v4, v1, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer$PopulationSize;

    if-eqz v4, :cond_0

    .line 547
    check-cast v1, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer$PopulationSize;

    .end local v1    # "data":Lorg/apache/commons/math3/optim/OptimizationData;
    invoke-virtual {v1}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer$PopulationSize;->getPopulationSize()I

    move-result v4

    iput v4, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->lambda:I

    goto :goto_1

    .line 552
    :cond_2
    invoke-direct {p0}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->checkParameters()V

    .line 553
    return-void
.end method
