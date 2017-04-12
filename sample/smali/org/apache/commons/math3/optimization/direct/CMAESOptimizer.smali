.class public Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;
.super Lorg/apache/commons/math3/optimization/direct/BaseAbstractMultivariateSimpleBoundsOptimizer;
.source "CMAESOptimizer.java"

# interfaces
.implements Lorg/apache/commons/math3/optimization/MultivariateOptimizer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer$FitnessFunction;,
        Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer$DoubleIndex;,
        Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer$PopulationSize;,
        Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer$Sigma;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/commons/math3/optimization/direct/BaseAbstractMultivariateSimpleBoundsOptimizer",
        "<",
        "Lorg/apache/commons/math3/analysis/MultivariateFunction;",
        ">;",
        "Lorg/apache/commons/math3/optimization/MultivariateOptimizer;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final DEFAULT_CHECKFEASABLECOUNT:I = 0x0

.field public static final DEFAULT_DIAGONALONLY:I = 0x0

.field public static final DEFAULT_ISACTIVECMA:Z = true

.field public static final DEFAULT_MAXITERATIONS:I = 0x7530

.field public static final DEFAULT_RANDOMGENERATOR:Lorg/apache/commons/math3/random/RandomGenerator;

.field public static final DEFAULT_STOPFITNESS:D


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

.field private checkFeasableCount:I

.field private chiN:D

.field private cs:D

.field private damps:D

.field private diagC:Lorg/apache/commons/math3/linear/RealMatrix;

.field private diagD:Lorg/apache/commons/math3/linear/RealMatrix;

.field private diagonalOnly:I

.field private dimension:I

.field private fitnessHistory:[D

.field private generateStatistics:Z

.field private historySize:I

.field private inputSigma:[D

.field private isActiveCMA:Z

.field private isMinimize:Z

.field private iterations:I

.field private lambda:I

.field private logMu2:D

.field private maxIterations:I

.field private mu:I

.field private mueff:D

.field private normps:D

.field private pc:Lorg/apache/commons/math3/linear/RealMatrix;

.field private ps:Lorg/apache/commons/math3/linear/RealMatrix;

.field private random:Lorg/apache/commons/math3/random/RandomGenerator;

.field private sigma:D

.field private statisticsDHistory:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/apache/commons/math3/linear/RealMatrix;",
            ">;"
        }
    .end annotation
.end field

.field private statisticsFitnessHistory:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation
.end field

.field private statisticsMeanHistory:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/apache/commons/math3/linear/RealMatrix;",
            ">;"
        }
    .end annotation
.end field

.field private statisticsSigmaHistory:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation
.end field

.field private stopFitness:D

.field private stopTolFun:D

.field private stopTolHistFun:D

.field private stopTolUpX:D

.field private stopTolX:D

.field private weights:Lorg/apache/commons/math3/linear/RealMatrix;

.field private xmean:Lorg/apache/commons/math3/linear/RealMatrix;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 99
    new-instance v0, Lorg/apache/commons/math3/random/MersenneTwister;

    invoke-direct {v0}, Lorg/apache/commons/math3/random/MersenneTwister;-><init>()V

    sput-object v0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->DEFAULT_RANDOMGENERATOR:Lorg/apache/commons/math3/random/RandomGenerator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 237
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;-><init>(I)V

    .line 238
    return-void
.end method

.method public constructor <init>(I)V
    .locals 12
    .param p1, "lambda"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v2, 0x0

    const/4 v7, 0x0

    .line 248
    const/16 v3, 0x7530

    const-wide/16 v4, 0x0

    const/4 v6, 0x1

    sget-object v9, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->DEFAULT_RANDOMGENERATOR:Lorg/apache/commons/math3/random/RandomGenerator;

    move-object v0, p0

    move v1, p1

    move v8, v7

    move v10, v7

    move-object v11, v2

    invoke-direct/range {v0 .. v11}, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;-><init>(I[DIDZIILorg/apache/commons/math3/random/RandomGenerator;ZLorg/apache/commons/math3/optimization/ConvergenceChecker;)V

    .line 252
    return-void
.end method

.method public constructor <init>(IDZIILorg/apache/commons/math3/random/RandomGenerator;ZLorg/apache/commons/math3/optimization/ConvergenceChecker;)V
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
            "Lorg/apache/commons/math3/optimization/ConvergenceChecker",
            "<",
            "Lorg/apache/commons/math3/optimization/PointValuePair;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p9, "checker":Lorg/apache/commons/math3/optimization/ConvergenceChecker;, "Lorg/apache/commons/math3/optimization/ConvergenceChecker<Lorg/apache/commons/math3/optimization/PointValuePair;>;"
    const/4 v1, 0x0

    .line 355
    invoke-direct {p0, p9}, Lorg/apache/commons/math3/optimization/direct/BaseAbstractMultivariateSimpleBoundsOptimizer;-><init>(Lorg/apache/commons/math3/optimization/ConvergenceChecker;)V

    .line 137
    iput v1, p0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->diagonalOnly:I

    .line 139
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->isMinimize:Z

    .line 141
    iput-boolean v1, p0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->generateStatistics:Z

    .line 220
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->statisticsSigmaHistory:Ljava/util/List;

    .line 222
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->statisticsMeanHistory:Ljava/util/List;

    .line 224
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->statisticsFitnessHistory:Ljava/util/List;

    .line 226
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->statisticsDHistory:Ljava/util/List;

    .line 356
    iput p1, p0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->maxIterations:I

    .line 357
    iput-wide p2, p0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->stopFitness:D

    .line 358
    iput-boolean p4, p0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->isActiveCMA:Z

    .line 359
    iput p5, p0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->diagonalOnly:I

    .line 360
    iput p6, p0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->checkFeasableCount:I

    .line 361
    iput-object p7, p0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->random:Lorg/apache/commons/math3/random/RandomGenerator;

    .line 362
    iput-boolean p8, p0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->generateStatistics:Z

    .line 363
    return-void
.end method

.method public constructor <init>(I[D)V
    .locals 11
    .param p1, "lambda"    # I
    .param p2, "inputSigma"    # [D
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 264
    const/16 v3, 0x7530

    const-wide/16 v4, 0x0

    const/4 v6, 0x1

    sget-object v9, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->DEFAULT_RANDOMGENERATOR:Lorg/apache/commons/math3/random/RandomGenerator;

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v8, v7

    move v10, v7

    invoke-direct/range {v0 .. v10}, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;-><init>(I[DIDZIILorg/apache/commons/math3/random/RandomGenerator;Z)V

    .line 267
    return-void
.end method

.method public constructor <init>(I[DIDZIILorg/apache/commons/math3/random/RandomGenerator;Z)V
    .locals 12
    .param p1, "lambda"    # I
    .param p2, "inputSigma"    # [D
    .param p3, "maxIterations"    # I
    .param p4, "stopFitness"    # D
    .param p6, "isActiveCMA"    # Z
    .param p7, "diagonalOnly"    # I
    .param p8, "checkFeasableCount"    # I
    .param p9, "random"    # Lorg/apache/commons/math3/random/RandomGenerator;
    .param p10, "generateStatistics"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 290
    new-instance v11, Lorg/apache/commons/math3/optimization/SimpleValueChecker;

    invoke-direct {v11}, Lorg/apache/commons/math3/optimization/SimpleValueChecker;-><init>()V

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v3, p3

    move-wide/from16 v4, p4

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move-object/from16 v9, p9

    move/from16 v10, p10

    invoke-direct/range {v0 .. v11}, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;-><init>(I[DIDZIILorg/apache/commons/math3/random/RandomGenerator;ZLorg/apache/commons/math3/optimization/ConvergenceChecker;)V

    .line 293
    return-void
.end method

.method public constructor <init>(I[DIDZIILorg/apache/commons/math3/random/RandomGenerator;ZLorg/apache/commons/math3/optimization/ConvergenceChecker;)V
    .locals 2
    .param p1, "lambda"    # I
    .param p2, "inputSigma"    # [D
    .param p3, "maxIterations"    # I
    .param p4, "stopFitness"    # D
    .param p6, "isActiveCMA"    # Z
    .param p7, "diagonalOnly"    # I
    .param p8, "checkFeasableCount"    # I
    .param p9, "random"    # Lorg/apache/commons/math3/random/RandomGenerator;
    .param p10, "generateStatistics"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I[DIDZII",
            "Lorg/apache/commons/math3/random/RandomGenerator;",
            "Z",
            "Lorg/apache/commons/math3/optimization/ConvergenceChecker",
            "<",
            "Lorg/apache/commons/math3/optimization/PointValuePair;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .local p11, "checker":Lorg/apache/commons/math3/optimization/ConvergenceChecker;, "Lorg/apache/commons/math3/optimization/ConvergenceChecker<Lorg/apache/commons/math3/optimization/PointValuePair;>;"
    const/4 v1, 0x0

    .line 320
    invoke-direct {p0, p11}, Lorg/apache/commons/math3/optimization/direct/BaseAbstractMultivariateSimpleBoundsOptimizer;-><init>(Lorg/apache/commons/math3/optimization/ConvergenceChecker;)V

    .line 137
    iput v1, p0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->diagonalOnly:I

    .line 139
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->isMinimize:Z

    .line 141
    iput-boolean v1, p0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->generateStatistics:Z

    .line 220
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->statisticsSigmaHistory:Ljava/util/List;

    .line 222
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->statisticsMeanHistory:Ljava/util/List;

    .line 224
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->statisticsFitnessHistory:Ljava/util/List;

    .line 226
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->statisticsDHistory:Ljava/util/List;

    .line 321
    iput p1, p0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->lambda:I

    .line 322
    if-nez p2, :cond_0

    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->inputSigma:[D

    .line 323
    iput p3, p0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->maxIterations:I

    .line 324
    iput-wide p4, p0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->stopFitness:D

    .line 325
    iput-boolean p6, p0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->isActiveCMA:Z

    .line 326
    iput p7, p0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->diagonalOnly:I

    .line 327
    iput p8, p0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->checkFeasableCount:I

    .line 328
    iput-object p9, p0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->random:Lorg/apache/commons/math3/random/RandomGenerator;

    .line 329
    iput-boolean p10, p0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->generateStatistics:Z

    .line 330
    return-void

    .line 322
    :cond_0
    invoke-virtual {p2}, [D->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [D

    check-cast v0, [D

    goto :goto_0
.end method

.method static synthetic access$200(Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;)Z
    .locals 1
    .param p0, "x0"    # Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;

    .prologue
    .line 85
    iget-boolean v0, p0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->isMinimize:Z

    return v0
.end method

.method private checkParameters()V
    .locals 12

    .prologue
    .line 670
    invoke-virtual {p0}, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->getStartPoint()[D

    move-result-object v1

    .line 671
    .local v1, "init":[D
    invoke-virtual {p0}, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->getLowerBound()[D

    move-result-object v2

    .line 672
    .local v2, "lB":[D
    invoke-virtual {p0}, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->getUpperBound()[D

    move-result-object v3

    .line 674
    .local v3, "uB":[D
    iget-object v4, p0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->inputSigma:[D

    if-eqz v4, :cond_3

    .line 675
    iget-object v4, p0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->inputSigma:[D

    array-length v4, v4

    array-length v5, v1

    if-eq v4, v5, :cond_0

    .line 676
    new-instance v4, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    iget-object v5, p0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->inputSigma:[D

    array-length v5, v5

    array-length v6, v1

    invoke-direct {v4, v5, v6}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v4

    .line 678
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v4, v1

    if-ge v0, v4, :cond_3

    .line 679
    iget-object v4, p0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->inputSigma:[D

    aget-wide v4, v4, v0

    const-wide/16 v6, 0x0

    cmpg-double v4, v4, v6

    if-gez v4, :cond_1

    .line 681
    new-instance v4, Lorg/apache/commons/math3/exception/NotPositiveException;

    iget-object v5, p0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->inputSigma:[D

    aget-wide v6, v5, v0

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/apache/commons/math3/exception/NotPositiveException;-><init>(Ljava/lang/Number;)V

    throw v4

    .line 683
    :cond_1
    iget-object v4, p0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->inputSigma:[D

    aget-wide v4, v4, v0

    aget-wide v6, v3, v0

    aget-wide v8, v2, v0

    sub-double/2addr v6, v8

    cmpl-double v4, v4, v6

    if-lez v4, :cond_2

    .line 684
    new-instance v4, Lorg/apache/commons/math3/exception/OutOfRangeException;

    iget-object v5, p0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->inputSigma:[D

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

    .line 678
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 688
    .end local v0    # "i":I
    :cond_3
    return-void
.end method

.method private static copyColumn(Lorg/apache/commons/math3/linear/RealMatrix;ILorg/apache/commons/math3/linear/RealMatrix;I)V
    .locals 4
    .param p0, "m1"    # Lorg/apache/commons/math3/linear/RealMatrix;
    .param p1, "col1"    # I
    .param p2, "m2"    # Lorg/apache/commons/math3/linear/RealMatrix;
    .param p3, "col2"    # I

    .prologue
    .line 1251
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {p0}, Lorg/apache/commons/math3/linear/RealMatrix;->getRowDimension()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 1252
    invoke-interface {p0, v0, p1}, Lorg/apache/commons/math3/linear/RealMatrix;->getEntry(II)D

    move-result-wide v2

    invoke-interface {p2, v0, p3, v2, v3}, Lorg/apache/commons/math3/linear/RealMatrix;->setEntry(IID)V

    .line 1251
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1254
    :cond_0
    return-void
.end method

.method private static diag(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;
    .locals 7
    .param p0, "m"    # Lorg/apache/commons/math3/linear/RealMatrix;

    .prologue
    const/4 v3, 0x1

    const/4 v6, 0x0

    .line 1226
    invoke-interface {p0}, Lorg/apache/commons/math3/linear/RealMatrix;->getColumnDimension()I

    move-result v2

    if-ne v2, v3, :cond_1

    .line 1227
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

    .line 1228
    .local v0, "d":[[D
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {p0}, Lorg/apache/commons/math3/linear/RealMatrix;->getRowDimension()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 1229
    aget-object v2, v0, v1

    invoke-interface {p0, v1, v6}, Lorg/apache/commons/math3/linear/RealMatrix;->getEntry(II)D

    move-result-wide v4

    aput-wide v4, v2, v1

    .line 1228
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1231
    :cond_0
    new-instance v2, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    invoke-direct {v2, v0, v6}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;-><init>([[DZ)V

    .line 1237
    :goto_1
    return-object v2

    .line 1233
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

    .line 1234
    .restart local v0    # "d":[[D
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_2
    invoke-interface {p0}, Lorg/apache/commons/math3/linear/RealMatrix;->getColumnDimension()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 1235
    aget-object v2, v0, v1

    invoke-interface {p0, v1, v1}, Lorg/apache/commons/math3/linear/RealMatrix;->getEntry(II)D

    move-result-wide v4

    aput-wide v4, v2, v6

    .line 1234
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1237
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
    .line 1165
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

    .line 1166
    .local v1, "d":[[D
    const/4 v2, 0x0

    .local v2, "r":I
    :goto_0
    invoke-interface {p0}, Lorg/apache/commons/math3/linear/RealMatrix;->getRowDimension()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 1167
    const/4 v0, 0x0

    .local v0, "c":I
    :goto_1
    invoke-interface {p0}, Lorg/apache/commons/math3/linear/RealMatrix;->getColumnDimension()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 1168
    aget-object v3, v1, v2

    invoke-interface {p0, v2, v0}, Lorg/apache/commons/math3/linear/RealMatrix;->getEntry(II)D

    move-result-wide v4

    invoke-interface {p1, v2, v0}, Lorg/apache/commons/math3/linear/RealMatrix;->getEntry(II)D

    move-result-wide v6

    div-double/2addr v4, v6

    aput-wide v4, v3, v0

    .line 1167
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1166
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1171
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
    .line 1276
    filled-new-array {p0, p1}, [I

    move-result-object v2

    sget-object v3, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v3, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[D

    .line 1277
    .local v0, "d":[[D
    const/4 v1, 0x0

    .local v1, "r":I
    :goto_0
    if-ge v1, p0, :cond_1

    .line 1278
    if-ge v1, p1, :cond_0

    .line 1279
    aget-object v2, v0, v1

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    aput-wide v4, v2, v1

    .line 1277
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1282
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
    .line 696
    move-object/from16 v0, p0

    iget v2, v0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->lambda:I

    if-gtz v2, :cond_0

    .line 699
    const-wide/high16 v2, 0x4008000000000000L    # 3.0

    move-object/from16 v0, p0

    iget v4, v0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->dimension:I

    int-to-double v4, v4

    invoke-static {v4, v5}, Lorg/apache/commons/math3/util/FastMath;->log(D)D

    move-result-wide v4

    mul-double/2addr v2, v4

    double-to-int v2, v2

    add-int/lit8 v2, v2, 0x4

    move-object/from16 v0, p0

    iput v2, v0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->lambda:I

    .line 702
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

    .line 703
    .local v10, "sigmaArray":[[D
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    move-object/from16 v0, p1

    array-length v2, v0

    if-ge v8, v2, :cond_2

    .line 706
    aget-object v4, v10, v8

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->inputSigma:[D

    if-nez v2, :cond_1

    const-wide v2, 0x3fd3333333333333L    # 0.3

    :goto_1
    aput-wide v2, v4, v5

    .line 703
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 706
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->inputSigma:[D

    aget-wide v2, v2, v8

    goto :goto_1

    .line 708
    :cond_2
    new-instance v9, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    const/4 v2, 0x0

    invoke-direct {v9, v10, v2}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;-><init>([[DZ)V

    .line 709
    .local v9, "insigma":Lorg/apache/commons/math3/linear/RealMatrix;
    invoke-static {v9}, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->max(Lorg/apache/commons/math3/linear/RealMatrix;)D

    move-result-wide v2

    move-object/from16 v0, p0

    iput-wide v2, v0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->sigma:D

    .line 712
    const-wide v2, 0x408f400000000000L    # 1000.0

    invoke-static {v9}, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->max(Lorg/apache/commons/math3/linear/RealMatrix;)D

    move-result-wide v4

    mul-double/2addr v2, v4

    move-object/from16 v0, p0

    iput-wide v2, v0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->stopTolUpX:D

    .line 713
    const-wide v2, 0x3da5fd7fe1796495L    # 1.0E-11

    invoke-static {v9}, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->max(Lorg/apache/commons/math3/linear/RealMatrix;)D

    move-result-wide v4

    mul-double/2addr v2, v4

    move-object/from16 v0, p0

    iput-wide v2, v0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->stopTolX:D

    .line 714
    const-wide v2, 0x3d719799812dea11L    # 1.0E-12

    move-object/from16 v0, p0

    iput-wide v2, v0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->stopTolFun:D

    .line 715
    const-wide v2, 0x3d3c25c268497682L    # 1.0E-13

    move-object/from16 v0, p0

    iput-wide v2, v0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->stopTolHistFun:D

    .line 718
    move-object/from16 v0, p0

    iget v2, v0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->lambda:I

    div-int/lit8 v2, v2, 0x2

    move-object/from16 v0, p0

    iput v2, v0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->mu:I

    .line 719
    move-object/from16 v0, p0

    iget v2, v0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->mu:I

    int-to-double v2, v2

    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    add-double/2addr v2, v4

    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/FastMath;->log(D)D

    move-result-wide v2

    move-object/from16 v0, p0

    iput-wide v2, v0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->logMu2:D

    .line 720
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    move-object/from16 v0, p0

    iget v4, v0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->mu:I

    int-to-double v4, v4

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    invoke-static/range {v2 .. v7}, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->sequence(DDD)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v2

    invoke-static {v2}, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->log(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v2

    const-wide/high16 v4, -0x4010000000000000L    # -1.0

    invoke-interface {v2, v4, v5}, Lorg/apache/commons/math3/linear/RealMatrix;->scalarMultiply(D)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v2

    move-object/from16 v0, p0

    iget-wide v4, v0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->logMu2:D

    invoke-interface {v2, v4, v5}, Lorg/apache/commons/math3/linear/RealMatrix;->scalarAdd(D)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->weights:Lorg/apache/commons/math3/linear/RealMatrix;

    .line 721
    const-wide/16 v12, 0x0

    .line 722
    .local v12, "sumw":D
    const-wide/16 v14, 0x0

    .line 723
    .local v14, "sumwq":D
    const/4 v8, 0x0

    :goto_2
    move-object/from16 v0, p0

    iget v2, v0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->mu:I

    if-ge v8, v2, :cond_3

    .line 724
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->weights:Lorg/apache/commons/math3/linear/RealMatrix;

    const/4 v3, 0x0

    invoke-interface {v2, v8, v3}, Lorg/apache/commons/math3/linear/RealMatrix;->getEntry(II)D

    move-result-wide v16

    .line 725
    .local v16, "w":D
    add-double v12, v12, v16

    .line 726
    mul-double v2, v16, v16

    add-double/2addr v14, v2

    .line 723
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 728
    .end local v16    # "w":D
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->weights:Lorg/apache/commons/math3/linear/RealMatrix;

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    div-double/2addr v4, v12

    invoke-interface {v2, v4, v5}, Lorg/apache/commons/math3/linear/RealMatrix;->scalarMultiply(D)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->weights:Lorg/apache/commons/math3/linear/RealMatrix;

    .line 729
    mul-double v2, v12, v12

    div-double/2addr v2, v14

    move-object/from16 v0, p0

    iput-wide v2, v0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->mueff:D

    .line 732
    const-wide/high16 v2, 0x4010000000000000L    # 4.0

    move-object/from16 v0, p0

    iget-wide v4, v0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->mueff:D

    move-object/from16 v0, p0

    iget v6, v0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->dimension:I

    int-to-double v6, v6

    div-double/2addr v4, v6

    add-double/2addr v2, v4

    move-object/from16 v0, p0

    iget v4, v0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->dimension:I

    add-int/lit8 v4, v4, 0x4

    int-to-double v4, v4

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->mueff:D

    move-wide/from16 v18, v0

    mul-double v6, v6, v18

    move-object/from16 v0, p0

    iget v11, v0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->dimension:I

    int-to-double v0, v11

    move-wide/from16 v18, v0

    div-double v6, v6, v18

    add-double/2addr v4, v6

    div-double/2addr v2, v4

    move-object/from16 v0, p0

    iput-wide v2, v0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->cc:D

    .line 734
    move-object/from16 v0, p0

    iget-wide v2, v0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->mueff:D

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    add-double/2addr v2, v4

    move-object/from16 v0, p0

    iget v4, v0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->dimension:I

    int-to-double v4, v4

    move-object/from16 v0, p0

    iget-wide v6, v0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->mueff:D

    add-double/2addr v4, v6

    const-wide/high16 v6, 0x4008000000000000L    # 3.0

    add-double/2addr v4, v6

    div-double/2addr v2, v4

    move-object/from16 v0, p0

    iput-wide v2, v0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->cs:D

    .line 735
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    const-wide/16 v6, 0x0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->mueff:D

    move-wide/from16 v18, v0

    const-wide/high16 v20, 0x3ff0000000000000L    # 1.0

    sub-double v18, v18, v20

    move-object/from16 v0, p0

    iget v11, v0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->dimension:I

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

    iget v11, v0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->dimension:I

    int-to-double v0, v11

    move-wide/from16 v18, v0

    const-wide v20, 0x3eb0c6f7a0b5ed8dL    # 1.0E-6

    move-object/from16 v0, p0

    iget v11, v0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->maxIterations:I

    int-to-double v0, v11

    move-wide/from16 v22, v0

    add-double v20, v20, v22

    div-double v18, v18, v20

    sub-double v6, v6, v18

    invoke-static {v4, v5, v6, v7}, Lorg/apache/commons/math3/util/FastMath;->max(DD)D

    move-result-wide v4

    mul-double/2addr v2, v4

    move-object/from16 v0, p0

    iget-wide v4, v0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->cs:D

    add-double/2addr v2, v4

    move-object/from16 v0, p0

    iput-wide v2, v0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->damps:D

    .line 739
    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    move-object/from16 v0, p0

    iget v4, v0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->dimension:I

    int-to-double v4, v4

    const-wide v6, 0x3ff4cccccccccccdL    # 1.3

    add-double/2addr v4, v6

    move-object/from16 v0, p0

    iget v6, v0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->dimension:I

    int-to-double v6, v6

    const-wide v18, 0x3ff4cccccccccccdL    # 1.3

    add-double v6, v6, v18

    mul-double/2addr v4, v6

    move-object/from16 v0, p0

    iget-wide v6, v0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->mueff:D

    add-double/2addr v4, v6

    div-double/2addr v2, v4

    move-object/from16 v0, p0

    iput-wide v2, v0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->ccov1:D

    .line 740
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    move-object/from16 v0, p0

    iget-wide v4, v0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->ccov1:D

    sub-double/2addr v2, v4

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    move-object/from16 v0, p0

    iget-wide v6, v0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->mueff:D

    const-wide/high16 v18, 0x4000000000000000L    # 2.0

    sub-double v6, v6, v18

    const-wide/high16 v18, 0x3ff0000000000000L    # 1.0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->mueff:D

    move-wide/from16 v20, v0

    div-double v18, v18, v20

    add-double v6, v6, v18

    mul-double/2addr v4, v6

    move-object/from16 v0, p0

    iget v6, v0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->dimension:I

    add-int/lit8 v6, v6, 0x2

    move-object/from16 v0, p0

    iget v7, v0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->dimension:I

    add-int/lit8 v7, v7, 0x2

    mul-int/2addr v6, v7

    int-to-double v6, v6

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->mueff:D

    move-wide/from16 v18, v0

    add-double v6, v6, v18

    div-double/2addr v4, v6

    invoke-static {v2, v3, v4, v5}, Lorg/apache/commons/math3/util/FastMath;->min(DD)D

    move-result-wide v2

    move-object/from16 v0, p0

    iput-wide v2, v0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->ccovmu:D

    .line 742
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    move-object/from16 v0, p0

    iget-wide v4, v0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->ccov1:D

    move-object/from16 v0, p0

    iget v6, v0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->dimension:I

    int-to-double v6, v6

    const-wide/high16 v18, 0x3ff8000000000000L    # 1.5

    add-double v6, v6, v18

    mul-double/2addr v4, v6

    const-wide/high16 v6, 0x4008000000000000L    # 3.0

    div-double/2addr v4, v6

    invoke-static {v2, v3, v4, v5}, Lorg/apache/commons/math3/util/FastMath;->min(DD)D

    move-result-wide v2

    move-object/from16 v0, p0

    iput-wide v2, v0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->ccov1Sep:D

    .line 743
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    move-object/from16 v0, p0

    iget-wide v4, v0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->ccov1:D

    sub-double/2addr v2, v4

    move-object/from16 v0, p0

    iget-wide v4, v0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->ccovmu:D

    move-object/from16 v0, p0

    iget v6, v0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->dimension:I

    int-to-double v6, v6

    const-wide/high16 v18, 0x3ff8000000000000L    # 1.5

    add-double v6, v6, v18

    mul-double/2addr v4, v6

    const-wide/high16 v6, 0x4008000000000000L    # 3.0

    div-double/2addr v4, v6

    invoke-static {v2, v3, v4, v5}, Lorg/apache/commons/math3/util/FastMath;->min(DD)D

    move-result-wide v2

    move-object/from16 v0, p0

    iput-wide v2, v0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->ccovmuSep:D

    .line 744
    move-object/from16 v0, p0

    iget v2, v0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->dimension:I

    int-to-double v2, v2

    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v2

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v18, 0x4010000000000000L    # 4.0

    move-object/from16 v0, p0

    iget v11, v0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->dimension:I

    int-to-double v0, v11

    move-wide/from16 v20, v0

    mul-double v18, v18, v20

    div-double v6, v6, v18

    sub-double/2addr v4, v6

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v18, 0x4035000000000000L    # 21.0

    move-object/from16 v0, p0

    iget v11, v0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->dimension:I

    int-to-double v0, v11

    move-wide/from16 v20, v0

    mul-double v18, v18, v20

    move-object/from16 v0, p0

    iget v11, v0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->dimension:I

    int-to-double v0, v11

    move-wide/from16 v20, v0

    mul-double v18, v18, v20

    div-double v6, v6, v18

    add-double/2addr v4, v6

    mul-double/2addr v2, v4

    move-object/from16 v0, p0

    iput-wide v2, v0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->chiN:D

    .line 747
    invoke-static/range {p1 .. p1}, Lorg/apache/commons/math3/linear/MatrixUtils;->createColumnRealMatrix([D)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->xmean:Lorg/apache/commons/math3/linear/RealMatrix;

    .line 748
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    move-object/from16 v0, p0

    iget-wide v4, v0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->sigma:D

    div-double/2addr v2, v4

    invoke-interface {v9, v2, v3}, Lorg/apache/commons/math3/linear/RealMatrix;->scalarMultiply(D)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->diagD:Lorg/apache/commons/math3/linear/RealMatrix;

    .line 749
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->diagD:Lorg/apache/commons/math3/linear/RealMatrix;

    invoke-static {v2}, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->square(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->diagC:Lorg/apache/commons/math3/linear/RealMatrix;

    .line 750
    move-object/from16 v0, p0

    iget v2, v0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->dimension:I

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->zeros(II)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->pc:Lorg/apache/commons/math3/linear/RealMatrix;

    .line 751
    move-object/from16 v0, p0

    iget v2, v0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->dimension:I

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->zeros(II)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->ps:Lorg/apache/commons/math3/linear/RealMatrix;

    .line 752
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->ps:Lorg/apache/commons/math3/linear/RealMatrix;

    invoke-interface {v2}, Lorg/apache/commons/math3/linear/RealMatrix;->getFrobeniusNorm()D

    move-result-wide v2

    move-object/from16 v0, p0

    iput-wide v2, v0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->normps:D

    .line 754
    move-object/from16 v0, p0

    iget v2, v0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->dimension:I

    move-object/from16 v0, p0

    iget v3, v0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->dimension:I

    invoke-static {v2, v3}, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->eye(II)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->B:Lorg/apache/commons/math3/linear/RealMatrix;

    .line 755
    move-object/from16 v0, p0

    iget v2, v0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->dimension:I

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->ones(II)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->D:Lorg/apache/commons/math3/linear/RealMatrix;

    .line 756
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->B:Lorg/apache/commons/math3/linear/RealMatrix;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->diagD:Lorg/apache/commons/math3/linear/RealMatrix;

    invoke-interface {v3}, Lorg/apache/commons/math3/linear/RealMatrix;->transpose()Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->dimension:I

    const/4 v5, 0x1

    invoke-static {v3, v4, v5}, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->repmat(Lorg/apache/commons/math3/linear/RealMatrix;II)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->times(Lorg/apache/commons/math3/linear/RealMatrix;Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->BD:Lorg/apache/commons/math3/linear/RealMatrix;

    .line 757
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->B:Lorg/apache/commons/math3/linear/RealMatrix;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->D:Lorg/apache/commons/math3/linear/RealMatrix;

    invoke-static {v3}, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->square(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v3

    invoke-static {v3}, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->diag(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->B:Lorg/apache/commons/math3/linear/RealMatrix;

    invoke-interface {v4}, Lorg/apache/commons/math3/linear/RealMatrix;->transpose()Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/apache/commons/math3/linear/RealMatrix;->multiply(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/apache/commons/math3/linear/RealMatrix;->multiply(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->C:Lorg/apache/commons/math3/linear/RealMatrix;

    .line 758
    move-object/from16 v0, p0

    iget v2, v0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->dimension:I

    mul-int/lit8 v2, v2, 0x1e

    int-to-double v2, v2

    move-object/from16 v0, p0

    iget v4, v0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->lambda:I

    int-to-double v4, v4

    div-double/2addr v2, v4

    double-to-int v2, v2

    add-int/lit8 v2, v2, 0xa

    move-object/from16 v0, p0

    iput v2, v0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->historySize:I

    .line 759
    move-object/from16 v0, p0

    iget v2, v0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->historySize:I

    new-array v2, v2, [D

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->fitnessHistory:[D

    .line 760
    const/4 v8, 0x0

    :goto_3
    move-object/from16 v0, p0

    iget v2, v0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->historySize:I

    if-ge v8, v2, :cond_4

    .line 761
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->fitnessHistory:[D

    const-wide v4, 0x7fefffffffffffffL    # Double.MAX_VALUE

    aput-wide v4, v2, v8

    .line 760
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    .line 763
    :cond_4
    return-void
.end method

.method private static inverse([I)[I
    .locals 3
    .param p0, "indices"    # [I

    .prologue
    .line 1396
    array-length v2, p0

    new-array v1, v2, [I

    .line 1397
    .local v1, "inverse":[I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_0

    .line 1398
    aget v2, p0, v0

    aput v0, v1, v2

    .line 1397
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1400
    :cond_0
    return-object v1
.end method

.method private static log(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;
    .locals 6
    .param p0, "m"    # Lorg/apache/commons/math3/linear/RealMatrix;

    .prologue
    .line 1106
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

    .line 1107
    .local v1, "d":[[D
    const/4 v2, 0x0

    .local v2, "r":I
    :goto_0
    invoke-interface {p0}, Lorg/apache/commons/math3/linear/RealMatrix;->getRowDimension()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 1108
    const/4 v0, 0x0

    .local v0, "c":I
    :goto_1
    invoke-interface {p0}, Lorg/apache/commons/math3/linear/RealMatrix;->getColumnDimension()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 1109
    aget-object v3, v1, v2

    invoke-interface {p0, v2, v0}, Lorg/apache/commons/math3/linear/RealMatrix;->getEntry(II)D

    move-result-wide v4

    invoke-static {v4, v5}, Lorg/apache/commons/math3/util/FastMath;->log(D)D

    move-result-wide v4

    aput-wide v4, v3, v0

    .line 1108
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1107
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1112
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
    .line 1334
    const-wide v4, -0x10000000000001L

    .line 1335
    .local v4, "max":D
    const/4 v1, 0x0

    .local v1, "r":I
    :goto_0
    invoke-interface {p0}, Lorg/apache/commons/math3/linear/RealMatrix;->getRowDimension()I

    move-result v6

    if-ge v1, v6, :cond_2

    .line 1336
    const/4 v0, 0x0

    .local v0, "c":I
    :goto_1
    invoke-interface {p0}, Lorg/apache/commons/math3/linear/RealMatrix;->getColumnDimension()I

    move-result v6

    if-ge v0, v6, :cond_1

    .line 1337
    invoke-interface {p0, v1, v0}, Lorg/apache/commons/math3/linear/RealMatrix;->getEntry(II)D

    move-result-wide v2

    .line 1338
    .local v2, "e":D
    cmpg-double v6, v4, v2

    if-gez v6, :cond_0

    .line 1339
    move-wide v4, v2

    .line 1336
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1335
    .end local v2    # "e":D
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1343
    .end local v0    # "c":I
    :cond_2
    return-wide v4
.end method

.method private static max([D)D
    .locals 6
    .param p0, "m"    # [D

    .prologue
    .line 1368
    const-wide v0, -0x10000000000001L

    .line 1369
    .local v0, "max":D
    const/4 v2, 0x0

    .local v2, "r":I
    :goto_0
    array-length v3, p0

    if-ge v2, v3, :cond_1

    .line 1370
    aget-wide v4, p0, v2

    cmpg-double v3, v0, v4

    if-gez v3, :cond_0

    .line 1371
    aget-wide v0, p0, v2

    .line 1369
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1374
    :cond_1
    return-wide v0
.end method

.method private static min(Lorg/apache/commons/math3/linear/RealMatrix;)D
    .locals 7
    .param p0, "m"    # Lorg/apache/commons/math3/linear/RealMatrix;

    .prologue
    .line 1351
    const-wide v4, 0x7fefffffffffffffL    # Double.MAX_VALUE

    .line 1352
    .local v4, "min":D
    const/4 v1, 0x0

    .local v1, "r":I
    :goto_0
    invoke-interface {p0}, Lorg/apache/commons/math3/linear/RealMatrix;->getRowDimension()I

    move-result v6

    if-ge v1, v6, :cond_2

    .line 1353
    const/4 v0, 0x0

    .local v0, "c":I
    :goto_1
    invoke-interface {p0}, Lorg/apache/commons/math3/linear/RealMatrix;->getColumnDimension()I

    move-result v6

    if-ge v0, v6, :cond_1

    .line 1354
    invoke-interface {p0, v1, v0}, Lorg/apache/commons/math3/linear/RealMatrix;->getEntry(II)D

    move-result-wide v2

    .line 1355
    .local v2, "e":D
    cmpl-double v6, v4, v2

    if-lez v6, :cond_0

    .line 1356
    move-wide v4, v2

    .line 1353
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1352
    .end local v2    # "e":D
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1360
    .end local v0    # "c":I
    :cond_2
    return-wide v4
.end method

.method private static min([D)D
    .locals 6
    .param p0, "m"    # [D

    .prologue
    .line 1382
    const-wide v0, 0x7fefffffffffffffL    # Double.MAX_VALUE

    .line 1383
    .local v0, "min":D
    const/4 v2, 0x0

    .local v2, "r":I
    :goto_0
    array-length v3, p0

    if-ge v2, v3, :cond_1

    .line 1384
    aget-wide v4, p0, v2

    cmpl-double v3, v0, v4

    if-lez v3, :cond_0

    .line 1385
    aget-wide v0, p0, v2

    .line 1383
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1388
    :cond_1
    return-wide v0
.end method

.method private static ones(II)Lorg/apache/commons/math3/linear/RealMatrix;
    .locals 6
    .param p0, "n"    # I
    .param p1, "m"    # I

    .prologue
    .line 1262
    filled-new-array {p0, p1}, [I

    move-result-object v2

    sget-object v3, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v3, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[D

    .line 1263
    .local v0, "d":[[D
    const/4 v1, 0x0

    .local v1, "r":I
    :goto_0
    if-ge v1, p0, :cond_0

    .line 1264
    aget-object v2, v0, v1

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    invoke-static {v2, v4, v5}, Ljava/util/Arrays;->fill([DD)V

    .line 1263
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1266
    :cond_0
    new-instance v2, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v3}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;-><init>([[DZ)V

    return-object v2
.end method

.method private varargs parseOptimizationData([Lorg/apache/commons/math3/optimization/OptimizationData;)V
    .locals 5
    .param p1, "optData"    # [Lorg/apache/commons/math3/optimization/OptimizationData;

    .prologue
    .line 654
    move-object v0, p1

    .local v0, "arr$":[Lorg/apache/commons/math3/optimization/OptimizationData;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_2

    aget-object v1, v0, v2

    .line 655
    .local v1, "data":Lorg/apache/commons/math3/optimization/OptimizationData;
    instance-of v4, v1, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer$Sigma;

    if-eqz v4, :cond_1

    .line 656
    check-cast v1, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer$Sigma;

    .end local v1    # "data":Lorg/apache/commons/math3/optimization/OptimizationData;
    invoke-virtual {v1}, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer$Sigma;->getSigma()[D

    move-result-object v4

    iput-object v4, p0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->inputSigma:[D

    .line 654
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 659
    .restart local v1    # "data":Lorg/apache/commons/math3/optimization/OptimizationData;
    :cond_1
    instance-of v4, v1, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer$PopulationSize;

    if-eqz v4, :cond_0

    .line 660
    check-cast v1, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer$PopulationSize;

    .end local v1    # "data":Lorg/apache/commons/math3/optimization/OptimizationData;
    invoke-virtual {v1}, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer$PopulationSize;->getPopulationSize()I

    move-result v4

    iput v4, p0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->lambda:I

    goto :goto_1

    .line 664
    :cond_2
    return-void
.end method

.method private static push([DD)V
    .locals 5
    .param p0, "vals"    # [D
    .param p1, "val"    # D

    .prologue
    .line 928
    array-length v1, p0

    add-int/lit8 v0, v1, -0x1

    .local v0, "i":I
    :goto_0
    if-lez v0, :cond_0

    .line 929
    add-int/lit8 v1, v0, -0x1

    aget-wide v2, p0, v1

    aput-wide v2, p0, v0

    .line 928
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 931
    :cond_0
    const/4 v1, 0x0

    aput-wide p1, p0, v1

    .line 932
    return-void
.end method

.method private randn(I)[D
    .locals 4
    .param p1, "size"    # I

    .prologue
    .line 1420
    new-array v1, p1, [D

    .line 1421
    .local v1, "randn":[D
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p1, :cond_0

    .line 1422
    iget-object v2, p0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->random:Lorg/apache/commons/math3/random/RandomGenerator;

    invoke-interface {v2}, Lorg/apache/commons/math3/random/RandomGenerator;->nextGaussian()D

    move-result-wide v2

    aput-wide v2, v1, v0

    .line 1421
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1424
    :cond_0
    return-object v1
.end method

.method private randn1(II)Lorg/apache/commons/math3/linear/RealMatrix;
    .locals 6
    .param p1, "size"    # I
    .param p2, "popSize"    # I

    .prologue
    .line 1433
    filled-new-array {p1, p2}, [I

    move-result-object v3

    sget-object v4, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v4, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[D

    .line 1434
    .local v1, "d":[[D
    const/4 v2, 0x0

    .local v2, "r":I
    :goto_0
    if-ge v2, p1, :cond_1

    .line 1435
    const/4 v0, 0x0

    .local v0, "c":I
    :goto_1
    if-ge v0, p2, :cond_0

    .line 1436
    aget-object v3, v1, v2

    iget-object v4, p0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->random:Lorg/apache/commons/math3/random/RandomGenerator;

    invoke-interface {v4}, Lorg/apache/commons/math3/random/RandomGenerator;->nextGaussian()D

    move-result-wide v4

    aput-wide v4, v3, v0

    .line 1435
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1434
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1439
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
    .line 1301
    invoke-interface {p0}, Lorg/apache/commons/math3/linear/RealMatrix;->getRowDimension()I

    move-result v4

    .line 1302
    .local v4, "rd":I
    invoke-interface {p0}, Lorg/apache/commons/math3/linear/RealMatrix;->getColumnDimension()I

    move-result v1

    .line 1303
    .local v1, "cd":I
    mul-int v5, p1, v4

    mul-int v6, p2, v1

    filled-new-array {v5, v6}, [I

    move-result-object v5

    sget-object v6, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v6, v5}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [[D

    .line 1304
    .local v2, "d":[[D
    const/4 v3, 0x0

    .local v3, "r":I
    :goto_0
    mul-int v5, p1, v4

    if-ge v3, v5, :cond_1

    .line 1305
    const/4 v0, 0x0

    .local v0, "c":I
    :goto_1
    mul-int v5, p2, v1

    if-ge v0, v5, :cond_0

    .line 1306
    aget-object v5, v2, v3

    rem-int v6, v3, v4

    rem-int v7, v0, v1

    invoke-interface {p0, v6, v7}, Lorg/apache/commons/math3/linear/RealMatrix;->getEntry(II)D

    move-result-wide v6

    aput-wide v6, v5, v0

    .line 1305
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1304
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1309
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
    .line 1408
    array-length v2, p0

    new-array v1, v2, [I

    .line 1409
    .local v1, "reverse":[I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_0

    .line 1410
    array-length v2, p0

    sub-int/2addr v2, v0

    add-int/lit8 v2, v2, -0x1

    aget v2, p0, v2

    aput v2, v1, v0

    .line 1409
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1412
    :cond_0
    return-object v1
.end method

.method private static selectColumns(Lorg/apache/commons/math3/linear/RealMatrix;[I)Lorg/apache/commons/math3/linear/RealMatrix;
    .locals 6
    .param p0, "m"    # Lorg/apache/commons/math3/linear/RealMatrix;
    .param p1, "cols"    # [I

    .prologue
    .line 1180
    invoke-interface {p0}, Lorg/apache/commons/math3/linear/RealMatrix;->getRowDimension()I

    move-result v3

    array-length v4, p1

    filled-new-array {v3, v4}, [I

    move-result-object v3

    sget-object v4, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v4, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[D

    .line 1181
    .local v1, "d":[[D
    const/4 v2, 0x0

    .local v2, "r":I
    :goto_0
    invoke-interface {p0}, Lorg/apache/commons/math3/linear/RealMatrix;->getRowDimension()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 1182
    const/4 v0, 0x0

    .local v0, "c":I
    :goto_1
    array-length v3, p1

    if-ge v0, v3, :cond_0

    .line 1183
    aget-object v3, v1, v2

    aget v4, p1, v0

    invoke-interface {p0, v2, v4}, Lorg/apache/commons/math3/linear/RealMatrix;->getEntry(II)D

    move-result-wide v4

    aput-wide v4, v3, v0

    .line 1182
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1181
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1186
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
    .line 1319
    sub-double v6, p2, p0

    div-double/2addr v6, p4

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    add-double/2addr v6, v8

    double-to-int v2, v6

    .line 1320
    .local v2, "size":I
    const/4 v3, 0x1

    filled-new-array {v2, v3}, [I

    move-result-object v3

    sget-object v6, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v6, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[D

    .line 1321
    .local v0, "d":[[D
    move-wide v4, p0

    .line 1322
    .local v4, "value":D
    const/4 v1, 0x0

    .local v1, "r":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 1323
    aget-object v3, v0, v1

    const/4 v6, 0x0

    aput-wide v4, v3, v6

    .line 1324
    add-double/2addr v4, p4

    .line 1322
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1326
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
    .line 941
    array-length v3, p1

    new-array v0, v3, [Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer$DoubleIndex;

    .line 942
    .local v0, "dis":[Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer$DoubleIndex;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v3, p1

    if-ge v1, v3, :cond_0

    .line 943
    new-instance v3, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer$DoubleIndex;

    aget-wide v4, p1, v1

    invoke-direct {v3, v4, v5, v1}, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer$DoubleIndex;-><init>(DI)V

    aput-object v3, v0, v1

    .line 942
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 945
    :cond_0
    invoke-static {v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 946
    array-length v3, p1

    new-array v2, v3, [I

    .line 947
    .local v2, "indices":[I
    const/4 v1, 0x0

    :goto_1
    array-length v3, p1

    if-ge v1, v3, :cond_1

    .line 948
    aget-object v3, v0, v1

    invoke-static {v3}, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer$DoubleIndex;->access$100(Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer$DoubleIndex;)I

    move-result v3

    aput v3, v2, v1

    .line 947
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 950
    :cond_1
    return-object v2
.end method

.method private static sqrt(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;
    .locals 6
    .param p0, "m"    # Lorg/apache/commons/math3/linear/RealMatrix;

    .prologue
    .line 1120
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

    .line 1121
    .local v1, "d":[[D
    const/4 v2, 0x0

    .local v2, "r":I
    :goto_0
    invoke-interface {p0}, Lorg/apache/commons/math3/linear/RealMatrix;->getRowDimension()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 1122
    const/4 v0, 0x0

    .local v0, "c":I
    :goto_1
    invoke-interface {p0}, Lorg/apache/commons/math3/linear/RealMatrix;->getColumnDimension()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 1123
    aget-object v3, v1, v2

    invoke-interface {p0, v2, v0}, Lorg/apache/commons/math3/linear/RealMatrix;->getEntry(II)D

    move-result-wide v4

    invoke-static {v4, v5}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v4

    aput-wide v4, v3, v0

    .line 1122
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1121
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1126
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
    .line 1134
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

    .line 1135
    .local v1, "d":[[D
    const/4 v4, 0x0

    .local v4, "r":I
    :goto_0
    invoke-interface {p0}, Lorg/apache/commons/math3/linear/RealMatrix;->getRowDimension()I

    move-result v5

    if-ge v4, v5, :cond_1

    .line 1136
    const/4 v0, 0x0

    .local v0, "c":I
    :goto_1
    invoke-interface {p0}, Lorg/apache/commons/math3/linear/RealMatrix;->getColumnDimension()I

    move-result v5

    if-ge v0, v5, :cond_0

    .line 1137
    invoke-interface {p0, v4, v0}, Lorg/apache/commons/math3/linear/RealMatrix;->getEntry(II)D

    move-result-wide v2

    .line 1138
    .local v2, "e":D
    aget-object v5, v1, v4

    mul-double v6, v2, v2

    aput-wide v6, v5, v0

    .line 1136
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1135
    .end local v2    # "e":D
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1141
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

    .line 1209
    const/4 v3, 0x1

    invoke-interface {p0}, Lorg/apache/commons/math3/linear/RealMatrix;->getColumnDimension()I

    move-result v6

    filled-new-array {v3, v6}, [I

    move-result-object v3

    sget-object v6, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v6, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[D

    .line 1210
    .local v1, "d":[[D
    const/4 v0, 0x0

    .local v0, "c":I
    :goto_0
    invoke-interface {p0}, Lorg/apache/commons/math3/linear/RealMatrix;->getColumnDimension()I

    move-result v3

    if-ge v0, v3, :cond_1

    .line 1211
    const-wide/16 v4, 0x0

    .line 1212
    .local v4, "sum":D
    const/4 v2, 0x0

    .local v2, "r":I
    :goto_1
    invoke-interface {p0}, Lorg/apache/commons/math3/linear/RealMatrix;->getRowDimension()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 1213
    invoke-interface {p0, v2, v0}, Lorg/apache/commons/math3/linear/RealMatrix;->getEntry(II)D

    move-result-wide v6

    add-double/2addr v4, v6

    .line 1212
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1215
    :cond_0
    aget-object v3, v1, v8

    aput-wide v4, v3, v0

    .line 1210
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1217
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
    .line 1150
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

    .line 1151
    .local v1, "d":[[D
    const/4 v2, 0x0

    .local v2, "r":I
    :goto_0
    invoke-interface {p0}, Lorg/apache/commons/math3/linear/RealMatrix;->getRowDimension()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 1152
    const/4 v0, 0x0

    .local v0, "c":I
    :goto_1
    invoke-interface {p0}, Lorg/apache/commons/math3/linear/RealMatrix;->getColumnDimension()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 1153
    aget-object v3, v1, v2

    invoke-interface {p0, v2, v0}, Lorg/apache/commons/math3/linear/RealMatrix;->getEntry(II)D

    move-result-wide v4

    invoke-interface {p1, v2, v0}, Lorg/apache/commons/math3/linear/RealMatrix;->getEntry(II)D

    move-result-wide v6

    mul-double/2addr v4, v6

    aput-wide v4, v3, v0

    .line 1152
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1151
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1156
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
    .line 1195
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

    .line 1196
    .local v1, "d":[[D
    const/4 v2, 0x0

    .local v2, "r":I
    :goto_0
    invoke-interface {p0}, Lorg/apache/commons/math3/linear/RealMatrix;->getRowDimension()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 1197
    const/4 v0, 0x0

    .local v0, "c":I
    :goto_1
    invoke-interface {p0}, Lorg/apache/commons/math3/linear/RealMatrix;->getColumnDimension()I

    move-result v3

    if-ge v0, v3, :cond_1

    .line 1198
    aget-object v3, v1, v2

    sub-int v4, v0, p1

    if-gt v2, v4, :cond_0

    invoke-interface {p0, v2, v0}, Lorg/apache/commons/math3/linear/RealMatrix;->getEntry(II)D

    move-result-wide v4

    :goto_2
    aput-wide v4, v3, v0

    .line 1197
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1198
    :cond_0
    const-wide/16 v4, 0x0

    goto :goto_2

    .line 1196
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1201
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
    .line 891
    iget-wide v4, p0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->ccov1:D

    iget-wide v6, p0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->ccovmu:D

    add-double/2addr v4, v6

    add-double/2addr v4, p1

    const-wide/16 v6, 0x0

    cmpl-double v4, v4, v6

    if-lez v4, :cond_4

    iget v4, p0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->iterations:I

    int-to-double v4, v4

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    rem-double/2addr v4, v6

    iget-wide v6, p0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->ccov1:D

    iget-wide v8, p0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->ccovmu:D

    add-double/2addr v6, v8

    add-double/2addr v6, p1

    div-double/2addr v4, v6

    iget v6, p0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->dimension:I

    int-to-double v6, v6

    div-double/2addr v4, v6

    const-wide/high16 v6, 0x4024000000000000L    # 10.0

    div-double/2addr v4, v6

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    cmpg-double v4, v4, v6

    if-gez v4, :cond_4

    .line 894
    iget-object v4, p0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->C:Lorg/apache/commons/math3/linear/RealMatrix;

    const/4 v5, 0x0

    invoke-static {v4, v5}, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->triu(Lorg/apache/commons/math3/linear/RealMatrix;I)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v4

    iget-object v5, p0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->C:Lorg/apache/commons/math3/linear/RealMatrix;

    const/4 v6, 0x1

    invoke-static {v5, v6}, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->triu(Lorg/apache/commons/math3/linear/RealMatrix;I)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v5

    invoke-interface {v5}, Lorg/apache/commons/math3/linear/RealMatrix;->transpose()Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v5

    invoke-interface {v4, v5}, Lorg/apache/commons/math3/linear/RealMatrix;->add(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v4

    iput-object v4, p0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->C:Lorg/apache/commons/math3/linear/RealMatrix;

    .line 896
    new-instance v0, Lorg/apache/commons/math3/linear/EigenDecomposition;

    iget-object v4, p0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->C:Lorg/apache/commons/math3/linear/RealMatrix;

    invoke-direct {v0, v4}, Lorg/apache/commons/math3/linear/EigenDecomposition;-><init>(Lorg/apache/commons/math3/linear/RealMatrix;)V

    .line 897
    .local v0, "eig":Lorg/apache/commons/math3/linear/EigenDecomposition;
    invoke-virtual {v0}, Lorg/apache/commons/math3/linear/EigenDecomposition;->getV()Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v4

    iput-object v4, p0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->B:Lorg/apache/commons/math3/linear/RealMatrix;

    .line 898
    invoke-virtual {v0}, Lorg/apache/commons/math3/linear/EigenDecomposition;->getD()Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v4

    iput-object v4, p0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->D:Lorg/apache/commons/math3/linear/RealMatrix;

    .line 899
    iget-object v4, p0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->D:Lorg/apache/commons/math3/linear/RealMatrix;

    invoke-static {v4}, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->diag(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v4

    iput-object v4, p0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->diagD:Lorg/apache/commons/math3/linear/RealMatrix;

    .line 900
    iget-object v4, p0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->diagD:Lorg/apache/commons/math3/linear/RealMatrix;

    invoke-static {v4}, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->min(Lorg/apache/commons/math3/linear/RealMatrix;)D

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmpg-double v4, v4, v6

    if-gtz v4, :cond_2

    .line 901
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget v4, p0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->dimension:I

    if-ge v1, v4, :cond_1

    .line 902
    iget-object v4, p0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->diagD:Lorg/apache/commons/math3/linear/RealMatrix;

    const/4 v5, 0x0

    invoke-interface {v4, v1, v5}, Lorg/apache/commons/math3/linear/RealMatrix;->getEntry(II)D

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmpg-double v4, v4, v6

    if-gez v4, :cond_0

    .line 903
    iget-object v4, p0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->diagD:Lorg/apache/commons/math3/linear/RealMatrix;

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    invoke-interface {v4, v1, v5, v6, v7}, Lorg/apache/commons/math3/linear/RealMatrix;->setEntry(IID)V

    .line 901
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 906
    :cond_1
    iget-object v4, p0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->diagD:Lorg/apache/commons/math3/linear/RealMatrix;

    invoke-static {v4}, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->max(Lorg/apache/commons/math3/linear/RealMatrix;)D

    move-result-wide v4

    const-wide v6, 0x42d6bcc41e900000L    # 1.0E14

    div-double v2, v4, v6

    .line 907
    .local v2, "tfac":D
    iget-object v4, p0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->C:Lorg/apache/commons/math3/linear/RealMatrix;

    iget v5, p0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->dimension:I

    iget v6, p0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->dimension:I

    invoke-static {v5, v6}, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->eye(II)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v5

    invoke-interface {v5, v2, v3}, Lorg/apache/commons/math3/linear/RealMatrix;->scalarMultiply(D)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v5

    invoke-interface {v4, v5}, Lorg/apache/commons/math3/linear/RealMatrix;->add(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v4

    iput-object v4, p0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->C:Lorg/apache/commons/math3/linear/RealMatrix;

    .line 908
    iget-object v4, p0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->diagD:Lorg/apache/commons/math3/linear/RealMatrix;

    iget v5, p0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->dimension:I

    const/4 v6, 0x1

    invoke-static {v5, v6}, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->ones(II)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v5

    invoke-interface {v5, v2, v3}, Lorg/apache/commons/math3/linear/RealMatrix;->scalarMultiply(D)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v5

    invoke-interface {v4, v5}, Lorg/apache/commons/math3/linear/RealMatrix;->add(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v4

    iput-object v4, p0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->diagD:Lorg/apache/commons/math3/linear/RealMatrix;

    .line 910
    .end local v1    # "i":I
    .end local v2    # "tfac":D
    :cond_2
    iget-object v4, p0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->diagD:Lorg/apache/commons/math3/linear/RealMatrix;

    invoke-static {v4}, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->max(Lorg/apache/commons/math3/linear/RealMatrix;)D

    move-result-wide v4

    const-wide v6, 0x42d6bcc41e900000L    # 1.0E14

    iget-object v8, p0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->diagD:Lorg/apache/commons/math3/linear/RealMatrix;

    invoke-static {v8}, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->min(Lorg/apache/commons/math3/linear/RealMatrix;)D

    move-result-wide v8

    mul-double/2addr v6, v8

    cmpl-double v4, v4, v6

    if-lez v4, :cond_3

    .line 911
    iget-object v4, p0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->diagD:Lorg/apache/commons/math3/linear/RealMatrix;

    invoke-static {v4}, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->max(Lorg/apache/commons/math3/linear/RealMatrix;)D

    move-result-wide v4

    const-wide v6, 0x42d6bcc41e900000L    # 1.0E14

    div-double/2addr v4, v6

    iget-object v6, p0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->diagD:Lorg/apache/commons/math3/linear/RealMatrix;

    invoke-static {v6}, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->min(Lorg/apache/commons/math3/linear/RealMatrix;)D

    move-result-wide v6

    sub-double v2, v4, v6

    .line 912
    .restart local v2    # "tfac":D
    iget-object v4, p0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->C:Lorg/apache/commons/math3/linear/RealMatrix;

    iget v5, p0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->dimension:I

    iget v6, p0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->dimension:I

    invoke-static {v5, v6}, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->eye(II)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v5

    invoke-interface {v5, v2, v3}, Lorg/apache/commons/math3/linear/RealMatrix;->scalarMultiply(D)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v5

    invoke-interface {v4, v5}, Lorg/apache/commons/math3/linear/RealMatrix;->add(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v4

    iput-object v4, p0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->C:Lorg/apache/commons/math3/linear/RealMatrix;

    .line 913
    iget-object v4, p0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->diagD:Lorg/apache/commons/math3/linear/RealMatrix;

    iget v5, p0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->dimension:I

    const/4 v6, 0x1

    invoke-static {v5, v6}, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->ones(II)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v5

    invoke-interface {v5, v2, v3}, Lorg/apache/commons/math3/linear/RealMatrix;->scalarMultiply(D)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v5

    invoke-interface {v4, v5}, Lorg/apache/commons/math3/linear/RealMatrix;->add(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v4

    iput-object v4, p0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->diagD:Lorg/apache/commons/math3/linear/RealMatrix;

    .line 915
    .end local v2    # "tfac":D
    :cond_3
    iget-object v4, p0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->C:Lorg/apache/commons/math3/linear/RealMatrix;

    invoke-static {v4}, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->diag(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v4

    iput-object v4, p0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->diagC:Lorg/apache/commons/math3/linear/RealMatrix;

    .line 916
    iget-object v4, p0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->diagD:Lorg/apache/commons/math3/linear/RealMatrix;

    invoke-static {v4}, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->sqrt(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v4

    iput-object v4, p0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->diagD:Lorg/apache/commons/math3/linear/RealMatrix;

    .line 917
    iget-object v4, p0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->B:Lorg/apache/commons/math3/linear/RealMatrix;

    iget-object v5, p0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->diagD:Lorg/apache/commons/math3/linear/RealMatrix;

    invoke-interface {v5}, Lorg/apache/commons/math3/linear/RealMatrix;->transpose()Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v5

    iget v6, p0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->dimension:I

    const/4 v7, 0x1

    invoke-static {v5, v6, v7}, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->repmat(Lorg/apache/commons/math3/linear/RealMatrix;II)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v5

    invoke-static {v4, v5}, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->times(Lorg/apache/commons/math3/linear/RealMatrix;Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v4

    iput-object v4, p0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->BD:Lorg/apache/commons/math3/linear/RealMatrix;

    .line 919
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
    .line 828
    const-wide/16 v18, 0x0

    .line 829
    .local v18, "negccov":D
    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->ccov1:D

    move-wide/from16 v28, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->ccovmu:D

    move-wide/from16 v30, v0

    add-double v28, v28, v30

    const-wide/16 v30, 0x0

    cmpl-double v27, v28, v30

    if-lez v27, :cond_1

    .line 830
    const/16 v27, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->mu:I

    move/from16 v28, v0

    move-object/from16 v0, p5

    move/from16 v1, v27

    move/from16 v2, v28

    invoke-static {v0, v1, v2}, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->repmat(Lorg/apache/commons/math3/linear/RealMatrix;II)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v27

    move-object/from16 v0, p2

    move-object/from16 v1, v27

    invoke-interface {v0, v1}, Lorg/apache/commons/math3/linear/RealMatrix;->subtract(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v27

    const-wide/high16 v28, 0x3ff0000000000000L    # 1.0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->sigma:D

    move-wide/from16 v30, v0

    div-double v28, v28, v30

    invoke-interface/range {v27 .. v29}, Lorg/apache/commons/math3/linear/RealMatrix;->scalarMultiply(D)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v10

    .line 832
    .local v10, "arpos":Lorg/apache/commons/math3/linear/RealMatrix;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->pc:Lorg/apache/commons/math3/linear/RealMatrix;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->pc:Lorg/apache/commons/math3/linear/RealMatrix;

    move-object/from16 v28, v0

    invoke-interface/range {v28 .. v28}, Lorg/apache/commons/math3/linear/RealMatrix;->transpose()Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v28

    invoke-interface/range {v27 .. v28}, Lorg/apache/commons/math3/linear/RealMatrix;->multiply(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v27

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->ccov1:D

    move-wide/from16 v28, v0

    invoke-interface/range {v27 .. v29}, Lorg/apache/commons/math3/linear/RealMatrix;->scalarMultiply(D)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v26

    .line 835
    .local v26, "roneu":Lorg/apache/commons/math3/linear/RealMatrix;
    if-eqz p1, :cond_2

    const-wide/16 v24, 0x0

    .line 836
    .local v24, "oldFac":D
    :goto_0
    const-wide/high16 v28, 0x3ff0000000000000L    # 1.0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->ccov1:D

    move-wide/from16 v30, v0

    sub-double v28, v28, v30

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->ccovmu:D

    move-wide/from16 v30, v0

    sub-double v28, v28, v30

    add-double v24, v24, v28

    .line 837
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->isActiveCMA:Z

    move/from16 v27, v0

    if-eqz v27, :cond_3

    .line 839
    const-wide/high16 v28, 0x3ff0000000000000L    # 1.0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->ccovmu:D

    move-wide/from16 v30, v0

    sub-double v28, v28, v30

    const-wide/high16 v30, 0x3fd0000000000000L    # 0.25

    mul-double v28, v28, v30

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->mueff:D

    move-wide/from16 v30, v0

    mul-double v28, v28, v30

    move-object/from16 v0, p0

    iget v0, v0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->dimension:I

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

    iget-wide v0, v0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->mueff:D

    move-wide/from16 v34, v0

    mul-double v32, v32, v34

    add-double v30, v30, v32

    div-double v18, v28, v30

    .line 842
    const-wide v22, 0x3fe51eb851eb851fL    # 0.66

    .line 844
    .local v22, "negminresidualvariance":D
    const-wide/high16 v16, 0x3fe0000000000000L    # 0.5

    .line 846
    .local v16, "negalphaold":D
    invoke-static/range {p4 .. p4}, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->reverse([I)[I

    move-result-object v5

    .line 847
    .local v5, "arReverseIndex":[I
    move-object/from16 v0, p0

    iget v0, v0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->mu:I

    move/from16 v27, v0

    move/from16 v0, v27

    invoke-static {v5, v0}, Lorg/apache/commons/math3/util/MathArrays;->copyOf([II)[I

    move-result-object v27

    move-object/from16 v0, p3

    move-object/from16 v1, v27

    invoke-static {v0, v1}, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->selectColumns(Lorg/apache/commons/math3/linear/RealMatrix;[I)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v12

    .line 848
    .local v12, "arzneg":Lorg/apache/commons/math3/linear/RealMatrix;
    invoke-static {v12}, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->square(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v27

    invoke-static/range {v27 .. v27}, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->sumRows(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v27

    invoke-static/range {v27 .. v27}, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->sqrt(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v6

    .line 849
    .local v6, "arnorms":Lorg/apache/commons/math3/linear/RealMatrix;
    const/16 v27, 0x0

    move/from16 v0, v27

    invoke-interface {v6, v0}, Lorg/apache/commons/math3/linear/RealMatrix;->getRow(I)[D

    move-result-object v27

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-direct {v0, v1}, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->sortedIndices([D)[I

    move-result-object v15

    .line 850
    .local v15, "idxnorms":[I
    invoke-static {v6, v15}, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->selectColumns(Lorg/apache/commons/math3/linear/RealMatrix;[I)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v9

    .line 851
    .local v9, "arnormsSorted":Lorg/apache/commons/math3/linear/RealMatrix;
    invoke-static {v15}, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->reverse([I)[I

    move-result-object v14

    .line 852
    .local v14, "idxReverse":[I
    invoke-static {v6, v14}, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->selectColumns(Lorg/apache/commons/math3/linear/RealMatrix;[I)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v8

    .line 853
    .local v8, "arnormsReverse":Lorg/apache/commons/math3/linear/RealMatrix;
    invoke-static {v8, v9}, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->divide(Lorg/apache/commons/math3/linear/RealMatrix;Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v6

    .line 854
    invoke-static {v15}, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->inverse([I)[I

    move-result-object v13

    .line 855
    .local v13, "idxInv":[I
    invoke-static {v6, v13}, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->selectColumns(Lorg/apache/commons/math3/linear/RealMatrix;[I)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v7

    .line 857
    .local v7, "arnormsInv":Lorg/apache/commons/math3/linear/RealMatrix;
    const-wide v28, 0x3fd5c28f5c28f5c2L    # 0.33999999999999997

    invoke-static {v7}, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->square(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->weights:Lorg/apache/commons/math3/linear/RealMatrix;

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

    .line 859
    .local v20, "negcovMax":D
    cmpl-double v27, v18, v20

    if-lez v27, :cond_0

    .line 860
    move-wide/from16 v18, v20

    .line 862
    :cond_0
    move-object/from16 v0, p0

    iget v0, v0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->dimension:I

    move/from16 v27, v0

    const/16 v28, 0x1

    move/from16 v0, v27

    move/from16 v1, v28

    invoke-static {v7, v0, v1}, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->repmat(Lorg/apache/commons/math3/linear/RealMatrix;II)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-static {v12, v0}, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->times(Lorg/apache/commons/math3/linear/RealMatrix;Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v12

    .line 863
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->BD:Lorg/apache/commons/math3/linear/RealMatrix;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    invoke-interface {v0, v12}, Lorg/apache/commons/math3/linear/RealMatrix;->multiply(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v11

    .line 864
    .local v11, "artmp":Lorg/apache/commons/math3/linear/RealMatrix;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->weights:Lorg/apache/commons/math3/linear/RealMatrix;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->diag(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-interface {v11, v0}, Lorg/apache/commons/math3/linear/RealMatrix;->multiply(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v27

    invoke-interface {v11}, Lorg/apache/commons/math3/linear/RealMatrix;->transpose()Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v28

    invoke-interface/range {v27 .. v28}, Lorg/apache/commons/math3/linear/RealMatrix;->multiply(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v4

    .line 865
    .local v4, "Cneg":Lorg/apache/commons/math3/linear/RealMatrix;
    const-wide/high16 v28, 0x3fe0000000000000L    # 0.5

    mul-double v28, v28, v18

    add-double v24, v24, v28

    .line 866
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->C:Lorg/apache/commons/math3/linear/RealMatrix;

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

    iget-wide v0, v0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->ccovmu:D

    move-wide/from16 v28, v0

    const-wide/high16 v30, 0x3fe0000000000000L    # 0.5

    mul-double v30, v30, v18

    add-double v28, v28, v30

    move-wide/from16 v0, v28

    invoke-interface {v10, v0, v1}, Lorg/apache/commons/math3/linear/RealMatrix;->scalarMultiply(D)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v28

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->weights:Lorg/apache/commons/math3/linear/RealMatrix;

    move-object/from16 v29, v0

    const/16 v30, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->dimension:I

    move/from16 v31, v0

    invoke-static/range {v29 .. v31}, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->repmat(Lorg/apache/commons/math3/linear/RealMatrix;II)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v29

    invoke-interface {v10}, Lorg/apache/commons/math3/linear/RealMatrix;->transpose()Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v30

    invoke-static/range {v29 .. v30}, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->times(Lorg/apache/commons/math3/linear/RealMatrix;Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;

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

    iput-object v0, v1, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->C:Lorg/apache/commons/math3/linear/RealMatrix;

    .line 882
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

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->updateBD(D)V

    .line 883
    return-void

    .line 835
    .restart local v10    # "arpos":Lorg/apache/commons/math3/linear/RealMatrix;
    .restart local v26    # "roneu":Lorg/apache/commons/math3/linear/RealMatrix;
    :cond_2
    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->ccov1:D

    move-wide/from16 v28, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->cc:D

    move-wide/from16 v30, v0

    mul-double v28, v28, v30

    const-wide/high16 v30, 0x4000000000000000L    # 2.0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->cc:D

    move-wide/from16 v32, v0

    sub-double v30, v30, v32

    mul-double v24, v28, v30

    goto/16 :goto_0

    .line 875
    .restart local v24    # "oldFac":D
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->C:Lorg/apache/commons/math3/linear/RealMatrix;

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

    iget-wide v0, v0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->ccovmu:D

    move-wide/from16 v28, v0

    move-wide/from16 v0, v28

    invoke-interface {v10, v0, v1}, Lorg/apache/commons/math3/linear/RealMatrix;->scalarMultiply(D)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v28

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->weights:Lorg/apache/commons/math3/linear/RealMatrix;

    move-object/from16 v29, v0

    const/16 v30, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->dimension:I

    move/from16 v31, v0

    invoke-static/range {v29 .. v31}, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->repmat(Lorg/apache/commons/math3/linear/RealMatrix;II)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v29

    invoke-interface {v10}, Lorg/apache/commons/math3/linear/RealMatrix;->transpose()Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v30

    invoke-static/range {v29 .. v30}, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->times(Lorg/apache/commons/math3/linear/RealMatrix;Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v29

    invoke-interface/range {v28 .. v29}, Lorg/apache/commons/math3/linear/RealMatrix;->multiply(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v28

    invoke-interface/range {v27 .. v28}, Lorg/apache/commons/math3/linear/RealMatrix;->add(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->C:Lorg/apache/commons/math3/linear/RealMatrix;

    goto :goto_1
.end method

.method private updateCovarianceDiagonalOnly(ZLorg/apache/commons/math3/linear/RealMatrix;)V
    .locals 8
    .param p1, "hsig"    # Z
    .param p2, "bestArz"    # Lorg/apache/commons/math3/linear/RealMatrix;

    .prologue
    .line 797
    if-eqz p1, :cond_1

    const-wide/16 v0, 0x0

    .line 798
    .local v0, "oldFac":D
    :goto_0
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    iget-wide v4, p0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->ccov1Sep:D

    sub-double/2addr v2, v4

    iget-wide v4, p0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->ccovmuSep:D

    sub-double/2addr v2, v4

    add-double/2addr v0, v2

    .line 799
    iget-object v2, p0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->diagC:Lorg/apache/commons/math3/linear/RealMatrix;

    invoke-interface {v2, v0, v1}, Lorg/apache/commons/math3/linear/RealMatrix;->scalarMultiply(D)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->pc:Lorg/apache/commons/math3/linear/RealMatrix;

    invoke-static {v3}, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->square(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v3

    iget-wide v4, p0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->ccov1Sep:D

    invoke-interface {v3, v4, v5}, Lorg/apache/commons/math3/linear/RealMatrix;->scalarMultiply(D)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/apache/commons/math3/linear/RealMatrix;->add(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->diagC:Lorg/apache/commons/math3/linear/RealMatrix;

    invoke-static {p2}, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->square(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v4

    iget-object v5, p0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->weights:Lorg/apache/commons/math3/linear/RealMatrix;

    invoke-interface {v4, v5}, Lorg/apache/commons/math3/linear/RealMatrix;->multiply(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v4

    invoke-static {v3, v4}, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->times(Lorg/apache/commons/math3/linear/RealMatrix;Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v3

    iget-wide v4, p0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->ccovmuSep:D

    invoke-interface {v3, v4, v5}, Lorg/apache/commons/math3/linear/RealMatrix;->scalarMultiply(D)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/apache/commons/math3/linear/RealMatrix;->add(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v2

    iput-object v2, p0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->diagC:Lorg/apache/commons/math3/linear/RealMatrix;

    .line 803
    iget-object v2, p0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->diagC:Lorg/apache/commons/math3/linear/RealMatrix;

    invoke-static {v2}, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->sqrt(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v2

    iput-object v2, p0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->diagD:Lorg/apache/commons/math3/linear/RealMatrix;

    .line 804
    iget v2, p0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->diagonalOnly:I

    const/4 v3, 0x1

    if-le v2, v3, :cond_0

    iget v2, p0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->iterations:I

    iget v3, p0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->diagonalOnly:I

    if-le v2, v3, :cond_0

    .line 807
    const/4 v2, 0x0

    iput v2, p0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->diagonalOnly:I

    .line 808
    iget v2, p0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->dimension:I

    iget v3, p0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->dimension:I

    invoke-static {v2, v3}, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->eye(II)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v2

    iput-object v2, p0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->B:Lorg/apache/commons/math3/linear/RealMatrix;

    .line 809
    iget-object v2, p0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->diagD:Lorg/apache/commons/math3/linear/RealMatrix;

    invoke-static {v2}, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->diag(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v2

    iput-object v2, p0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->BD:Lorg/apache/commons/math3/linear/RealMatrix;

    .line 810
    iget-object v2, p0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->diagC:Lorg/apache/commons/math3/linear/RealMatrix;

    invoke-static {v2}, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->diag(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v2

    iput-object v2, p0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->C:Lorg/apache/commons/math3/linear/RealMatrix;

    .line 812
    :cond_0
    return-void

    .line 797
    .end local v0    # "oldFac":D
    :cond_1
    iget-wide v2, p0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->ccov1Sep:D

    iget-wide v4, p0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->cc:D

    mul-double/2addr v2, v4

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    iget-wide v6, p0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->cc:D

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

    .line 774
    iget-object v1, p0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->ps:Lorg/apache/commons/math3/linear/RealMatrix;

    iget-wide v2, p0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->cs:D

    sub-double v2, v8, v2

    invoke-interface {v1, v2, v3}, Lorg/apache/commons/math3/linear/RealMatrix;->scalarMultiply(D)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->B:Lorg/apache/commons/math3/linear/RealMatrix;

    invoke-interface {v2, p1}, Lorg/apache/commons/math3/linear/RealMatrix;->multiply(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v2

    iget-wide v4, p0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->cs:D

    iget-wide v6, p0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->cs:D

    sub-double v6, v10, v6

    mul-double/2addr v4, v6

    iget-wide v6, p0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->mueff:D

    mul-double/2addr v4, v6

    invoke-static {v4, v5}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v4

    invoke-interface {v2, v4, v5}, Lorg/apache/commons/math3/linear/RealMatrix;->scalarMultiply(D)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/apache/commons/math3/linear/RealMatrix;->add(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->ps:Lorg/apache/commons/math3/linear/RealMatrix;

    .line 776
    iget-object v1, p0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->ps:Lorg/apache/commons/math3/linear/RealMatrix;

    invoke-interface {v1}, Lorg/apache/commons/math3/linear/RealMatrix;->getFrobeniusNorm()D

    move-result-wide v2

    iput-wide v2, p0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->normps:D

    .line 777
    iget-wide v2, p0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->normps:D

    iget-wide v4, p0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->cs:D

    sub-double v4, v8, v4

    iget v1, p0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->iterations:I

    mul-int/lit8 v1, v1, 0x2

    invoke-static {v4, v5, v1}, Lorg/apache/commons/math3/util/FastMath;->pow(DI)D

    move-result-wide v4

    sub-double v4, v8, v4

    invoke-static {v4, v5}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v4

    div-double/2addr v2, v4

    iget-wide v4, p0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->chiN:D

    div-double/2addr v2, v4

    const-wide v4, 0x3ff6666666666666L    # 1.4

    iget v1, p0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->dimension:I

    int-to-double v6, v1

    add-double/2addr v6, v8

    div-double v6, v10, v6

    add-double/2addr v4, v6

    cmpg-double v1, v2, v4

    if-gez v1, :cond_1

    const/4 v0, 0x1

    .line 780
    .local v0, "hsig":Z
    :goto_0
    iget-object v1, p0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->pc:Lorg/apache/commons/math3/linear/RealMatrix;

    iget-wide v2, p0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->cc:D

    sub-double v2, v8, v2

    invoke-interface {v1, v2, v3}, Lorg/apache/commons/math3/linear/RealMatrix;->scalarMultiply(D)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->pc:Lorg/apache/commons/math3/linear/RealMatrix;

    .line 781
    if-eqz v0, :cond_0

    .line 782
    iget-object v1, p0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->pc:Lorg/apache/commons/math3/linear/RealMatrix;

    iget-object v2, p0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->xmean:Lorg/apache/commons/math3/linear/RealMatrix;

    invoke-interface {v2, p2}, Lorg/apache/commons/math3/linear/RealMatrix;->subtract(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v2

    iget-wide v4, p0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->cc:D

    iget-wide v6, p0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->cc:D

    sub-double v6, v10, v6

    mul-double/2addr v4, v6

    iget-wide v6, p0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->mueff:D

    mul-double/2addr v4, v6

    invoke-static {v4, v5}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v4

    iget-wide v6, p0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->sigma:D

    div-double/2addr v4, v6

    invoke-interface {v2, v4, v5}, Lorg/apache/commons/math3/linear/RealMatrix;->scalarMultiply(D)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/apache/commons/math3/linear/RealMatrix;->add(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->pc:Lorg/apache/commons/math3/linear/RealMatrix;

    .line 784
    :cond_0
    return v0

    .line 777
    .end local v0    # "hsig":Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static zeros(II)Lorg/apache/commons/math3/linear/RealMatrix;
    .locals 1
    .param p0, "n"    # I
    .param p1, "m"    # I

    .prologue
    .line 1291
    new-instance v0, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    invoke-direct {v0, p0, p1}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;-><init>(II)V

    return-object v0
.end method


# virtual methods
.method protected doOptimize()Lorg/apache/commons/math3/optimization/PointValuePair;
    .locals 44

    .prologue
    .line 498
    invoke-direct/range {p0 .. p0}, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->checkParameters()V

    .line 500
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->getGoalType()Lorg/apache/commons/math3/optimization/GoalType;

    move-result-object v4

    sget-object v35, Lorg/apache/commons/math3/optimization/GoalType;->MINIMIZE:Lorg/apache/commons/math3/optimization/GoalType;

    move-object/from16 v0, v35

    invoke-virtual {v4, v0}, Lorg/apache/commons/math3/optimization/GoalType;->equals(Ljava/lang/Object;)Z

    move-result v4

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->isMinimize:Z

    .line 501
    new-instance v19, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer$FitnessFunction;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer$FitnessFunction;-><init>(Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;)V

    .line 502
    .local v19, "fitfun":Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer$FitnessFunction;
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->getStartPoint()[D

    move-result-object v21

    .line 504
    .local v21, "guess":[D
    move-object/from16 v0, v21

    array-length v4, v0

    move-object/from16 v0, p0

    iput v4, v0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->dimension:I

    .line 505
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->initializeCMA([D)V

    .line 506
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput v4, v0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->iterations:I

    .line 507
    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer$FitnessFunction;->value([D)D

    move-result-wide v16

    .line 508
    .local v16, "bestValue":D
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->fitnessHistory:[D

    move-wide/from16 v0, v16

    invoke-static {v4, v0, v1}, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->push([DD)V

    .line 509
    new-instance v29, Lorg/apache/commons/math3/optimization/PointValuePair;

    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->getStartPoint()[D

    move-result-object v4

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->isMinimize:Z

    move/from16 v35, v0

    if-eqz v35, :cond_1

    move-wide/from16 v36, v16

    :goto_0
    move-object/from16 v0, v29

    move-wide/from16 v1, v36

    invoke-direct {v0, v4, v1, v2}, Lorg/apache/commons/math3/optimization/PointValuePair;-><init>([DD)V

    .line 511
    .local v29, "optimum":Lorg/apache/commons/math3/optimization/PointValuePair;
    const/16 v28, 0x0

    .line 516
    .local v28, "lastResult":Lorg/apache/commons/math3/optimization/PointValuePair;
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput v4, v0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->iterations:I

    :goto_1
    move-object/from16 v0, p0

    iget v4, v0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->iterations:I

    move-object/from16 v0, p0

    iget v0, v0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->maxIterations:I

    move/from16 v35, v0

    move/from16 v0, v35

    if-gt v4, v0, :cond_4

    .line 518
    move-object/from16 v0, p0

    iget v4, v0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->dimension:I

    move-object/from16 v0, p0

    iget v0, v0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->lambda:I

    move/from16 v35, v0

    move-object/from16 v0, p0

    move/from16 v1, v35

    invoke-direct {v0, v4, v1}, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->randn1(II)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v7

    .line 519
    .local v7, "arz":Lorg/apache/commons/math3/linear/RealMatrix;
    move-object/from16 v0, p0

    iget v4, v0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->dimension:I

    move-object/from16 v0, p0

    iget v0, v0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->lambda:I

    move/from16 v35, v0

    move/from16 v0, v35

    invoke-static {v4, v0}, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->zeros(II)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v10

    .line 520
    .local v10, "arx":Lorg/apache/commons/math3/linear/RealMatrix;
    move-object/from16 v0, p0

    iget v4, v0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->lambda:I

    new-array v0, v4, [D

    move-object/from16 v20, v0

    .line 522
    .local v20, "fitness":[D
    const/16 v27, 0x0

    .local v27, "k":I
    :goto_2
    move-object/from16 v0, p0

    iget v4, v0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->lambda:I

    move/from16 v0, v27

    if-ge v0, v4, :cond_5

    .line 523
    const/4 v11, 0x0

    .line 524
    .local v11, "arxk":Lorg/apache/commons/math3/linear/RealMatrix;
    const/16 v26, 0x0

    .local v26, "i":I
    :goto_3
    move-object/from16 v0, p0

    iget v4, v0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->checkFeasableCount:I

    add-int/lit8 v4, v4, 0x1

    move/from16 v0, v26

    if-ge v0, v4, :cond_0

    .line 525
    move-object/from16 v0, p0

    iget v4, v0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->diagonalOnly:I

    if-gtz v4, :cond_2

    .line 526
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->xmean:Lorg/apache/commons/math3/linear/RealMatrix;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->BD:Lorg/apache/commons/math3/linear/RealMatrix;

    move-object/from16 v35, v0

    move/from16 v0, v27

    invoke-interface {v7, v0}, Lorg/apache/commons/math3/linear/RealMatrix;->getColumnMatrix(I)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v36

    invoke-interface/range {v35 .. v36}, Lorg/apache/commons/math3/linear/RealMatrix;->multiply(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v35

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->sigma:D

    move-wide/from16 v36, v0

    invoke-interface/range {v35 .. v37}, Lorg/apache/commons/math3/linear/RealMatrix;->scalarMultiply(D)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v35

    move-object/from16 v0, v35

    invoke-interface {v4, v0}, Lorg/apache/commons/math3/linear/RealMatrix;->add(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v11

    .line 532
    :goto_4
    move-object/from16 v0, p0

    iget v4, v0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->checkFeasableCount:I

    move/from16 v0, v26

    if-ge v0, v4, :cond_0

    const/4 v4, 0x0

    invoke-interface {v11, v4}, Lorg/apache/commons/math3/linear/RealMatrix;->getColumn(I)[D

    move-result-object v4

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer$FitnessFunction;->isFeasible([D)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 539
    :cond_0
    const/4 v4, 0x0

    move/from16 v0, v27

    invoke-static {v11, v4, v10, v0}, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->copyColumn(Lorg/apache/commons/math3/linear/RealMatrix;ILorg/apache/commons/math3/linear/RealMatrix;I)V

    .line 541
    :try_start_0
    move/from16 v0, v27

    invoke-interface {v10, v0}, Lorg/apache/commons/math3/linear/RealMatrix;->getColumn(I)[D

    move-result-object v4

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer$FitnessFunction;->value([D)D

    move-result-wide v36

    aput-wide v36, v20, v27
    :try_end_0
    .catch Lorg/apache/commons/math3/exception/TooManyEvaluationsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 522
    add-int/lit8 v27, v27, 0x1

    goto :goto_2

    .line 509
    .end local v7    # "arz":Lorg/apache/commons/math3/linear/RealMatrix;
    .end local v10    # "arx":Lorg/apache/commons/math3/linear/RealMatrix;
    .end local v11    # "arxk":Lorg/apache/commons/math3/linear/RealMatrix;
    .end local v20    # "fitness":[D
    .end local v26    # "i":I
    .end local v27    # "k":I
    .end local v28    # "lastResult":Lorg/apache/commons/math3/optimization/PointValuePair;
    .end local v29    # "optimum":Lorg/apache/commons/math3/optimization/PointValuePair;
    :cond_1
    move-wide/from16 v0, v16

    neg-double v0, v0

    move-wide/from16 v36, v0

    goto/16 :goto_0

    .line 529
    .restart local v7    # "arz":Lorg/apache/commons/math3/linear/RealMatrix;
    .restart local v10    # "arx":Lorg/apache/commons/math3/linear/RealMatrix;
    .restart local v11    # "arxk":Lorg/apache/commons/math3/linear/RealMatrix;
    .restart local v20    # "fitness":[D
    .restart local v26    # "i":I
    .restart local v27    # "k":I
    .restart local v28    # "lastResult":Lorg/apache/commons/math3/optimization/PointValuePair;
    .restart local v29    # "optimum":Lorg/apache/commons/math3/optimization/PointValuePair;
    :cond_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->xmean:Lorg/apache/commons/math3/linear/RealMatrix;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->diagD:Lorg/apache/commons/math3/linear/RealMatrix;

    move-object/from16 v35, v0

    move/from16 v0, v27

    invoke-interface {v7, v0}, Lorg/apache/commons/math3/linear/RealMatrix;->getColumnMatrix(I)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v36

    invoke-static/range {v35 .. v36}, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->times(Lorg/apache/commons/math3/linear/RealMatrix;Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v35

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->sigma:D

    move-wide/from16 v36, v0

    invoke-interface/range {v35 .. v37}, Lorg/apache/commons/math3/linear/RealMatrix;->scalarMultiply(D)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v35

    move-object/from16 v0, v35

    invoke-interface {v4, v0}, Lorg/apache/commons/math3/linear/RealMatrix;->add(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v11

    goto :goto_4

    .line 537
    :cond_3
    move-object/from16 v0, p0

    iget v4, v0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->dimension:I

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->randn(I)[D

    move-result-object v4

    move/from16 v0, v27

    invoke-interface {v7, v0, v4}, Lorg/apache/commons/math3/linear/RealMatrix;->setColumn(I[D)V

    .line 524
    add-int/lit8 v26, v26, 0x1

    goto/16 :goto_3

    .line 542
    :catch_0
    move-exception v18

    .line 638
    .end local v7    # "arz":Lorg/apache/commons/math3/linear/RealMatrix;
    .end local v10    # "arx":Lorg/apache/commons/math3/linear/RealMatrix;
    .end local v11    # "arxk":Lorg/apache/commons/math3/linear/RealMatrix;
    .end local v20    # "fitness":[D
    .end local v26    # "i":I
    .end local v27    # "k":I
    :cond_4
    return-object v29

    .line 547
    .restart local v7    # "arz":Lorg/apache/commons/math3/linear/RealMatrix;
    .restart local v10    # "arx":Lorg/apache/commons/math3/linear/RealMatrix;
    .restart local v20    # "fitness":[D
    .restart local v27    # "k":I
    :cond_5
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->sortedIndices([D)[I

    move-result-object v8

    .line 549
    .local v8, "arindex":[I
    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->xmean:Lorg/apache/commons/math3/linear/RealMatrix;

    .line 550
    .local v9, "xold":Lorg/apache/commons/math3/linear/RealMatrix;
    move-object/from16 v0, p0

    iget v4, v0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->mu:I

    invoke-static {v8, v4}, Lorg/apache/commons/math3/util/MathArrays;->copyOf([II)[I

    move-result-object v4

    invoke-static {v10, v4}, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->selectColumns(Lorg/apache/commons/math3/linear/RealMatrix;[I)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v6

    .line 551
    .local v6, "bestArx":Lorg/apache/commons/math3/linear/RealMatrix;
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->weights:Lorg/apache/commons/math3/linear/RealMatrix;

    invoke-interface {v6, v4}, Lorg/apache/commons/math3/linear/RealMatrix;->multiply(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->xmean:Lorg/apache/commons/math3/linear/RealMatrix;

    .line 552
    move-object/from16 v0, p0

    iget v4, v0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->mu:I

    invoke-static {v8, v4}, Lorg/apache/commons/math3/util/MathArrays;->copyOf([II)[I

    move-result-object v4

    invoke-static {v7, v4}, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->selectColumns(Lorg/apache/commons/math3/linear/RealMatrix;[I)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v12

    .line 553
    .local v12, "bestArz":Lorg/apache/commons/math3/linear/RealMatrix;
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->weights:Lorg/apache/commons/math3/linear/RealMatrix;

    invoke-interface {v12, v4}, Lorg/apache/commons/math3/linear/RealMatrix;->multiply(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v34

    .line 554
    .local v34, "zmean":Lorg/apache/commons/math3/linear/RealMatrix;
    move-object/from16 v0, p0

    move-object/from16 v1, v34

    invoke-direct {v0, v1, v9}, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->updateEvolutionPaths(Lorg/apache/commons/math3/linear/RealMatrix;Lorg/apache/commons/math3/linear/RealMatrix;)Z

    move-result v5

    .line 555
    .local v5, "hsig":Z
    move-object/from16 v0, p0

    iget v4, v0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->diagonalOnly:I

    if-gtz v4, :cond_9

    move-object/from16 v4, p0

    .line 556
    invoke-direct/range {v4 .. v9}, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->updateCovariance(ZLorg/apache/commons/math3/linear/RealMatrix;Lorg/apache/commons/math3/linear/RealMatrix;[ILorg/apache/commons/math3/linear/RealMatrix;)V

    .line 561
    :goto_5
    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->sigma:D

    move-wide/from16 v36, v0

    const-wide/high16 v38, 0x3ff0000000000000L    # 1.0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->normps:D

    move-wide/from16 v40, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->chiN:D

    move-wide/from16 v42, v0

    div-double v40, v40, v42

    const-wide/high16 v42, 0x3ff0000000000000L    # 1.0

    sub-double v40, v40, v42

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->cs:D

    move-wide/from16 v42, v0

    mul-double v40, v40, v42

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->damps:D

    move-wide/from16 v42, v0

    div-double v40, v40, v42

    invoke-static/range {v38 .. v41}, Lorg/apache/commons/math3/util/FastMath;->min(DD)D

    move-result-wide v38

    invoke-static/range {v38 .. v39}, Lorg/apache/commons/math3/util/FastMath;->exp(D)D

    move-result-wide v38

    mul-double v36, v36, v38

    move-wide/from16 v0, v36

    move-object/from16 v2, p0

    iput-wide v0, v2, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->sigma:D

    .line 562
    const/4 v4, 0x0

    aget v4, v8, v4

    aget-wide v14, v20, v4

    .line 563
    .local v14, "bestFitness":D
    array-length v4, v8

    add-int/lit8 v4, v4, -0x1

    aget v4, v8, v4

    aget-wide v32, v20, v4

    .line 564
    .local v32, "worstFitness":D
    cmpl-double v4, v16, v14

    if-lez v4, :cond_6

    .line 565
    move-wide/from16 v16, v14

    .line 566
    move-object/from16 v28, v29

    .line 567
    new-instance v29, Lorg/apache/commons/math3/optimization/PointValuePair;

    .end local v29    # "optimum":Lorg/apache/commons/math3/optimization/PointValuePair;
    const/4 v4, 0x0

    invoke-interface {v6, v4}, Lorg/apache/commons/math3/linear/RealMatrix;->getColumn(I)[D

    move-result-object v4

    move-object/from16 v0, v19

    invoke-static {v0, v4}, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer$FitnessFunction;->access$000(Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer$FitnessFunction;[D)[D

    move-result-object v4

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->isMinimize:Z

    move/from16 v35, v0

    if-eqz v35, :cond_a

    move-wide/from16 v36, v14

    :goto_6
    move-object/from16 v0, v29

    move-wide/from16 v1, v36

    invoke-direct {v0, v4, v1, v2}, Lorg/apache/commons/math3/optimization/PointValuePair;-><init>([DD)V

    .line 569
    .restart local v29    # "optimum":Lorg/apache/commons/math3/optimization/PointValuePair;
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->getConvergenceChecker()Lorg/apache/commons/math3/optimization/ConvergenceChecker;

    move-result-object v4

    if-eqz v4, :cond_6

    if-eqz v28, :cond_6

    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->getConvergenceChecker()Lorg/apache/commons/math3/optimization/ConvergenceChecker;

    move-result-object v4

    move-object/from16 v0, p0

    iget v0, v0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->iterations:I

    move/from16 v35, v0

    move/from16 v0, v35

    move-object/from16 v1, v29

    move-object/from16 v2, v28

    invoke-interface {v4, v0, v1, v2}, Lorg/apache/commons/math3/optimization/ConvergenceChecker;->converged(ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 576
    :cond_6
    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->stopFitness:D

    move-wide/from16 v36, v0

    const-wide/16 v38, 0x0

    cmpl-double v4, v36, v38

    if-eqz v4, :cond_7

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->isMinimize:Z

    if-eqz v4, :cond_b

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->stopFitness:D

    move-wide/from16 v36, v0

    :goto_7
    cmpg-double v4, v14, v36

    if-ltz v4, :cond_4

    .line 579
    :cond_7
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->diagC:Lorg/apache/commons/math3/linear/RealMatrix;

    invoke-static {v4}, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->sqrt(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v4

    const/16 v35, 0x0

    move/from16 v0, v35

    invoke-interface {v4, v0}, Lorg/apache/commons/math3/linear/RealMatrix;->getColumn(I)[D

    move-result-object v31

    .line 580
    .local v31, "sqrtDiagC":[D
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->pc:Lorg/apache/commons/math3/linear/RealMatrix;

    const/16 v35, 0x0

    move/from16 v0, v35

    invoke-interface {v4, v0}, Lorg/apache/commons/math3/linear/RealMatrix;->getColumn(I)[D

    move-result-object v30

    .line 581
    .local v30, "pcCol":[D
    const/16 v26, 0x0

    .restart local v26    # "i":I
    :goto_8
    move-object/from16 v0, p0

    iget v4, v0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->dimension:I

    move/from16 v0, v26

    if-ge v0, v4, :cond_8

    .line 582
    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->sigma:D

    move-wide/from16 v36, v0

    aget-wide v38, v30, v26

    invoke-static/range {v38 .. v39}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v38

    aget-wide v40, v31, v26

    invoke-static/range {v38 .. v41}, Lorg/apache/commons/math3/util/FastMath;->max(DD)D

    move-result-wide v38

    mul-double v36, v36, v38

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->stopTolX:D

    move-wide/from16 v38, v0

    cmpl-double v4, v36, v38

    if-lez v4, :cond_c

    .line 589
    :cond_8
    const/16 v26, 0x0

    :goto_9
    move-object/from16 v0, p0

    iget v4, v0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->dimension:I

    move/from16 v0, v26

    if-ge v0, v4, :cond_d

    .line 590
    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->sigma:D

    move-wide/from16 v36, v0

    aget-wide v38, v31, v26

    mul-double v36, v36, v38

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->stopTolUpX:D

    move-wide/from16 v38, v0

    cmpl-double v4, v36, v38

    if-gtz v4, :cond_4

    .line 589
    add-int/lit8 v26, v26, 0x1

    goto :goto_9

    .line 558
    .end local v14    # "bestFitness":D
    .end local v26    # "i":I
    .end local v30    # "pcCol":[D
    .end local v31    # "sqrtDiagC":[D
    .end local v32    # "worstFitness":D
    :cond_9
    move-object/from16 v0, p0

    invoke-direct {v0, v5, v12}, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->updateCovarianceDiagonalOnly(ZLorg/apache/commons/math3/linear/RealMatrix;)V

    goto/16 :goto_5

    .line 567
    .end local v29    # "optimum":Lorg/apache/commons/math3/optimization/PointValuePair;
    .restart local v14    # "bestFitness":D
    .restart local v32    # "worstFitness":D
    :cond_a
    neg-double v0, v14

    move-wide/from16 v36, v0

    goto/16 :goto_6

    .line 576
    .restart local v29    # "optimum":Lorg/apache/commons/math3/optimization/PointValuePair;
    :cond_b
    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->stopFitness:D

    move-wide/from16 v36, v0

    move-wide/from16 v0, v36

    neg-double v0, v0

    move-wide/from16 v36, v0

    goto :goto_7

    .line 585
    .restart local v26    # "i":I
    .restart local v30    # "pcCol":[D
    .restart local v31    # "sqrtDiagC":[D
    :cond_c
    move-object/from16 v0, p0

    iget v4, v0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->dimension:I

    add-int/lit8 v4, v4, -0x1

    move/from16 v0, v26

    if-ge v0, v4, :cond_4

    .line 581
    add-int/lit8 v26, v26, 0x1

    goto :goto_8

    .line 594
    :cond_d
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->fitnessHistory:[D

    invoke-static {v4}, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->min([D)D

    move-result-wide v22

    .line 595
    .local v22, "historyBest":D
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->fitnessHistory:[D

    invoke-static {v4}, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->max([D)D

    move-result-wide v24

    .line 596
    .local v24, "historyWorst":D
    move-object/from16 v0, p0

    iget v4, v0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->iterations:I

    const/16 v35, 0x2

    move/from16 v0, v35

    if-le v4, v0, :cond_e

    move-wide/from16 v0, v24

    move-wide/from16 v2, v32

    invoke-static {v0, v1, v2, v3}, Lorg/apache/commons/math3/util/FastMath;->max(DD)D

    move-result-wide v36

    move-wide/from16 v0, v22

    invoke-static {v0, v1, v14, v15}, Lorg/apache/commons/math3/util/FastMath;->min(DD)D

    move-result-wide v38

    sub-double v36, v36, v38

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->stopTolFun:D

    move-wide/from16 v38, v0

    cmpg-double v4, v36, v38

    if-ltz v4, :cond_4

    .line 601
    :cond_e
    move-object/from16 v0, p0

    iget v4, v0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->iterations:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->fitnessHistory:[D

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    array-length v0, v0

    move/from16 v35, v0

    move/from16 v0, v35

    if-le v4, v0, :cond_f

    sub-double v36, v24, v22

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->stopTolHistFun:D

    move-wide/from16 v38, v0

    cmpg-double v4, v36, v38

    if-ltz v4, :cond_4

    .line 606
    :cond_f
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->diagD:Lorg/apache/commons/math3/linear/RealMatrix;

    invoke-static {v4}, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->max(Lorg/apache/commons/math3/linear/RealMatrix;)D

    move-result-wide v36

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->diagD:Lorg/apache/commons/math3/linear/RealMatrix;

    invoke-static {v4}, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->min(Lorg/apache/commons/math3/linear/RealMatrix;)D

    move-result-wide v38

    div-double v36, v36, v38

    const-wide v38, 0x416312d000000000L    # 1.0E7

    cmpl-double v4, v36, v38

    if-gtz v4, :cond_4

    .line 610
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->getConvergenceChecker()Lorg/apache/commons/math3/optimization/ConvergenceChecker;

    move-result-object v4

    if-eqz v4, :cond_11

    .line 611
    new-instance v13, Lorg/apache/commons/math3/optimization/PointValuePair;

    const/4 v4, 0x0

    invoke-interface {v6, v4}, Lorg/apache/commons/math3/linear/RealMatrix;->getColumn(I)[D

    move-result-object v4

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->isMinimize:Z

    move/from16 v35, v0

    if-eqz v35, :cond_15

    move-wide/from16 v36, v14

    :goto_a
    move-wide/from16 v0, v36

    invoke-direct {v13, v4, v0, v1}, Lorg/apache/commons/math3/optimization/PointValuePair;-><init>([DD)V

    .line 614
    .local v13, "current":Lorg/apache/commons/math3/optimization/PointValuePair;
    if-eqz v28, :cond_10

    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->getConvergenceChecker()Lorg/apache/commons/math3/optimization/ConvergenceChecker;

    move-result-object v4

    move-object/from16 v0, p0

    iget v0, v0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->iterations:I

    move/from16 v35, v0

    move/from16 v0, v35

    move-object/from16 v1, v28

    invoke-interface {v4, v0, v13, v1}, Lorg/apache/commons/math3/optimization/ConvergenceChecker;->converged(ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 618
    :cond_10
    move-object/from16 v28, v13

    .line 621
    .end local v13    # "current":Lorg/apache/commons/math3/optimization/PointValuePair;
    :cond_11
    const-wide v36, 0x3fb999999999999aL    # 0.1

    move-object/from16 v0, p0

    iget v4, v0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->lambda:I

    int-to-double v0, v4

    move-wide/from16 v38, v0

    const-wide/high16 v40, 0x4010000000000000L    # 4.0

    div-double v38, v38, v40

    add-double v36, v36, v38

    move-wide/from16 v0, v36

    double-to-int v4, v0

    aget v4, v8, v4

    aget-wide v36, v20, v4

    cmpl-double v4, v16, v36

    if-nez v4, :cond_12

    .line 622
    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->sigma:D

    move-wide/from16 v36, v0

    const-wide v38, 0x3fc999999999999aL    # 0.2

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->cs:D

    move-wide/from16 v40, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->damps:D

    move-wide/from16 v42, v0

    div-double v40, v40, v42

    add-double v38, v38, v40

    invoke-static/range {v38 .. v39}, Lorg/apache/commons/math3/util/FastMath;->exp(D)D

    move-result-wide v38

    mul-double v36, v36, v38

    move-wide/from16 v0, v36

    move-object/from16 v2, p0

    iput-wide v0, v2, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->sigma:D

    .line 624
    :cond_12
    move-object/from16 v0, p0

    iget v4, v0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->iterations:I

    const/16 v35, 0x2

    move/from16 v0, v35

    if-le v4, v0, :cond_13

    move-wide/from16 v0, v24

    invoke-static {v0, v1, v14, v15}, Lorg/apache/commons/math3/util/FastMath;->max(DD)D

    move-result-wide v36

    move-wide/from16 v0, v22

    invoke-static {v0, v1, v14, v15}, Lorg/apache/commons/math3/util/FastMath;->min(DD)D

    move-result-wide v38

    sub-double v36, v36, v38

    const-wide/16 v38, 0x0

    cmpl-double v4, v36, v38

    if-nez v4, :cond_13

    .line 626
    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->sigma:D

    move-wide/from16 v36, v0

    const-wide v38, 0x3fc999999999999aL    # 0.2

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->cs:D

    move-wide/from16 v40, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->damps:D

    move-wide/from16 v42, v0

    div-double v40, v40, v42

    add-double v38, v38, v40

    invoke-static/range {v38 .. v39}, Lorg/apache/commons/math3/util/FastMath;->exp(D)D

    move-result-wide v38

    mul-double v36, v36, v38

    move-wide/from16 v0, v36

    move-object/from16 v2, p0

    iput-wide v0, v2, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->sigma:D

    .line 629
    :cond_13
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->fitnessHistory:[D

    invoke-static {v4, v14, v15}, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->push([DD)V

    .line 630
    sub-double v36, v32, v14

    move-object/from16 v0, v19

    move-wide/from16 v1, v36

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer$FitnessFunction;->setValueRange(D)V

    .line 631
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->generateStatistics:Z

    if-eqz v4, :cond_14

    .line 632
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->statisticsSigmaHistory:Ljava/util/List;

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->sigma:D

    move-wide/from16 v36, v0

    invoke-static/range {v36 .. v37}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v35

    move-object/from16 v0, v35

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 633
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->statisticsFitnessHistory:Ljava/util/List;

    invoke-static {v14, v15}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v35

    move-object/from16 v0, v35

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 634
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->statisticsMeanHistory:Ljava/util/List;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->xmean:Lorg/apache/commons/math3/linear/RealMatrix;

    move-object/from16 v35, v0

    invoke-interface/range {v35 .. v35}, Lorg/apache/commons/math3/linear/RealMatrix;->transpose()Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v35

    move-object/from16 v0, v35

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 635
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->statisticsDHistory:Ljava/util/List;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->diagD:Lorg/apache/commons/math3/linear/RealMatrix;

    move-object/from16 v35, v0

    invoke-interface/range {v35 .. v35}, Lorg/apache/commons/math3/linear/RealMatrix;->transpose()Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v35

    const-wide v36, 0x40f86a0000000000L    # 100000.0

    invoke-interface/range {v35 .. v37}, Lorg/apache/commons/math3/linear/RealMatrix;->scalarMultiply(D)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v35

    move-object/from16 v0, v35

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 516
    :cond_14
    move-object/from16 v0, p0

    iget v4, v0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->iterations:I

    add-int/lit8 v4, v4, 0x1

    move-object/from16 v0, p0

    iput v4, v0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->iterations:I

    goto/16 :goto_1

    .line 611
    :cond_15
    neg-double v0, v14

    move-wide/from16 v36, v0

    goto/16 :goto_a
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
    .line 390
    iget-object v0, p0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->statisticsDHistory:Ljava/util/List;

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
    .line 383
    iget-object v0, p0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->statisticsFitnessHistory:Ljava/util/List;

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
    .line 376
    iget-object v0, p0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->statisticsMeanHistory:Ljava/util/List;

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
    .line 369
    iget-object v0, p0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->statisticsSigmaHistory:Ljava/util/List;

    return-object v0
.end method

.method protected varargs optimizeInternal(ILorg/apache/commons/math3/analysis/MultivariateFunction;Lorg/apache/commons/math3/optimization/GoalType;[Lorg/apache/commons/math3/optimization/OptimizationData;)Lorg/apache/commons/math3/optimization/PointValuePair;
    .locals 1
    .param p1, "maxEval"    # I
    .param p2, "f"    # Lorg/apache/commons/math3/analysis/MultivariateFunction;
    .param p3, "goalType"    # Lorg/apache/commons/math3/optimization/GoalType;
    .param p4, "optData"    # [Lorg/apache/commons/math3/optimization/OptimizationData;

    .prologue
    .line 488
    invoke-direct {p0, p4}, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->parseOptimizationData([Lorg/apache/commons/math3/optimization/OptimizationData;)V

    .line 492
    invoke-super {p0, p1, p2, p3, p4}, Lorg/apache/commons/math3/optimization/direct/BaseAbstractMultivariateSimpleBoundsOptimizer;->optimizeInternal(ILorg/apache/commons/math3/analysis/MultivariateFunction;Lorg/apache/commons/math3/optimization/GoalType;[Lorg/apache/commons/math3/optimization/OptimizationData;)Lorg/apache/commons/math3/optimization/PointValuePair;

    move-result-object v0

    return-object v0
.end method
