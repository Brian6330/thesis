.class public Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;
.super Lorg/apache/commons/math3/optimization/direct/BaseAbstractMultivariateSimpleBoundsOptimizer;
.source "BOBYQAOptimizer.java"

# interfaces
.implements Lorg/apache/commons/math3/optimization/MultivariateOptimizer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer$PathIsExploredException;
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
.field public static final DEFAULT_INITIAL_RADIUS:D = 10.0

.field public static final DEFAULT_STOPPING_RADIUS:D = 1.0E-8

.field private static final HALF:D = 0.5

.field public static final MINIMUM_PROBLEM_DIMENSION:I = 0x2

.field private static final MINUS_ONE:D = -1.0

.field private static final ONE:D = 1.0

.field private static final ONE_OVER_A_THOUSAND:D = 0.001

.field private static final ONE_OVER_EIGHT:D = 0.125

.field private static final ONE_OVER_FOUR:D = 0.25

.field private static final ONE_OVER_TEN:D = 0.1

.field private static final SIXTEEN:D = 16.0

.field private static final TEN:D = 10.0

.field private static final TWO:D = 2.0

.field private static final TWO_HUNDRED_FIFTY:D = 250.0

.field private static final ZERO:D


# instance fields
.field private alternativeNewPoint:Lorg/apache/commons/math3/linear/ArrayRealVector;

.field private bMatrix:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

.field private boundDifference:[D

.field private currentBest:Lorg/apache/commons/math3/linear/ArrayRealVector;

.field private fAtInterpolationPoints:Lorg/apache/commons/math3/linear/ArrayRealVector;

.field private gradientAtTrustRegionCenter:Lorg/apache/commons/math3/linear/ArrayRealVector;

.field private initialTrustRegionRadius:D

.field private interpolationPoints:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

.field private isMinimize:Z

.field private lagrangeValuesAtNewPoint:Lorg/apache/commons/math3/linear/ArrayRealVector;

.field private lowerDifference:Lorg/apache/commons/math3/linear/ArrayRealVector;

.field private modelSecondDerivativesParameters:Lorg/apache/commons/math3/linear/ArrayRealVector;

.field private modelSecondDerivativesValues:Lorg/apache/commons/math3/linear/ArrayRealVector;

.field private newPoint:Lorg/apache/commons/math3/linear/ArrayRealVector;

.field private final numberOfInterpolationPoints:I

.field private originShift:Lorg/apache/commons/math3/linear/ArrayRealVector;

.field private final stoppingTrustRegionRadius:D

.field private trialStepPoint:Lorg/apache/commons/math3/linear/ArrayRealVector;

.field private trustRegionCenterInterpolationPointIndex:I

.field private trustRegionCenterOffset:Lorg/apache/commons/math3/linear/ArrayRealVector;

.field private upperDifference:Lorg/apache/commons/math3/linear/ArrayRealVector;

.field private zMatrix:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;


# direct methods
.method public constructor <init>(I)V
    .locals 6
    .param p1, "numberOfInterpolationPoints"    # I

    .prologue
    .line 212
    const-wide/high16 v2, 0x4024000000000000L    # 10.0

    const-wide v4, 0x3e45798ee2308c3aL    # 1.0E-8

    move-object v0, p0

    move v1, p1

    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;-><init>(IDD)V

    .line 215
    return-void
.end method

.method public constructor <init>(IDD)V
    .locals 2
    .param p1, "numberOfInterpolationPoints"    # I
    .param p2, "initialTrustRegionRadius"    # D
    .param p4, "stoppingTrustRegionRadius"    # D

    .prologue
    .line 228
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/apache/commons/math3/optimization/direct/BaseAbstractMultivariateSimpleBoundsOptimizer;-><init>(Lorg/apache/commons/math3/optimization/ConvergenceChecker;)V

    .line 229
    iput p1, p0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->numberOfInterpolationPoints:I

    .line 230
    iput-wide p2, p0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->initialTrustRegionRadius:D

    .line 231
    iput-wide p4, p0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->stoppingTrustRegionRadius:D

    .line 232
    return-void
.end method

.method static synthetic access$000(I)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # I

    .prologue
    .line 53
    invoke-static {p0}, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->caller(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private altmov(ID)[D
    .locals 88
    .param p1, "knew"    # I
    .param p2, "adelt"    # D

    .prologue
    .line 1262
    invoke-static {}, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->printMethod()V

    .line 1264
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->currentBest:Lorg/apache/commons/math3/linear/ArrayRealVector;

    move-object/from16 v82, v0

    invoke-virtual/range {v82 .. v82}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getDimension()I

    move-result v52

    .line 1265
    .local v52, "n":I
    move-object/from16 v0, p0

    iget v0, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->numberOfInterpolationPoints:I

    move/from16 v53, v0

    .line 1267
    .local v53, "npt":I
    new-instance v32, Lorg/apache/commons/math3/linear/ArrayRealVector;

    move-object/from16 v0, v32

    move/from16 v1, v52

    invoke-direct {v0, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;-><init>(I)V

    .line 1268
    .local v32, "glag":Lorg/apache/commons/math3/linear/ArrayRealVector;
    new-instance v33, Lorg/apache/commons/math3/linear/ArrayRealVector;

    move-object/from16 v0, v33

    move/from16 v1, v53

    invoke-direct {v0, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;-><init>(I)V

    .line 1270
    .local v33, "hcol":Lorg/apache/commons/math3/linear/ArrayRealVector;
    new-instance v80, Lorg/apache/commons/math3/linear/ArrayRealVector;

    move-object/from16 v0, v80

    move/from16 v1, v52

    invoke-direct {v0, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;-><init>(I)V

    .line 1271
    .local v80, "work1":Lorg/apache/commons/math3/linear/ArrayRealVector;
    new-instance v81, Lorg/apache/commons/math3/linear/ArrayRealVector;

    move-object/from16 v0, v81

    move/from16 v1, v52

    invoke-direct {v0, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;-><init>(I)V

    .line 1273
    .local v81, "work2":Lorg/apache/commons/math3/linear/ArrayRealVector;
    const/16 v47, 0x0

    .local v47, "k":I
    :goto_0
    move/from16 v0, v47

    move/from16 v1, v53

    if-ge v0, v1, :cond_0

    .line 1274
    const-wide/16 v82, 0x0

    move-object/from16 v0, v33

    move/from16 v1, v47

    move-wide/from16 v2, v82

    invoke-virtual {v0, v1, v2, v3}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    .line 1273
    add-int/lit8 v47, v47, 0x1

    goto :goto_0

    .line 1276
    :cond_0
    const/16 v46, 0x0

    .local v46, "j":I
    sub-int v82, v53, v52

    add-int/lit8 v49, v82, -0x1

    .local v49, "max":I
    :goto_1
    move/from16 v0, v46

    move/from16 v1, v49

    if-ge v0, v1, :cond_2

    .line 1277
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->zMatrix:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    move-object/from16 v82, v0

    move-object/from16 v0, v82

    move/from16 v1, p1

    move/from16 v2, v46

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getEntry(II)D

    move-result-wide v70

    .line 1278
    .local v70, "tmp":D
    const/16 v47, 0x0

    :goto_2
    move/from16 v0, v47

    move/from16 v1, v53

    if-ge v0, v1, :cond_1

    .line 1279
    move-object/from16 v0, v33

    move/from16 v1, v47

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v82

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->zMatrix:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    move-object/from16 v84, v0

    move-object/from16 v0, v84

    move/from16 v1, v47

    move/from16 v2, v46

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getEntry(II)D

    move-result-wide v84

    mul-double v84, v84, v70

    add-double v82, v82, v84

    move-object/from16 v0, v33

    move/from16 v1, v47

    move-wide/from16 v2, v82

    invoke-virtual {v0, v1, v2, v3}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    .line 1278
    add-int/lit8 v47, v47, 0x1

    goto :goto_2

    .line 1276
    :cond_1
    add-int/lit8 v46, v46, 0x1

    goto :goto_1

    .line 1282
    .end local v70    # "tmp":D
    :cond_2
    move-object/from16 v0, v33

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v4

    .line 1283
    .local v4, "alpha":D
    const-wide/high16 v82, 0x3fe0000000000000L    # 0.5

    mul-double v38, v82, v4

    .line 1287
    .local v38, "ha":D
    const/16 v40, 0x0

    .local v40, "i":I
    :goto_3
    move/from16 v0, v40

    move/from16 v1, v52

    if-ge v0, v1, :cond_3

    .line 1288
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->bMatrix:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    move-object/from16 v82, v0

    move-object/from16 v0, v82

    move/from16 v1, p1

    move/from16 v2, v40

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getEntry(II)D

    move-result-wide v82

    move-object/from16 v0, v32

    move/from16 v1, v40

    move-wide/from16 v2, v82

    invoke-virtual {v0, v1, v2, v3}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    .line 1287
    add-int/lit8 v40, v40, 0x1

    goto :goto_3

    .line 1290
    :cond_3
    const/16 v47, 0x0

    :goto_4
    move/from16 v0, v47

    move/from16 v1, v53

    if-ge v0, v1, :cond_6

    .line 1291
    const-wide/16 v70, 0x0

    .line 1292
    .restart local v70    # "tmp":D
    const/16 v46, 0x0

    :goto_5
    move/from16 v0, v46

    move/from16 v1, v52

    if-ge v0, v1, :cond_4

    .line 1293
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->interpolationPoints:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    move-object/from16 v82, v0

    move-object/from16 v0, v82

    move/from16 v1, v47

    move/from16 v2, v46

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getEntry(II)D

    move-result-wide v82

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->trustRegionCenterOffset:Lorg/apache/commons/math3/linear/ArrayRealVector;

    move-object/from16 v84, v0

    move-object/from16 v0, v84

    move/from16 v1, v46

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v84

    mul-double v82, v82, v84

    add-double v70, v70, v82

    .line 1292
    add-int/lit8 v46, v46, 0x1

    goto :goto_5

    .line 1295
    :cond_4
    move-object/from16 v0, v33

    move/from16 v1, v47

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v82

    mul-double v70, v70, v82

    .line 1296
    const/16 v40, 0x0

    :goto_6
    move/from16 v0, v40

    move/from16 v1, v52

    if-ge v0, v1, :cond_5

    .line 1297
    move-object/from16 v0, v32

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v82

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->interpolationPoints:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    move-object/from16 v84, v0

    move-object/from16 v0, v84

    move/from16 v1, v47

    move/from16 v2, v40

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getEntry(II)D

    move-result-wide v84

    mul-double v84, v84, v70

    add-double v82, v82, v84

    move-object/from16 v0, v32

    move/from16 v1, v40

    move-wide/from16 v2, v82

    invoke-virtual {v0, v1, v2, v3}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    .line 1296
    add-int/lit8 v40, v40, 0x1

    goto :goto_6

    .line 1290
    :cond_5
    add-int/lit8 v47, v47, 0x1

    goto :goto_4

    .line 1307
    .end local v70    # "tmp":D
    :cond_6
    const-wide/16 v56, 0x0

    .line 1308
    .local v56, "presav":D
    const-wide/high16 v62, 0x7ff8000000000000L    # NaN

    .line 1309
    .local v62, "step":D
    const/16 v48, 0x0

    .line 1310
    .local v48, "ksav":I
    const/16 v41, 0x0

    .line 1311
    .local v41, "ibdsav":I
    const-wide/16 v64, 0x0

    .line 1312
    .local v64, "stpsav":D
    const/16 v47, 0x0

    :goto_7
    move/from16 v0, v47

    move/from16 v1, v53

    if-ge v0, v1, :cond_14

    .line 1313
    move-object/from16 v0, p0

    iget v0, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->trustRegionCenterInterpolationPointIndex:I

    move/from16 v82, v0

    move/from16 v0, v47

    move/from16 v1, v82

    if-ne v0, v1, :cond_8

    .line 1312
    :cond_7
    :goto_8
    add-int/lit8 v47, v47, 0x1

    goto :goto_7

    .line 1316
    :cond_8
    const-wide/16 v24, 0x0

    .line 1317
    .local v24, "dderiv":D
    const-wide/16 v28, 0x0

    .line 1318
    .local v28, "distsq":D
    const/16 v40, 0x0

    :goto_9
    move/from16 v0, v40

    move/from16 v1, v52

    if-ge v0, v1, :cond_9

    .line 1319
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->interpolationPoints:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    move-object/from16 v82, v0

    move-object/from16 v0, v82

    move/from16 v1, v47

    move/from16 v2, v40

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getEntry(II)D

    move-result-wide v82

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->trustRegionCenterOffset:Lorg/apache/commons/math3/linear/ArrayRealVector;

    move-object/from16 v84, v0

    move-object/from16 v0, v84

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v84

    sub-double v70, v82, v84

    .line 1320
    .restart local v70    # "tmp":D
    move-object/from16 v0, v32

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v82

    mul-double v82, v82, v70

    add-double v24, v24, v82

    .line 1321
    mul-double v82, v70, v70

    add-double v28, v28, v82

    .line 1318
    add-int/lit8 v40, v40, 0x1

    goto :goto_9

    .line 1323
    .end local v70    # "tmp":D
    :cond_9
    invoke-static/range {v28 .. v29}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v82

    div-double v66, p2, v82

    .line 1324
    .local v66, "subd":D
    move-wide/from16 v0, v66

    neg-double v0, v0

    move-wide/from16 v60, v0

    .line 1325
    .local v60, "slbd":D
    const/16 v43, 0x0

    .line 1326
    .local v43, "ilbd":I
    const/16 v45, 0x0

    .line 1327
    .local v45, "iubd":I
    const-wide/high16 v82, 0x3ff0000000000000L    # 1.0

    move-wide/from16 v0, v82

    move-wide/from16 v2, v66

    invoke-static {v0, v1, v2, v3}, Lorg/apache/commons/math3/util/FastMath;->min(DD)D

    move-result-wide v68

    .line 1331
    .local v68, "sumin":D
    const/16 v40, 0x0

    :goto_a
    move/from16 v0, v40

    move/from16 v1, v52

    if-ge v0, v1, :cond_e

    .line 1332
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->interpolationPoints:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    move-object/from16 v82, v0

    move-object/from16 v0, v82

    move/from16 v1, v47

    move/from16 v2, v40

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getEntry(II)D

    move-result-wide v82

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->trustRegionCenterOffset:Lorg/apache/commons/math3/linear/ArrayRealVector;

    move-object/from16 v84, v0

    move-object/from16 v0, v84

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v84

    sub-double v70, v82, v84

    .line 1333
    .restart local v70    # "tmp":D
    const-wide/16 v82, 0x0

    cmpl-double v82, v70, v82

    if-lez v82, :cond_c

    .line 1334
    mul-double v82, v60, v70

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->lowerDifference:Lorg/apache/commons/math3/linear/ArrayRealVector;

    move-object/from16 v84, v0

    move-object/from16 v0, v84

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v84

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->trustRegionCenterOffset:Lorg/apache/commons/math3/linear/ArrayRealVector;

    move-object/from16 v86, v0

    move-object/from16 v0, v86

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v86

    sub-double v84, v84, v86

    cmpg-double v82, v82, v84

    if-gez v82, :cond_a

    .line 1335
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->lowerDifference:Lorg/apache/commons/math3/linear/ArrayRealVector;

    move-object/from16 v82, v0

    move-object/from16 v0, v82

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v82

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->trustRegionCenterOffset:Lorg/apache/commons/math3/linear/ArrayRealVector;

    move-object/from16 v84, v0

    move-object/from16 v0, v84

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v84

    sub-double v82, v82, v84

    div-double v60, v82, v70

    .line 1336
    move/from16 v0, v40

    neg-int v0, v0

    move/from16 v82, v0

    add-int/lit8 v43, v82, -0x1

    .line 1338
    :cond_a
    mul-double v82, v66, v70

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->upperDifference:Lorg/apache/commons/math3/linear/ArrayRealVector;

    move-object/from16 v84, v0

    move-object/from16 v0, v84

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v84

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->trustRegionCenterOffset:Lorg/apache/commons/math3/linear/ArrayRealVector;

    move-object/from16 v86, v0

    move-object/from16 v0, v86

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v86

    sub-double v84, v84, v86

    cmpl-double v82, v82, v84

    if-lez v82, :cond_b

    .line 1340
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->upperDifference:Lorg/apache/commons/math3/linear/ArrayRealVector;

    move-object/from16 v82, v0

    move-object/from16 v0, v82

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v82

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->trustRegionCenterOffset:Lorg/apache/commons/math3/linear/ArrayRealVector;

    move-object/from16 v84, v0

    move-object/from16 v0, v84

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v84

    sub-double v82, v82, v84

    div-double v82, v82, v70

    move-wide/from16 v0, v68

    move-wide/from16 v2, v82

    invoke-static {v0, v1, v2, v3}, Lorg/apache/commons/math3/util/FastMath;->max(DD)D

    move-result-wide v66

    .line 1342
    add-int/lit8 v45, v40, 0x1

    .line 1331
    :cond_b
    :goto_b
    add-int/lit8 v40, v40, 0x1

    goto/16 :goto_a

    .line 1344
    :cond_c
    const-wide/16 v82, 0x0

    cmpg-double v82, v70, v82

    if-gez v82, :cond_b

    .line 1345
    mul-double v82, v60, v70

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->upperDifference:Lorg/apache/commons/math3/linear/ArrayRealVector;

    move-object/from16 v84, v0

    move-object/from16 v0, v84

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v84

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->trustRegionCenterOffset:Lorg/apache/commons/math3/linear/ArrayRealVector;

    move-object/from16 v86, v0

    move-object/from16 v0, v86

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v86

    sub-double v84, v84, v86

    cmpl-double v82, v82, v84

    if-lez v82, :cond_d

    .line 1346
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->upperDifference:Lorg/apache/commons/math3/linear/ArrayRealVector;

    move-object/from16 v82, v0

    move-object/from16 v0, v82

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v82

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->trustRegionCenterOffset:Lorg/apache/commons/math3/linear/ArrayRealVector;

    move-object/from16 v84, v0

    move-object/from16 v0, v84

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v84

    sub-double v82, v82, v84

    div-double v60, v82, v70

    .line 1347
    add-int/lit8 v43, v40, 0x1

    .line 1349
    :cond_d
    mul-double v82, v66, v70

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->lowerDifference:Lorg/apache/commons/math3/linear/ArrayRealVector;

    move-object/from16 v84, v0

    move-object/from16 v0, v84

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v84

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->trustRegionCenterOffset:Lorg/apache/commons/math3/linear/ArrayRealVector;

    move-object/from16 v86, v0

    move-object/from16 v0, v86

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v86

    sub-double v84, v84, v86

    cmpg-double v82, v82, v84

    if-gez v82, :cond_b

    .line 1351
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->lowerDifference:Lorg/apache/commons/math3/linear/ArrayRealVector;

    move-object/from16 v82, v0

    move-object/from16 v0, v82

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v82

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->trustRegionCenterOffset:Lorg/apache/commons/math3/linear/ArrayRealVector;

    move-object/from16 v84, v0

    move-object/from16 v0, v84

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v84

    sub-double v82, v82, v84

    div-double v82, v82, v70

    move-wide/from16 v0, v68

    move-wide/from16 v2, v82

    invoke-static {v0, v1, v2, v3}, Lorg/apache/commons/math3/util/FastMath;->max(DD)D

    move-result-wide v66

    .line 1353
    move/from16 v0, v40

    neg-int v0, v0

    move/from16 v82, v0

    add-int/lit8 v45, v82, -0x1

    goto/16 :goto_b

    .line 1361
    .end local v70    # "tmp":D
    :cond_e
    move-wide/from16 v62, v60

    .line 1362
    move/from16 v44, v43

    .line 1363
    .local v44, "isbd":I
    const-wide/high16 v76, 0x7ff8000000000000L    # NaN

    .line 1364
    .local v76, "vlag":D
    move/from16 v0, v47

    move/from16 v1, p1

    if-ne v0, v1, :cond_11

    .line 1365
    const-wide/high16 v82, 0x3ff0000000000000L    # 1.0

    sub-double v26, v24, v82

    .line 1366
    .local v26, "diff":D
    mul-double v82, v60, v26

    sub-double v82, v24, v82

    mul-double v76, v60, v82

    .line 1367
    mul-double v82, v66, v26

    sub-double v82, v24, v82

    mul-double v14, v66, v82

    .line 1368
    .local v14, "d1":D
    invoke-static {v14, v15}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v82

    invoke-static/range {v76 .. v77}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v84

    cmpl-double v82, v82, v84

    if-lez v82, :cond_f

    .line 1369
    move-wide/from16 v62, v66

    .line 1370
    move-wide/from16 v76, v14

    .line 1371
    move/from16 v44, v45

    .line 1373
    :cond_f
    const-wide/high16 v82, 0x3fe0000000000000L    # 0.5

    mul-double v16, v82, v24

    .line 1374
    .local v16, "d2":D
    mul-double v82, v26, v60

    sub-double v18, v16, v82

    .line 1375
    .local v18, "d3":D
    mul-double v82, v26, v66

    sub-double v20, v16, v82

    .line 1376
    .local v20, "d4":D
    mul-double v82, v18, v20

    const-wide/16 v84, 0x0

    cmpg-double v82, v82, v84

    if-gez v82, :cond_10

    .line 1377
    mul-double v82, v16, v16

    div-double v22, v82, v26

    .line 1378
    .local v22, "d5":D
    invoke-static/range {v22 .. v23}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v82

    invoke-static/range {v76 .. v77}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v84

    cmpl-double v82, v82, v84

    if-lez v82, :cond_10

    .line 1379
    div-double v62, v16, v26

    .line 1380
    move-wide/from16 v76, v22

    .line 1381
    const/16 v44, 0x0

    .line 1405
    .end local v14    # "d1":D
    .end local v16    # "d2":D
    .end local v18    # "d3":D
    .end local v20    # "d4":D
    .end local v22    # "d5":D
    .end local v26    # "diff":D
    :cond_10
    :goto_c
    const-wide/high16 v82, 0x3ff0000000000000L    # 1.0

    sub-double v82, v82, v62

    mul-double v82, v82, v62

    mul-double v70, v82, v28

    .line 1406
    .restart local v70    # "tmp":D
    mul-double v82, v76, v76

    mul-double v84, v76, v76

    mul-double v86, v38, v70

    mul-double v86, v86, v70

    add-double v84, v84, v86

    mul-double v54, v82, v84

    .line 1407
    .local v54, "predsq":D
    cmpl-double v82, v54, v56

    if-lez v82, :cond_7

    .line 1408
    move-wide/from16 v56, v54

    .line 1409
    move/from16 v48, v47

    .line 1410
    move-wide/from16 v64, v62

    .line 1411
    move/from16 v41, v44

    goto/16 :goto_8

    .line 1388
    .end local v54    # "predsq":D
    .end local v70    # "tmp":D
    :cond_11
    const-wide/high16 v82, 0x3ff0000000000000L    # 1.0

    sub-double v82, v82, v60

    mul-double v76, v60, v82

    .line 1389
    const-wide/high16 v82, 0x3ff0000000000000L    # 1.0

    sub-double v82, v82, v66

    mul-double v70, v66, v82

    .line 1390
    .restart local v70    # "tmp":D
    invoke-static/range {v70 .. v71}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v82

    invoke-static/range {v76 .. v77}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v84

    cmpl-double v82, v82, v84

    if-lez v82, :cond_12

    .line 1391
    move-wide/from16 v62, v66

    .line 1392
    move-wide/from16 v76, v70

    .line 1393
    move/from16 v44, v45

    .line 1395
    :cond_12
    const-wide/high16 v82, 0x3fe0000000000000L    # 0.5

    cmpl-double v82, v66, v82

    if-lez v82, :cond_13

    invoke-static/range {v76 .. v77}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v82

    const-wide/high16 v84, 0x3fd0000000000000L    # 0.25

    cmpg-double v82, v82, v84

    if-gez v82, :cond_13

    .line 1396
    const-wide/high16 v62, 0x3fe0000000000000L    # 0.5

    .line 1397
    const-wide/high16 v76, 0x3fd0000000000000L    # 0.25

    .line 1398
    const/16 v44, 0x0

    .line 1400
    :cond_13
    mul-double v76, v76, v24

    goto :goto_c

    .line 1417
    .end local v24    # "dderiv":D
    .end local v28    # "distsq":D
    .end local v43    # "ilbd":I
    .end local v44    # "isbd":I
    .end local v45    # "iubd":I
    .end local v60    # "slbd":D
    .end local v66    # "subd":D
    .end local v68    # "sumin":D
    .end local v70    # "tmp":D
    .end local v76    # "vlag":D
    :cond_14
    const/16 v40, 0x0

    :goto_d
    move/from16 v0, v40

    move/from16 v1, v52

    if-ge v0, v1, :cond_15

    .line 1418
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->trustRegionCenterOffset:Lorg/apache/commons/math3/linear/ArrayRealVector;

    move-object/from16 v82, v0

    move-object/from16 v0, v82

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v82

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->interpolationPoints:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    move-object/from16 v84, v0

    move-object/from16 v0, v84

    move/from16 v1, v48

    move/from16 v2, v40

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getEntry(II)D

    move-result-wide v84

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->trustRegionCenterOffset:Lorg/apache/commons/math3/linear/ArrayRealVector;

    move-object/from16 v86, v0

    move-object/from16 v0, v86

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v86

    sub-double v84, v84, v86

    mul-double v84, v84, v64

    add-double v70, v82, v84

    .line 1419
    .restart local v70    # "tmp":D
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->newPoint:Lorg/apache/commons/math3/linear/ArrayRealVector;

    move-object/from16 v82, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->lowerDifference:Lorg/apache/commons/math3/linear/ArrayRealVector;

    move-object/from16 v83, v0

    move-object/from16 v0, v83

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v84

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->upperDifference:Lorg/apache/commons/math3/linear/ArrayRealVector;

    move-object/from16 v83, v0

    move-object/from16 v0, v83

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v86

    move-wide/from16 v0, v86

    move-wide/from16 v2, v70

    invoke-static {v0, v1, v2, v3}, Lorg/apache/commons/math3/util/FastMath;->min(DD)D

    move-result-wide v86

    invoke-static/range {v84 .. v87}, Lorg/apache/commons/math3/util/FastMath;->max(DD)D

    move-result-wide v84

    move-object/from16 v0, v82

    move/from16 v1, v40

    move-wide/from16 v2, v84

    invoke-virtual {v0, v1, v2, v3}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    .line 1417
    add-int/lit8 v40, v40, 0x1

    goto :goto_d

    .line 1422
    .end local v70    # "tmp":D
    :cond_15
    if-gez v41, :cond_16

    .line 1423
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->newPoint:Lorg/apache/commons/math3/linear/ArrayRealVector;

    move-object/from16 v82, v0

    move/from16 v0, v41

    neg-int v0, v0

    move/from16 v83, v0

    add-int/lit8 v83, v83, -0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->lowerDifference:Lorg/apache/commons/math3/linear/ArrayRealVector;

    move-object/from16 v84, v0

    move/from16 v0, v41

    neg-int v0, v0

    move/from16 v85, v0

    add-int/lit8 v85, v85, -0x1

    invoke-virtual/range {v84 .. v85}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v84

    invoke-virtual/range {v82 .. v85}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    .line 1425
    :cond_16
    if-lez v41, :cond_17

    .line 1426
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->newPoint:Lorg/apache/commons/math3/linear/ArrayRealVector;

    move-object/from16 v82, v0

    add-int/lit8 v83, v41, -0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->upperDifference:Lorg/apache/commons/math3/linear/ArrayRealVector;

    move-object/from16 v84, v0

    add-int/lit8 v85, v41, -0x1

    invoke-virtual/range {v84 .. v85}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v84

    invoke-virtual/range {v82 .. v85}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    .line 1433
    :cond_17
    add-double v6, p2, p2

    .line 1434
    .local v6, "bigstp":D
    const/16 v42, 0x0

    .line 1435
    .local v42, "iflag":I
    const-wide/high16 v8, 0x7ff8000000000000L    # NaN

    .line 1436
    .local v8, "cauchy":D
    const-wide/16 v10, 0x0

    .line 1438
    .local v10, "csave":D
    :goto_e
    const-wide/16 v78, 0x0

    .line 1439
    .local v78, "wfixsq":D
    const-wide/16 v30, 0x0

    .line 1440
    .local v30, "ggfree":D
    const/16 v40, 0x0

    :goto_f
    move/from16 v0, v40

    move/from16 v1, v52

    if-ge v0, v1, :cond_1a

    .line 1441
    move-object/from16 v0, v32

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v34

    .line 1442
    .local v34, "glagValue":D
    const-wide/16 v82, 0x0

    move-object/from16 v0, v80

    move/from16 v1, v40

    move-wide/from16 v2, v82

    invoke-virtual {v0, v1, v2, v3}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    .line 1443
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->trustRegionCenterOffset:Lorg/apache/commons/math3/linear/ArrayRealVector;

    move-object/from16 v82, v0

    move-object/from16 v0, v82

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v82

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->lowerDifference:Lorg/apache/commons/math3/linear/ArrayRealVector;

    move-object/from16 v84, v0

    move-object/from16 v0, v84

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v84

    sub-double v82, v82, v84

    move-wide/from16 v0, v82

    move-wide/from16 v2, v34

    invoke-static {v0, v1, v2, v3}, Lorg/apache/commons/math3/util/FastMath;->min(DD)D

    move-result-wide v82

    const-wide/16 v84, 0x0

    cmpl-double v82, v82, v84

    if-gtz v82, :cond_18

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->trustRegionCenterOffset:Lorg/apache/commons/math3/linear/ArrayRealVector;

    move-object/from16 v82, v0

    move-object/from16 v0, v82

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v82

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->upperDifference:Lorg/apache/commons/math3/linear/ArrayRealVector;

    move-object/from16 v84, v0

    move-object/from16 v0, v84

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v84

    sub-double v82, v82, v84

    move-wide/from16 v0, v82

    move-wide/from16 v2, v34

    invoke-static {v0, v1, v2, v3}, Lorg/apache/commons/math3/util/FastMath;->max(DD)D

    move-result-wide v82

    const-wide/16 v84, 0x0

    cmpg-double v82, v82, v84

    if-gez v82, :cond_19

    .line 1445
    :cond_18
    move-object/from16 v0, v80

    move/from16 v1, v40

    invoke-virtual {v0, v1, v6, v7}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    .line 1447
    mul-double v82, v34, v34

    add-double v30, v30, v82

    .line 1440
    :cond_19
    add-int/lit8 v40, v40, 0x1

    goto :goto_f

    .line 1450
    .end local v34    # "glagValue":D
    :cond_1a
    const-wide/16 v82, 0x0

    cmpl-double v82, v30, v82

    if-nez v82, :cond_1b

    .line 1451
    const/16 v82, 0x2

    move/from16 v0, v82

    new-array v0, v0, [D

    move-object/from16 v82, v0

    const/16 v83, 0x0

    aput-wide v4, v82, v83

    const/16 v83, 0x1

    const-wide/16 v84, 0x0

    aput-wide v84, v82, v83

    .line 1557
    :goto_10
    return-object v82

    .line 1455
    :cond_1b
    mul-double v82, p2, p2

    sub-double v72, v82, v78

    .line 1456
    .local v72, "tmp1":D
    const-wide/16 v82, 0x0

    cmpl-double v82, v72, v82

    if-lez v82, :cond_1f

    .line 1457
    div-double v82, v72, v30

    invoke-static/range {v82 .. v83}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v62

    .line 1458
    const-wide/16 v30, 0x0

    .line 1459
    const/16 v40, 0x0

    :goto_11
    move/from16 v0, v40

    move/from16 v1, v52

    if-ge v0, v1, :cond_1f

    .line 1460
    move-object/from16 v0, v80

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v82

    cmpl-double v82, v82, v6

    if-nez v82, :cond_1c

    .line 1461
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->trustRegionCenterOffset:Lorg/apache/commons/math3/linear/ArrayRealVector;

    move-object/from16 v82, v0

    move-object/from16 v0, v82

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v82

    move-object/from16 v0, v32

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v84

    mul-double v84, v84, v62

    sub-double v74, v82, v84

    .line 1462
    .local v74, "tmp2":D
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->lowerDifference:Lorg/apache/commons/math3/linear/ArrayRealVector;

    move-object/from16 v82, v0

    move-object/from16 v0, v82

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v82

    cmpg-double v82, v74, v82

    if-gtz v82, :cond_1d

    .line 1463
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->lowerDifference:Lorg/apache/commons/math3/linear/ArrayRealVector;

    move-object/from16 v82, v0

    move-object/from16 v0, v82

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v82

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->trustRegionCenterOffset:Lorg/apache/commons/math3/linear/ArrayRealVector;

    move-object/from16 v84, v0

    move-object/from16 v0, v84

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v84

    sub-double v82, v82, v84

    move-object/from16 v0, v80

    move/from16 v1, v40

    move-wide/from16 v2, v82

    invoke-virtual {v0, v1, v2, v3}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    .line 1465
    move-object/from16 v0, v80

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v14

    .line 1466
    .restart local v14    # "d1":D
    mul-double v82, v14, v14

    add-double v78, v78, v82

    .line 1459
    .end local v14    # "d1":D
    .end local v74    # "tmp2":D
    :cond_1c
    :goto_12
    add-int/lit8 v40, v40, 0x1

    goto :goto_11

    .line 1467
    .restart local v74    # "tmp2":D
    :cond_1d
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->upperDifference:Lorg/apache/commons/math3/linear/ArrayRealVector;

    move-object/from16 v82, v0

    move-object/from16 v0, v82

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v82

    cmpl-double v82, v74, v82

    if-ltz v82, :cond_1e

    .line 1468
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->upperDifference:Lorg/apache/commons/math3/linear/ArrayRealVector;

    move-object/from16 v82, v0

    move-object/from16 v0, v82

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v82

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->trustRegionCenterOffset:Lorg/apache/commons/math3/linear/ArrayRealVector;

    move-object/from16 v84, v0

    move-object/from16 v0, v84

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v84

    sub-double v82, v82, v84

    move-object/from16 v0, v80

    move/from16 v1, v40

    move-wide/from16 v2, v82

    invoke-virtual {v0, v1, v2, v3}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    .line 1470
    move-object/from16 v0, v80

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v14

    .line 1471
    .restart local v14    # "d1":D
    mul-double v82, v14, v14

    add-double v78, v78, v82

    .line 1472
    goto :goto_12

    .line 1474
    .end local v14    # "d1":D
    :cond_1e
    move-object/from16 v0, v32

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v14

    .line 1475
    .restart local v14    # "d1":D
    mul-double v82, v14, v14

    add-double v30, v30, v82

    goto :goto_12

    .line 1484
    .end local v14    # "d1":D
    .end local v74    # "tmp2":D
    :cond_1f
    const-wide/16 v36, 0x0

    .line 1485
    .local v36, "gw":D
    const/16 v40, 0x0

    :goto_13
    move/from16 v0, v40

    move/from16 v1, v52

    if-ge v0, v1, :cond_23

    .line 1486
    move-object/from16 v0, v32

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v34

    .line 1487
    .restart local v34    # "glagValue":D
    move-object/from16 v0, v80

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v82

    cmpl-double v82, v82, v6

    if-nez v82, :cond_20

    .line 1488
    move-wide/from16 v0, v62

    neg-double v0, v0

    move-wide/from16 v82, v0

    mul-double v82, v82, v34

    move-object/from16 v0, v80

    move/from16 v1, v40

    move-wide/from16 v2, v82

    invoke-virtual {v0, v1, v2, v3}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    .line 1489
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->upperDifference:Lorg/apache/commons/math3/linear/ArrayRealVector;

    move-object/from16 v82, v0

    move-object/from16 v0, v82

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v82

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->trustRegionCenterOffset:Lorg/apache/commons/math3/linear/ArrayRealVector;

    move-object/from16 v84, v0

    move-object/from16 v0, v84

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v84

    move-object/from16 v0, v80

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v86

    add-double v84, v84, v86

    invoke-static/range {v82 .. v85}, Lorg/apache/commons/math3/util/FastMath;->min(DD)D

    move-result-wide v50

    .line 1491
    .local v50, "min":D
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->alternativeNewPoint:Lorg/apache/commons/math3/linear/ArrayRealVector;

    move-object/from16 v82, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->lowerDifference:Lorg/apache/commons/math3/linear/ArrayRealVector;

    move-object/from16 v83, v0

    move-object/from16 v0, v83

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v84

    move-wide/from16 v0, v84

    move-wide/from16 v2, v50

    invoke-static {v0, v1, v2, v3}, Lorg/apache/commons/math3/util/FastMath;->max(DD)D

    move-result-wide v84

    move-object/from16 v0, v82

    move/from16 v1, v40

    move-wide/from16 v2, v84

    invoke-virtual {v0, v1, v2, v3}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    .line 1499
    .end local v50    # "min":D
    :goto_14
    move-object/from16 v0, v80

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v82

    mul-double v82, v82, v34

    add-double v36, v36, v82

    .line 1485
    add-int/lit8 v40, v40, 0x1

    goto/16 :goto_13

    .line 1492
    :cond_20
    move-object/from16 v0, v80

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v82

    const-wide/16 v84, 0x0

    cmpl-double v82, v82, v84

    if-nez v82, :cond_21

    .line 1493
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->alternativeNewPoint:Lorg/apache/commons/math3/linear/ArrayRealVector;

    move-object/from16 v82, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->trustRegionCenterOffset:Lorg/apache/commons/math3/linear/ArrayRealVector;

    move-object/from16 v83, v0

    move-object/from16 v0, v83

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v84

    move-object/from16 v0, v82

    move/from16 v1, v40

    move-wide/from16 v2, v84

    invoke-virtual {v0, v1, v2, v3}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    goto :goto_14

    .line 1494
    :cond_21
    const-wide/16 v82, 0x0

    cmpl-double v82, v34, v82

    if-lez v82, :cond_22

    .line 1495
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->alternativeNewPoint:Lorg/apache/commons/math3/linear/ArrayRealVector;

    move-object/from16 v82, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->lowerDifference:Lorg/apache/commons/math3/linear/ArrayRealVector;

    move-object/from16 v83, v0

    move-object/from16 v0, v83

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v84

    move-object/from16 v0, v82

    move/from16 v1, v40

    move-wide/from16 v2, v84

    invoke-virtual {v0, v1, v2, v3}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    goto :goto_14

    .line 1497
    :cond_22
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->alternativeNewPoint:Lorg/apache/commons/math3/linear/ArrayRealVector;

    move-object/from16 v82, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->upperDifference:Lorg/apache/commons/math3/linear/ArrayRealVector;

    move-object/from16 v83, v0

    move-object/from16 v0, v83

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v84

    move-object/from16 v0, v82

    move/from16 v1, v40

    move-wide/from16 v2, v84

    invoke-virtual {v0, v1, v2, v3}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    goto :goto_14

    .line 1507
    .end local v34    # "glagValue":D
    :cond_23
    const-wide/16 v12, 0x0

    .line 1508
    .local v12, "curv":D
    const/16 v47, 0x0

    :goto_15
    move/from16 v0, v47

    move/from16 v1, v53

    if-ge v0, v1, :cond_25

    .line 1509
    const-wide/16 v70, 0x0

    .line 1510
    .restart local v70    # "tmp":D
    const/16 v46, 0x0

    :goto_16
    move/from16 v0, v46

    move/from16 v1, v52

    if-ge v0, v1, :cond_24

    .line 1511
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->interpolationPoints:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    move-object/from16 v82, v0

    move-object/from16 v0, v82

    move/from16 v1, v47

    move/from16 v2, v46

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getEntry(II)D

    move-result-wide v82

    move-object/from16 v0, v80

    move/from16 v1, v46

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v84

    mul-double v82, v82, v84

    add-double v70, v70, v82

    .line 1510
    add-int/lit8 v46, v46, 0x1

    goto :goto_16

    .line 1513
    :cond_24
    move-object/from16 v0, v33

    move/from16 v1, v47

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v82

    mul-double v82, v82, v70

    mul-double v82, v82, v70

    add-double v12, v12, v82

    .line 1508
    add-int/lit8 v47, v47, 0x1

    goto :goto_15

    .line 1515
    .end local v70    # "tmp":D
    :cond_25
    const/16 v82, 0x1

    move/from16 v0, v42

    move/from16 v1, v82

    if-ne v0, v1, :cond_26

    .line 1516
    neg-double v12, v12

    .line 1518
    :cond_26
    move-wide/from16 v0, v36

    neg-double v0, v0

    move-wide/from16 v82, v0

    cmpl-double v82, v12, v82

    if-lez v82, :cond_28

    move-wide/from16 v0, v36

    neg-double v0, v0

    move-wide/from16 v82, v0

    const-wide/high16 v84, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v86, 0x4000000000000000L    # 2.0

    invoke-static/range {v86 .. v87}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v86

    add-double v84, v84, v86

    mul-double v82, v82, v84

    cmpg-double v82, v12, v82

    if-gez v82, :cond_28

    .line 1520
    move-wide/from16 v0, v36

    neg-double v0, v0

    move-wide/from16 v82, v0

    div-double v58, v82, v12

    .line 1521
    .local v58, "scale":D
    const/16 v40, 0x0

    :goto_17
    move/from16 v0, v40

    move/from16 v1, v52

    if-ge v0, v1, :cond_27

    .line 1522
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->trustRegionCenterOffset:Lorg/apache/commons/math3/linear/ArrayRealVector;

    move-object/from16 v82, v0

    move-object/from16 v0, v82

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v82

    move-object/from16 v0, v80

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v84

    mul-double v84, v84, v58

    add-double v70, v82, v84

    .line 1523
    .restart local v70    # "tmp":D
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->alternativeNewPoint:Lorg/apache/commons/math3/linear/ArrayRealVector;

    move-object/from16 v82, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->lowerDifference:Lorg/apache/commons/math3/linear/ArrayRealVector;

    move-object/from16 v83, v0

    move-object/from16 v0, v83

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v84

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->upperDifference:Lorg/apache/commons/math3/linear/ArrayRealVector;

    move-object/from16 v83, v0

    move-object/from16 v0, v83

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v86

    move-wide/from16 v0, v86

    move-wide/from16 v2, v70

    invoke-static {v0, v1, v2, v3}, Lorg/apache/commons/math3/util/FastMath;->min(DD)D

    move-result-wide v86

    invoke-static/range {v84 .. v87}, Lorg/apache/commons/math3/util/FastMath;->max(DD)D

    move-result-wide v84

    move-object/from16 v0, v82

    move/from16 v1, v40

    move-wide/from16 v2, v84

    invoke-virtual {v0, v1, v2, v3}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    .line 1521
    add-int/lit8 v40, v40, 0x1

    goto :goto_17

    .line 1527
    .end local v70    # "tmp":D
    :cond_27
    const-wide/high16 v82, 0x3fe0000000000000L    # 0.5

    mul-double v82, v82, v36

    mul-double v14, v82, v58

    .line 1528
    .restart local v14    # "d1":D
    mul-double v8, v14, v14

    .line 1539
    .end local v58    # "scale":D
    :goto_18
    if-nez v42, :cond_2a

    .line 1540
    const/16 v40, 0x0

    :goto_19
    move/from16 v0, v40

    move/from16 v1, v52

    if-ge v0, v1, :cond_29

    .line 1541
    move-object/from16 v0, v32

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v82

    move-wide/from16 v0, v82

    neg-double v0, v0

    move-wide/from16 v82, v0

    move-object/from16 v0, v32

    move/from16 v1, v40

    move-wide/from16 v2, v82

    invoke-virtual {v0, v1, v2, v3}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    .line 1542
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->alternativeNewPoint:Lorg/apache/commons/math3/linear/ArrayRealVector;

    move-object/from16 v82, v0

    move-object/from16 v0, v82

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v82

    move-object/from16 v0, v81

    move/from16 v1, v40

    move-wide/from16 v2, v82

    invoke-virtual {v0, v1, v2, v3}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    .line 1540
    add-int/lit8 v40, v40, 0x1

    goto :goto_19

    .line 1531
    .end local v14    # "d1":D
    :cond_28
    const-wide/high16 v82, 0x3fe0000000000000L    # 0.5

    mul-double v82, v82, v12

    add-double v14, v36, v82

    .line 1532
    .restart local v14    # "d1":D
    mul-double v8, v14, v14

    goto :goto_18

    .line 1544
    :cond_29
    move-wide v10, v8

    .line 1545
    const/16 v42, 0x1

    .line 1549
    goto/16 :goto_e

    .line 1550
    :cond_2a
    cmpl-double v82, v10, v8

    if-lez v82, :cond_2c

    .line 1551
    const/16 v40, 0x0

    :goto_1a
    move/from16 v0, v40

    move/from16 v1, v52

    if-ge v0, v1, :cond_2b

    .line 1552
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->alternativeNewPoint:Lorg/apache/commons/math3/linear/ArrayRealVector;

    move-object/from16 v82, v0

    move-object/from16 v0, v81

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v84

    move-object/from16 v0, v82

    move/from16 v1, v40

    move-wide/from16 v2, v84

    invoke-virtual {v0, v1, v2, v3}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    .line 1551
    add-int/lit8 v40, v40, 0x1

    goto :goto_1a

    .line 1554
    :cond_2b
    move-wide v8, v10

    .line 1557
    :cond_2c
    const/16 v82, 0x2

    move/from16 v0, v82

    new-array v0, v0, [D

    move-object/from16 v82, v0

    const/16 v83, 0x0

    aput-wide v4, v82, v83

    const/16 v83, 0x1

    aput-wide v8, v82, v83

    goto/16 :goto_10
.end method

.method private bobyqa([D[D)D
    .locals 14
    .param p1, "lowerBound"    # [D
    .param p2, "upperBound"    # [D

    .prologue
    .line 289
    invoke-static {}, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->printMethod()V

    .line 291
    iget-object v8, p0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->currentBest:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v8}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getDimension()I

    move-result v7

    .line 300
    .local v7, "n":I
    const/4 v6, 0x0

    .local v6, "j":I
    :goto_0
    if-ge v6, v7, :cond_4

    .line 301
    iget-object v8, p0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->boundDifference:[D

    aget-wide v0, v8, v6

    .line 302
    .local v0, "boundDiff":D
    iget-object v8, p0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->lowerDifference:Lorg/apache/commons/math3/linear/ArrayRealVector;

    aget-wide v10, p1, v6

    iget-object v9, p0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->currentBest:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v9, v6}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v12

    sub-double/2addr v10, v12

    invoke-virtual {v8, v6, v10, v11}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    .line 303
    iget-object v8, p0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->upperDifference:Lorg/apache/commons/math3/linear/ArrayRealVector;

    aget-wide v10, p2, v6

    iget-object v9, p0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->currentBest:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v9, v6}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v12

    sub-double/2addr v10, v12

    invoke-virtual {v8, v6, v10, v11}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    .line 304
    iget-object v8, p0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->lowerDifference:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v8, v6}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v8

    iget-wide v10, p0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->initialTrustRegionRadius:D

    neg-double v10, v10

    cmpl-double v8, v8, v10

    if-ltz v8, :cond_2

    .line 305
    iget-object v8, p0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->lowerDifference:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v8, v6}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v8

    const-wide/16 v10, 0x0

    cmpl-double v8, v8, v10

    if-ltz v8, :cond_1

    .line 306
    iget-object v8, p0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->currentBest:Lorg/apache/commons/math3/linear/ArrayRealVector;

    aget-wide v10, p1, v6

    invoke-virtual {v8, v6, v10, v11}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    .line 307
    iget-object v8, p0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->lowerDifference:Lorg/apache/commons/math3/linear/ArrayRealVector;

    const-wide/16 v10, 0x0

    invoke-virtual {v8, v6, v10, v11}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    .line 308
    iget-object v8, p0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->upperDifference:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v8, v6, v0, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    .line 300
    :cond_0
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 310
    :cond_1
    iget-object v8, p0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->currentBest:Lorg/apache/commons/math3/linear/ArrayRealVector;

    aget-wide v10, p1, v6

    iget-wide v12, p0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->initialTrustRegionRadius:D

    add-double/2addr v10, v12

    invoke-virtual {v8, v6, v10, v11}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    .line 311
    iget-object v8, p0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->lowerDifference:Lorg/apache/commons/math3/linear/ArrayRealVector;

    iget-wide v10, p0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->initialTrustRegionRadius:D

    neg-double v10, v10

    invoke-virtual {v8, v6, v10, v11}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    .line 313
    aget-wide v8, p2, v6

    iget-object v10, p0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->currentBest:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v10, v6}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v10

    sub-double v2, v8, v10

    .line 314
    .local v2, "deltaOne":D
    iget-object v8, p0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->upperDifference:Lorg/apache/commons/math3/linear/ArrayRealVector;

    iget-wide v10, p0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->initialTrustRegionRadius:D

    invoke-static {v2, v3, v10, v11}, Lorg/apache/commons/math3/util/FastMath;->max(DD)D

    move-result-wide v10

    invoke-virtual {v8, v6, v10, v11}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    goto :goto_1

    .line 316
    .end local v2    # "deltaOne":D
    :cond_2
    iget-object v8, p0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->upperDifference:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v8, v6}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v8

    iget-wide v10, p0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->initialTrustRegionRadius:D

    cmpg-double v8, v8, v10

    if-gtz v8, :cond_0

    .line 317
    iget-object v8, p0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->upperDifference:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v8, v6}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v8

    const-wide/16 v10, 0x0

    cmpg-double v8, v8, v10

    if-gtz v8, :cond_3

    .line 318
    iget-object v8, p0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->currentBest:Lorg/apache/commons/math3/linear/ArrayRealVector;

    aget-wide v10, p2, v6

    invoke-virtual {v8, v6, v10, v11}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    .line 319
    iget-object v8, p0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->lowerDifference:Lorg/apache/commons/math3/linear/ArrayRealVector;

    neg-double v10, v0

    invoke-virtual {v8, v6, v10, v11}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    .line 320
    iget-object v8, p0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->upperDifference:Lorg/apache/commons/math3/linear/ArrayRealVector;

    const-wide/16 v10, 0x0

    invoke-virtual {v8, v6, v10, v11}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    goto :goto_1

    .line 322
    :cond_3
    iget-object v8, p0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->currentBest:Lorg/apache/commons/math3/linear/ArrayRealVector;

    aget-wide v10, p2, v6

    iget-wide v12, p0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->initialTrustRegionRadius:D

    sub-double/2addr v10, v12

    invoke-virtual {v8, v6, v10, v11}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    .line 324
    aget-wide v8, p1, v6

    iget-object v10, p0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->currentBest:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v10, v6}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v10

    sub-double v2, v8, v10

    .line 325
    .restart local v2    # "deltaOne":D
    iget-wide v8, p0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->initialTrustRegionRadius:D

    neg-double v4, v8

    .line 326
    .local v4, "deltaTwo":D
    iget-object v8, p0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->lowerDifference:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-static {v2, v3, v4, v5}, Lorg/apache/commons/math3/util/FastMath;->min(DD)D

    move-result-wide v10

    invoke-virtual {v8, v6, v10, v11}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    .line 327
    iget-object v8, p0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->upperDifference:Lorg/apache/commons/math3/linear/ArrayRealVector;

    iget-wide v10, p0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->initialTrustRegionRadius:D

    invoke-virtual {v8, v6, v10, v11}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    goto :goto_1

    .line 334
    .end local v0    # "boundDiff":D
    .end local v2    # "deltaOne":D
    .end local v4    # "deltaTwo":D
    :cond_4
    invoke-direct/range {p0 .. p2}, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->bobyqb([D[D)D

    move-result-wide v8

    return-wide v8
.end method

.method private bobyqb([D[D)D
    .locals 150
    .param p1, "lowerBound"    # [D
    .param p2, "upperBound"    # [D

    .prologue
    .line 378
    invoke-static {}, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->printMethod()V

    .line 380
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->currentBest:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v5}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getDimension()I

    move-result v107

    .line 381
    .local v107, "n":I
    move-object/from16 v0, p0

    iget v0, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->numberOfInterpolationPoints:I

    move/from16 v111, v0

    .line 382
    .local v111, "npt":I
    add-int/lit8 v110, v107, 0x1

    .line 383
    .local v110, "np":I
    sub-int v112, v111, v110

    .line 384
    .local v112, "nptm":I
    mul-int v5, v107, v110

    div-int/lit8 v109, v5, 0x2

    .line 386
    .local v109, "nh":I
    new-instance v123, Lorg/apache/commons/math3/linear/ArrayRealVector;

    move-object/from16 v0, v123

    move/from16 v1, v107

    invoke-direct {v0, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;-><init>(I)V

    .line 387
    .local v123, "work1":Lorg/apache/commons/math3/linear/ArrayRealVector;
    new-instance v140, Lorg/apache/commons/math3/linear/ArrayRealVector;

    move-object/from16 v0, v140

    move/from16 v1, v111

    invoke-direct {v0, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;-><init>(I)V

    .line 388
    .local v140, "work2":Lorg/apache/commons/math3/linear/ArrayRealVector;
    new-instance v141, Lorg/apache/commons/math3/linear/ArrayRealVector;

    move-object/from16 v0, v141

    move/from16 v1, v111

    invoke-direct {v0, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;-><init>(I)V

    .line 390
    .local v141, "work3":Lorg/apache/commons/math3/linear/ArrayRealVector;
    const-wide/high16 v32, 0x7ff8000000000000L    # NaN

    .line 391
    .local v32, "cauchy":D
    const-wide/high16 v22, 0x7ff8000000000000L    # NaN

    .line 392
    .local v22, "alpha":D
    const-wide/high16 v72, 0x7ff8000000000000L    # NaN

    .line 393
    .local v72, "dsq":D
    const-wide/high16 v34, 0x7ff8000000000000L    # NaN

    .line 407
    .local v34, "crvmin":D
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput v5, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->trustRegionCenterInterpolationPointIndex:I

    .line 409
    invoke-direct/range {p0 .. p2}, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->prelim([D[D)V

    .line 410
    const-wide/16 v142, 0x0

    .line 411
    .local v142, "xoptsq":D
    const/16 v96, 0x0

    .local v96, "i":I
    :goto_0
    move/from16 v0, v96

    move/from16 v1, v107

    if-ge v0, v1, :cond_0

    .line 412
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->trustRegionCenterOffset:Lorg/apache/commons/math3/linear/ArrayRealVector;

    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->interpolationPoints:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    move-object/from16 v0, p0

    iget v0, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->trustRegionCenterInterpolationPointIndex:I

    move/from16 v144, v0

    move/from16 v0, v144

    move/from16 v1, v96

    invoke-virtual {v13, v0, v1}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getEntry(II)D

    move-result-wide v144

    move/from16 v0, v96

    move-wide/from16 v1, v144

    invoke-virtual {v5, v0, v1, v2}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    .line 414
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->trustRegionCenterOffset:Lorg/apache/commons/math3/linear/ArrayRealVector;

    move/from16 v0, v96

    invoke-virtual {v5, v0}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v50

    .line 415
    .local v50, "deltaOne":D
    mul-double v144, v50, v50

    add-double v142, v142, v144

    .line 411
    add-int/lit8 v96, v96, 0x1

    goto :goto_0

    .line 417
    .end local v50    # "deltaOne":D
    :cond_0
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->fAtInterpolationPoints:Lorg/apache/commons/math3/linear/ArrayRealVector;

    const/4 v13, 0x0

    invoke-virtual {v5, v13}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v86

    .line 418
    .local v86, "fsave":D
    const/16 v103, 0x0

    .line 422
    .local v103, "kbase":I
    const/16 v113, 0x0

    .line 423
    .local v113, "ntrits":I
    const/16 v99, 0x0

    .line 424
    .local v99, "itest":I
    const/16 v18, 0x0

    .line 425
    .local v18, "knew":I
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->getEvaluations()I

    move-result v108

    .line 426
    .local v108, "nfsav":I
    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->initialTrustRegionRadius:D

    move-wide/from16 v118, v0

    .line 427
    .local v118, "rho":D
    move-wide/from16 v6, v118

    .line 428
    .local v6, "delta":D
    const-wide/16 v60, 0x0

    .line 429
    .local v60, "diffa":D
    const-wide/16 v62, 0x0

    .line 430
    .local v62, "diffb":D
    const-wide/16 v64, 0x0

    .line 431
    .local v64, "diffc":D
    const-wide/16 v78, 0x0

    .line 432
    .local v78, "f":D
    const-wide/16 v14, 0x0

    .line 433
    .local v14, "beta":D
    const-wide/16 v20, 0x0

    .line 434
    .local v20, "adelt":D
    const-wide/16 v16, 0x0

    .line 435
    .local v16, "denom":D
    const-wide/16 v116, 0x0

    .line 436
    .local v116, "ratio":D
    const-wide/16 v70, 0x0

    .line 437
    .local v70, "dnorm":D
    const-wide/16 v120, 0x0

    .line 438
    .local v120, "scaden":D
    const-wide/16 v28, 0x0

    .line 439
    .local v28, "biglsq":D
    const-wide/16 v68, 0x0

    .line 444
    .local v68, "distsq":D
    const/16 v122, 0x14

    .line 445
    .local v122, "state":I
    :goto_1
    sparse-switch v122, :sswitch_data_0

    .line 1219
    new-instance v5, Lorg/apache/commons/math3/exception/MathIllegalStateException;

    sget-object v13, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->SIMPLE_MESSAGE:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    const/16 v144, 0x1

    move/from16 v0, v144

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v144, v0

    const/16 v145, 0x0

    const-string v146, "bobyqb"

    aput-object v146, v144, v145

    move-object/from16 v0, v144

    invoke-direct {v5, v13, v0}, Lorg/apache/commons/math3/exception/MathIllegalStateException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v5

    .line 447
    :sswitch_0
    const/16 v5, 0x14

    invoke-static {v5}, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->printState(I)V

    .line 448
    move-object/from16 v0, p0

    iget v5, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->trustRegionCenterInterpolationPointIndex:I

    if-eqz v5, :cond_6

    .line 449
    const/16 v97, 0x0

    .line 450
    .local v97, "ih":I
    const/16 v100, 0x0

    .local v100, "j":I
    :goto_2
    move/from16 v0, v100

    move/from16 v1, v107

    if-ge v0, v1, :cond_3

    .line 451
    const/16 v96, 0x0

    :goto_3
    move/from16 v0, v96

    move/from16 v1, v100

    if-gt v0, v1, :cond_2

    .line 452
    move/from16 v0, v96

    move/from16 v1, v100

    if-ge v0, v1, :cond_1

    .line 453
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->gradientAtTrustRegionCenter:Lorg/apache/commons/math3/linear/ArrayRealVector;

    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->gradientAtTrustRegionCenter:Lorg/apache/commons/math3/linear/ArrayRealVector;

    move/from16 v0, v100

    invoke-virtual {v13, v0}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v144

    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->modelSecondDerivativesValues:Lorg/apache/commons/math3/linear/ArrayRealVector;

    move/from16 v0, v97

    invoke-virtual {v13, v0}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v146

    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->trustRegionCenterOffset:Lorg/apache/commons/math3/linear/ArrayRealVector;

    move/from16 v0, v96

    invoke-virtual {v13, v0}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v148

    mul-double v146, v146, v148

    add-double v144, v144, v146

    move/from16 v0, v100

    move-wide/from16 v1, v144

    invoke-virtual {v5, v0, v1, v2}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    .line 455
    :cond_1
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->gradientAtTrustRegionCenter:Lorg/apache/commons/math3/linear/ArrayRealVector;

    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->gradientAtTrustRegionCenter:Lorg/apache/commons/math3/linear/ArrayRealVector;

    move/from16 v0, v96

    invoke-virtual {v13, v0}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v144

    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->modelSecondDerivativesValues:Lorg/apache/commons/math3/linear/ArrayRealVector;

    move/from16 v0, v97

    invoke-virtual {v13, v0}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v146

    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->trustRegionCenterOffset:Lorg/apache/commons/math3/linear/ArrayRealVector;

    move/from16 v0, v100

    invoke-virtual {v13, v0}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v148

    mul-double v146, v146, v148

    add-double v144, v144, v146

    move/from16 v0, v96

    move-wide/from16 v1, v144

    invoke-virtual {v5, v0, v1, v2}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    .line 456
    add-int/lit8 v97, v97, 0x1

    .line 451
    add-int/lit8 v96, v96, 0x1

    goto :goto_3

    .line 450
    :cond_2
    add-int/lit8 v100, v100, 0x1

    goto :goto_2

    .line 459
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->getEvaluations()I

    move-result v5

    move/from16 v0, v111

    if-le v5, v0, :cond_6

    .line 460
    const/16 v102, 0x0

    .local v102, "k":I
    :goto_4
    move/from16 v0, v102

    move/from16 v1, v111

    if-ge v0, v1, :cond_6

    .line 461
    const-wide/16 v136, 0x0

    .line 462
    .local v136, "temp":D
    const/16 v100, 0x0

    :goto_5
    move/from16 v0, v100

    move/from16 v1, v107

    if-ge v0, v1, :cond_4

    .line 463
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->interpolationPoints:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    move/from16 v0, v102

    move/from16 v1, v100

    invoke-virtual {v5, v0, v1}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getEntry(II)D

    move-result-wide v144

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->trustRegionCenterOffset:Lorg/apache/commons/math3/linear/ArrayRealVector;

    move/from16 v0, v100

    invoke-virtual {v5, v0}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v146

    mul-double v144, v144, v146

    add-double v136, v136, v144

    .line 462
    add-int/lit8 v100, v100, 0x1

    goto :goto_5

    .line 465
    :cond_4
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->modelSecondDerivativesParameters:Lorg/apache/commons/math3/linear/ArrayRealVector;

    move/from16 v0, v102

    invoke-virtual {v5, v0}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v144

    mul-double v136, v136, v144

    .line 466
    const/16 v96, 0x0

    :goto_6
    move/from16 v0, v96

    move/from16 v1, v107

    if-ge v0, v1, :cond_5

    .line 467
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->gradientAtTrustRegionCenter:Lorg/apache/commons/math3/linear/ArrayRealVector;

    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->gradientAtTrustRegionCenter:Lorg/apache/commons/math3/linear/ArrayRealVector;

    move/from16 v0, v96

    invoke-virtual {v13, v0}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v144

    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->interpolationPoints:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    move/from16 v0, v102

    move/from16 v1, v96

    invoke-virtual {v13, v0, v1}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getEntry(II)D

    move-result-wide v146

    mul-double v146, v146, v136

    add-double v144, v144, v146

    move/from16 v0, v96

    move-wide/from16 v1, v144

    invoke-virtual {v5, v0, v1, v2}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    .line 466
    add-int/lit8 v96, v96, 0x1

    goto :goto_6

    .line 460
    :cond_5
    add-int/lit8 v102, v102, 0x1

    goto :goto_4

    .line 483
    .end local v97    # "ih":I
    .end local v100    # "j":I
    .end local v102    # "k":I
    .end local v136    # "temp":D
    :cond_6
    :sswitch_1
    const/16 v5, 0x3c

    invoke-static {v5}, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->printState(I)V

    .line 484
    new-instance v8, Lorg/apache/commons/math3/linear/ArrayRealVector;

    move/from16 v0, v107

    invoke-direct {v8, v0}, Lorg/apache/commons/math3/linear/ArrayRealVector;-><init>(I)V

    .line 485
    .local v8, "gnew":Lorg/apache/commons/math3/linear/ArrayRealVector;
    new-instance v9, Lorg/apache/commons/math3/linear/ArrayRealVector;

    move/from16 v0, v107

    invoke-direct {v9, v0}, Lorg/apache/commons/math3/linear/ArrayRealVector;-><init>(I)V

    .line 486
    .local v9, "xbdi":Lorg/apache/commons/math3/linear/ArrayRealVector;
    new-instance v10, Lorg/apache/commons/math3/linear/ArrayRealVector;

    move/from16 v0, v107

    invoke-direct {v10, v0}, Lorg/apache/commons/math3/linear/ArrayRealVector;-><init>(I)V

    .line 487
    .local v10, "s":Lorg/apache/commons/math3/linear/ArrayRealVector;
    new-instance v11, Lorg/apache/commons/math3/linear/ArrayRealVector;

    move/from16 v0, v107

    invoke-direct {v11, v0}, Lorg/apache/commons/math3/linear/ArrayRealVector;-><init>(I)V

    .line 488
    .local v11, "hs":Lorg/apache/commons/math3/linear/ArrayRealVector;
    new-instance v12, Lorg/apache/commons/math3/linear/ArrayRealVector;

    move/from16 v0, v107

    invoke-direct {v12, v0}, Lorg/apache/commons/math3/linear/ArrayRealVector;-><init>(I)V

    .local v12, "hred":Lorg/apache/commons/math3/linear/ArrayRealVector;
    move-object/from16 v5, p0

    .line 490
    invoke-direct/range {v5 .. v12}, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->trsbox(DLorg/apache/commons/math3/linear/ArrayRealVector;Lorg/apache/commons/math3/linear/ArrayRealVector;Lorg/apache/commons/math3/linear/ArrayRealVector;Lorg/apache/commons/math3/linear/ArrayRealVector;Lorg/apache/commons/math3/linear/ArrayRealVector;)[D

    move-result-object v19

    .line 492
    .local v19, "dsqCrvmin":[D
    const/4 v5, 0x0

    aget-wide v72, v19, v5

    .line 493
    const/4 v5, 0x1

    aget-wide v34, v19, v5

    .line 496
    move-wide/from16 v50, v6

    .line 497
    .restart local v50    # "deltaOne":D
    invoke-static/range {v72 .. v73}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v52

    .line 498
    .local v52, "deltaTwo":D
    invoke-static/range {v50 .. v53}, Lorg/apache/commons/math3/util/FastMath;->min(DD)D

    move-result-wide v70

    .line 499
    const-wide/high16 v144, 0x3fe0000000000000L    # 0.5

    mul-double v144, v144, v118

    cmpg-double v5, v70, v144

    if-gez v5, :cond_e

    .line 500
    const/16 v113, -0x1

    .line 502
    const-wide/high16 v144, 0x4024000000000000L    # 10.0

    mul-double v50, v144, v118

    .line 503
    mul-double v68, v50, v50

    .line 504
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->getEvaluations()I

    move-result v5

    add-int/lit8 v13, v108, 0x2

    if-gt v5, v13, :cond_7

    .line 505
    const/16 v122, 0x28a

    goto/16 :goto_1

    .line 515
    :cond_7
    invoke-static/range {v60 .. v63}, Lorg/apache/commons/math3/util/FastMath;->max(DD)D

    move-result-wide v50

    .line 516
    move-wide/from16 v0, v50

    move-wide/from16 v2, v64

    invoke-static {v0, v1, v2, v3}, Lorg/apache/commons/math3/util/FastMath;->max(DD)D

    move-result-wide v76

    .line 517
    .local v76, "errbig":D
    const-wide/high16 v144, 0x3fc0000000000000L    # 0.125

    mul-double v144, v144, v118

    mul-double v84, v144, v118

    .line 518
    .local v84, "frhosq":D
    const-wide/16 v144, 0x0

    cmpl-double v5, v34, v144

    if-lez v5, :cond_8

    mul-double v144, v84, v34

    cmpl-double v5, v76, v144

    if-lez v5, :cond_8

    .line 520
    const/16 v122, 0x28a

    goto/16 :goto_1

    .line 522
    :cond_8
    div-double v26, v76, v118

    .line 523
    .local v26, "bdtol":D
    const/16 v100, 0x0

    .restart local v100    # "j":I
    :goto_7
    move/from16 v0, v100

    move/from16 v1, v107

    if-ge v0, v1, :cond_c

    .line 524
    move-wide/from16 v24, v26

    .line 525
    .local v24, "bdtest":D
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->newPoint:Lorg/apache/commons/math3/linear/ArrayRealVector;

    move/from16 v0, v100

    invoke-virtual {v5, v0}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v144

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->lowerDifference:Lorg/apache/commons/math3/linear/ArrayRealVector;

    move/from16 v0, v100

    invoke-virtual {v5, v0}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v146

    cmpl-double v5, v144, v146

    if-nez v5, :cond_9

    .line 526
    move-object/from16 v0, v123

    move/from16 v1, v100

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v24

    .line 528
    :cond_9
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->newPoint:Lorg/apache/commons/math3/linear/ArrayRealVector;

    move/from16 v0, v100

    invoke-virtual {v5, v0}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v144

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->upperDifference:Lorg/apache/commons/math3/linear/ArrayRealVector;

    move/from16 v0, v100

    invoke-virtual {v5, v0}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v146

    cmpl-double v5, v144, v146

    if-nez v5, :cond_a

    .line 529
    move-object/from16 v0, v123

    move/from16 v1, v100

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v144

    move-wide/from16 v0, v144

    neg-double v0, v0

    move-wide/from16 v24, v0

    .line 531
    :cond_a
    cmpg-double v5, v24, v26

    if-gez v5, :cond_d

    .line 532
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->modelSecondDerivativesValues:Lorg/apache/commons/math3/linear/ArrayRealVector;

    mul-int v13, v100, v100

    add-int v13, v13, v100

    div-int/lit8 v13, v13, 0x2

    invoke-virtual {v5, v13}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v36

    .line 533
    .local v36, "curv":D
    const/16 v102, 0x0

    .restart local v102    # "k":I
    :goto_8
    move/from16 v0, v102

    move/from16 v1, v111

    if-ge v0, v1, :cond_b

    .line 535
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->interpolationPoints:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    move/from16 v0, v102

    move/from16 v1, v100

    invoke-virtual {v5, v0, v1}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getEntry(II)D

    move-result-wide v38

    .line 536
    .local v38, "d1":D
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->modelSecondDerivativesParameters:Lorg/apache/commons/math3/linear/ArrayRealVector;

    move/from16 v0, v102

    invoke-virtual {v5, v0}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v144

    mul-double v146, v38, v38

    mul-double v144, v144, v146

    add-double v36, v36, v144

    .line 533
    add-int/lit8 v102, v102, 0x1

    goto :goto_8

    .line 538
    .end local v38    # "d1":D
    :cond_b
    const-wide/high16 v144, 0x3fe0000000000000L    # 0.5

    mul-double v144, v144, v36

    mul-double v144, v144, v118

    add-double v24, v24, v144

    .line 539
    cmpg-double v5, v24, v26

    if-gez v5, :cond_d

    .line 540
    const/16 v122, 0x28a

    .line 545
    .end local v24    # "bdtest":D
    .end local v36    # "curv":D
    .end local v102    # "k":I
    :cond_c
    const/16 v122, 0x2a8

    goto/16 :goto_1

    .line 523
    .restart local v24    # "bdtest":D
    :cond_d
    add-int/lit8 v100, v100, 0x1

    goto/16 :goto_7

    .line 547
    .end local v24    # "bdtest":D
    .end local v26    # "bdtol":D
    .end local v76    # "errbig":D
    .end local v84    # "frhosq":D
    .end local v100    # "j":I
    :cond_e
    add-int/lit8 v113, v113, 0x1

    .line 557
    .end local v8    # "gnew":Lorg/apache/commons/math3/linear/ArrayRealVector;
    .end local v9    # "xbdi":Lorg/apache/commons/math3/linear/ArrayRealVector;
    .end local v10    # "s":Lorg/apache/commons/math3/linear/ArrayRealVector;
    .end local v11    # "hs":Lorg/apache/commons/math3/linear/ArrayRealVector;
    .end local v12    # "hred":Lorg/apache/commons/math3/linear/ArrayRealVector;
    .end local v19    # "dsqCrvmin":[D
    .end local v50    # "deltaOne":D
    .end local v52    # "deltaTwo":D
    :sswitch_2
    const/16 v5, 0x5a

    invoke-static {v5}, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->printState(I)V

    .line 558
    const-wide v144, 0x3f50624dd2f1a9fcL    # 0.001

    mul-double v144, v144, v142

    cmpg-double v5, v72, v144

    if-gtz v5, :cond_1e

    .line 559
    const-wide/high16 v144, 0x3fd0000000000000L    # 0.25

    mul-double v82, v142, v144

    .line 560
    .local v82, "fracsq":D
    const-wide/16 v130, 0x0

    .line 563
    .local v130, "sumpq":D
    const/16 v102, 0x0

    .restart local v102    # "k":I
    :goto_9
    move/from16 v0, v102

    move/from16 v1, v111

    if-ge v0, v1, :cond_12

    .line 564
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->modelSecondDerivativesParameters:Lorg/apache/commons/math3/linear/ArrayRealVector;

    move/from16 v0, v102

    invoke-virtual {v5, v0}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v144

    add-double v130, v130, v144

    .line 565
    const-wide/high16 v144, -0x4020000000000000L    # -0.5

    mul-double v124, v144, v142

    .line 566
    .local v124, "sum":D
    const/16 v96, 0x0

    :goto_a
    move/from16 v0, v96

    move/from16 v1, v107

    if-ge v0, v1, :cond_f

    .line 567
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->interpolationPoints:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    move/from16 v0, v102

    move/from16 v1, v96

    invoke-virtual {v5, v0, v1}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getEntry(II)D

    move-result-wide v144

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->trustRegionCenterOffset:Lorg/apache/commons/math3/linear/ArrayRealVector;

    move/from16 v0, v96

    invoke-virtual {v5, v0}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v146

    mul-double v144, v144, v146

    add-double v124, v124, v144

    .line 566
    add-int/lit8 v96, v96, 0x1

    goto :goto_a

    .line 570
    :cond_f
    move-object/from16 v0, v140

    move/from16 v1, v102

    move-wide/from16 v2, v124

    invoke-virtual {v0, v1, v2, v3}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    .line 571
    const-wide/high16 v144, 0x3fe0000000000000L    # 0.5

    mul-double v144, v144, v124

    sub-double v136, v82, v144

    .line 572
    .restart local v136    # "temp":D
    const/16 v96, 0x0

    :goto_b
    move/from16 v0, v96

    move/from16 v1, v107

    if-ge v0, v1, :cond_11

    .line 573
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->bMatrix:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    move/from16 v0, v102

    move/from16 v1, v96

    invoke-virtual {v5, v0, v1}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getEntry(II)D

    move-result-wide v144

    move-object/from16 v0, v123

    move/from16 v1, v96

    move-wide/from16 v2, v144

    invoke-virtual {v0, v1, v2, v3}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    .line 574
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->lagrangeValuesAtNewPoint:Lorg/apache/commons/math3/linear/ArrayRealVector;

    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->interpolationPoints:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    move/from16 v0, v102

    move/from16 v1, v96

    invoke-virtual {v13, v0, v1}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getEntry(II)D

    move-result-wide v144

    mul-double v144, v144, v124

    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->trustRegionCenterOffset:Lorg/apache/commons/math3/linear/ArrayRealVector;

    move/from16 v0, v96

    invoke-virtual {v13, v0}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v146

    mul-double v146, v146, v136

    add-double v144, v144, v146

    move/from16 v0, v96

    move-wide/from16 v1, v144

    invoke-virtual {v5, v0, v1, v2}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    .line 575
    add-int v98, v111, v96

    .line 576
    .local v98, "ip":I
    const/16 v100, 0x0

    .restart local v100    # "j":I
    :goto_c
    move/from16 v0, v100

    move/from16 v1, v96

    if-gt v0, v1, :cond_10

    .line 577
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->bMatrix:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->bMatrix:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    move/from16 v0, v98

    move/from16 v1, v100

    invoke-virtual {v13, v0, v1}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getEntry(II)D

    move-result-wide v144

    move-object/from16 v0, v123

    move/from16 v1, v96

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v146

    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->lagrangeValuesAtNewPoint:Lorg/apache/commons/math3/linear/ArrayRealVector;

    move/from16 v0, v100

    invoke-virtual {v13, v0}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v148

    mul-double v146, v146, v148

    add-double v144, v144, v146

    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->lagrangeValuesAtNewPoint:Lorg/apache/commons/math3/linear/ArrayRealVector;

    move/from16 v0, v96

    invoke-virtual {v13, v0}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v146

    move-object/from16 v0, v123

    move/from16 v1, v100

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v148

    mul-double v146, v146, v148

    add-double v144, v144, v146

    move/from16 v0, v98

    move/from16 v1, v100

    move-wide/from16 v2, v144

    invoke-virtual {v5, v0, v1, v2, v3}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->setEntry(IID)V

    .line 576
    add-int/lit8 v100, v100, 0x1

    goto :goto_c

    .line 572
    :cond_10
    add-int/lit8 v96, v96, 0x1

    goto/16 :goto_b

    .line 563
    .end local v98    # "ip":I
    .end local v100    # "j":I
    :cond_11
    add-int/lit8 v102, v102, 0x1

    goto/16 :goto_9

    .line 587
    .end local v124    # "sum":D
    .end local v136    # "temp":D
    :cond_12
    const/16 v105, 0x0

    .local v105, "m":I
    :goto_d
    move/from16 v0, v105

    move/from16 v1, v112

    if-ge v0, v1, :cond_19

    .line 588
    const-wide/16 v134, 0x0

    .line 589
    .local v134, "sumz":D
    const-wide/16 v132, 0x0

    .line 590
    .local v132, "sumw":D
    const/16 v102, 0x0

    :goto_e
    move/from16 v0, v102

    move/from16 v1, v111

    if-ge v0, v1, :cond_13

    .line 591
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->zMatrix:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    move/from16 v0, v102

    move/from16 v1, v105

    invoke-virtual {v5, v0, v1}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getEntry(II)D

    move-result-wide v144

    add-double v134, v134, v144

    .line 592
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->lagrangeValuesAtNewPoint:Lorg/apache/commons/math3/linear/ArrayRealVector;

    move-object/from16 v0, v140

    move/from16 v1, v102

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v144

    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->zMatrix:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    move/from16 v0, v102

    move/from16 v1, v105

    invoke-virtual {v13, v0, v1}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getEntry(II)D

    move-result-wide v146

    mul-double v144, v144, v146

    move/from16 v0, v102

    move-wide/from16 v1, v144

    invoke-virtual {v5, v0, v1, v2}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    .line 593
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->lagrangeValuesAtNewPoint:Lorg/apache/commons/math3/linear/ArrayRealVector;

    move/from16 v0, v102

    invoke-virtual {v5, v0}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v144

    add-double v132, v132, v144

    .line 590
    add-int/lit8 v102, v102, 0x1

    goto :goto_e

    .line 595
    :cond_13
    const/16 v100, 0x0

    .restart local v100    # "j":I
    :goto_f
    move/from16 v0, v100

    move/from16 v1, v107

    if-ge v0, v1, :cond_16

    .line 596
    mul-double v144, v82, v134

    const-wide/high16 v146, 0x3fe0000000000000L    # 0.5

    mul-double v146, v146, v132

    sub-double v144, v144, v146

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->trustRegionCenterOffset:Lorg/apache/commons/math3/linear/ArrayRealVector;

    move/from16 v0, v100

    invoke-virtual {v5, v0}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v146

    mul-double v124, v144, v146

    .line 597
    .restart local v124    # "sum":D
    const/16 v102, 0x0

    :goto_10
    move/from16 v0, v102

    move/from16 v1, v111

    if-ge v0, v1, :cond_14

    .line 598
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->lagrangeValuesAtNewPoint:Lorg/apache/commons/math3/linear/ArrayRealVector;

    move/from16 v0, v102

    invoke-virtual {v5, v0}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v144

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->interpolationPoints:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    move/from16 v0, v102

    move/from16 v1, v100

    invoke-virtual {v5, v0, v1}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getEntry(II)D

    move-result-wide v146

    mul-double v144, v144, v146

    add-double v124, v124, v144

    .line 597
    add-int/lit8 v102, v102, 0x1

    goto :goto_10

    .line 600
    :cond_14
    move-object/from16 v0, v123

    move/from16 v1, v100

    move-wide/from16 v2, v124

    invoke-virtual {v0, v1, v2, v3}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    .line 601
    const/16 v102, 0x0

    :goto_11
    move/from16 v0, v102

    move/from16 v1, v111

    if-ge v0, v1, :cond_15

    .line 602
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->bMatrix:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->bMatrix:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    move/from16 v0, v102

    move/from16 v1, v100

    invoke-virtual {v13, v0, v1}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getEntry(II)D

    move-result-wide v144

    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->zMatrix:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    move/from16 v0, v102

    move/from16 v1, v105

    invoke-virtual {v13, v0, v1}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getEntry(II)D

    move-result-wide v146

    mul-double v146, v146, v124

    add-double v144, v144, v146

    move/from16 v0, v102

    move/from16 v1, v100

    move-wide/from16 v2, v144

    invoke-virtual {v5, v0, v1, v2, v3}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->setEntry(IID)V

    .line 601
    add-int/lit8 v102, v102, 0x1

    goto :goto_11

    .line 595
    :cond_15
    add-int/lit8 v100, v100, 0x1

    goto :goto_f

    .line 607
    .end local v124    # "sum":D
    :cond_16
    const/16 v96, 0x0

    :goto_12
    move/from16 v0, v96

    move/from16 v1, v107

    if-ge v0, v1, :cond_18

    .line 608
    add-int v98, v96, v111

    .line 609
    .restart local v98    # "ip":I
    move-object/from16 v0, v123

    move/from16 v1, v96

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v136

    .line 610
    .restart local v136    # "temp":D
    const/16 v100, 0x0

    :goto_13
    move/from16 v0, v100

    move/from16 v1, v96

    if-gt v0, v1, :cond_17

    .line 611
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->bMatrix:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->bMatrix:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    move/from16 v0, v98

    move/from16 v1, v100

    invoke-virtual {v13, v0, v1}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getEntry(II)D

    move-result-wide v144

    move-object/from16 v0, v123

    move/from16 v1, v100

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v146

    mul-double v146, v146, v136

    add-double v144, v144, v146

    move/from16 v0, v98

    move/from16 v1, v100

    move-wide/from16 v2, v144

    invoke-virtual {v5, v0, v1, v2, v3}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->setEntry(IID)V

    .line 610
    add-int/lit8 v100, v100, 0x1

    goto :goto_13

    .line 607
    :cond_17
    add-int/lit8 v96, v96, 0x1

    goto :goto_12

    .line 587
    .end local v98    # "ip":I
    .end local v136    # "temp":D
    :cond_18
    add-int/lit8 v105, v105, 0x1

    goto/16 :goto_d

    .line 621
    .end local v100    # "j":I
    .end local v132    # "sumw":D
    .end local v134    # "sumz":D
    :cond_19
    const/16 v97, 0x0

    .line 622
    .restart local v97    # "ih":I
    const/16 v100, 0x0

    .restart local v100    # "j":I
    :goto_14
    move/from16 v0, v100

    move/from16 v1, v107

    if-ge v0, v1, :cond_1c

    .line 623
    const-wide/high16 v144, -0x4020000000000000L    # -0.5

    mul-double v144, v144, v130

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->trustRegionCenterOffset:Lorg/apache/commons/math3/linear/ArrayRealVector;

    move/from16 v0, v100

    invoke-virtual {v5, v0}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v146

    mul-double v144, v144, v146

    move-object/from16 v0, v123

    move/from16 v1, v100

    move-wide/from16 v2, v144

    invoke-virtual {v0, v1, v2, v3}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    .line 624
    const/16 v102, 0x0

    :goto_15
    move/from16 v0, v102

    move/from16 v1, v111

    if-ge v0, v1, :cond_1a

    .line 625
    move-object/from16 v0, v123

    move/from16 v1, v100

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v144

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->modelSecondDerivativesParameters:Lorg/apache/commons/math3/linear/ArrayRealVector;

    move/from16 v0, v102

    invoke-virtual {v5, v0}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v146

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->interpolationPoints:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    move/from16 v0, v102

    move/from16 v1, v100

    invoke-virtual {v5, v0, v1}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getEntry(II)D

    move-result-wide v148

    mul-double v146, v146, v148

    add-double v144, v144, v146

    move-object/from16 v0, v123

    move/from16 v1, v100

    move-wide/from16 v2, v144

    invoke-virtual {v0, v1, v2, v3}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    .line 626
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->interpolationPoints:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->interpolationPoints:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    move/from16 v0, v102

    move/from16 v1, v100

    invoke-virtual {v13, v0, v1}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getEntry(II)D

    move-result-wide v144

    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->trustRegionCenterOffset:Lorg/apache/commons/math3/linear/ArrayRealVector;

    move/from16 v0, v100

    invoke-virtual {v13, v0}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v146

    sub-double v144, v144, v146

    move/from16 v0, v102

    move/from16 v1, v100

    move-wide/from16 v2, v144

    invoke-virtual {v5, v0, v1, v2, v3}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->setEntry(IID)V

    .line 624
    add-int/lit8 v102, v102, 0x1

    goto :goto_15

    .line 628
    :cond_1a
    const/16 v96, 0x0

    :goto_16
    move/from16 v0, v96

    move/from16 v1, v100

    if-gt v0, v1, :cond_1b

    .line 629
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->modelSecondDerivativesValues:Lorg/apache/commons/math3/linear/ArrayRealVector;

    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->modelSecondDerivativesValues:Lorg/apache/commons/math3/linear/ArrayRealVector;

    move/from16 v0, v97

    invoke-virtual {v13, v0}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v144

    move-object/from16 v0, v123

    move/from16 v1, v96

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v146

    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->trustRegionCenterOffset:Lorg/apache/commons/math3/linear/ArrayRealVector;

    move/from16 v0, v100

    invoke-virtual {v13, v0}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v148

    mul-double v146, v146, v148

    add-double v144, v144, v146

    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->trustRegionCenterOffset:Lorg/apache/commons/math3/linear/ArrayRealVector;

    move/from16 v0, v96

    invoke-virtual {v13, v0}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v146

    move-object/from16 v0, v123

    move/from16 v1, v100

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v148

    mul-double v146, v146, v148

    add-double v144, v144, v146

    move/from16 v0, v97

    move-wide/from16 v1, v144

    invoke-virtual {v5, v0, v1, v2}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    .line 633
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->bMatrix:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    add-int v13, v111, v96

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->bMatrix:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    move-object/from16 v144, v0

    add-int v145, v111, v100

    move-object/from16 v0, v144

    move/from16 v1, v145

    move/from16 v2, v96

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getEntry(II)D

    move-result-wide v144

    move/from16 v0, v100

    move-wide/from16 v1, v144

    invoke-virtual {v5, v13, v0, v1, v2}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->setEntry(IID)V

    .line 634
    add-int/lit8 v97, v97, 0x1

    .line 628
    add-int/lit8 v96, v96, 0x1

    goto :goto_16

    .line 622
    :cond_1b
    add-int/lit8 v100, v100, 0x1

    goto/16 :goto_14

    .line 637
    :cond_1c
    const/16 v96, 0x0

    :goto_17
    move/from16 v0, v96

    move/from16 v1, v107

    if-ge v0, v1, :cond_1d

    .line 638
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->originShift:Lorg/apache/commons/math3/linear/ArrayRealVector;

    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->originShift:Lorg/apache/commons/math3/linear/ArrayRealVector;

    move/from16 v0, v96

    invoke-virtual {v13, v0}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v144

    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->trustRegionCenterOffset:Lorg/apache/commons/math3/linear/ArrayRealVector;

    move/from16 v0, v96

    invoke-virtual {v13, v0}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v146

    add-double v144, v144, v146

    move/from16 v0, v96

    move-wide/from16 v1, v144

    invoke-virtual {v5, v0, v1, v2}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    .line 639
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->newPoint:Lorg/apache/commons/math3/linear/ArrayRealVector;

    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->newPoint:Lorg/apache/commons/math3/linear/ArrayRealVector;

    move/from16 v0, v96

    invoke-virtual {v13, v0}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v144

    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->trustRegionCenterOffset:Lorg/apache/commons/math3/linear/ArrayRealVector;

    move/from16 v0, v96

    invoke-virtual {v13, v0}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v146

    sub-double v144, v144, v146

    move/from16 v0, v96

    move-wide/from16 v1, v144

    invoke-virtual {v5, v0, v1, v2}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    .line 640
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->lowerDifference:Lorg/apache/commons/math3/linear/ArrayRealVector;

    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->lowerDifference:Lorg/apache/commons/math3/linear/ArrayRealVector;

    move/from16 v0, v96

    invoke-virtual {v13, v0}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v144

    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->trustRegionCenterOffset:Lorg/apache/commons/math3/linear/ArrayRealVector;

    move/from16 v0, v96

    invoke-virtual {v13, v0}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v146

    sub-double v144, v144, v146

    move/from16 v0, v96

    move-wide/from16 v1, v144

    invoke-virtual {v5, v0, v1, v2}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    .line 641
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->upperDifference:Lorg/apache/commons/math3/linear/ArrayRealVector;

    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->upperDifference:Lorg/apache/commons/math3/linear/ArrayRealVector;

    move/from16 v0, v96

    invoke-virtual {v13, v0}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v144

    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->trustRegionCenterOffset:Lorg/apache/commons/math3/linear/ArrayRealVector;

    move/from16 v0, v96

    invoke-virtual {v13, v0}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v146

    sub-double v144, v144, v146

    move/from16 v0, v96

    move-wide/from16 v1, v144

    invoke-virtual {v5, v0, v1, v2}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    .line 642
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->trustRegionCenterOffset:Lorg/apache/commons/math3/linear/ArrayRealVector;

    const-wide/16 v144, 0x0

    move/from16 v0, v96

    move-wide/from16 v1, v144

    invoke-virtual {v5, v0, v1, v2}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    .line 637
    add-int/lit8 v96, v96, 0x1

    goto/16 :goto_17

    .line 644
    :cond_1d
    const-wide/16 v142, 0x0

    .line 646
    .end local v82    # "fracsq":D
    .end local v97    # "ih":I
    .end local v100    # "j":I
    .end local v102    # "k":I
    .end local v105    # "m":I
    .end local v130    # "sumpq":D
    :cond_1e
    if-nez v113, :cond_1f

    .line 647
    const/16 v122, 0xd2

    goto/16 :goto_1

    .line 649
    :cond_1f
    const/16 v122, 0xe6

    goto/16 :goto_1

    .line 662
    :sswitch_3
    const/16 v5, 0xd2

    invoke-static {v5}, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->printState(I)V

    .line 674
    move-object/from16 v0, p0

    move/from16 v1, v18

    move-wide/from16 v2, v20

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->altmov(ID)[D

    move-result-object v4

    .line 675
    .local v4, "alphaCauchy":[D
    const/4 v5, 0x0

    aget-wide v22, v4, v5

    .line 676
    const/4 v5, 0x1

    aget-wide v32, v4, v5

    .line 678
    const/16 v96, 0x0

    :goto_18
    move/from16 v0, v96

    move/from16 v1, v107

    if-ge v0, v1, :cond_20

    .line 679
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->trialStepPoint:Lorg/apache/commons/math3/linear/ArrayRealVector;

    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->newPoint:Lorg/apache/commons/math3/linear/ArrayRealVector;

    move/from16 v0, v96

    invoke-virtual {v13, v0}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v144

    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->trustRegionCenterOffset:Lorg/apache/commons/math3/linear/ArrayRealVector;

    move/from16 v0, v96

    invoke-virtual {v13, v0}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v146

    sub-double v144, v144, v146

    move/from16 v0, v96

    move-wide/from16 v1, v144

    invoke-virtual {v5, v0, v1, v2}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    .line 678
    add-int/lit8 v96, v96, 0x1

    goto :goto_18

    .line 688
    .end local v4    # "alphaCauchy":[D
    :cond_20
    :sswitch_4
    const/16 v5, 0xe6

    invoke-static {v5}, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->printState(I)V

    .line 689
    const/16 v102, 0x0

    .restart local v102    # "k":I
    :goto_19
    move/from16 v0, v102

    move/from16 v1, v111

    if-ge v0, v1, :cond_22

    .line 690
    const-wide/16 v126, 0x0

    .line 691
    .local v126, "suma":D
    const-wide/16 v128, 0x0

    .line 692
    .local v128, "sumb":D
    const-wide/16 v124, 0x0

    .line 693
    .restart local v124    # "sum":D
    const/16 v100, 0x0

    .restart local v100    # "j":I
    :goto_1a
    move/from16 v0, v100

    move/from16 v1, v107

    if-ge v0, v1, :cond_21

    .line 694
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->interpolationPoints:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    move/from16 v0, v102

    move/from16 v1, v100

    invoke-virtual {v5, v0, v1}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getEntry(II)D

    move-result-wide v144

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->trialStepPoint:Lorg/apache/commons/math3/linear/ArrayRealVector;

    move/from16 v0, v100

    invoke-virtual {v5, v0}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v146

    mul-double v144, v144, v146

    add-double v126, v126, v144

    .line 695
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->interpolationPoints:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    move/from16 v0, v102

    move/from16 v1, v100

    invoke-virtual {v5, v0, v1}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getEntry(II)D

    move-result-wide v144

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->trustRegionCenterOffset:Lorg/apache/commons/math3/linear/ArrayRealVector;

    move/from16 v0, v100

    invoke-virtual {v5, v0}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v146

    mul-double v144, v144, v146

    add-double v128, v128, v144

    .line 696
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->bMatrix:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    move/from16 v0, v102

    move/from16 v1, v100

    invoke-virtual {v5, v0, v1}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getEntry(II)D

    move-result-wide v144

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->trialStepPoint:Lorg/apache/commons/math3/linear/ArrayRealVector;

    move/from16 v0, v100

    invoke-virtual {v5, v0}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v146

    mul-double v144, v144, v146

    add-double v124, v124, v144

    .line 693
    add-int/lit8 v100, v100, 0x1

    goto :goto_1a

    .line 698
    :cond_21
    const-wide/high16 v144, 0x3fe0000000000000L    # 0.5

    mul-double v144, v144, v126

    add-double v144, v144, v128

    mul-double v144, v144, v126

    move-object/from16 v0, v141

    move/from16 v1, v102

    move-wide/from16 v2, v144

    invoke-virtual {v0, v1, v2, v3}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    .line 699
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->lagrangeValuesAtNewPoint:Lorg/apache/commons/math3/linear/ArrayRealVector;

    move/from16 v0, v102

    move-wide/from16 v1, v124

    invoke-virtual {v5, v0, v1, v2}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    .line 700
    move-object/from16 v0, v140

    move/from16 v1, v102

    move-wide/from16 v2, v126

    invoke-virtual {v0, v1, v2, v3}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    .line 689
    add-int/lit8 v102, v102, 0x1

    goto/16 :goto_19

    .line 702
    .end local v100    # "j":I
    .end local v124    # "sum":D
    .end local v126    # "suma":D
    .end local v128    # "sumb":D
    :cond_22
    const-wide/16 v14, 0x0

    .line 703
    const/16 v105, 0x0

    .restart local v105    # "m":I
    :goto_1b
    move/from16 v0, v105

    move/from16 v1, v112

    if-ge v0, v1, :cond_25

    .line 704
    const-wide/16 v124, 0x0

    .line 705
    .restart local v124    # "sum":D
    const/16 v102, 0x0

    :goto_1c
    move/from16 v0, v102

    move/from16 v1, v111

    if-ge v0, v1, :cond_23

    .line 706
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->zMatrix:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    move/from16 v0, v102

    move/from16 v1, v105

    invoke-virtual {v5, v0, v1}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getEntry(II)D

    move-result-wide v144

    move-object/from16 v0, v141

    move/from16 v1, v102

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v146

    mul-double v144, v144, v146

    add-double v124, v124, v144

    .line 705
    add-int/lit8 v102, v102, 0x1

    goto :goto_1c

    .line 708
    :cond_23
    mul-double v144, v124, v124

    sub-double v14, v14, v144

    .line 709
    const/16 v102, 0x0

    :goto_1d
    move/from16 v0, v102

    move/from16 v1, v111

    if-ge v0, v1, :cond_24

    .line 710
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->lagrangeValuesAtNewPoint:Lorg/apache/commons/math3/linear/ArrayRealVector;

    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->lagrangeValuesAtNewPoint:Lorg/apache/commons/math3/linear/ArrayRealVector;

    move/from16 v0, v102

    invoke-virtual {v13, v0}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v144

    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->zMatrix:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    move/from16 v0, v102

    move/from16 v1, v105

    invoke-virtual {v13, v0, v1}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getEntry(II)D

    move-result-wide v146

    mul-double v146, v146, v124

    add-double v144, v144, v146

    move/from16 v0, v102

    move-wide/from16 v1, v144

    invoke-virtual {v5, v0, v1, v2}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    .line 709
    add-int/lit8 v102, v102, 0x1

    goto :goto_1d

    .line 703
    :cond_24
    add-int/lit8 v105, v105, 0x1

    goto :goto_1b

    .line 713
    .end local v124    # "sum":D
    :cond_25
    const-wide/16 v72, 0x0

    .line 714
    const-wide/16 v30, 0x0

    .line 715
    .local v30, "bsum":D
    const-wide/16 v74, 0x0

    .line 716
    .local v74, "dx":D
    const/16 v100, 0x0

    .restart local v100    # "j":I
    :goto_1e
    move/from16 v0, v100

    move/from16 v1, v107

    if-ge v0, v1, :cond_28

    .line 718
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->trialStepPoint:Lorg/apache/commons/math3/linear/ArrayRealVector;

    move/from16 v0, v100

    invoke-virtual {v5, v0}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v38

    .line 719
    .restart local v38    # "d1":D
    mul-double v144, v38, v38

    add-double v72, v72, v144

    .line 720
    const-wide/16 v124, 0x0

    .line 721
    .restart local v124    # "sum":D
    const/16 v102, 0x0

    :goto_1f
    move/from16 v0, v102

    move/from16 v1, v111

    if-ge v0, v1, :cond_26

    .line 722
    move-object/from16 v0, v141

    move/from16 v1, v102

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v144

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->bMatrix:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    move/from16 v0, v102

    move/from16 v1, v100

    invoke-virtual {v5, v0, v1}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getEntry(II)D

    move-result-wide v146

    mul-double v144, v144, v146

    add-double v124, v124, v144

    .line 721
    add-int/lit8 v102, v102, 0x1

    goto :goto_1f

    .line 724
    :cond_26
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->trialStepPoint:Lorg/apache/commons/math3/linear/ArrayRealVector;

    move/from16 v0, v100

    invoke-virtual {v5, v0}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v144

    mul-double v144, v144, v124

    add-double v30, v30, v144

    .line 725
    add-int v101, v111, v100

    .line 726
    .local v101, "jp":I
    const/16 v96, 0x0

    :goto_20
    move/from16 v0, v96

    move/from16 v1, v107

    if-ge v0, v1, :cond_27

    .line 727
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->bMatrix:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    move/from16 v0, v101

    move/from16 v1, v96

    invoke-virtual {v5, v0, v1}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getEntry(II)D

    move-result-wide v144

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->trialStepPoint:Lorg/apache/commons/math3/linear/ArrayRealVector;

    move/from16 v0, v96

    invoke-virtual {v5, v0}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v146

    mul-double v144, v144, v146

    add-double v124, v124, v144

    .line 726
    add-int/lit8 v96, v96, 0x1

    goto :goto_20

    .line 729
    :cond_27
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->lagrangeValuesAtNewPoint:Lorg/apache/commons/math3/linear/ArrayRealVector;

    move/from16 v0, v101

    move-wide/from16 v1, v124

    invoke-virtual {v5, v0, v1, v2}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    .line 730
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->trialStepPoint:Lorg/apache/commons/math3/linear/ArrayRealVector;

    move/from16 v0, v100

    invoke-virtual {v5, v0}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v144

    mul-double v144, v144, v124

    add-double v30, v30, v144

    .line 731
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->trialStepPoint:Lorg/apache/commons/math3/linear/ArrayRealVector;

    move/from16 v0, v100

    invoke-virtual {v5, v0}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v144

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->trustRegionCenterOffset:Lorg/apache/commons/math3/linear/ArrayRealVector;

    move/from16 v0, v100

    invoke-virtual {v5, v0}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v146

    mul-double v144, v144, v146

    add-double v74, v74, v144

    .line 716
    add-int/lit8 v100, v100, 0x1

    goto/16 :goto_1e

    .line 734
    .end local v38    # "d1":D
    .end local v101    # "jp":I
    .end local v124    # "sum":D
    :cond_28
    mul-double v144, v74, v74

    add-double v146, v142, v74

    add-double v146, v146, v74

    const-wide/high16 v148, 0x3fe0000000000000L    # 0.5

    mul-double v148, v148, v72

    add-double v146, v146, v148

    mul-double v146, v146, v72

    add-double v144, v144, v146

    add-double v144, v144, v14

    sub-double v14, v144, v30

    .line 738
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->lagrangeValuesAtNewPoint:Lorg/apache/commons/math3/linear/ArrayRealVector;

    move-object/from16 v0, p0

    iget v13, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->trustRegionCenterInterpolationPointIndex:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->lagrangeValuesAtNewPoint:Lorg/apache/commons/math3/linear/ArrayRealVector;

    move-object/from16 v144, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->trustRegionCenterInterpolationPointIndex:I

    move/from16 v145, v0

    invoke-virtual/range {v144 .. v145}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v144

    const-wide/high16 v146, 0x3ff0000000000000L    # 1.0

    add-double v144, v144, v146

    move-wide/from16 v0, v144

    invoke-virtual {v5, v13, v0, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    .line 745
    if-nez v113, :cond_2a

    .line 747
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->lagrangeValuesAtNewPoint:Lorg/apache/commons/math3/linear/ArrayRealVector;

    move/from16 v0, v18

    invoke-virtual {v5, v0}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v38

    .line 748
    .restart local v38    # "d1":D
    mul-double v144, v38, v38

    mul-double v146, v22, v14

    add-double v16, v144, v146

    .line 749
    cmpg-double v5, v16, v32

    if-gez v5, :cond_2f

    const-wide/16 v144, 0x0

    cmpl-double v5, v32, v144

    if-lez v5, :cond_2f

    .line 750
    const/16 v96, 0x0

    :goto_21
    move/from16 v0, v96

    move/from16 v1, v107

    if-ge v0, v1, :cond_29

    .line 751
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->newPoint:Lorg/apache/commons/math3/linear/ArrayRealVector;

    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->alternativeNewPoint:Lorg/apache/commons/math3/linear/ArrayRealVector;

    move/from16 v0, v96

    invoke-virtual {v13, v0}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v144

    move/from16 v0, v96

    move-wide/from16 v1, v144

    invoke-virtual {v5, v0, v1, v2}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    .line 752
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->trialStepPoint:Lorg/apache/commons/math3/linear/ArrayRealVector;

    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->newPoint:Lorg/apache/commons/math3/linear/ArrayRealVector;

    move/from16 v0, v96

    invoke-virtual {v13, v0}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v144

    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->trustRegionCenterOffset:Lorg/apache/commons/math3/linear/ArrayRealVector;

    move/from16 v0, v96

    invoke-virtual {v13, v0}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v146

    sub-double v144, v144, v146

    move/from16 v0, v96

    move-wide/from16 v1, v144

    invoke-virtual {v5, v0, v1, v2}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    .line 750
    add-int/lit8 v96, v96, 0x1

    goto :goto_21

    .line 754
    :cond_29
    const-wide/16 v32, 0x0

    .line 755
    const/16 v122, 0xe6

    goto/16 :goto_1

    .line 764
    .end local v38    # "d1":D
    :cond_2a
    mul-double v48, v6, v6

    .line 765
    .local v48, "delsq":D
    const-wide/16 v120, 0x0

    .line 766
    const-wide/16 v28, 0x0

    .line 767
    const/16 v18, 0x0

    .line 768
    const/16 v102, 0x0

    :goto_22
    move/from16 v0, v102

    move/from16 v1, v111

    if-ge v0, v1, :cond_2f

    .line 769
    move-object/from16 v0, p0

    iget v5, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->trustRegionCenterInterpolationPointIndex:I

    move/from16 v0, v102

    if-ne v0, v5, :cond_2b

    .line 768
    :goto_23
    add-int/lit8 v102, v102, 0x1

    goto :goto_22

    .line 772
    :cond_2b
    const-wide/16 v94, 0x0

    .line 773
    .local v94, "hdiag":D
    const/16 v105, 0x0

    :goto_24
    move/from16 v0, v105

    move/from16 v1, v112

    if-ge v0, v1, :cond_2c

    .line 775
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->zMatrix:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    move/from16 v0, v102

    move/from16 v1, v105

    invoke-virtual {v5, v0, v1}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getEntry(II)D

    move-result-wide v38

    .line 776
    .restart local v38    # "d1":D
    mul-double v144, v38, v38

    add-double v94, v94, v144

    .line 773
    add-int/lit8 v105, v105, 0x1

    goto :goto_24

    .line 779
    .end local v38    # "d1":D
    :cond_2c
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->lagrangeValuesAtNewPoint:Lorg/apache/commons/math3/linear/ArrayRealVector;

    move/from16 v0, v102

    invoke-virtual {v5, v0}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v40

    .line 780
    .local v40, "d2":D
    mul-double v144, v14, v94

    mul-double v146, v40, v40

    add-double v54, v144, v146

    .line 781
    .local v54, "den":D
    const-wide/16 v68, 0x0

    .line 782
    const/16 v100, 0x0

    :goto_25
    move/from16 v0, v100

    move/from16 v1, v107

    if-ge v0, v1, :cond_2d

    .line 784
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->interpolationPoints:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    move/from16 v0, v102

    move/from16 v1, v100

    invoke-virtual {v5, v0, v1}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getEntry(II)D

    move-result-wide v144

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->trustRegionCenterOffset:Lorg/apache/commons/math3/linear/ArrayRealVector;

    move/from16 v0, v100

    invoke-virtual {v5, v0}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v146

    sub-double v42, v144, v146

    .line 785
    .local v42, "d3":D
    mul-double v144, v42, v42

    add-double v68, v68, v144

    .line 782
    add-int/lit8 v100, v100, 0x1

    goto :goto_25

    .line 789
    .end local v42    # "d3":D
    :cond_2d
    div-double v44, v68, v48

    .line 790
    .local v44, "d4":D
    const-wide/high16 v144, 0x3ff0000000000000L    # 1.0

    mul-double v146, v44, v44

    invoke-static/range {v144 .. v147}, Lorg/apache/commons/math3/util/FastMath;->max(DD)D

    move-result-wide v136

    .line 791
    .restart local v136    # "temp":D
    mul-double v144, v136, v54

    cmpl-double v5, v144, v120

    if-lez v5, :cond_2e

    .line 792
    mul-double v120, v136, v54

    .line 793
    move/from16 v18, v102

    .line 794
    move-wide/from16 v16, v54

    .line 798
    :cond_2e
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->lagrangeValuesAtNewPoint:Lorg/apache/commons/math3/linear/ArrayRealVector;

    move/from16 v0, v102

    invoke-virtual {v5, v0}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v46

    .line 799
    .local v46, "d5":D
    mul-double v144, v46, v46

    mul-double v144, v144, v136

    move-wide/from16 v0, v28

    move-wide/from16 v2, v144

    invoke-static {v0, v1, v2, v3}, Lorg/apache/commons/math3/util/FastMath;->max(DD)D

    move-result-wide v28

    goto/16 :goto_23

    .line 811
    .end local v30    # "bsum":D
    .end local v40    # "d2":D
    .end local v44    # "d4":D
    .end local v46    # "d5":D
    .end local v48    # "delsq":D
    .end local v54    # "den":D
    .end local v74    # "dx":D
    .end local v94    # "hdiag":D
    .end local v100    # "j":I
    .end local v102    # "k":I
    .end local v105    # "m":I
    .end local v136    # "temp":D
    :cond_2f
    :sswitch_5
    const/16 v5, 0x168

    invoke-static {v5}, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->printState(I)V

    .line 812
    const/16 v96, 0x0

    :goto_26
    move/from16 v0, v96

    move/from16 v1, v107

    if-ge v0, v1, :cond_32

    .line 815
    aget-wide v42, p1, v96

    .line 816
    .restart local v42    # "d3":D
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->originShift:Lorg/apache/commons/math3/linear/ArrayRealVector;

    move/from16 v0, v96

    invoke-virtual {v5, v0}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v144

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->newPoint:Lorg/apache/commons/math3/linear/ArrayRealVector;

    move/from16 v0, v96

    invoke-virtual {v5, v0}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v146

    add-double v44, v144, v146

    .line 817
    .restart local v44    # "d4":D
    invoke-static/range {v42 .. v45}, Lorg/apache/commons/math3/util/FastMath;->max(DD)D

    move-result-wide v38

    .line 818
    .restart local v38    # "d1":D
    aget-wide v40, p2, v96

    .line 819
    .restart local v40    # "d2":D
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->currentBest:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-static/range {v38 .. v41}, Lorg/apache/commons/math3/util/FastMath;->min(DD)D

    move-result-wide v144

    move/from16 v0, v96

    move-wide/from16 v1, v144

    invoke-virtual {v5, v0, v1, v2}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    .line 820
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->newPoint:Lorg/apache/commons/math3/linear/ArrayRealVector;

    move/from16 v0, v96

    invoke-virtual {v5, v0}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v144

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->lowerDifference:Lorg/apache/commons/math3/linear/ArrayRealVector;

    move/from16 v0, v96

    invoke-virtual {v5, v0}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v146

    cmpl-double v5, v144, v146

    if-nez v5, :cond_30

    .line 821
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->currentBest:Lorg/apache/commons/math3/linear/ArrayRealVector;

    aget-wide v144, p1, v96

    move/from16 v0, v96

    move-wide/from16 v1, v144

    invoke-virtual {v5, v0, v1, v2}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    .line 823
    :cond_30
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->newPoint:Lorg/apache/commons/math3/linear/ArrayRealVector;

    move/from16 v0, v96

    invoke-virtual {v5, v0}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v144

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->upperDifference:Lorg/apache/commons/math3/linear/ArrayRealVector;

    move/from16 v0, v96

    invoke-virtual {v5, v0}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v146

    cmpl-double v5, v144, v146

    if-nez v5, :cond_31

    .line 824
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->currentBest:Lorg/apache/commons/math3/linear/ArrayRealVector;

    aget-wide v144, p2, v96

    move/from16 v0, v96

    move-wide/from16 v1, v144

    invoke-virtual {v5, v0, v1, v2}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    .line 812
    :cond_31
    add-int/lit8 v96, v96, 0x1

    goto :goto_26

    .line 828
    .end local v38    # "d1":D
    .end local v40    # "d2":D
    .end local v42    # "d3":D
    .end local v44    # "d4":D
    :cond_32
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->currentBest:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v5}, Lorg/apache/commons/math3/linear/ArrayRealVector;->toArray()[D

    move-result-object v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->computeObjectiveValue([D)D

    move-result-wide v78

    .line 830
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->isMinimize:Z

    if-nez v5, :cond_33

    .line 831
    move-wide/from16 v0, v78

    neg-double v0, v0

    move-wide/from16 v78, v0

    .line 832
    :cond_33
    const/4 v5, -0x1

    move/from16 v0, v113

    if-ne v0, v5, :cond_34

    .line 833
    move-wide/from16 v86, v78

    .line 834
    const/16 v122, 0x2d0

    goto/16 :goto_1

    .line 840
    :cond_34
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->fAtInterpolationPoints:Lorg/apache/commons/math3/linear/ArrayRealVector;

    move-object/from16 v0, p0

    iget v13, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->trustRegionCenterInterpolationPointIndex:I

    invoke-virtual {v5, v13}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v80

    .line 841
    .local v80, "fopt":D
    const-wide/16 v138, 0x0

    .line 842
    .local v138, "vquad":D
    const/16 v97, 0x0

    .line 843
    .restart local v97    # "ih":I
    const/16 v100, 0x0

    .restart local v100    # "j":I
    :goto_27
    move/from16 v0, v100

    move/from16 v1, v107

    if-ge v0, v1, :cond_37

    .line 844
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->trialStepPoint:Lorg/apache/commons/math3/linear/ArrayRealVector;

    move/from16 v0, v100

    invoke-virtual {v5, v0}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v144

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->gradientAtTrustRegionCenter:Lorg/apache/commons/math3/linear/ArrayRealVector;

    move/from16 v0, v100

    invoke-virtual {v5, v0}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v146

    mul-double v144, v144, v146

    add-double v138, v138, v144

    .line 845
    const/16 v96, 0x0

    :goto_28
    move/from16 v0, v96

    move/from16 v1, v100

    if-gt v0, v1, :cond_36

    .line 846
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->trialStepPoint:Lorg/apache/commons/math3/linear/ArrayRealVector;

    move/from16 v0, v96

    invoke-virtual {v5, v0}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v144

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->trialStepPoint:Lorg/apache/commons/math3/linear/ArrayRealVector;

    move/from16 v0, v100

    invoke-virtual {v5, v0}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v146

    mul-double v136, v144, v146

    .line 847
    .restart local v136    # "temp":D
    move/from16 v0, v96

    move/from16 v1, v100

    if-ne v0, v1, :cond_35

    .line 848
    const-wide/high16 v144, 0x3fe0000000000000L    # 0.5

    mul-double v136, v136, v144

    .line 850
    :cond_35
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->modelSecondDerivativesValues:Lorg/apache/commons/math3/linear/ArrayRealVector;

    move/from16 v0, v97

    invoke-virtual {v5, v0}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v144

    mul-double v144, v144, v136

    add-double v138, v138, v144

    .line 851
    add-int/lit8 v97, v97, 0x1

    .line 845
    add-int/lit8 v96, v96, 0x1

    goto :goto_28

    .line 843
    .end local v136    # "temp":D
    :cond_36
    add-int/lit8 v100, v100, 0x1

    goto :goto_27

    .line 854
    :cond_37
    const/16 v102, 0x0

    .restart local v102    # "k":I
    :goto_29
    move/from16 v0, v102

    move/from16 v1, v111

    if-ge v0, v1, :cond_38

    .line 856
    move-object/from16 v0, v140

    move/from16 v1, v102

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v38

    .line 857
    .restart local v38    # "d1":D
    mul-double v40, v38, v38

    .line 858
    .restart local v40    # "d2":D
    const-wide/high16 v144, 0x3fe0000000000000L    # 0.5

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->modelSecondDerivativesParameters:Lorg/apache/commons/math3/linear/ArrayRealVector;

    move/from16 v0, v102

    invoke-virtual {v5, v0}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v146

    mul-double v144, v144, v146

    mul-double v144, v144, v40

    add-double v138, v138, v144

    .line 854
    add-int/lit8 v102, v102, 0x1

    goto :goto_29

    .line 860
    .end local v38    # "d1":D
    .end local v40    # "d2":D
    :cond_38
    sub-double v144, v78, v80

    sub-double v58, v144, v138

    .line 861
    .local v58, "diff":D
    move-wide/from16 v64, v62

    .line 862
    move-wide/from16 v62, v60

    .line 863
    invoke-static/range {v58 .. v59}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v60

    .line 864
    cmpl-double v5, v70, v118

    if-lez v5, :cond_39

    .line 865
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->getEvaluations()I

    move-result v108

    .line 870
    :cond_39
    if-lez v113, :cond_42

    .line 871
    const-wide/16 v144, 0x0

    cmpl-double v5, v138, v144

    if-ltz v5, :cond_3a

    .line 872
    new-instance v5, Lorg/apache/commons/math3/exception/MathIllegalStateException;

    sget-object v13, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->TRUST_REGION_STEP_FAILED:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    const/16 v144, 0x1

    move/from16 v0, v144

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v144, v0

    const/16 v145, 0x0

    invoke-static/range {v138 .. v139}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v146

    aput-object v146, v144, v145

    move-object/from16 v0, v144

    invoke-direct {v5, v13, v0}, Lorg/apache/commons/math3/exception/MathIllegalStateException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v5

    .line 874
    :cond_3a
    sub-double v144, v78, v80

    div-double v116, v144, v138

    .line 875
    const-wide/high16 v144, 0x3fe0000000000000L    # 0.5

    mul-double v92, v144, v6

    .line 876
    .local v92, "hDelta":D
    const-wide v144, 0x3fb999999999999aL    # 0.1

    cmpg-double v5, v116, v144

    if-gtz v5, :cond_3c

    .line 878
    move-wide/from16 v0, v92

    move-wide/from16 v2, v70

    invoke-static {v0, v1, v2, v3}, Lorg/apache/commons/math3/util/FastMath;->min(DD)D

    move-result-wide v6

    .line 886
    :goto_2a
    const-wide/high16 v144, 0x3ff8000000000000L    # 1.5

    mul-double v144, v144, v118

    cmpg-double v5, v6, v144

    if-gtz v5, :cond_3b

    .line 887
    move-wide/from16 v6, v118

    .line 892
    :cond_3b
    cmpg-double v5, v78, v80

    if-gez v5, :cond_42

    .line 893
    move/from16 v104, v18

    .line 894
    .local v104, "ksav":I
    move-wide/from16 v56, v16

    .line 895
    .local v56, "densav":D
    mul-double v48, v6, v6

    .line 896
    .restart local v48    # "delsq":D
    const-wide/16 v120, 0x0

    .line 897
    const-wide/16 v28, 0x0

    .line 898
    const/16 v18, 0x0

    .line 899
    const/16 v102, 0x0

    :goto_2b
    move/from16 v0, v102

    move/from16 v1, v111

    if-ge v0, v1, :cond_41

    .line 900
    const-wide/16 v94, 0x0

    .line 901
    .restart local v94    # "hdiag":D
    const/16 v105, 0x0

    .restart local v105    # "m":I
    :goto_2c
    move/from16 v0, v105

    move/from16 v1, v112

    if-ge v0, v1, :cond_3e

    .line 903
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->zMatrix:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    move/from16 v0, v102

    move/from16 v1, v105

    invoke-virtual {v5, v0, v1}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getEntry(II)D

    move-result-wide v38

    .line 904
    .restart local v38    # "d1":D
    mul-double v144, v38, v38

    add-double v94, v94, v144

    .line 901
    add-int/lit8 v105, v105, 0x1

    goto :goto_2c

    .line 879
    .end local v38    # "d1":D
    .end local v48    # "delsq":D
    .end local v56    # "densav":D
    .end local v94    # "hdiag":D
    .end local v104    # "ksav":I
    .end local v105    # "m":I
    :cond_3c
    const-wide v144, 0x3fe6666666666666L    # 0.7

    cmpg-double v5, v116, v144

    if-gtz v5, :cond_3d

    .line 881
    move-wide/from16 v0, v92

    move-wide/from16 v2, v70

    invoke-static {v0, v1, v2, v3}, Lorg/apache/commons/math3/util/FastMath;->max(DD)D

    move-result-wide v6

    goto :goto_2a

    .line 884
    :cond_3d
    const-wide/high16 v144, 0x4000000000000000L    # 2.0

    mul-double v144, v144, v70

    move-wide/from16 v0, v92

    move-wide/from16 v2, v144

    invoke-static {v0, v1, v2, v3}, Lorg/apache/commons/math3/util/FastMath;->max(DD)D

    move-result-wide v6

    goto :goto_2a

    .line 907
    .restart local v48    # "delsq":D
    .restart local v56    # "densav":D
    .restart local v94    # "hdiag":D
    .restart local v104    # "ksav":I
    .restart local v105    # "m":I
    :cond_3e
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->lagrangeValuesAtNewPoint:Lorg/apache/commons/math3/linear/ArrayRealVector;

    move/from16 v0, v102

    invoke-virtual {v5, v0}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v38

    .line 908
    .restart local v38    # "d1":D
    mul-double v144, v14, v94

    mul-double v146, v38, v38

    add-double v54, v144, v146

    .line 909
    .restart local v54    # "den":D
    const-wide/16 v68, 0x0

    .line 910
    const/16 v100, 0x0

    :goto_2d
    move/from16 v0, v100

    move/from16 v1, v107

    if-ge v0, v1, :cond_3f

    .line 912
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->interpolationPoints:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    move/from16 v0, v102

    move/from16 v1, v100

    invoke-virtual {v5, v0, v1}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getEntry(II)D

    move-result-wide v144

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->newPoint:Lorg/apache/commons/math3/linear/ArrayRealVector;

    move/from16 v0, v100

    invoke-virtual {v5, v0}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v146

    sub-double v40, v144, v146

    .line 913
    .restart local v40    # "d2":D
    mul-double v144, v40, v40

    add-double v68, v68, v144

    .line 910
    add-int/lit8 v100, v100, 0x1

    goto :goto_2d

    .line 917
    .end local v40    # "d2":D
    :cond_3f
    div-double v42, v68, v48

    .line 918
    .restart local v42    # "d3":D
    const-wide/high16 v144, 0x3ff0000000000000L    # 1.0

    mul-double v146, v42, v42

    invoke-static/range {v144 .. v147}, Lorg/apache/commons/math3/util/FastMath;->max(DD)D

    move-result-wide v136

    .line 919
    .restart local v136    # "temp":D
    mul-double v144, v136, v54

    cmpl-double v5, v144, v120

    if-lez v5, :cond_40

    .line 920
    mul-double v120, v136, v54

    .line 921
    move/from16 v18, v102

    .line 922
    move-wide/from16 v16, v54

    .line 926
    :cond_40
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->lagrangeValuesAtNewPoint:Lorg/apache/commons/math3/linear/ArrayRealVector;

    move/from16 v0, v102

    invoke-virtual {v5, v0}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v44

    .line 927
    .restart local v44    # "d4":D
    mul-double v144, v44, v44

    mul-double v46, v136, v144

    .line 928
    .restart local v46    # "d5":D
    move-wide/from16 v0, v28

    move-wide/from16 v2, v46

    invoke-static {v0, v1, v2, v3}, Lorg/apache/commons/math3/util/FastMath;->max(DD)D

    move-result-wide v28

    .line 899
    add-int/lit8 v102, v102, 0x1

    goto/16 :goto_2b

    .line 930
    .end local v38    # "d1":D
    .end local v42    # "d3":D
    .end local v44    # "d4":D
    .end local v46    # "d5":D
    .end local v54    # "den":D
    .end local v94    # "hdiag":D
    .end local v105    # "m":I
    .end local v136    # "temp":D
    :cond_41
    const-wide/high16 v144, 0x3fe0000000000000L    # 0.5

    mul-double v144, v144, v28

    cmpg-double v5, v120, v144

    if-gtz v5, :cond_42

    .line 931
    move/from16 v18, v104

    .line 932
    move-wide/from16 v16, v56

    .end local v48    # "delsq":D
    .end local v56    # "densav":D
    .end local v92    # "hDelta":D
    .end local v104    # "ksav":I
    :cond_42
    move-object/from16 v13, p0

    .line 940
    invoke-direct/range {v13 .. v18}, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->update(DDI)V

    .line 942
    const/16 v97, 0x0

    .line 943
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->modelSecondDerivativesParameters:Lorg/apache/commons/math3/linear/ArrayRealVector;

    move/from16 v0, v18

    invoke-virtual {v5, v0}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v114

    .line 944
    .local v114, "pqold":D
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->modelSecondDerivativesParameters:Lorg/apache/commons/math3/linear/ArrayRealVector;

    const-wide/16 v144, 0x0

    move/from16 v0, v18

    move-wide/from16 v1, v144

    invoke-virtual {v5, v0, v1, v2}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    .line 945
    const/16 v96, 0x0

    :goto_2e
    move/from16 v0, v96

    move/from16 v1, v107

    if-ge v0, v1, :cond_44

    .line 946
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->interpolationPoints:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    move/from16 v0, v18

    move/from16 v1, v96

    invoke-virtual {v5, v0, v1}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getEntry(II)D

    move-result-wide v144

    mul-double v136, v114, v144

    .line 947
    .restart local v136    # "temp":D
    const/16 v100, 0x0

    :goto_2f
    move/from16 v0, v100

    move/from16 v1, v96

    if-gt v0, v1, :cond_43

    .line 948
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->modelSecondDerivativesValues:Lorg/apache/commons/math3/linear/ArrayRealVector;

    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->modelSecondDerivativesValues:Lorg/apache/commons/math3/linear/ArrayRealVector;

    move/from16 v0, v97

    invoke-virtual {v13, v0}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v144

    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->interpolationPoints:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    move/from16 v0, v18

    move/from16 v1, v100

    invoke-virtual {v13, v0, v1}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getEntry(II)D

    move-result-wide v146

    mul-double v146, v146, v136

    add-double v144, v144, v146

    move/from16 v0, v97

    move-wide/from16 v1, v144

    invoke-virtual {v5, v0, v1, v2}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    .line 949
    add-int/lit8 v97, v97, 0x1

    .line 947
    add-int/lit8 v100, v100, 0x1

    goto :goto_2f

    .line 945
    :cond_43
    add-int/lit8 v96, v96, 0x1

    goto :goto_2e

    .line 952
    .end local v136    # "temp":D
    :cond_44
    const/16 v105, 0x0

    .restart local v105    # "m":I
    :goto_30
    move/from16 v0, v105

    move/from16 v1, v112

    if-ge v0, v1, :cond_46

    .line 953
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->zMatrix:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    move/from16 v0, v18

    move/from16 v1, v105

    invoke-virtual {v5, v0, v1}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getEntry(II)D

    move-result-wide v144

    mul-double v136, v58, v144

    .line 954
    .restart local v136    # "temp":D
    const/16 v102, 0x0

    :goto_31
    move/from16 v0, v102

    move/from16 v1, v111

    if-ge v0, v1, :cond_45

    .line 955
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->modelSecondDerivativesParameters:Lorg/apache/commons/math3/linear/ArrayRealVector;

    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->modelSecondDerivativesParameters:Lorg/apache/commons/math3/linear/ArrayRealVector;

    move/from16 v0, v102

    invoke-virtual {v13, v0}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v144

    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->zMatrix:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    move/from16 v0, v102

    move/from16 v1, v105

    invoke-virtual {v13, v0, v1}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getEntry(II)D

    move-result-wide v146

    mul-double v146, v146, v136

    add-double v144, v144, v146

    move/from16 v0, v102

    move-wide/from16 v1, v144

    invoke-virtual {v5, v0, v1, v2}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    .line 954
    add-int/lit8 v102, v102, 0x1

    goto :goto_31

    .line 952
    :cond_45
    add-int/lit8 v105, v105, 0x1

    goto :goto_30

    .line 962
    .end local v136    # "temp":D
    :cond_46
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->fAtInterpolationPoints:Lorg/apache/commons/math3/linear/ArrayRealVector;

    move/from16 v0, v18

    move-wide/from16 v1, v78

    invoke-virtual {v5, v0, v1, v2}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    .line 963
    const/16 v96, 0x0

    :goto_32
    move/from16 v0, v96

    move/from16 v1, v107

    if-ge v0, v1, :cond_47

    .line 964
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->interpolationPoints:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->newPoint:Lorg/apache/commons/math3/linear/ArrayRealVector;

    move/from16 v0, v96

    invoke-virtual {v13, v0}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v144

    move/from16 v0, v18

    move/from16 v1, v96

    move-wide/from16 v2, v144

    invoke-virtual {v5, v0, v1, v2, v3}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->setEntry(IID)V

    .line 965
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->bMatrix:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    move/from16 v0, v18

    move/from16 v1, v96

    invoke-virtual {v5, v0, v1}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getEntry(II)D

    move-result-wide v144

    move-object/from16 v0, v123

    move/from16 v1, v96

    move-wide/from16 v2, v144

    invoke-virtual {v0, v1, v2, v3}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    .line 963
    add-int/lit8 v96, v96, 0x1

    goto :goto_32

    .line 967
    :cond_47
    const/16 v102, 0x0

    :goto_33
    move/from16 v0, v102

    move/from16 v1, v111

    if-ge v0, v1, :cond_4b

    .line 968
    const-wide/16 v126, 0x0

    .line 969
    .restart local v126    # "suma":D
    const/16 v105, 0x0

    :goto_34
    move/from16 v0, v105

    move/from16 v1, v112

    if-ge v0, v1, :cond_48

    .line 970
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->zMatrix:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    move/from16 v0, v18

    move/from16 v1, v105

    invoke-virtual {v5, v0, v1}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getEntry(II)D

    move-result-wide v144

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->zMatrix:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    move/from16 v0, v102

    move/from16 v1, v105

    invoke-virtual {v5, v0, v1}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getEntry(II)D

    move-result-wide v146

    mul-double v144, v144, v146

    add-double v126, v126, v144

    .line 969
    add-int/lit8 v105, v105, 0x1

    goto :goto_34

    .line 972
    :cond_48
    const-wide/16 v128, 0x0

    .line 973
    .restart local v128    # "sumb":D
    const/16 v100, 0x0

    :goto_35
    move/from16 v0, v100

    move/from16 v1, v107

    if-ge v0, v1, :cond_49

    .line 974
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->interpolationPoints:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    move/from16 v0, v102

    move/from16 v1, v100

    invoke-virtual {v5, v0, v1}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getEntry(II)D

    move-result-wide v144

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->trustRegionCenterOffset:Lorg/apache/commons/math3/linear/ArrayRealVector;

    move/from16 v0, v100

    invoke-virtual {v5, v0}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v146

    mul-double v144, v144, v146

    add-double v128, v128, v144

    .line 973
    add-int/lit8 v100, v100, 0x1

    goto :goto_35

    .line 976
    :cond_49
    mul-double v136, v126, v128

    .line 977
    .restart local v136    # "temp":D
    const/16 v96, 0x0

    :goto_36
    move/from16 v0, v96

    move/from16 v1, v107

    if-ge v0, v1, :cond_4a

    .line 978
    move-object/from16 v0, v123

    move/from16 v1, v96

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v144

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->interpolationPoints:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    move/from16 v0, v102

    move/from16 v1, v96

    invoke-virtual {v5, v0, v1}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getEntry(II)D

    move-result-wide v146

    mul-double v146, v146, v136

    add-double v144, v144, v146

    move-object/from16 v0, v123

    move/from16 v1, v96

    move-wide/from16 v2, v144

    invoke-virtual {v0, v1, v2, v3}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    .line 977
    add-int/lit8 v96, v96, 0x1

    goto :goto_36

    .line 967
    :cond_4a
    add-int/lit8 v102, v102, 0x1

    goto/16 :goto_33

    .line 981
    .end local v126    # "suma":D
    .end local v128    # "sumb":D
    .end local v136    # "temp":D
    :cond_4b
    const/16 v96, 0x0

    :goto_37
    move/from16 v0, v96

    move/from16 v1, v107

    if-ge v0, v1, :cond_4c

    .line 982
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->gradientAtTrustRegionCenter:Lorg/apache/commons/math3/linear/ArrayRealVector;

    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->gradientAtTrustRegionCenter:Lorg/apache/commons/math3/linear/ArrayRealVector;

    move/from16 v0, v96

    invoke-virtual {v13, v0}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v144

    move-object/from16 v0, v123

    move/from16 v1, v96

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v146

    mul-double v146, v146, v58

    add-double v144, v144, v146

    move/from16 v0, v96

    move-wide/from16 v1, v144

    invoke-virtual {v5, v0, v1, v2}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    .line 981
    add-int/lit8 v96, v96, 0x1

    goto :goto_37

    .line 987
    :cond_4c
    cmpg-double v5, v78, v80

    if-gez v5, :cond_52

    .line 988
    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->trustRegionCenterInterpolationPointIndex:I

    .line 989
    const-wide/16 v142, 0x0

    .line 990
    const/16 v97, 0x0

    .line 991
    const/16 v100, 0x0

    :goto_38
    move/from16 v0, v100

    move/from16 v1, v107

    if-ge v0, v1, :cond_4f

    .line 992
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->trustRegionCenterOffset:Lorg/apache/commons/math3/linear/ArrayRealVector;

    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->newPoint:Lorg/apache/commons/math3/linear/ArrayRealVector;

    move/from16 v0, v100

    invoke-virtual {v13, v0}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v144

    move/from16 v0, v100

    move-wide/from16 v1, v144

    invoke-virtual {v5, v0, v1, v2}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    .line 994
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->trustRegionCenterOffset:Lorg/apache/commons/math3/linear/ArrayRealVector;

    move/from16 v0, v100

    invoke-virtual {v5, v0}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v38

    .line 995
    .restart local v38    # "d1":D
    mul-double v144, v38, v38

    add-double v142, v142, v144

    .line 996
    const/16 v96, 0x0

    :goto_39
    move/from16 v0, v96

    move/from16 v1, v100

    if-gt v0, v1, :cond_4e

    .line 997
    move/from16 v0, v96

    move/from16 v1, v100

    if-ge v0, v1, :cond_4d

    .line 998
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->gradientAtTrustRegionCenter:Lorg/apache/commons/math3/linear/ArrayRealVector;

    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->gradientAtTrustRegionCenter:Lorg/apache/commons/math3/linear/ArrayRealVector;

    move/from16 v0, v100

    invoke-virtual {v13, v0}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v144

    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->modelSecondDerivativesValues:Lorg/apache/commons/math3/linear/ArrayRealVector;

    move/from16 v0, v97

    invoke-virtual {v13, v0}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v146

    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->trialStepPoint:Lorg/apache/commons/math3/linear/ArrayRealVector;

    move/from16 v0, v96

    invoke-virtual {v13, v0}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v148

    mul-double v146, v146, v148

    add-double v144, v144, v146

    move/from16 v0, v100

    move-wide/from16 v1, v144

    invoke-virtual {v5, v0, v1, v2}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    .line 1000
    :cond_4d
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->gradientAtTrustRegionCenter:Lorg/apache/commons/math3/linear/ArrayRealVector;

    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->gradientAtTrustRegionCenter:Lorg/apache/commons/math3/linear/ArrayRealVector;

    move/from16 v0, v96

    invoke-virtual {v13, v0}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v144

    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->modelSecondDerivativesValues:Lorg/apache/commons/math3/linear/ArrayRealVector;

    move/from16 v0, v97

    invoke-virtual {v13, v0}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v146

    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->trialStepPoint:Lorg/apache/commons/math3/linear/ArrayRealVector;

    move/from16 v0, v100

    invoke-virtual {v13, v0}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v148

    mul-double v146, v146, v148

    add-double v144, v144, v146

    move/from16 v0, v96

    move-wide/from16 v1, v144

    invoke-virtual {v5, v0, v1, v2}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    .line 1001
    add-int/lit8 v97, v97, 0x1

    .line 996
    add-int/lit8 v96, v96, 0x1

    goto :goto_39

    .line 991
    :cond_4e
    add-int/lit8 v100, v100, 0x1

    goto/16 :goto_38

    .line 1004
    .end local v38    # "d1":D
    :cond_4f
    const/16 v102, 0x0

    :goto_3a
    move/from16 v0, v102

    move/from16 v1, v111

    if-ge v0, v1, :cond_52

    .line 1005
    const-wide/16 v136, 0x0

    .line 1006
    .restart local v136    # "temp":D
    const/16 v100, 0x0

    :goto_3b
    move/from16 v0, v100

    move/from16 v1, v107

    if-ge v0, v1, :cond_50

    .line 1007
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->interpolationPoints:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    move/from16 v0, v102

    move/from16 v1, v100

    invoke-virtual {v5, v0, v1}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getEntry(II)D

    move-result-wide v144

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->trialStepPoint:Lorg/apache/commons/math3/linear/ArrayRealVector;

    move/from16 v0, v100

    invoke-virtual {v5, v0}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v146

    mul-double v144, v144, v146

    add-double v136, v136, v144

    .line 1006
    add-int/lit8 v100, v100, 0x1

    goto :goto_3b

    .line 1009
    :cond_50
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->modelSecondDerivativesParameters:Lorg/apache/commons/math3/linear/ArrayRealVector;

    move/from16 v0, v102

    invoke-virtual {v5, v0}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v144

    mul-double v136, v136, v144

    .line 1010
    const/16 v96, 0x0

    :goto_3c
    move/from16 v0, v96

    move/from16 v1, v107

    if-ge v0, v1, :cond_51

    .line 1011
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->gradientAtTrustRegionCenter:Lorg/apache/commons/math3/linear/ArrayRealVector;

    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->gradientAtTrustRegionCenter:Lorg/apache/commons/math3/linear/ArrayRealVector;

    move/from16 v0, v96

    invoke-virtual {v13, v0}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v144

    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->interpolationPoints:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    move/from16 v0, v102

    move/from16 v1, v96

    invoke-virtual {v13, v0, v1}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getEntry(II)D

    move-result-wide v146

    mul-double v146, v146, v136

    add-double v144, v144, v146

    move/from16 v0, v96

    move-wide/from16 v1, v144

    invoke-virtual {v5, v0, v1, v2}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    .line 1010
    add-int/lit8 v96, v96, 0x1

    goto :goto_3c

    .line 1004
    :cond_51
    add-int/lit8 v102, v102, 0x1

    goto :goto_3a

    .line 1020
    .end local v136    # "temp":D
    :cond_52
    if-lez v113, :cond_61

    .line 1021
    const/16 v102, 0x0

    :goto_3d
    move/from16 v0, v102

    move/from16 v1, v111

    if-ge v0, v1, :cond_53

    .line 1022
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->lagrangeValuesAtNewPoint:Lorg/apache/commons/math3/linear/ArrayRealVector;

    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->fAtInterpolationPoints:Lorg/apache/commons/math3/linear/ArrayRealVector;

    move/from16 v0, v102

    invoke-virtual {v13, v0}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v144

    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->fAtInterpolationPoints:Lorg/apache/commons/math3/linear/ArrayRealVector;

    move-object/from16 v0, p0

    iget v0, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->trustRegionCenterInterpolationPointIndex:I

    move/from16 v146, v0

    move/from16 v0, v146

    invoke-virtual {v13, v0}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v146

    sub-double v144, v144, v146

    move/from16 v0, v102

    move-wide/from16 v1, v144

    invoke-virtual {v5, v0, v1, v2}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    .line 1023
    const-wide/16 v144, 0x0

    move-object/from16 v0, v141

    move/from16 v1, v102

    move-wide/from16 v2, v144

    invoke-virtual {v0, v1, v2, v3}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    .line 1021
    add-int/lit8 v102, v102, 0x1

    goto :goto_3d

    .line 1025
    :cond_53
    const/16 v100, 0x0

    :goto_3e
    move/from16 v0, v100

    move/from16 v1, v112

    if-ge v0, v1, :cond_56

    .line 1026
    const-wide/16 v124, 0x0

    .line 1027
    .restart local v124    # "sum":D
    const/16 v102, 0x0

    :goto_3f
    move/from16 v0, v102

    move/from16 v1, v111

    if-ge v0, v1, :cond_54

    .line 1028
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->zMatrix:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    move/from16 v0, v102

    move/from16 v1, v100

    invoke-virtual {v5, v0, v1}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getEntry(II)D

    move-result-wide v144

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->lagrangeValuesAtNewPoint:Lorg/apache/commons/math3/linear/ArrayRealVector;

    move/from16 v0, v102

    invoke-virtual {v5, v0}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v146

    mul-double v144, v144, v146

    add-double v124, v124, v144

    .line 1027
    add-int/lit8 v102, v102, 0x1

    goto :goto_3f

    .line 1030
    :cond_54
    const/16 v102, 0x0

    :goto_40
    move/from16 v0, v102

    move/from16 v1, v111

    if-ge v0, v1, :cond_55

    .line 1031
    move-object/from16 v0, v141

    move/from16 v1, v102

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v144

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->zMatrix:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    move/from16 v0, v102

    move/from16 v1, v100

    invoke-virtual {v5, v0, v1}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getEntry(II)D

    move-result-wide v146

    mul-double v146, v146, v124

    add-double v144, v144, v146

    move-object/from16 v0, v141

    move/from16 v1, v102

    move-wide/from16 v2, v144

    invoke-virtual {v0, v1, v2, v3}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    .line 1030
    add-int/lit8 v102, v102, 0x1

    goto :goto_40

    .line 1025
    :cond_55
    add-int/lit8 v100, v100, 0x1

    goto :goto_3e

    .line 1034
    .end local v124    # "sum":D
    :cond_56
    const/16 v102, 0x0

    :goto_41
    move/from16 v0, v102

    move/from16 v1, v111

    if-ge v0, v1, :cond_58

    .line 1035
    const-wide/16 v124, 0x0

    .line 1036
    .restart local v124    # "sum":D
    const/16 v100, 0x0

    :goto_42
    move/from16 v0, v100

    move/from16 v1, v107

    if-ge v0, v1, :cond_57

    .line 1037
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->interpolationPoints:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    move/from16 v0, v102

    move/from16 v1, v100

    invoke-virtual {v5, v0, v1}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getEntry(II)D

    move-result-wide v144

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->trustRegionCenterOffset:Lorg/apache/commons/math3/linear/ArrayRealVector;

    move/from16 v0, v100

    invoke-virtual {v5, v0}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v146

    mul-double v144, v144, v146

    add-double v124, v124, v144

    .line 1036
    add-int/lit8 v100, v100, 0x1

    goto :goto_42

    .line 1039
    :cond_57
    move-object/from16 v0, v141

    move/from16 v1, v102

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v144

    move-object/from16 v0, v140

    move/from16 v1, v102

    move-wide/from16 v2, v144

    invoke-virtual {v0, v1, v2, v3}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    .line 1040
    move-object/from16 v0, v141

    move/from16 v1, v102

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v144

    mul-double v144, v144, v124

    move-object/from16 v0, v141

    move/from16 v1, v102

    move-wide/from16 v2, v144

    invoke-virtual {v0, v1, v2, v3}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    .line 1034
    add-int/lit8 v102, v102, 0x1

    goto :goto_41

    .line 1042
    .end local v124    # "sum":D
    :cond_58
    const-wide/16 v90, 0x0

    .line 1043
    .local v90, "gqsq":D
    const-wide/16 v88, 0x0

    .line 1044
    .local v88, "gisq":D
    const/16 v96, 0x0

    :goto_43
    move/from16 v0, v96

    move/from16 v1, v107

    if-ge v0, v1, :cond_5c

    .line 1045
    const-wide/16 v124, 0x0

    .line 1046
    .restart local v124    # "sum":D
    const/16 v102, 0x0

    :goto_44
    move/from16 v0, v102

    move/from16 v1, v111

    if-ge v0, v1, :cond_59

    .line 1047
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->bMatrix:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    move/from16 v0, v102

    move/from16 v1, v96

    invoke-virtual {v5, v0, v1}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getEntry(II)D

    move-result-wide v144

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->lagrangeValuesAtNewPoint:Lorg/apache/commons/math3/linear/ArrayRealVector;

    move/from16 v0, v102

    invoke-virtual {v5, v0}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v146

    mul-double v144, v144, v146

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->interpolationPoints:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    move/from16 v0, v102

    move/from16 v1, v96

    invoke-virtual {v5, v0, v1}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getEntry(II)D

    move-result-wide v146

    move-object/from16 v0, v141

    move/from16 v1, v102

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v148

    mul-double v146, v146, v148

    add-double v144, v144, v146

    add-double v124, v124, v144

    .line 1046
    add-int/lit8 v102, v102, 0x1

    goto :goto_44

    .line 1050
    :cond_59
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->trustRegionCenterOffset:Lorg/apache/commons/math3/linear/ArrayRealVector;

    move/from16 v0, v96

    invoke-virtual {v5, v0}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v144

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->lowerDifference:Lorg/apache/commons/math3/linear/ArrayRealVector;

    move/from16 v0, v96

    invoke-virtual {v5, v0}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v146

    cmpl-double v5, v144, v146

    if-nez v5, :cond_5a

    .line 1053
    const-wide/16 v144, 0x0

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->gradientAtTrustRegionCenter:Lorg/apache/commons/math3/linear/ArrayRealVector;

    move/from16 v0, v96

    invoke-virtual {v5, v0}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v146

    invoke-static/range {v144 .. v147}, Lorg/apache/commons/math3/util/FastMath;->min(DD)D

    move-result-wide v38

    .line 1054
    .restart local v38    # "d1":D
    mul-double v144, v38, v38

    add-double v90, v90, v144

    .line 1056
    const-wide/16 v144, 0x0

    move-wide/from16 v0, v144

    move-wide/from16 v2, v124

    invoke-static {v0, v1, v2, v3}, Lorg/apache/commons/math3/util/FastMath;->min(DD)D

    move-result-wide v40

    .line 1057
    .restart local v40    # "d2":D
    mul-double v144, v40, v40

    add-double v88, v88, v144

    .line 1072
    .end local v40    # "d2":D
    :goto_45
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->lagrangeValuesAtNewPoint:Lorg/apache/commons/math3/linear/ArrayRealVector;

    add-int v13, v111, v96

    move-wide/from16 v0, v124

    invoke-virtual {v5, v13, v0, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    .line 1044
    add-int/lit8 v96, v96, 0x1

    goto/16 :goto_43

    .line 1058
    .end local v38    # "d1":D
    :cond_5a
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->trustRegionCenterOffset:Lorg/apache/commons/math3/linear/ArrayRealVector;

    move/from16 v0, v96

    invoke-virtual {v5, v0}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v144

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->upperDifference:Lorg/apache/commons/math3/linear/ArrayRealVector;

    move/from16 v0, v96

    invoke-virtual {v5, v0}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v146

    cmpl-double v5, v144, v146

    if-nez v5, :cond_5b

    .line 1061
    const-wide/16 v144, 0x0

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->gradientAtTrustRegionCenter:Lorg/apache/commons/math3/linear/ArrayRealVector;

    move/from16 v0, v96

    invoke-virtual {v5, v0}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v146

    invoke-static/range {v144 .. v147}, Lorg/apache/commons/math3/util/FastMath;->max(DD)D

    move-result-wide v38

    .line 1062
    .restart local v38    # "d1":D
    mul-double v144, v38, v38

    add-double v90, v90, v144

    .line 1064
    const-wide/16 v144, 0x0

    move-wide/from16 v0, v144

    move-wide/from16 v2, v124

    invoke-static {v0, v1, v2, v3}, Lorg/apache/commons/math3/util/FastMath;->max(DD)D

    move-result-wide v40

    .line 1065
    .restart local v40    # "d2":D
    mul-double v144, v40, v40

    add-double v88, v88, v144

    .line 1066
    goto :goto_45

    .line 1068
    .end local v38    # "d1":D
    .end local v40    # "d2":D
    :cond_5b
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->gradientAtTrustRegionCenter:Lorg/apache/commons/math3/linear/ArrayRealVector;

    move/from16 v0, v96

    invoke-virtual {v5, v0}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v38

    .line 1069
    .restart local v38    # "d1":D
    mul-double v144, v38, v38

    add-double v90, v90, v144

    .line 1070
    mul-double v144, v124, v124

    add-double v88, v88, v144

    goto :goto_45

    .line 1078
    .end local v38    # "d1":D
    .end local v124    # "sum":D
    :cond_5c
    add-int/lit8 v99, v99, 0x1

    .line 1079
    const-wide/high16 v144, 0x4024000000000000L    # 10.0

    mul-double v144, v144, v88

    cmpg-double v5, v90, v144

    if-gez v5, :cond_5d

    .line 1080
    const/16 v99, 0x0

    .line 1082
    :cond_5d
    const/4 v5, 0x3

    move/from16 v0, v99

    if-lt v0, v5, :cond_61

    .line 1083
    const/16 v96, 0x0

    move/from16 v0, v111

    move/from16 v1, v109

    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->max(II)I

    move-result v106

    .local v106, "max":I
    :goto_46
    move/from16 v0, v96

    move/from16 v1, v106

    if-ge v0, v1, :cond_61

    .line 1084
    move/from16 v0, v96

    move/from16 v1, v107

    if-ge v0, v1, :cond_5e

    .line 1085
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->gradientAtTrustRegionCenter:Lorg/apache/commons/math3/linear/ArrayRealVector;

    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->lagrangeValuesAtNewPoint:Lorg/apache/commons/math3/linear/ArrayRealVector;

    add-int v144, v111, v96

    move/from16 v0, v144

    invoke-virtual {v13, v0}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v144

    move/from16 v0, v96

    move-wide/from16 v1, v144

    invoke-virtual {v5, v0, v1, v2}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    .line 1087
    :cond_5e
    move/from16 v0, v96

    move/from16 v1, v111

    if-ge v0, v1, :cond_5f

    .line 1088
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->modelSecondDerivativesParameters:Lorg/apache/commons/math3/linear/ArrayRealVector;

    move-object/from16 v0, v140

    move/from16 v1, v96

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v144

    move/from16 v0, v96

    move-wide/from16 v1, v144

    invoke-virtual {v5, v0, v1, v2}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    .line 1090
    :cond_5f
    move/from16 v0, v96

    move/from16 v1, v109

    if-ge v0, v1, :cond_60

    .line 1091
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->modelSecondDerivativesValues:Lorg/apache/commons/math3/linear/ArrayRealVector;

    const-wide/16 v144, 0x0

    move/from16 v0, v96

    move-wide/from16 v1, v144

    invoke-virtual {v5, v0, v1, v2}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    .line 1093
    :cond_60
    const/16 v99, 0x0

    .line 1083
    add-int/lit8 v96, v96, 0x1

    goto :goto_46

    .line 1102
    .end local v88    # "gisq":D
    .end local v90    # "gqsq":D
    .end local v106    # "max":I
    :cond_61
    if-nez v113, :cond_62

    .line 1103
    const/16 v122, 0x3c

    goto/16 :goto_1

    .line 1105
    :cond_62
    const-wide v144, 0x3fb999999999999aL    # 0.1

    mul-double v144, v144, v138

    add-double v144, v144, v80

    cmpg-double v5, v78, v144

    if-gtz v5, :cond_63

    .line 1106
    const/16 v122, 0x3c

    goto/16 :goto_1

    .line 1114
    :cond_63
    const-wide/high16 v144, 0x4000000000000000L    # 2.0

    mul-double v38, v144, v6

    .line 1116
    .restart local v38    # "d1":D
    const-wide/high16 v144, 0x4024000000000000L    # 10.0

    mul-double v40, v144, v118

    .line 1117
    .restart local v40    # "d2":D
    mul-double v144, v38, v38

    mul-double v146, v40, v40

    invoke-static/range {v144 .. v147}, Lorg/apache/commons/math3/util/FastMath;->max(DD)D

    move-result-wide v68

    .line 1120
    .end local v38    # "d1":D
    .end local v40    # "d2":D
    .end local v58    # "diff":D
    .end local v80    # "fopt":D
    .end local v97    # "ih":I
    .end local v100    # "j":I
    .end local v102    # "k":I
    .end local v105    # "m":I
    .end local v114    # "pqold":D
    .end local v138    # "vquad":D
    :sswitch_6
    const/16 v5, 0x28a

    invoke-static {v5}, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->printState(I)V

    .line 1121
    const/16 v18, -0x1

    .line 1122
    const/16 v102, 0x0

    .restart local v102    # "k":I
    :goto_47
    move/from16 v0, v102

    move/from16 v1, v111

    if-ge v0, v1, :cond_66

    .line 1123
    const-wide/16 v124, 0x0

    .line 1124
    .restart local v124    # "sum":D
    const/16 v100, 0x0

    .restart local v100    # "j":I
    :goto_48
    move/from16 v0, v100

    move/from16 v1, v107

    if-ge v0, v1, :cond_64

    .line 1126
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->interpolationPoints:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    move/from16 v0, v102

    move/from16 v1, v100

    invoke-virtual {v5, v0, v1}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getEntry(II)D

    move-result-wide v144

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->trustRegionCenterOffset:Lorg/apache/commons/math3/linear/ArrayRealVector;

    move/from16 v0, v100

    invoke-virtual {v5, v0}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v146

    sub-double v38, v144, v146

    .line 1127
    .restart local v38    # "d1":D
    mul-double v144, v38, v38

    add-double v124, v124, v144

    .line 1124
    add-int/lit8 v100, v100, 0x1

    goto :goto_48

    .line 1129
    .end local v38    # "d1":D
    :cond_64
    cmpl-double v5, v124, v68

    if-lez v5, :cond_65

    .line 1130
    move/from16 v18, v102

    .line 1131
    move-wide/from16 v68, v124

    .line 1122
    :cond_65
    add-int/lit8 v102, v102, 0x1

    goto :goto_47

    .line 1141
    .end local v100    # "j":I
    .end local v124    # "sum":D
    :cond_66
    if-ltz v18, :cond_68

    .line 1142
    invoke-static/range {v68 .. v69}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v66

    .line 1143
    .local v66, "dist":D
    const/4 v5, -0x1

    move/from16 v0, v113

    if-ne v0, v5, :cond_67

    .line 1145
    const-wide v144, 0x3fb999999999999aL    # 0.1

    mul-double v144, v144, v6

    const-wide/high16 v146, 0x3fe0000000000000L    # 0.5

    mul-double v146, v146, v66

    invoke-static/range {v144 .. v147}, Lorg/apache/commons/math3/util/FastMath;->min(DD)D

    move-result-wide v6

    .line 1146
    const-wide/high16 v144, 0x3ff8000000000000L    # 1.5

    mul-double v144, v144, v118

    cmpg-double v5, v6, v144

    if-gtz v5, :cond_67

    .line 1147
    move-wide/from16 v6, v118

    .line 1150
    :cond_67
    const/16 v113, 0x0

    .line 1153
    const-wide v144, 0x3fb999999999999aL    # 0.1

    mul-double v144, v144, v66

    move-wide/from16 v0, v144

    invoke-static {v0, v1, v6, v7}, Lorg/apache/commons/math3/util/FastMath;->min(DD)D

    move-result-wide v38

    .line 1154
    .restart local v38    # "d1":D
    move-wide/from16 v0, v38

    move-wide/from16 v2, v118

    invoke-static {v0, v1, v2, v3}, Lorg/apache/commons/math3/util/FastMath;->max(DD)D

    move-result-wide v20

    .line 1155
    mul-double v72, v20, v20

    .line 1156
    const/16 v122, 0x5a

    goto/16 :goto_1

    .line 1158
    .end local v38    # "d1":D
    .end local v66    # "dist":D
    :cond_68
    const/4 v5, -0x1

    move/from16 v0, v113

    if-ne v0, v5, :cond_69

    .line 1159
    const/16 v122, 0x2a8

    goto/16 :goto_1

    .line 1161
    :cond_69
    const-wide/16 v144, 0x0

    cmpl-double v5, v116, v144

    if-lez v5, :cond_6a

    .line 1162
    const/16 v122, 0x3c

    goto/16 :goto_1

    .line 1164
    :cond_6a
    move-wide/from16 v0, v70

    invoke-static {v6, v7, v0, v1}, Lorg/apache/commons/math3/util/FastMath;->max(DD)D

    move-result-wide v144

    cmpl-double v5, v144, v118

    if-lez v5, :cond_6b

    .line 1165
    const/16 v122, 0x3c

    goto/16 :goto_1

    .line 1172
    .end local v102    # "k":I
    :cond_6b
    :sswitch_7
    const/16 v5, 0x2a8

    invoke-static {v5}, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->printState(I)V

    .line 1173
    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->stoppingTrustRegionRadius:D

    move-wide/from16 v144, v0

    cmpl-double v5, v118, v144

    if-lez v5, :cond_6e

    .line 1174
    const-wide/high16 v144, 0x3fe0000000000000L    # 0.5

    mul-double v6, v144, v118

    .line 1175
    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->stoppingTrustRegionRadius:D

    move-wide/from16 v144, v0

    div-double v116, v118, v144

    .line 1176
    const-wide/high16 v144, 0x4030000000000000L    # 16.0

    cmpg-double v5, v116, v144

    if-gtz v5, :cond_6c

    .line 1177
    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->stoppingTrustRegionRadius:D

    move-wide/from16 v118, v0

    .line 1183
    :goto_49
    move-wide/from16 v0, v118

    invoke-static {v6, v7, v0, v1}, Lorg/apache/commons/math3/util/FastMath;->max(DD)D

    move-result-wide v6

    .line 1184
    const/16 v113, 0x0

    .line 1185
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->getEvaluations()I

    move-result v108

    .line 1186
    const/16 v122, 0x3c

    goto/16 :goto_1

    .line 1178
    :cond_6c
    const-wide v144, 0x406f400000000000L    # 250.0

    cmpg-double v5, v116, v144

    if-gtz v5, :cond_6d

    .line 1179
    invoke-static/range {v116 .. v117}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v144

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->stoppingTrustRegionRadius:D

    move-wide/from16 v146, v0

    mul-double v118, v144, v146

    goto :goto_49

    .line 1181
    :cond_6d
    const-wide v144, 0x3fb999999999999aL    # 0.1

    mul-double v118, v118, v144

    goto :goto_49

    .line 1192
    :cond_6e
    const/4 v5, -0x1

    move/from16 v0, v113

    if-ne v0, v5, :cond_6f

    .line 1193
    const/16 v122, 0x168

    goto/16 :goto_1

    .line 1197
    :cond_6f
    :sswitch_8
    const/16 v5, 0x2d0

    invoke-static {v5}, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->printState(I)V

    .line 1198
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->fAtInterpolationPoints:Lorg/apache/commons/math3/linear/ArrayRealVector;

    move-object/from16 v0, p0

    iget v13, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->trustRegionCenterInterpolationPointIndex:I

    invoke-virtual {v5, v13}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v144

    cmpg-double v5, v144, v86

    if-gtz v5, :cond_73

    .line 1199
    const/16 v96, 0x0

    :goto_4a
    move/from16 v0, v96

    move/from16 v1, v107

    if-ge v0, v1, :cond_72

    .line 1202
    aget-wide v42, p1, v96

    .line 1203
    .restart local v42    # "d3":D
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->originShift:Lorg/apache/commons/math3/linear/ArrayRealVector;

    move/from16 v0, v96

    invoke-virtual {v5, v0}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v144

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->trustRegionCenterOffset:Lorg/apache/commons/math3/linear/ArrayRealVector;

    move/from16 v0, v96

    invoke-virtual {v5, v0}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v146

    add-double v44, v144, v146

    .line 1204
    .restart local v44    # "d4":D
    invoke-static/range {v42 .. v45}, Lorg/apache/commons/math3/util/FastMath;->max(DD)D

    move-result-wide v38

    .line 1205
    .restart local v38    # "d1":D
    aget-wide v40, p2, v96

    .line 1206
    .restart local v40    # "d2":D
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->currentBest:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-static/range {v38 .. v41}, Lorg/apache/commons/math3/util/FastMath;->min(DD)D

    move-result-wide v144

    move/from16 v0, v96

    move-wide/from16 v1, v144

    invoke-virtual {v5, v0, v1, v2}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    .line 1207
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->trustRegionCenterOffset:Lorg/apache/commons/math3/linear/ArrayRealVector;

    move/from16 v0, v96

    invoke-virtual {v5, v0}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v144

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->lowerDifference:Lorg/apache/commons/math3/linear/ArrayRealVector;

    move/from16 v0, v96

    invoke-virtual {v5, v0}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v146

    cmpl-double v5, v144, v146

    if-nez v5, :cond_70

    .line 1208
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->currentBest:Lorg/apache/commons/math3/linear/ArrayRealVector;

    aget-wide v144, p1, v96

    move/from16 v0, v96

    move-wide/from16 v1, v144

    invoke-virtual {v5, v0, v1, v2}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    .line 1210
    :cond_70
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->trustRegionCenterOffset:Lorg/apache/commons/math3/linear/ArrayRealVector;

    move/from16 v0, v96

    invoke-virtual {v5, v0}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v144

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->upperDifference:Lorg/apache/commons/math3/linear/ArrayRealVector;

    move/from16 v0, v96

    invoke-virtual {v5, v0}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v146

    cmpl-double v5, v144, v146

    if-nez v5, :cond_71

    .line 1211
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->currentBest:Lorg/apache/commons/math3/linear/ArrayRealVector;

    aget-wide v144, p2, v96

    move/from16 v0, v96

    move-wide/from16 v1, v144

    invoke-virtual {v5, v0, v1, v2}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    .line 1199
    :cond_71
    add-int/lit8 v96, v96, 0x1

    goto :goto_4a

    .line 1214
    .end local v38    # "d1":D
    .end local v40    # "d2":D
    .end local v42    # "d3":D
    .end local v44    # "d4":D
    :cond_72
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->fAtInterpolationPoints:Lorg/apache/commons/math3/linear/ArrayRealVector;

    move-object/from16 v0, p0

    iget v13, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->trustRegionCenterInterpolationPointIndex:I

    invoke-virtual {v5, v13}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v78

    .line 1216
    :cond_73
    return-wide v78

    .line 445
    nop

    :sswitch_data_0
    .sparse-switch
        0x14 -> :sswitch_0
        0x3c -> :sswitch_1
        0x5a -> :sswitch_2
        0xd2 -> :sswitch_3
        0xe6 -> :sswitch_4
        0x168 -> :sswitch_5
        0x28a -> :sswitch_6
        0x2a8 -> :sswitch_7
        0x2d0 -> :sswitch_8
    .end sparse-switch
.end method

.method private static caller(I)Ljava/lang/String;
    .locals 5
    .param p0, "n"    # I

    .prologue
    .line 2436
    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    .line 2437
    .local v2, "t":Ljava/lang/Throwable;
    invoke-virtual {v2}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    .line 2438
    .local v1, "elements":[Ljava/lang/StackTraceElement;
    aget-object v0, v1, p0

    .line 2439
    .local v0, "e":Ljava/lang/StackTraceElement;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " (at line "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private prelim([D[D)V
    .locals 54
    .param p1, "lowerBound"    # [D
    .param p2, "upperBound"    # [D

    .prologue
    .line 1584
    invoke-static {}, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->printMethod()V

    .line 1586
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->currentBest:Lorg/apache/commons/math3/linear/ArrayRealVector;

    move-object/from16 v46, v0

    invoke-virtual/range {v46 .. v46}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getDimension()I

    move-result v21

    .line 1587
    .local v21, "n":I
    move-object/from16 v0, p0

    iget v0, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->numberOfInterpolationPoints:I

    move/from16 v28, v0

    .line 1588
    .local v28, "npt":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->bMatrix:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    move-object/from16 v46, v0

    invoke-virtual/range {v46 .. v46}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getRowDimension()I

    move-result v22

    .line 1590
    .local v22, "ndim":I
    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->initialTrustRegionRadius:D

    move-wide/from16 v46, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->initialTrustRegionRadius:D

    move-wide/from16 v48, v0

    mul-double v36, v46, v48

    .line 1591
    .local v36, "rhosq":D
    const-wide/high16 v46, 0x3ff0000000000000L    # 1.0

    div-double v34, v46, v36

    .line 1592
    .local v34, "recip":D
    add-int/lit8 v27, v21, 0x1

    .line 1597
    .local v27, "np":I
    const/16 v16, 0x0

    .local v16, "j":I
    :goto_0
    move/from16 v0, v16

    move/from16 v1, v21

    if-ge v0, v1, :cond_2

    .line 1598
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->originShift:Lorg/apache/commons/math3/linear/ArrayRealVector;

    move-object/from16 v46, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->currentBest:Lorg/apache/commons/math3/linear/ArrayRealVector;

    move-object/from16 v47, v0

    move-object/from16 v0, v47

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v48

    move-object/from16 v0, v46

    move/from16 v1, v16

    move-wide/from16 v2, v48

    invoke-virtual {v0, v1, v2, v3}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    .line 1599
    const/16 v19, 0x0

    .local v19, "k":I
    :goto_1
    move/from16 v0, v19

    move/from16 v1, v28

    if-ge v0, v1, :cond_0

    .line 1600
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->interpolationPoints:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    move-object/from16 v46, v0

    const-wide/16 v48, 0x0

    move-object/from16 v0, v46

    move/from16 v1, v19

    move/from16 v2, v16

    move-wide/from16 v3, v48

    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->setEntry(IID)V

    .line 1599
    add-int/lit8 v19, v19, 0x1

    goto :goto_1

    .line 1602
    :cond_0
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_2
    move/from16 v0, v22

    if-ge v12, v0, :cond_1

    .line 1603
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->bMatrix:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    move-object/from16 v46, v0

    const-wide/16 v48, 0x0

    move-object/from16 v0, v46

    move/from16 v1, v16

    move-wide/from16 v2, v48

    invoke-virtual {v0, v12, v1, v2, v3}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->setEntry(IID)V

    .line 1602
    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    .line 1597
    :cond_1
    add-int/lit8 v16, v16, 0x1

    goto :goto_0

    .line 1606
    .end local v12    # "i":I
    .end local v19    # "k":I
    :cond_2
    const/4 v12, 0x0

    .restart local v12    # "i":I
    mul-int v46, v21, v27

    div-int/lit8 v20, v46, 0x2

    .local v20, "max":I
    :goto_3
    move/from16 v0, v20

    if-ge v12, v0, :cond_3

    .line 1607
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->modelSecondDerivativesValues:Lorg/apache/commons/math3/linear/ArrayRealVector;

    move-object/from16 v46, v0

    const-wide/16 v48, 0x0

    move-object/from16 v0, v46

    move-wide/from16 v1, v48

    invoke-virtual {v0, v12, v1, v2}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    .line 1606
    add-int/lit8 v12, v12, 0x1

    goto :goto_3

    .line 1609
    :cond_3
    const/16 v19, 0x0

    .restart local v19    # "k":I
    :goto_4
    move/from16 v0, v19

    move/from16 v1, v28

    if-ge v0, v1, :cond_5

    .line 1610
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->modelSecondDerivativesParameters:Lorg/apache/commons/math3/linear/ArrayRealVector;

    move-object/from16 v46, v0

    const-wide/16 v48, 0x0

    move-object/from16 v0, v46

    move/from16 v1, v19

    move-wide/from16 v2, v48

    invoke-virtual {v0, v1, v2, v3}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    .line 1611
    const/16 v16, 0x0

    sub-int v20, v28, v27

    :goto_5
    move/from16 v0, v16

    move/from16 v1, v20

    if-ge v0, v1, :cond_4

    .line 1612
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->zMatrix:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    move-object/from16 v46, v0

    const-wide/16 v48, 0x0

    move-object/from16 v0, v46

    move/from16 v1, v19

    move/from16 v2, v16

    move-wide/from16 v3, v48

    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->setEntry(IID)V

    .line 1611
    add-int/lit8 v16, v16, 0x1

    goto :goto_5

    .line 1609
    :cond_4
    add-int/lit8 v19, v19, 0x1

    goto :goto_4

    .line 1620
    :cond_5
    const/4 v14, 0x0

    .line 1621
    .local v14, "ipt":I
    const/16 v17, 0x0

    .line 1622
    .local v17, "jpt":I
    const-wide/high16 v10, 0x7ff8000000000000L    # NaN

    .line 1624
    .local v10, "fbeg":D
    :cond_6
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->getEvaluations()I

    move-result v23

    .line 1625
    .local v23, "nfm":I
    sub-int v25, v23, v21

    .line 1626
    .local v25, "nfx":I
    add-int/lit8 v24, v23, -0x1

    .line 1627
    .local v24, "nfmm":I
    add-int/lit8 v26, v25, -0x1

    .line 1628
    .local v26, "nfxm":I
    const-wide/16 v38, 0x0

    .line 1629
    .local v38, "stepa":D
    const-wide/16 v40, 0x0

    .line 1630
    .local v40, "stepb":D
    mul-int/lit8 v46, v21, 0x2

    move/from16 v0, v23

    move/from16 v1, v46

    if-gt v0, v1, :cond_e

    .line 1631
    const/16 v46, 0x1

    move/from16 v0, v23

    move/from16 v1, v46

    if-lt v0, v1, :cond_b

    move/from16 v0, v23

    move/from16 v1, v21

    if-gt v0, v1, :cond_b

    .line 1633
    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->initialTrustRegionRadius:D

    move-wide/from16 v38, v0

    .line 1634
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->upperDifference:Lorg/apache/commons/math3/linear/ArrayRealVector;

    move-object/from16 v46, v0

    move-object/from16 v0, v46

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v46

    const-wide/16 v48, 0x0

    cmpl-double v46, v46, v48

    if-nez v46, :cond_7

    .line 1635
    move-wide/from16 v0, v38

    neg-double v0, v0

    move-wide/from16 v38, v0

    .line 1638
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->interpolationPoints:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    move-object/from16 v46, v0

    move-object/from16 v0, v46

    move/from16 v1, v23

    move/from16 v2, v24

    move-wide/from16 v3, v38

    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->setEntry(IID)V

    .line 1671
    :cond_8
    :goto_6
    const/16 v16, 0x0

    :goto_7
    move/from16 v0, v16

    move/from16 v1, v21

    if-ge v0, v1, :cond_10

    .line 1672
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->currentBest:Lorg/apache/commons/math3/linear/ArrayRealVector;

    move-object/from16 v46, v0

    aget-wide v48, p1, v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->originShift:Lorg/apache/commons/math3/linear/ArrayRealVector;

    move-object/from16 v47, v0

    move-object/from16 v0, v47

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v50

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->interpolationPoints:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    move-object/from16 v47, v0

    move-object/from16 v0, v47

    move/from16 v1, v23

    move/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getEntry(II)D

    move-result-wide v52

    add-double v50, v50, v52

    invoke-static/range {v48 .. v51}, Lorg/apache/commons/math3/util/FastMath;->max(DD)D

    move-result-wide v48

    aget-wide v50, p2, v16

    invoke-static/range {v48 .. v51}, Lorg/apache/commons/math3/util/FastMath;->min(DD)D

    move-result-wide v48

    move-object/from16 v0, v46

    move/from16 v1, v16

    move-wide/from16 v2, v48

    invoke-virtual {v0, v1, v2, v3}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    .line 1675
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->interpolationPoints:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    move-object/from16 v46, v0

    move-object/from16 v0, v46

    move/from16 v1, v23

    move/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getEntry(II)D

    move-result-wide v46

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->lowerDifference:Lorg/apache/commons/math3/linear/ArrayRealVector;

    move-object/from16 v48, v0

    move-object/from16 v0, v48

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v48

    cmpl-double v46, v46, v48

    if-nez v46, :cond_9

    .line 1676
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->currentBest:Lorg/apache/commons/math3/linear/ArrayRealVector;

    move-object/from16 v46, v0

    aget-wide v48, p1, v16

    move-object/from16 v0, v46

    move/from16 v1, v16

    move-wide/from16 v2, v48

    invoke-virtual {v0, v1, v2, v3}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    .line 1678
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->interpolationPoints:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    move-object/from16 v46, v0

    move-object/from16 v0, v46

    move/from16 v1, v23

    move/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getEntry(II)D

    move-result-wide v46

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->upperDifference:Lorg/apache/commons/math3/linear/ArrayRealVector;

    move-object/from16 v48, v0

    move-object/from16 v0, v48

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v48

    cmpl-double v46, v46, v48

    if-nez v46, :cond_a

    .line 1679
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->currentBest:Lorg/apache/commons/math3/linear/ArrayRealVector;

    move-object/from16 v46, v0

    aget-wide v48, p2, v16

    move-object/from16 v0, v46

    move/from16 v1, v16

    move-wide/from16 v2, v48

    invoke-virtual {v0, v1, v2, v3}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    .line 1671
    :cond_a
    add-int/lit8 v16, v16, 0x1

    goto/16 :goto_7

    .line 1639
    :cond_b
    move/from16 v0, v23

    move/from16 v1, v21

    if-le v0, v1, :cond_8

    .line 1640
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->interpolationPoints:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    move-object/from16 v46, v0

    move-object/from16 v0, v46

    move/from16 v1, v25

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getEntry(II)D

    move-result-wide v38

    .line 1641
    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->initialTrustRegionRadius:D

    move-wide/from16 v46, v0

    move-wide/from16 v0, v46

    neg-double v0, v0

    move-wide/from16 v40, v0

    .line 1642
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->lowerDifference:Lorg/apache/commons/math3/linear/ArrayRealVector;

    move-object/from16 v46, v0

    move-object/from16 v0, v46

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v46

    const-wide/16 v48, 0x0

    cmpl-double v46, v46, v48

    if-nez v46, :cond_c

    .line 1643
    const-wide/high16 v46, 0x4000000000000000L    # 2.0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->initialTrustRegionRadius:D

    move-wide/from16 v48, v0

    mul-double v46, v46, v48

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->upperDifference:Lorg/apache/commons/math3/linear/ArrayRealVector;

    move-object/from16 v48, v0

    move-object/from16 v0, v48

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v48

    invoke-static/range {v46 .. v49}, Lorg/apache/commons/math3/util/FastMath;->min(DD)D

    move-result-wide v40

    .line 1646
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->upperDifference:Lorg/apache/commons/math3/linear/ArrayRealVector;

    move-object/from16 v46, v0

    move-object/from16 v0, v46

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v46

    const-wide/16 v48, 0x0

    cmpl-double v46, v46, v48

    if-nez v46, :cond_d

    .line 1647
    const-wide/high16 v46, -0x4000000000000000L    # -2.0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->initialTrustRegionRadius:D

    move-wide/from16 v48, v0

    mul-double v46, v46, v48

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->lowerDifference:Lorg/apache/commons/math3/linear/ArrayRealVector;

    move-object/from16 v48, v0

    move-object/from16 v0, v48

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v48

    invoke-static/range {v46 .. v49}, Lorg/apache/commons/math3/util/FastMath;->max(DD)D

    move-result-wide v40

    .line 1650
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->interpolationPoints:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    move-object/from16 v46, v0

    move-object/from16 v0, v46

    move/from16 v1, v23

    move/from16 v2, v26

    move-wide/from16 v3, v40

    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->setEntry(IID)V

    goto/16 :goto_6

    .line 1653
    :cond_e
    sub-int v46, v23, v27

    div-int v44, v46, v21

    .line 1654
    .local v44, "tmp1":I
    mul-int v46, v44, v21

    sub-int v46, v23, v46

    sub-int v17, v46, v21

    .line 1655
    add-int v14, v17, v44

    .line 1656
    move/from16 v0, v21

    if-le v14, v0, :cond_f

    .line 1657
    move/from16 v45, v17

    .line 1658
    .local v45, "tmp2":I
    sub-int v17, v14, v21

    .line 1659
    move/from16 v14, v45

    .line 1662
    .end local v45    # "tmp2":I
    :cond_f
    add-int/lit8 v15, v14, -0x1

    .line 1663
    .local v15, "iptMinus1":I
    add-int/lit8 v18, v17, -0x1

    .line 1664
    .local v18, "jptMinus1":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->interpolationPoints:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    move-object/from16 v46, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->interpolationPoints:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    move-object/from16 v47, v0

    move-object/from16 v0, v47

    invoke-virtual {v0, v14, v15}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getEntry(II)D

    move-result-wide v48

    move-object/from16 v0, v46

    move/from16 v1, v23

    move-wide/from16 v2, v48

    invoke-virtual {v0, v1, v15, v2, v3}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->setEntry(IID)V

    .line 1665
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->interpolationPoints:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    move-object/from16 v46, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->interpolationPoints:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    move-object/from16 v47, v0

    move-object/from16 v0, v47

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getEntry(II)D

    move-result-wide v48

    move-object/from16 v0, v46

    move/from16 v1, v23

    move/from16 v2, v18

    move-wide/from16 v3, v48

    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->setEntry(IID)V

    goto/16 :goto_6

    .line 1683
    .end local v15    # "iptMinus1":I
    .end local v18    # "jptMinus1":I
    .end local v44    # "tmp1":I
    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->currentBest:Lorg/apache/commons/math3/linear/ArrayRealVector;

    move-object/from16 v46, v0

    invoke-virtual/range {v46 .. v46}, Lorg/apache/commons/math3/linear/ArrayRealVector;->toArray()[D

    move-result-object v46

    move-object/from16 v0, p0

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->computeObjectiveValue([D)D

    move-result-wide v30

    .line 1684
    .local v30, "objectiveValue":D
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->isMinimize:Z

    move/from16 v46, v0

    if-eqz v46, :cond_13

    move-wide/from16 v8, v30

    .line 1685
    .local v8, "f":D
    :goto_8
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->getEvaluations()I

    move-result v29

    .line 1686
    .local v29, "numEval":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->fAtInterpolationPoints:Lorg/apache/commons/math3/linear/ArrayRealVector;

    move-object/from16 v46, v0

    move-object/from16 v0, v46

    move/from16 v1, v23

    invoke-virtual {v0, v1, v8, v9}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    .line 1688
    const/16 v46, 0x1

    move/from16 v0, v29

    move/from16 v1, v46

    if-ne v0, v1, :cond_14

    .line 1689
    move-wide v10, v8

    .line 1690
    const/16 v46, 0x0

    move/from16 v0, v46

    move-object/from16 v1, p0

    iput v0, v1, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->trustRegionCenterInterpolationPointIndex:I

    .line 1701
    :cond_11
    :goto_9
    mul-int/lit8 v46, v21, 0x2

    add-int/lit8 v46, v46, 0x1

    move/from16 v0, v29

    move/from16 v1, v46

    if-gt v0, v1, :cond_18

    .line 1702
    const/16 v46, 0x2

    move/from16 v0, v29

    move/from16 v1, v46

    if-lt v0, v1, :cond_15

    add-int/lit8 v46, v21, 0x1

    move/from16 v0, v29

    move/from16 v1, v46

    if-gt v0, v1, :cond_15

    .line 1704
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->gradientAtTrustRegionCenter:Lorg/apache/commons/math3/linear/ArrayRealVector;

    move-object/from16 v46, v0

    sub-double v48, v8, v10

    div-double v48, v48, v38

    move-object/from16 v0, v46

    move/from16 v1, v24

    move-wide/from16 v2, v48

    invoke-virtual {v0, v1, v2, v3}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    .line 1705
    add-int v46, v29, v21

    move/from16 v0, v28

    move/from16 v1, v46

    if-ge v0, v1, :cond_12

    .line 1706
    const-wide/high16 v46, 0x3ff0000000000000L    # 1.0

    div-double v32, v46, v38

    .line 1707
    .local v32, "oneOverStepA":D
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->bMatrix:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    move-object/from16 v46, v0

    const/16 v47, 0x0

    move-wide/from16 v0, v32

    neg-double v0, v0

    move-wide/from16 v48, v0

    move-object/from16 v0, v46

    move/from16 v1, v47

    move/from16 v2, v24

    move-wide/from16 v3, v48

    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->setEntry(IID)V

    .line 1708
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->bMatrix:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    move-object/from16 v46, v0

    move-object/from16 v0, v46

    move/from16 v1, v23

    move/from16 v2, v24

    move-wide/from16 v3, v32

    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->setEntry(IID)V

    .line 1709
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->bMatrix:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    move-object/from16 v46, v0

    add-int v47, v28, v24

    const-wide/high16 v48, -0x4020000000000000L    # -0.5

    mul-double v48, v48, v36

    move-object/from16 v0, v46

    move/from16 v1, v47

    move/from16 v2, v24

    move-wide/from16 v3, v48

    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->setEntry(IID)V

    .line 1752
    .end local v32    # "oneOverStepA":D
    :cond_12
    :goto_a
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->getEvaluations()I

    move-result v46

    move/from16 v0, v46

    move/from16 v1, v28

    if-lt v0, v1, :cond_6

    .line 1753
    return-void

    .line 1684
    .end local v8    # "f":D
    .end local v29    # "numEval":I
    :cond_13
    move-wide/from16 v0, v30

    neg-double v8, v0

    goto/16 :goto_8

    .line 1691
    .restart local v8    # "f":D
    .restart local v29    # "numEval":I
    :cond_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->fAtInterpolationPoints:Lorg/apache/commons/math3/linear/ArrayRealVector;

    move-object/from16 v46, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->trustRegionCenterInterpolationPointIndex:I

    move/from16 v47, v0

    invoke-virtual/range {v46 .. v47}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v46

    cmpg-double v46, v8, v46

    if-gez v46, :cond_11

    .line 1692
    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->trustRegionCenterInterpolationPointIndex:I

    goto/16 :goto_9

    .line 1712
    :cond_15
    add-int/lit8 v46, v21, 0x2

    move/from16 v0, v29

    move/from16 v1, v46

    if-lt v0, v1, :cond_12

    .line 1713
    add-int/lit8 v46, v25, 0x1

    mul-int v46, v46, v25

    div-int/lit8 v46, v46, 0x2

    add-int/lit8 v13, v46, -0x1

    .line 1714
    .local v13, "ih":I
    sub-double v46, v8, v10

    div-double v42, v46, v40

    .line 1715
    .local v42, "tmp":D
    sub-double v6, v40, v38

    .line 1716
    .local v6, "diff":D
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->modelSecondDerivativesValues:Lorg/apache/commons/math3/linear/ArrayRealVector;

    move-object/from16 v46, v0

    const-wide/high16 v48, 0x4000000000000000L    # 2.0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->gradientAtTrustRegionCenter:Lorg/apache/commons/math3/linear/ArrayRealVector;

    move-object/from16 v47, v0

    move-object/from16 v0, v47

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v50

    sub-double v50, v42, v50

    mul-double v48, v48, v50

    div-double v48, v48, v6

    move-object/from16 v0, v46

    move-wide/from16 v1, v48

    invoke-virtual {v0, v13, v1, v2}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    .line 1717
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->gradientAtTrustRegionCenter:Lorg/apache/commons/math3/linear/ArrayRealVector;

    move-object/from16 v46, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->gradientAtTrustRegionCenter:Lorg/apache/commons/math3/linear/ArrayRealVector;

    move-object/from16 v47, v0

    move-object/from16 v0, v47

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v48

    mul-double v48, v48, v40

    mul-double v50, v42, v38

    sub-double v48, v48, v50

    div-double v48, v48, v6

    move-object/from16 v0, v46

    move/from16 v1, v26

    move-wide/from16 v2, v48

    invoke-virtual {v0, v1, v2, v3}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    .line 1718
    mul-double v46, v38, v40

    const-wide/16 v48, 0x0

    cmpg-double v46, v46, v48

    if-gez v46, :cond_17

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->fAtInterpolationPoints:Lorg/apache/commons/math3/linear/ArrayRealVector;

    move-object/from16 v46, v0

    sub-int v47, v23, v21

    invoke-virtual/range {v46 .. v47}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v46

    cmpg-double v46, v8, v46

    if-gez v46, :cond_17

    .line 1719
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->fAtInterpolationPoints:Lorg/apache/commons/math3/linear/ArrayRealVector;

    move-object/from16 v46, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->fAtInterpolationPoints:Lorg/apache/commons/math3/linear/ArrayRealVector;

    move-object/from16 v47, v0

    sub-int v48, v23, v21

    invoke-virtual/range {v47 .. v48}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v48

    move-object/from16 v0, v46

    move/from16 v1, v23

    move-wide/from16 v2, v48

    invoke-virtual {v0, v1, v2, v3}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    .line 1720
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->fAtInterpolationPoints:Lorg/apache/commons/math3/linear/ArrayRealVector;

    move-object/from16 v46, v0

    sub-int v47, v23, v21

    move-object/from16 v0, v46

    move/from16 v1, v47

    invoke-virtual {v0, v1, v8, v9}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    .line 1721
    move-object/from16 v0, p0

    iget v0, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->trustRegionCenterInterpolationPointIndex:I

    move/from16 v46, v0

    move/from16 v0, v46

    move/from16 v1, v23

    if-ne v0, v1, :cond_16

    .line 1722
    sub-int v46, v23, v21

    move/from16 v0, v46

    move-object/from16 v1, p0

    iput v0, v1, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->trustRegionCenterInterpolationPointIndex:I

    .line 1724
    :cond_16
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->interpolationPoints:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    move-object/from16 v46, v0

    sub-int v47, v23, v21

    move-object/from16 v0, v46

    move/from16 v1, v47

    move/from16 v2, v26

    move-wide/from16 v3, v40

    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->setEntry(IID)V

    .line 1725
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->interpolationPoints:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    move-object/from16 v46, v0

    move-object/from16 v0, v46

    move/from16 v1, v23

    move/from16 v2, v26

    move-wide/from16 v3, v38

    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->setEntry(IID)V

    .line 1727
    :cond_17
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->bMatrix:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    move-object/from16 v46, v0

    const/16 v47, 0x0

    add-double v48, v38, v40

    move-wide/from16 v0, v48

    neg-double v0, v0

    move-wide/from16 v48, v0

    mul-double v50, v38, v40

    div-double v48, v48, v50

    move-object/from16 v0, v46

    move/from16 v1, v47

    move/from16 v2, v26

    move-wide/from16 v3, v48

    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->setEntry(IID)V

    .line 1728
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->bMatrix:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    move-object/from16 v46, v0

    const-wide/high16 v48, -0x4020000000000000L    # -0.5

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->interpolationPoints:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    move-object/from16 v47, v0

    sub-int v50, v23, v21

    move-object/from16 v0, v47

    move/from16 v1, v50

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getEntry(II)D

    move-result-wide v50

    div-double v48, v48, v50

    move-object/from16 v0, v46

    move/from16 v1, v23

    move/from16 v2, v26

    move-wide/from16 v3, v48

    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->setEntry(IID)V

    .line 1729
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->bMatrix:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    move-object/from16 v46, v0

    sub-int v47, v23, v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->bMatrix:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    move-object/from16 v48, v0

    const/16 v49, 0x0

    move-object/from16 v0, v48

    move/from16 v1, v49

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getEntry(II)D

    move-result-wide v48

    move-wide/from16 v0, v48

    neg-double v0, v0

    move-wide/from16 v48, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->bMatrix:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    move-object/from16 v50, v0

    move-object/from16 v0, v50

    move/from16 v1, v23

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getEntry(II)D

    move-result-wide v50

    sub-double v48, v48, v50

    move-object/from16 v0, v46

    move/from16 v1, v47

    move/from16 v2, v26

    move-wide/from16 v3, v48

    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->setEntry(IID)V

    .line 1731
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->zMatrix:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    move-object/from16 v46, v0

    const/16 v47, 0x0

    const-wide/high16 v48, 0x4000000000000000L    # 2.0

    invoke-static/range {v48 .. v49}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v48

    mul-double v50, v38, v40

    div-double v48, v48, v50

    move-object/from16 v0, v46

    move/from16 v1, v47

    move/from16 v2, v26

    move-wide/from16 v3, v48

    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->setEntry(IID)V

    .line 1732
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->zMatrix:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    move-object/from16 v46, v0

    const-wide/high16 v48, 0x3fe0000000000000L    # 0.5

    invoke-static/range {v48 .. v49}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v48

    div-double v48, v48, v36

    move-object/from16 v0, v46

    move/from16 v1, v23

    move/from16 v2, v26

    move-wide/from16 v3, v48

    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->setEntry(IID)V

    .line 1734
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->zMatrix:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    move-object/from16 v46, v0

    sub-int v47, v23, v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->zMatrix:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    move-object/from16 v48, v0

    const/16 v49, 0x0

    move-object/from16 v0, v48

    move/from16 v1, v49

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getEntry(II)D

    move-result-wide v48

    move-wide/from16 v0, v48

    neg-double v0, v0

    move-wide/from16 v48, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->zMatrix:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    move-object/from16 v50, v0

    move-object/from16 v0, v50

    move/from16 v1, v23

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getEntry(II)D

    move-result-wide v50

    sub-double v48, v48, v50

    move-object/from16 v0, v46

    move/from16 v1, v47

    move/from16 v2, v26

    move-wide/from16 v3, v48

    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->setEntry(IID)V

    goto/16 :goto_a

    .line 1742
    .end local v6    # "diff":D
    .end local v13    # "ih":I
    .end local v42    # "tmp":D
    :cond_18
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->zMatrix:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    move-object/from16 v46, v0

    const/16 v47, 0x0

    move-object/from16 v0, v46

    move/from16 v1, v47

    move/from16 v2, v26

    move-wide/from16 v3, v34

    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->setEntry(IID)V

    .line 1743
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->zMatrix:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    move-object/from16 v46, v0

    move-object/from16 v0, v46

    move/from16 v1, v23

    move/from16 v2, v26

    move-wide/from16 v3, v34

    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->setEntry(IID)V

    .line 1744
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->zMatrix:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    move-object/from16 v46, v0

    move-wide/from16 v0, v34

    neg-double v0, v0

    move-wide/from16 v48, v0

    move-object/from16 v0, v46

    move/from16 v1, v26

    move-wide/from16 v2, v48

    invoke-virtual {v0, v14, v1, v2, v3}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->setEntry(IID)V

    .line 1745
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->zMatrix:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    move-object/from16 v46, v0

    move-wide/from16 v0, v34

    neg-double v0, v0

    move-wide/from16 v48, v0

    move-object/from16 v0, v46

    move/from16 v1, v17

    move/from16 v2, v26

    move-wide/from16 v3, v48

    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->setEntry(IID)V

    .line 1747
    add-int/lit8 v46, v14, -0x1

    mul-int v46, v46, v14

    div-int/lit8 v46, v46, 0x2

    add-int v46, v46, v17

    add-int/lit8 v13, v46, -0x1

    .line 1748
    .restart local v13    # "ih":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->interpolationPoints:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    move-object/from16 v46, v0

    add-int/lit8 v47, v14, -0x1

    move-object/from16 v0, v46

    move/from16 v1, v23

    move/from16 v2, v47

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getEntry(II)D

    move-result-wide v46

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->interpolationPoints:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    move-object/from16 v48, v0

    add-int/lit8 v49, v17, -0x1

    move-object/from16 v0, v48

    move/from16 v1, v23

    move/from16 v2, v49

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getEntry(II)D

    move-result-wide v48

    mul-double v42, v46, v48

    .line 1749
    .restart local v42    # "tmp":D
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->modelSecondDerivativesValues:Lorg/apache/commons/math3/linear/ArrayRealVector;

    move-object/from16 v46, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->fAtInterpolationPoints:Lorg/apache/commons/math3/linear/ArrayRealVector;

    move-object/from16 v47, v0

    move-object/from16 v0, v47

    invoke-virtual {v0, v14}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v48

    sub-double v48, v10, v48

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->fAtInterpolationPoints:Lorg/apache/commons/math3/linear/ArrayRealVector;

    move-object/from16 v47, v0

    move-object/from16 v0, v47

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v50

    sub-double v48, v48, v50

    add-double v48, v48, v8

    div-double v48, v48, v42

    move-object/from16 v0, v46

    move-wide/from16 v1, v48

    invoke-virtual {v0, v13, v1, v2}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    goto/16 :goto_a
.end method

.method private static printMethod()V
    .locals 0

    .prologue
    .line 2448
    return-void
.end method

.method private static printState(I)V
    .locals 0
    .param p0, "s"    # I

    .prologue
    .line 2444
    return-void
.end method

.method private setup([D[D)V
    .locals 14
    .param p1, "lowerBound"    # [D
    .param p2, "upperBound"    # [D

    .prologue
    .line 2381
    invoke-static {}, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->printMethod()V

    .line 2383
    invoke-virtual {p0}, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->getStartPoint()[D

    move-result-object v2

    .line 2384
    .local v2, "init":[D
    array-length v0, v2

    .line 2387
    .local v0, "dimension":I
    const/4 v8, 0x2

    if-ge v0, v8, :cond_0

    .line 2388
    new-instance v8, Lorg/apache/commons/math3/exception/NumberIsTooSmallException;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const/4 v10, 0x2

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const/4 v11, 0x1

    invoke-direct {v8, v9, v10, v11}, Lorg/apache/commons/math3/exception/NumberIsTooSmallException;-><init>(Ljava/lang/Number;Ljava/lang/Number;Z)V

    throw v8

    .line 2391
    :cond_0
    const/4 v8, 0x2

    new-array v3, v8, [I

    const/4 v8, 0x0

    add-int/lit8 v9, v0, 0x2

    aput v9, v3, v8

    const/4 v8, 0x1

    add-int/lit8 v9, v0, 0x2

    add-int/lit8 v10, v0, 0x1

    mul-int/2addr v9, v10

    div-int/lit8 v9, v9, 0x2

    aput v9, v3, v8

    .line 2392
    .local v3, "nPointsInterval":[I
    iget v8, p0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->numberOfInterpolationPoints:I

    const/4 v9, 0x0

    aget v9, v3, v9

    if-lt v8, v9, :cond_1

    iget v8, p0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->numberOfInterpolationPoints:I

    const/4 v9, 0x1

    aget v9, v3, v9

    if-le v8, v9, :cond_2

    .line 2394
    :cond_1
    new-instance v8, Lorg/apache/commons/math3/exception/OutOfRangeException;

    sget-object v9, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->NUMBER_OF_INTERPOLATION_POINTS:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    iget v10, p0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->numberOfInterpolationPoints:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const/4 v11, 0x0

    aget v11, v3, v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    const/4 v12, 0x1

    aget v12, v3, v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-direct {v8, v9, v10, v11, v12}, Lorg/apache/commons/math3/exception/OutOfRangeException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;)V

    throw v8

    .line 2401
    :cond_2
    new-array v8, v0, [D

    iput-object v8, p0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->boundDifference:[D

    .line 2403
    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    iget-wide v10, p0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->initialTrustRegionRadius:D

    mul-double v6, v8, v10

    .line 2404
    .local v6, "requiredMinDiff":D
    const-wide/high16 v4, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    .line 2405
    .local v4, "minDiff":D
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_3

    .line 2406
    iget-object v8, p0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->boundDifference:[D

    aget-wide v10, p2, v1

    aget-wide v12, p1, v1

    sub-double/2addr v10, v12

    aput-wide v10, v8, v1

    .line 2407
    iget-object v8, p0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->boundDifference:[D

    aget-wide v8, v8, v1

    invoke-static {v4, v5, v8, v9}, Lorg/apache/commons/math3/util/FastMath;->min(DD)D

    move-result-wide v4

    .line 2405
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2409
    :cond_3
    cmpg-double v8, v4, v6

    if-gez v8, :cond_4

    .line 2410
    const-wide/high16 v8, 0x4008000000000000L    # 3.0

    div-double v8, v4, v8

    iput-wide v8, p0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->initialTrustRegionRadius:D

    .line 2414
    :cond_4
    new-instance v8, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    iget v9, p0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->numberOfInterpolationPoints:I

    add-int/2addr v9, v0

    invoke-direct {v8, v9, v0}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;-><init>(II)V

    iput-object v8, p0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->bMatrix:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    .line 2416
    new-instance v8, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    iget v9, p0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->numberOfInterpolationPoints:I

    iget v10, p0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->numberOfInterpolationPoints:I

    sub-int/2addr v10, v0

    add-int/lit8 v10, v10, -0x1

    invoke-direct {v8, v9, v10}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;-><init>(II)V

    iput-object v8, p0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->zMatrix:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    .line 2418
    new-instance v8, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    iget v9, p0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->numberOfInterpolationPoints:I

    invoke-direct {v8, v9, v0}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;-><init>(II)V

    iput-object v8, p0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->interpolationPoints:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    .line 2420
    new-instance v8, Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-direct {v8, v0}, Lorg/apache/commons/math3/linear/ArrayRealVector;-><init>(I)V

    iput-object v8, p0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->originShift:Lorg/apache/commons/math3/linear/ArrayRealVector;

    .line 2421
    new-instance v8, Lorg/apache/commons/math3/linear/ArrayRealVector;

    iget v9, p0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->numberOfInterpolationPoints:I

    invoke-direct {v8, v9}, Lorg/apache/commons/math3/linear/ArrayRealVector;-><init>(I)V

    iput-object v8, p0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->fAtInterpolationPoints:Lorg/apache/commons/math3/linear/ArrayRealVector;

    .line 2422
    new-instance v8, Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-direct {v8, v0}, Lorg/apache/commons/math3/linear/ArrayRealVector;-><init>(I)V

    iput-object v8, p0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->trustRegionCenterOffset:Lorg/apache/commons/math3/linear/ArrayRealVector;

    .line 2423
    new-instance v8, Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-direct {v8, v0}, Lorg/apache/commons/math3/linear/ArrayRealVector;-><init>(I)V

    iput-object v8, p0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->gradientAtTrustRegionCenter:Lorg/apache/commons/math3/linear/ArrayRealVector;

    .line 2424
    new-instance v8, Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-direct {v8, v0}, Lorg/apache/commons/math3/linear/ArrayRealVector;-><init>(I)V

    iput-object v8, p0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->lowerDifference:Lorg/apache/commons/math3/linear/ArrayRealVector;

    .line 2425
    new-instance v8, Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-direct {v8, v0}, Lorg/apache/commons/math3/linear/ArrayRealVector;-><init>(I)V

    iput-object v8, p0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->upperDifference:Lorg/apache/commons/math3/linear/ArrayRealVector;

    .line 2426
    new-instance v8, Lorg/apache/commons/math3/linear/ArrayRealVector;

    iget v9, p0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->numberOfInterpolationPoints:I

    invoke-direct {v8, v9}, Lorg/apache/commons/math3/linear/ArrayRealVector;-><init>(I)V

    iput-object v8, p0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->modelSecondDerivativesParameters:Lorg/apache/commons/math3/linear/ArrayRealVector;

    .line 2427
    new-instance v8, Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-direct {v8, v0}, Lorg/apache/commons/math3/linear/ArrayRealVector;-><init>(I)V

    iput-object v8, p0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->newPoint:Lorg/apache/commons/math3/linear/ArrayRealVector;

    .line 2428
    new-instance v8, Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-direct {v8, v0}, Lorg/apache/commons/math3/linear/ArrayRealVector;-><init>(I)V

    iput-object v8, p0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->alternativeNewPoint:Lorg/apache/commons/math3/linear/ArrayRealVector;

    .line 2429
    new-instance v8, Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-direct {v8, v0}, Lorg/apache/commons/math3/linear/ArrayRealVector;-><init>(I)V

    iput-object v8, p0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->trialStepPoint:Lorg/apache/commons/math3/linear/ArrayRealVector;

    .line 2430
    new-instance v8, Lorg/apache/commons/math3/linear/ArrayRealVector;

    iget v9, p0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->numberOfInterpolationPoints:I

    add-int/2addr v9, v0

    invoke-direct {v8, v9}, Lorg/apache/commons/math3/linear/ArrayRealVector;-><init>(I)V

    iput-object v8, p0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->lagrangeValuesAtNewPoint:Lorg/apache/commons/math3/linear/ArrayRealVector;

    .line 2431
    new-instance v8, Lorg/apache/commons/math3/linear/ArrayRealVector;

    add-int/lit8 v9, v0, 0x1

    mul-int/2addr v9, v0

    div-int/lit8 v9, v9, 0x2

    invoke-direct {v8, v9}, Lorg/apache/commons/math3/linear/ArrayRealVector;-><init>(I)V

    iput-object v8, p0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->modelSecondDerivativesValues:Lorg/apache/commons/math3/linear/ArrayRealVector;

    .line 2432
    return-void
.end method

.method private trsbox(DLorg/apache/commons/math3/linear/ArrayRealVector;Lorg/apache/commons/math3/linear/ArrayRealVector;Lorg/apache/commons/math3/linear/ArrayRealVector;Lorg/apache/commons/math3/linear/ArrayRealVector;Lorg/apache/commons/math3/linear/ArrayRealVector;)[D
    .locals 101
    .param p1, "delta"    # D
    .param p3, "gnew"    # Lorg/apache/commons/math3/linear/ArrayRealVector;
    .param p4, "xbdi"    # Lorg/apache/commons/math3/linear/ArrayRealVector;
    .param p5, "s"    # Lorg/apache/commons/math3/linear/ArrayRealVector;
    .param p6, "hs"    # Lorg/apache/commons/math3/linear/ArrayRealVector;
    .param p7, "hred"    # Lorg/apache/commons/math3/linear/ArrayRealVector;

    .prologue
    .line 1810
    invoke-static {}, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->printMethod()V

    .line 1812
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->currentBest:Lorg/apache/commons/math3/linear/ArrayRealVector;

    move-object/from16 v89, v0

    invoke-virtual/range {v89 .. v89}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getDimension()I

    move-result v50

    .line 1813
    .local v50, "n":I
    move-object/from16 v0, p0

    iget v0, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->numberOfInterpolationPoints:I

    move/from16 v52, v0

    .line 1815
    .local v52, "npt":I
    const-wide/high16 v32, 0x7ff8000000000000L    # NaN

    .line 1816
    .local v32, "dsq":D
    const-wide/high16 v12, 0x7ff8000000000000L    # NaN

    .line 1821
    .local v12, "crvmin":D
    const-wide/16 v8, 0x0

    .line 1822
    .local v8, "beta":D
    const/16 v39, -0x1

    .line 1823
    .local v39, "iact":I
    const/16 v51, 0x0

    .line 1824
    .local v51, "nact":I
    const-wide/16 v6, 0x0

    .line 1826
    .local v6, "angt":D
    const-wide/16 v82, 0x0

    .local v82, "temp":D
    const-wide/16 v90, 0x0

    .local v90, "xsav":D
    const-wide/16 v92, 0x0

    .local v92, "xsum":D
    const-wide/16 v4, 0x0

    .local v4, "angbd":D
    const-wide/16 v26, 0x0

    .local v26, "dredg":D
    const-wide/16 v72, 0x0

    .line 1828
    .local v72, "sredg":D
    const-wide/16 v66, 0x0

    .local v66, "resid":D
    const-wide/16 v20, 0x0

    .local v20, "delsq":D
    const-wide/16 v34, 0x0

    .local v34, "ggsav":D
    const-wide/16 v84, 0x0

    .local v84, "tempa":D
    const-wide/16 v86, 0x0

    .line 1829
    .local v86, "tempb":D
    const-wide/16 v60, 0x0

    .local v60, "redmax":D
    const-wide/16 v28, 0x0

    .local v28, "dredsq":D
    const-wide/16 v64, 0x0

    .local v64, "redsav":D
    const-wide/16 v36, 0x0

    .local v36, "gredsq":D
    const-wide/16 v62, 0x0

    .line 1830
    .local v62, "rednew":D
    const/16 v42, 0x0

    .line 1831
    .local v42, "itcsav":I
    const-wide/16 v58, 0x0

    .local v58, "rdprev":D
    const-wide/16 v56, 0x0

    .local v56, "rdnext":D
    const-wide/16 v80, 0x0

    .local v80, "stplen":D
    const-wide/16 v76, 0x0

    .line 1832
    .local v76, "stepsq":D
    const/16 v44, 0x0

    .line 1845
    .local v44, "itermax":I
    const/16 v43, 0x0

    .line 1846
    .local v43, "iterc":I
    const/16 v51, 0x0

    .line 1847
    const/16 v38, 0x0

    .local v38, "i":I
    :goto_0
    move/from16 v0, v38

    move/from16 v1, v50

    if-ge v0, v1, :cond_3

    .line 1848
    const-wide/16 v94, 0x0

    move-object/from16 v0, p4

    move/from16 v1, v38

    move-wide/from16 v2, v94

    invoke-virtual {v0, v1, v2, v3}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    .line 1849
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->trustRegionCenterOffset:Lorg/apache/commons/math3/linear/ArrayRealVector;

    move-object/from16 v89, v0

    move-object/from16 v0, v89

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v94

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->lowerDifference:Lorg/apache/commons/math3/linear/ArrayRealVector;

    move-object/from16 v89, v0

    move-object/from16 v0, v89

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v96

    cmpg-double v89, v94, v96

    if-gtz v89, :cond_2

    .line 1850
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->gradientAtTrustRegionCenter:Lorg/apache/commons/math3/linear/ArrayRealVector;

    move-object/from16 v89, v0

    move-object/from16 v0, v89

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v94

    const-wide/16 v96, 0x0

    cmpl-double v89, v94, v96

    if-ltz v89, :cond_0

    .line 1851
    const-wide/high16 v94, -0x4010000000000000L    # -1.0

    move-object/from16 v0, p4

    move/from16 v1, v38

    move-wide/from16 v2, v94

    invoke-virtual {v0, v1, v2, v3}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    .line 1857
    :cond_0
    :goto_1
    move-object/from16 v0, p4

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v94

    const-wide/16 v96, 0x0

    cmpl-double v89, v94, v96

    if-eqz v89, :cond_1

    .line 1858
    add-int/lit8 v51, v51, 0x1

    .line 1860
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->trialStepPoint:Lorg/apache/commons/math3/linear/ArrayRealVector;

    move-object/from16 v89, v0

    const-wide/16 v94, 0x0

    move-object/from16 v0, v89

    move/from16 v1, v38

    move-wide/from16 v2, v94

    invoke-virtual {v0, v1, v2, v3}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    .line 1861
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->gradientAtTrustRegionCenter:Lorg/apache/commons/math3/linear/ArrayRealVector;

    move-object/from16 v89, v0

    move-object/from16 v0, v89

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v94

    move-object/from16 v0, p3

    move/from16 v1, v38

    move-wide/from16 v2, v94

    invoke-virtual {v0, v1, v2, v3}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    .line 1847
    add-int/lit8 v38, v38, 0x1

    goto/16 :goto_0

    .line 1853
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->trustRegionCenterOffset:Lorg/apache/commons/math3/linear/ArrayRealVector;

    move-object/from16 v89, v0

    move-object/from16 v0, v89

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v94

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->upperDifference:Lorg/apache/commons/math3/linear/ArrayRealVector;

    move-object/from16 v89, v0

    move-object/from16 v0, v89

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v96

    cmpl-double v89, v94, v96

    if-ltz v89, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->gradientAtTrustRegionCenter:Lorg/apache/commons/math3/linear/ArrayRealVector;

    move-object/from16 v89, v0

    move-object/from16 v0, v89

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v94

    const-wide/16 v96, 0x0

    cmpg-double v89, v94, v96

    if-gtz v89, :cond_0

    .line 1855
    const-wide/high16 v94, 0x3ff0000000000000L    # 1.0

    move-object/from16 v0, p4

    move/from16 v1, v38

    move-wide/from16 v2, v94

    invoke-virtual {v0, v1, v2, v3}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    goto :goto_1

    .line 1863
    :cond_3
    mul-double v20, p1, p1

    .line 1864
    const-wide/16 v54, 0x0

    .line 1865
    .local v54, "qred":D
    const-wide/high16 v12, -0x4010000000000000L    # -1.0

    .line 1873
    const/16 v53, 0x14

    .line 1875
    .local v53, "state":I
    :goto_2
    sparse-switch v53, :sswitch_data_0

    .line 2272
    new-instance v89, Lorg/apache/commons/math3/exception/MathIllegalStateException;

    sget-object v94, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->SIMPLE_MESSAGE:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    const/16 v95, 0x1

    move/from16 v0, v95

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v95, v0

    const/16 v96, 0x0

    const-string v97, "trsbox"

    aput-object v97, v95, v96

    move-object/from16 v0, v89

    move-object/from16 v1, v94

    move-object/from16 v2, v95

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/exception/MathIllegalStateException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v89

    .line 1877
    :sswitch_0
    const/16 v89, 0x14

    invoke-static/range {v89 .. v89}, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->printState(I)V

    .line 1878
    const-wide/16 v8, 0x0

    .line 1881
    :sswitch_1
    const/16 v89, 0x1e

    invoke-static/range {v89 .. v89}, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->printState(I)V

    .line 1882
    const-wide/16 v76, 0x0

    .line 1883
    const/16 v38, 0x0

    :goto_3
    move/from16 v0, v38

    move/from16 v1, v50

    if-ge v0, v1, :cond_6

    .line 1884
    move-object/from16 v0, p4

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v94

    const-wide/16 v96, 0x0

    cmpl-double v89, v94, v96

    if-eqz v89, :cond_4

    .line 1885
    const-wide/16 v94, 0x0

    move-object/from16 v0, p5

    move/from16 v1, v38

    move-wide/from16 v2, v94

    invoke-virtual {v0, v1, v2, v3}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    .line 1892
    :goto_4
    move-object/from16 v0, p5

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v16

    .line 1893
    .local v16, "d1":D
    mul-double v94, v16, v16

    add-double v76, v76, v94

    .line 1883
    add-int/lit8 v38, v38, 0x1

    goto :goto_3

    .line 1886
    .end local v16    # "d1":D
    :cond_4
    const-wide/16 v94, 0x0

    cmpl-double v89, v8, v94

    if-nez v89, :cond_5

    .line 1887
    move-object/from16 v0, p3

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v94

    move-wide/from16 v0, v94

    neg-double v0, v0

    move-wide/from16 v94, v0

    move-object/from16 v0, p5

    move/from16 v1, v38

    move-wide/from16 v2, v94

    invoke-virtual {v0, v1, v2, v3}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    goto :goto_4

    .line 1889
    :cond_5
    move-object/from16 v0, p5

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v94

    mul-double v94, v94, v8

    move-object/from16 v0, p3

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v96

    sub-double v94, v94, v96

    move-object/from16 v0, p5

    move/from16 v1, v38

    move-wide/from16 v2, v94

    invoke-virtual {v0, v1, v2, v3}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    goto :goto_4

    .line 1895
    :cond_6
    const-wide/16 v94, 0x0

    cmpl-double v89, v76, v94

    if-nez v89, :cond_7

    .line 1896
    const/16 v53, 0xbe

    goto/16 :goto_2

    .line 1898
    :cond_7
    const-wide/16 v94, 0x0

    cmpl-double v89, v8, v94

    if-nez v89, :cond_8

    .line 1899
    move-wide/from16 v36, v76

    .line 1900
    add-int v89, v43, v50

    sub-int v44, v89, v51

    .line 1902
    :cond_8
    mul-double v94, v36, v20

    const-wide v96, 0x3f1a36e2eb1c432dL    # 1.0E-4

    mul-double v96, v96, v54

    mul-double v96, v96, v54

    cmpg-double v89, v94, v96

    if-gtz v89, :cond_9

    .line 1903
    const/16 v53, 0xbe

    goto/16 :goto_2

    .line 1911
    :cond_9
    const/16 v53, 0xd2

    goto/16 :goto_2

    .line 1914
    :sswitch_2
    const/16 v89, 0x32

    invoke-static/range {v89 .. v89}, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->printState(I)V

    .line 1915
    move-wide/from16 v66, v20

    .line 1916
    const-wide/16 v30, 0x0

    .line 1917
    .local v30, "ds":D
    const-wide/16 v70, 0x0

    .line 1918
    .local v70, "shs":D
    const/16 v38, 0x0

    :goto_5
    move/from16 v0, v38

    move/from16 v1, v50

    if-ge v0, v1, :cond_b

    .line 1919
    move-object/from16 v0, p4

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v94

    const-wide/16 v96, 0x0

    cmpl-double v89, v94, v96

    if-nez v89, :cond_a

    .line 1921
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->trialStepPoint:Lorg/apache/commons/math3/linear/ArrayRealVector;

    move-object/from16 v89, v0

    move-object/from16 v0, v89

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v16

    .line 1922
    .restart local v16    # "d1":D
    mul-double v94, v16, v16

    sub-double v66, v66, v94

    .line 1923
    move-object/from16 v0, p5

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v94

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->trialStepPoint:Lorg/apache/commons/math3/linear/ArrayRealVector;

    move-object/from16 v89, v0

    move-object/from16 v0, v89

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v96

    mul-double v94, v94, v96

    add-double v30, v30, v94

    .line 1924
    move-object/from16 v0, p5

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v94

    move-object/from16 v0, p6

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v96

    mul-double v94, v94, v96

    add-double v70, v70, v94

    .line 1918
    .end local v16    # "d1":D
    :cond_a
    add-int/lit8 v38, v38, 0x1

    goto :goto_5

    .line 1927
    :cond_b
    const-wide/16 v94, 0x0

    cmpg-double v89, v66, v94

    if-gtz v89, :cond_c

    .line 1928
    const/16 v53, 0x5a

    goto/16 :goto_2

    .line 1930
    :cond_c
    mul-double v94, v76, v66

    mul-double v96, v30, v30

    add-double v94, v94, v96

    invoke-static/range {v94 .. v95}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v82

    .line 1931
    const-wide/16 v94, 0x0

    cmpg-double v89, v30, v94

    if-gez v89, :cond_f

    .line 1932
    sub-double v94, v82, v30

    div-double v10, v94, v76

    .line 1936
    .local v10, "blen":D
    :goto_6
    move-wide/from16 v80, v10

    .line 1937
    const-wide/16 v94, 0x0

    cmpl-double v89, v70, v94

    if-lez v89, :cond_d

    .line 1939
    div-double v94, v36, v70

    move-wide/from16 v0, v94

    invoke-static {v10, v11, v0, v1}, Lorg/apache/commons/math3/util/FastMath;->min(DD)D

    move-result-wide v80

    .line 1945
    :cond_d
    const/16 v39, -0x1

    .line 1946
    const/16 v38, 0x0

    :goto_7
    move/from16 v0, v38

    move/from16 v1, v50

    if-ge v0, v1, :cond_11

    .line 1947
    move-object/from16 v0, p5

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v94

    const-wide/16 v96, 0x0

    cmpl-double v89, v94, v96

    if-eqz v89, :cond_e

    .line 1948
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->trustRegionCenterOffset:Lorg/apache/commons/math3/linear/ArrayRealVector;

    move-object/from16 v89, v0

    move-object/from16 v0, v89

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v94

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->trialStepPoint:Lorg/apache/commons/math3/linear/ArrayRealVector;

    move-object/from16 v89, v0

    move-object/from16 v0, v89

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v96

    add-double v92, v94, v96

    .line 1949
    move-object/from16 v0, p5

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v94

    const-wide/16 v96, 0x0

    cmpl-double v89, v94, v96

    if-lez v89, :cond_10

    .line 1950
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->upperDifference:Lorg/apache/commons/math3/linear/ArrayRealVector;

    move-object/from16 v89, v0

    move-object/from16 v0, v89

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v94

    sub-double v94, v94, v92

    move-object/from16 v0, p5

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v96

    div-double v82, v94, v96

    .line 1954
    :goto_8
    cmpg-double v89, v82, v80

    if-gez v89, :cond_e

    .line 1955
    move-wide/from16 v80, v82

    .line 1956
    move/from16 v39, v38

    .line 1946
    :cond_e
    add-int/lit8 v38, v38, 0x1

    goto :goto_7

    .line 1934
    .end local v10    # "blen":D
    :cond_f
    add-double v94, v82, v30

    div-double v10, v66, v94

    .restart local v10    # "blen":D
    goto :goto_6

    .line 1952
    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->lowerDifference:Lorg/apache/commons/math3/linear/ArrayRealVector;

    move-object/from16 v89, v0

    move-object/from16 v0, v89

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v94

    sub-double v94, v94, v92

    move-object/from16 v0, p5

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v96

    div-double v82, v94, v96

    goto :goto_8

    .line 1963
    :cond_11
    const-wide/16 v68, 0x0

    .line 1964
    .local v68, "sdec":D
    const-wide/16 v94, 0x0

    cmpl-double v89, v80, v94

    if-lez v89, :cond_15

    .line 1965
    add-int/lit8 v43, v43, 0x1

    .line 1966
    div-double v82, v70, v76

    .line 1967
    const/16 v89, -0x1

    move/from16 v0, v39

    move/from16 v1, v89

    if-ne v0, v1, :cond_12

    const-wide/16 v94, 0x0

    cmpl-double v89, v82, v94

    if-lez v89, :cond_12

    .line 1968
    move-wide/from16 v0, v82

    invoke-static {v12, v13, v0, v1}, Lorg/apache/commons/math3/util/FastMath;->min(DD)D

    move-result-wide v12

    .line 1969
    const-wide/high16 v94, -0x4010000000000000L    # -1.0

    cmpl-double v89, v12, v94

    if-nez v89, :cond_12

    .line 1970
    move-wide/from16 v12, v82

    .line 1973
    :cond_12
    move-wide/from16 v34, v36

    .line 1974
    const-wide/16 v36, 0x0

    .line 1975
    const/16 v38, 0x0

    :goto_9
    move/from16 v0, v38

    move/from16 v1, v50

    if-ge v0, v1, :cond_14

    .line 1976
    move-object/from16 v0, p3

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v94

    move-object/from16 v0, p6

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v96

    mul-double v96, v96, v80

    add-double v94, v94, v96

    move-object/from16 v0, p3

    move/from16 v1, v38

    move-wide/from16 v2, v94

    invoke-virtual {v0, v1, v2, v3}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    .line 1977
    move-object/from16 v0, p4

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v94

    const-wide/16 v96, 0x0

    cmpl-double v89, v94, v96

    if-nez v89, :cond_13

    .line 1979
    move-object/from16 v0, p3

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v16

    .line 1980
    .restart local v16    # "d1":D
    mul-double v94, v16, v16

    add-double v36, v36, v94

    .line 1982
    .end local v16    # "d1":D
    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->trialStepPoint:Lorg/apache/commons/math3/linear/ArrayRealVector;

    move-object/from16 v89, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->trialStepPoint:Lorg/apache/commons/math3/linear/ArrayRealVector;

    move-object/from16 v94, v0

    move-object/from16 v0, v94

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v94

    move-object/from16 v0, p5

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v96

    mul-double v96, v96, v80

    add-double v94, v94, v96

    move-object/from16 v0, v89

    move/from16 v1, v38

    move-wide/from16 v2, v94

    invoke-virtual {v0, v1, v2, v3}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    .line 1975
    add-int/lit8 v38, v38, 0x1

    goto :goto_9

    .line 1985
    :cond_14
    const-wide/high16 v94, 0x3fe0000000000000L    # 0.5

    mul-double v94, v94, v80

    mul-double v94, v94, v70

    sub-double v94, v34, v94

    mul-double v16, v80, v94

    .line 1986
    .restart local v16    # "d1":D
    const-wide/16 v94, 0x0

    move-wide/from16 v0, v16

    move-wide/from16 v2, v94

    invoke-static {v0, v1, v2, v3}, Lorg/apache/commons/math3/util/FastMath;->max(DD)D

    move-result-wide v68

    .line 1987
    add-double v54, v54, v68

    .line 1992
    .end local v16    # "d1":D
    :cond_15
    if-ltz v39, :cond_18

    .line 1993
    add-int/lit8 v51, v51, 0x1

    .line 1994
    const-wide/high16 v94, 0x3ff0000000000000L    # 1.0

    move-object/from16 v0, p4

    move/from16 v1, v39

    move-wide/from16 v2, v94

    invoke-virtual {v0, v1, v2, v3}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    .line 1995
    move-object/from16 v0, p5

    move/from16 v1, v39

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v94

    const-wide/16 v96, 0x0

    cmpg-double v89, v94, v96

    if-gez v89, :cond_16

    .line 1996
    const-wide/high16 v94, -0x4010000000000000L    # -1.0

    move-object/from16 v0, p4

    move/from16 v1, v39

    move-wide/from16 v2, v94

    invoke-virtual {v0, v1, v2, v3}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    .line 1999
    :cond_16
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->trialStepPoint:Lorg/apache/commons/math3/linear/ArrayRealVector;

    move-object/from16 v89, v0

    move-object/from16 v0, v89

    move/from16 v1, v39

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v16

    .line 2000
    .restart local v16    # "d1":D
    mul-double v94, v16, v16

    sub-double v20, v20, v94

    .line 2001
    const-wide/16 v94, 0x0

    cmpg-double v89, v20, v94

    if-gtz v89, :cond_17

    .line 2002
    const/16 v53, 0xbe

    goto/16 :goto_2

    .line 2004
    :cond_17
    const/16 v53, 0x14

    goto/16 :goto_2

    .line 2010
    .end local v16    # "d1":D
    :cond_18
    cmpg-double v89, v80, v10

    if-gez v89, :cond_1b

    .line 2011
    move/from16 v0, v43

    move/from16 v1, v44

    if-ne v0, v1, :cond_19

    .line 2012
    const/16 v53, 0xbe

    goto/16 :goto_2

    .line 2014
    :cond_19
    const-wide v94, 0x3f847ae147ae147bL    # 0.01

    mul-double v94, v94, v54

    cmpg-double v89, v68, v94

    if-gtz v89, :cond_1a

    .line 2015
    const/16 v53, 0xbe

    goto/16 :goto_2

    .line 2017
    :cond_1a
    div-double v8, v36, v34

    .line 2018
    const/16 v53, 0x1e

    goto/16 :goto_2

    .line 2022
    .end local v10    # "blen":D
    .end local v30    # "ds":D
    .end local v68    # "sdec":D
    .end local v70    # "shs":D
    :cond_1b
    :sswitch_3
    const/16 v89, 0x5a

    invoke-static/range {v89 .. v89}, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->printState(I)V

    .line 2023
    const-wide/16 v12, 0x0

    .line 2031
    :sswitch_4
    const/16 v89, 0x64

    invoke-static/range {v89 .. v89}, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->printState(I)V

    .line 2032
    add-int/lit8 v89, v50, -0x1

    move/from16 v0, v51

    move/from16 v1, v89

    if-lt v0, v1, :cond_1c

    .line 2033
    const/16 v53, 0xbe

    goto/16 :goto_2

    .line 2035
    :cond_1c
    const-wide/16 v28, 0x0

    .line 2036
    const-wide/16 v26, 0x0

    .line 2037
    const-wide/16 v36, 0x0

    .line 2038
    const/16 v38, 0x0

    :goto_a
    move/from16 v0, v38

    move/from16 v1, v50

    if-ge v0, v1, :cond_1e

    .line 2039
    move-object/from16 v0, p4

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v94

    const-wide/16 v96, 0x0

    cmpl-double v89, v94, v96

    if-nez v89, :cond_1d

    .line 2041
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->trialStepPoint:Lorg/apache/commons/math3/linear/ArrayRealVector;

    move-object/from16 v89, v0

    move-object/from16 v0, v89

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v16

    .line 2042
    .restart local v16    # "d1":D
    mul-double v94, v16, v16

    add-double v28, v28, v94

    .line 2043
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->trialStepPoint:Lorg/apache/commons/math3/linear/ArrayRealVector;

    move-object/from16 v89, v0

    move-object/from16 v0, v89

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v94

    move-object/from16 v0, p3

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v96

    mul-double v94, v94, v96

    add-double v26, v26, v94

    .line 2045
    move-object/from16 v0, p3

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v16

    .line 2046
    mul-double v94, v16, v16

    add-double v36, v36, v94

    .line 2047
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->trialStepPoint:Lorg/apache/commons/math3/linear/ArrayRealVector;

    move-object/from16 v89, v0

    move-object/from16 v0, v89

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v94

    move-object/from16 v0, p5

    move/from16 v1, v38

    move-wide/from16 v2, v94

    invoke-virtual {v0, v1, v2, v3}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    .line 2038
    .end local v16    # "d1":D
    :goto_b
    add-int/lit8 v38, v38, 0x1

    goto :goto_a

    .line 2049
    :cond_1d
    const-wide/16 v94, 0x0

    move-object/from16 v0, p5

    move/from16 v1, v38

    move-wide/from16 v2, v94

    invoke-virtual {v0, v1, v2, v3}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    goto :goto_b

    .line 2052
    :cond_1e
    move/from16 v42, v43

    .line 2053
    const/16 v53, 0xd2

    goto/16 :goto_2

    .line 2058
    :sswitch_5
    const/16 v89, 0x78

    invoke-static/range {v89 .. v89}, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->printState(I)V

    .line 2059
    add-int/lit8 v43, v43, 0x1

    .line 2060
    mul-double v94, v36, v28

    mul-double v96, v26, v26

    sub-double v82, v94, v96

    .line 2061
    const-wide v94, 0x3f1a36e2eb1c432dL    # 1.0E-4

    mul-double v94, v94, v54

    mul-double v94, v94, v54

    cmpg-double v89, v82, v94

    if-gtz v89, :cond_1f

    .line 2062
    const/16 v53, 0xbe

    goto/16 :goto_2

    .line 2064
    :cond_1f
    invoke-static/range {v82 .. v83}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v82

    .line 2065
    const/16 v38, 0x0

    :goto_c
    move/from16 v0, v38

    move/from16 v1, v50

    if-ge v0, v1, :cond_21

    .line 2066
    move-object/from16 v0, p4

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v94

    const-wide/16 v96, 0x0

    cmpl-double v89, v94, v96

    if-nez v89, :cond_20

    .line 2067
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->trialStepPoint:Lorg/apache/commons/math3/linear/ArrayRealVector;

    move-object/from16 v89, v0

    move-object/from16 v0, v89

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v94

    mul-double v94, v94, v26

    move-object/from16 v0, p3

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v96

    mul-double v96, v96, v28

    sub-double v94, v94, v96

    div-double v94, v94, v82

    move-object/from16 v0, p5

    move/from16 v1, v38

    move-wide/from16 v2, v94

    invoke-virtual {v0, v1, v2, v3}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    .line 2065
    :goto_d
    add-int/lit8 v38, v38, 0x1

    goto :goto_c

    .line 2069
    :cond_20
    const-wide/16 v94, 0x0

    move-object/from16 v0, p5

    move/from16 v1, v38

    move-wide/from16 v2, v94

    invoke-virtual {v0, v1, v2, v3}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    goto :goto_d

    .line 2072
    :cond_21
    move-wide/from16 v0, v82

    neg-double v0, v0

    move-wide/from16 v72, v0

    .line 2079
    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    .line 2080
    const/16 v39, -0x1

    .line 2081
    const/16 v38, 0x0

    :goto_e
    move/from16 v0, v38

    move/from16 v1, v50

    if-ge v0, v1, :cond_22

    .line 2082
    move-object/from16 v0, p4

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v94

    const-wide/16 v96, 0x0

    cmpl-double v89, v94, v96

    if-nez v89, :cond_26

    .line 2083
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->trustRegionCenterOffset:Lorg/apache/commons/math3/linear/ArrayRealVector;

    move-object/from16 v89, v0

    move-object/from16 v0, v89

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v94

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->trialStepPoint:Lorg/apache/commons/math3/linear/ArrayRealVector;

    move-object/from16 v89, v0

    move-object/from16 v0, v89

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v96

    add-double v94, v94, v96

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->lowerDifference:Lorg/apache/commons/math3/linear/ArrayRealVector;

    move-object/from16 v89, v0

    move-object/from16 v0, v89

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v96

    sub-double v84, v94, v96

    .line 2084
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->upperDifference:Lorg/apache/commons/math3/linear/ArrayRealVector;

    move-object/from16 v89, v0

    move-object/from16 v0, v89

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v94

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->trustRegionCenterOffset:Lorg/apache/commons/math3/linear/ArrayRealVector;

    move-object/from16 v89, v0

    move-object/from16 v0, v89

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v96

    sub-double v94, v94, v96

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->trialStepPoint:Lorg/apache/commons/math3/linear/ArrayRealVector;

    move-object/from16 v89, v0

    move-object/from16 v0, v89

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v96

    sub-double v86, v94, v96

    .line 2085
    const-wide/16 v94, 0x0

    cmpg-double v89, v84, v94

    if-gtz v89, :cond_23

    .line 2086
    add-int/lit8 v51, v51, 0x1

    .line 2087
    const-wide/high16 v94, -0x4010000000000000L    # -1.0

    move-object/from16 v0, p4

    move/from16 v1, v38

    move-wide/from16 v2, v94

    invoke-virtual {v0, v1, v2, v3}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    .line 2088
    const/16 v53, 0x64

    .line 2126
    :cond_22
    :goto_f
    const/16 v53, 0xd2

    goto/16 :goto_2

    .line 2089
    :cond_23
    const-wide/16 v94, 0x0

    cmpg-double v89, v86, v94

    if-gtz v89, :cond_24

    .line 2090
    add-int/lit8 v51, v51, 0x1

    .line 2091
    const-wide/high16 v94, 0x3ff0000000000000L    # 1.0

    move-object/from16 v0, p4

    move/from16 v1, v38

    move-wide/from16 v2, v94

    invoke-virtual {v0, v1, v2, v3}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    .line 2092
    const/16 v53, 0x64

    goto :goto_f

    .line 2095
    :cond_24
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->trialStepPoint:Lorg/apache/commons/math3/linear/ArrayRealVector;

    move-object/from16 v89, v0

    move-object/from16 v0, v89

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v16

    .line 2097
    .restart local v16    # "d1":D
    move-object/from16 v0, p5

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v18

    .line 2098
    .local v18, "d2":D
    mul-double v94, v16, v16

    mul-double v96, v18, v18

    add-double v74, v94, v96

    .line 2100
    .local v74, "ssq":D
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->trustRegionCenterOffset:Lorg/apache/commons/math3/linear/ArrayRealVector;

    move-object/from16 v89, v0

    move-object/from16 v0, v89

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v94

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->lowerDifference:Lorg/apache/commons/math3/linear/ArrayRealVector;

    move-object/from16 v89, v0

    move-object/from16 v0, v89

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v96

    sub-double v16, v94, v96

    .line 2101
    mul-double v94, v16, v16

    sub-double v82, v74, v94

    .line 2102
    const-wide/16 v94, 0x0

    cmpl-double v89, v82, v94

    if-lez v89, :cond_25

    .line 2103
    invoke-static/range {v82 .. v83}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v94

    move-object/from16 v0, p5

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v96

    sub-double v82, v94, v96

    .line 2104
    mul-double v94, v4, v82

    cmpl-double v89, v94, v84

    if-lez v89, :cond_25

    .line 2105
    div-double v4, v84, v82

    .line 2106
    move/from16 v39, v38

    .line 2107
    const-wide/high16 v90, -0x4010000000000000L    # -1.0

    .line 2111
    :cond_25
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->upperDifference:Lorg/apache/commons/math3/linear/ArrayRealVector;

    move-object/from16 v89, v0

    move-object/from16 v0, v89

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v94

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->trustRegionCenterOffset:Lorg/apache/commons/math3/linear/ArrayRealVector;

    move-object/from16 v89, v0

    move-object/from16 v0, v89

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v96

    sub-double v16, v94, v96

    .line 2112
    mul-double v94, v16, v16

    sub-double v82, v74, v94

    .line 2113
    const-wide/16 v94, 0x0

    cmpl-double v89, v82, v94

    if-lez v89, :cond_26

    .line 2114
    invoke-static/range {v82 .. v83}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v94

    move-object/from16 v0, p5

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v96

    add-double v82, v94, v96

    .line 2115
    mul-double v94, v4, v82

    cmpl-double v89, v94, v86

    if-lez v89, :cond_26

    .line 2116
    div-double v4, v86, v82

    .line 2117
    move/from16 v39, v38

    .line 2118
    const-wide/high16 v90, 0x3ff0000000000000L    # 1.0

    .line 2081
    .end local v16    # "d1":D
    .end local v18    # "d2":D
    .end local v74    # "ssq":D
    :cond_26
    add-int/lit8 v38, v38, 0x1

    goto/16 :goto_e

    .line 2129
    :sswitch_6
    const/16 v89, 0x96

    invoke-static/range {v89 .. v89}, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->printState(I)V

    .line 2130
    const-wide/16 v70, 0x0

    .line 2131
    .restart local v70    # "shs":D
    const-wide/16 v24, 0x0

    .line 2132
    .local v24, "dhs":D
    const-wide/16 v22, 0x0

    .line 2133
    .local v22, "dhd":D
    const/16 v38, 0x0

    :goto_10
    move/from16 v0, v38

    move/from16 v1, v50

    if-ge v0, v1, :cond_28

    .line 2134
    move-object/from16 v0, p4

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v94

    const-wide/16 v96, 0x0

    cmpl-double v89, v94, v96

    if-nez v89, :cond_27

    .line 2135
    move-object/from16 v0, p5

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v94

    move-object/from16 v0, p6

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v96

    mul-double v94, v94, v96

    add-double v70, v70, v94

    .line 2136
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->trialStepPoint:Lorg/apache/commons/math3/linear/ArrayRealVector;

    move-object/from16 v89, v0

    move-object/from16 v0, v89

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v94

    move-object/from16 v0, p6

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v96

    mul-double v94, v94, v96

    add-double v24, v24, v94

    .line 2137
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->trialStepPoint:Lorg/apache/commons/math3/linear/ArrayRealVector;

    move-object/from16 v89, v0

    move-object/from16 v0, v89

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v94

    move-object/from16 v0, p7

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v96

    mul-double v94, v94, v96

    add-double v22, v22, v94

    .line 2133
    :cond_27
    add-int/lit8 v38, v38, 0x1

    goto :goto_10

    .line 2145
    :cond_28
    const-wide/16 v60, 0x0

    .line 2146
    const/16 v41, -0x1

    .line 2147
    .local v41, "isav":I
    const-wide/16 v64, 0x0

    .line 2148
    const-wide/high16 v94, 0x4031000000000000L    # 17.0

    mul-double v94, v94, v4

    const-wide v96, 0x4008cccccccccccdL    # 3.1

    add-double v94, v94, v96

    move-wide/from16 v0, v94

    double-to-int v0, v0

    move/from16 v45, v0

    .line 2149
    .local v45, "iu":I
    const/16 v38, 0x0

    :goto_11
    move/from16 v0, v38

    move/from16 v1, v45

    if-ge v0, v1, :cond_2b

    .line 2150
    move/from16 v0, v38

    int-to-double v0, v0

    move-wide/from16 v94, v0

    mul-double v94, v94, v4

    move/from16 v0, v45

    int-to-double v0, v0

    move-wide/from16 v96, v0

    div-double v6, v94, v96

    .line 2151
    add-double v94, v6, v6

    const-wide/high16 v96, 0x3ff0000000000000L    # 1.0

    mul-double v98, v6, v6

    add-double v96, v96, v98

    div-double v78, v94, v96

    .line 2152
    .local v78, "sth":D
    mul-double v94, v6, v22

    sub-double v94, v94, v24

    sub-double v94, v94, v24

    mul-double v94, v94, v6

    add-double v82, v70, v94

    .line 2153
    mul-double v94, v6, v26

    sub-double v94, v94, v72

    const-wide/high16 v96, 0x3fe0000000000000L    # 0.5

    mul-double v96, v96, v78

    mul-double v96, v96, v82

    sub-double v94, v94, v96

    mul-double v62, v78, v94

    .line 2154
    cmpl-double v89, v62, v60

    if-lez v89, :cond_2a

    .line 2155
    move-wide/from16 v60, v62

    .line 2156
    move/from16 v41, v38

    .line 2157
    move-wide/from16 v58, v64

    .line 2161
    :cond_29
    :goto_12
    move-wide/from16 v64, v62

    .line 2149
    add-int/lit8 v38, v38, 0x1

    goto :goto_11

    .line 2158
    :cond_2a
    add-int/lit8 v89, v41, 0x1

    move/from16 v0, v38

    move/from16 v1, v89

    if-ne v0, v1, :cond_29

    .line 2159
    move-wide/from16 v56, v62

    goto :goto_12

    .line 2167
    .end local v78    # "sth":D
    :cond_2b
    if-gez v41, :cond_2c

    .line 2168
    const/16 v53, 0xbe

    goto/16 :goto_2

    .line 2170
    :cond_2c
    move/from16 v0, v41

    move/from16 v1, v45

    if-ge v0, v1, :cond_2d

    .line 2171
    sub-double v94, v56, v58

    add-double v96, v60, v60

    sub-double v96, v96, v58

    sub-double v96, v96, v56

    div-double v82, v94, v96

    .line 2172
    move/from16 v0, v41

    int-to-double v0, v0

    move-wide/from16 v94, v0

    const-wide/high16 v96, 0x3fe0000000000000L    # 0.5

    mul-double v96, v96, v82

    add-double v94, v94, v96

    mul-double v94, v94, v4

    move/from16 v0, v45

    int-to-double v0, v0

    move-wide/from16 v96, v0

    div-double v6, v94, v96

    .line 2174
    :cond_2d
    const-wide/high16 v94, 0x3ff0000000000000L    # 1.0

    mul-double v96, v6, v6

    sub-double v94, v94, v96

    const-wide/high16 v96, 0x3ff0000000000000L    # 1.0

    mul-double v98, v6, v6

    add-double v96, v96, v98

    div-double v14, v94, v96

    .line 2175
    .local v14, "cth":D
    add-double v94, v6, v6

    const-wide/high16 v96, 0x3ff0000000000000L    # 1.0

    mul-double v98, v6, v6

    add-double v96, v96, v98

    div-double v78, v94, v96

    .line 2176
    .restart local v78    # "sth":D
    mul-double v94, v6, v22

    sub-double v94, v94, v24

    sub-double v94, v94, v24

    mul-double v94, v94, v6

    add-double v82, v70, v94

    .line 2177
    mul-double v94, v6, v26

    sub-double v94, v94, v72

    const-wide/high16 v96, 0x3fe0000000000000L    # 0.5

    mul-double v96, v96, v78

    mul-double v96, v96, v82

    sub-double v94, v94, v96

    mul-double v68, v78, v94

    .line 2178
    .restart local v68    # "sdec":D
    const-wide/16 v94, 0x0

    cmpg-double v89, v68, v94

    if-gtz v89, :cond_2e

    .line 2179
    const/16 v53, 0xbe

    goto/16 :goto_2

    .line 2186
    :cond_2e
    const-wide/16 v26, 0x0

    .line 2187
    const-wide/16 v36, 0x0

    .line 2188
    const/16 v38, 0x0

    :goto_13
    move/from16 v0, v38

    move/from16 v1, v50

    if-ge v0, v1, :cond_30

    .line 2189
    move-object/from16 v0, p3

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v94

    const-wide/high16 v96, 0x3ff0000000000000L    # 1.0

    sub-double v96, v14, v96

    move-object/from16 v0, p7

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v98

    mul-double v96, v96, v98

    add-double v94, v94, v96

    move-object/from16 v0, p6

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v96

    mul-double v96, v96, v78

    add-double v94, v94, v96

    move-object/from16 v0, p3

    move/from16 v1, v38

    move-wide/from16 v2, v94

    invoke-virtual {v0, v1, v2, v3}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    .line 2190
    move-object/from16 v0, p4

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v94

    const-wide/16 v96, 0x0

    cmpl-double v89, v94, v96

    if-nez v89, :cond_2f

    .line 2191
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->trialStepPoint:Lorg/apache/commons/math3/linear/ArrayRealVector;

    move-object/from16 v89, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->trialStepPoint:Lorg/apache/commons/math3/linear/ArrayRealVector;

    move-object/from16 v94, v0

    move-object/from16 v0, v94

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v94

    mul-double v94, v94, v14

    move-object/from16 v0, p5

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v96

    mul-double v96, v96, v78

    add-double v94, v94, v96

    move-object/from16 v0, v89

    move/from16 v1, v38

    move-wide/from16 v2, v94

    invoke-virtual {v0, v1, v2, v3}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    .line 2192
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->trialStepPoint:Lorg/apache/commons/math3/linear/ArrayRealVector;

    move-object/from16 v89, v0

    move-object/from16 v0, v89

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v94

    move-object/from16 v0, p3

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v96

    mul-double v94, v94, v96

    add-double v26, v26, v94

    .line 2194
    move-object/from16 v0, p3

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v16

    .line 2195
    .restart local v16    # "d1":D
    mul-double v94, v16, v16

    add-double v36, v36, v94

    .line 2197
    .end local v16    # "d1":D
    :cond_2f
    move-object/from16 v0, p7

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v94

    mul-double v94, v94, v14

    move-object/from16 v0, p6

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v96

    mul-double v96, v96, v78

    add-double v94, v94, v96

    move-object/from16 v0, p7

    move/from16 v1, v38

    move-wide/from16 v2, v94

    invoke-virtual {v0, v1, v2, v3}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    .line 2188
    add-int/lit8 v38, v38, 0x1

    goto/16 :goto_13

    .line 2199
    :cond_30
    add-double v54, v54, v68

    .line 2200
    if-ltz v39, :cond_31

    move/from16 v0, v41

    move/from16 v1, v45

    if-ne v0, v1, :cond_31

    .line 2201
    add-int/lit8 v51, v51, 0x1

    .line 2202
    move-object/from16 v0, p4

    move/from16 v1, v39

    move-wide/from16 v2, v90

    invoke-virtual {v0, v1, v2, v3}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    .line 2203
    const/16 v53, 0x64

    goto/16 :goto_2

    .line 2209
    :cond_31
    const-wide v94, 0x3f847ae147ae147bL    # 0.01

    mul-double v94, v94, v54

    cmpl-double v89, v68, v94

    if-lez v89, :cond_32

    .line 2210
    const/16 v53, 0x78

    goto/16 :goto_2

    .line 2214
    .end local v14    # "cth":D
    .end local v22    # "dhd":D
    .end local v24    # "dhs":D
    .end local v41    # "isav":I
    .end local v45    # "iu":I
    .end local v68    # "sdec":D
    .end local v70    # "shs":D
    .end local v78    # "sth":D
    :cond_32
    :sswitch_7
    const/16 v89, 0xbe

    invoke-static/range {v89 .. v89}, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->printState(I)V

    .line 2215
    const-wide/16 v32, 0x0

    .line 2216
    const/16 v38, 0x0

    :goto_14
    move/from16 v0, v38

    move/from16 v1, v50

    if-ge v0, v1, :cond_35

    .line 2219
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->trustRegionCenterOffset:Lorg/apache/commons/math3/linear/ArrayRealVector;

    move-object/from16 v89, v0

    move-object/from16 v0, v89

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v94

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->trialStepPoint:Lorg/apache/commons/math3/linear/ArrayRealVector;

    move-object/from16 v89, v0

    move-object/from16 v0, v89

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v96

    add-double v94, v94, v96

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->upperDifference:Lorg/apache/commons/math3/linear/ArrayRealVector;

    move-object/from16 v89, v0

    move-object/from16 v0, v89

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v96

    invoke-static/range {v94 .. v97}, Lorg/apache/commons/math3/util/FastMath;->min(DD)D

    move-result-wide v48

    .line 2221
    .local v48, "min":D
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->newPoint:Lorg/apache/commons/math3/linear/ArrayRealVector;

    move-object/from16 v89, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->lowerDifference:Lorg/apache/commons/math3/linear/ArrayRealVector;

    move-object/from16 v94, v0

    move-object/from16 v0, v94

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v94

    move-wide/from16 v0, v48

    move-wide/from16 v2, v94

    invoke-static {v0, v1, v2, v3}, Lorg/apache/commons/math3/util/FastMath;->max(DD)D

    move-result-wide v94

    move-object/from16 v0, v89

    move/from16 v1, v38

    move-wide/from16 v2, v94

    invoke-virtual {v0, v1, v2, v3}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    .line 2222
    move-object/from16 v0, p4

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v94

    const-wide/high16 v96, -0x4010000000000000L    # -1.0

    cmpl-double v89, v94, v96

    if-nez v89, :cond_33

    .line 2223
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->newPoint:Lorg/apache/commons/math3/linear/ArrayRealVector;

    move-object/from16 v89, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->lowerDifference:Lorg/apache/commons/math3/linear/ArrayRealVector;

    move-object/from16 v94, v0

    move-object/from16 v0, v94

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v94

    move-object/from16 v0, v89

    move/from16 v1, v38

    move-wide/from16 v2, v94

    invoke-virtual {v0, v1, v2, v3}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    .line 2225
    :cond_33
    move-object/from16 v0, p4

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v94

    const-wide/high16 v96, 0x3ff0000000000000L    # 1.0

    cmpl-double v89, v94, v96

    if-nez v89, :cond_34

    .line 2226
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->newPoint:Lorg/apache/commons/math3/linear/ArrayRealVector;

    move-object/from16 v89, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->upperDifference:Lorg/apache/commons/math3/linear/ArrayRealVector;

    move-object/from16 v94, v0

    move-object/from16 v0, v94

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v94

    move-object/from16 v0, v89

    move/from16 v1, v38

    move-wide/from16 v2, v94

    invoke-virtual {v0, v1, v2, v3}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    .line 2228
    :cond_34
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->trialStepPoint:Lorg/apache/commons/math3/linear/ArrayRealVector;

    move-object/from16 v89, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->newPoint:Lorg/apache/commons/math3/linear/ArrayRealVector;

    move-object/from16 v94, v0

    move-object/from16 v0, v94

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v94

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->trustRegionCenterOffset:Lorg/apache/commons/math3/linear/ArrayRealVector;

    move-object/from16 v96, v0

    move-object/from16 v0, v96

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v96

    sub-double v94, v94, v96

    move-object/from16 v0, v89

    move/from16 v1, v38

    move-wide/from16 v2, v94

    invoke-virtual {v0, v1, v2, v3}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    .line 2230
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->trialStepPoint:Lorg/apache/commons/math3/linear/ArrayRealVector;

    move-object/from16 v89, v0

    move-object/from16 v0, v89

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v16

    .line 2231
    .restart local v16    # "d1":D
    mul-double v94, v16, v16

    add-double v32, v32, v94

    .line 2216
    add-int/lit8 v38, v38, 0x1

    goto/16 :goto_14

    .line 2233
    .end local v16    # "d1":D
    .end local v48    # "min":D
    :cond_35
    const/16 v89, 0x2

    move/from16 v0, v89

    new-array v0, v0, [D

    move-object/from16 v89, v0

    const/16 v94, 0x0

    aput-wide v32, v89, v94

    const/16 v94, 0x1

    aput-wide v12, v89, v94

    return-object v89

    .line 2240
    :sswitch_8
    const/16 v89, 0xd2

    invoke-static/range {v89 .. v89}, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->printState(I)V

    .line 2241
    const/16 v40, 0x0

    .line 2242
    .local v40, "ih":I
    const/16 v46, 0x0

    .local v46, "j":I
    :goto_15
    move/from16 v0, v46

    move/from16 v1, v50

    if-ge v0, v1, :cond_38

    .line 2243
    const-wide/16 v94, 0x0

    move-object/from16 v0, p6

    move/from16 v1, v46

    move-wide/from16 v2, v94

    invoke-virtual {v0, v1, v2, v3}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    .line 2244
    const/16 v38, 0x0

    :goto_16
    move/from16 v0, v38

    move/from16 v1, v46

    if-gt v0, v1, :cond_37

    .line 2245
    move/from16 v0, v38

    move/from16 v1, v46

    if-ge v0, v1, :cond_36

    .line 2246
    move-object/from16 v0, p6

    move/from16 v1, v46

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v94

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->modelSecondDerivativesValues:Lorg/apache/commons/math3/linear/ArrayRealVector;

    move-object/from16 v89, v0

    move-object/from16 v0, v89

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v96

    move-object/from16 v0, p5

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v98

    mul-double v96, v96, v98

    add-double v94, v94, v96

    move-object/from16 v0, p6

    move/from16 v1, v46

    move-wide/from16 v2, v94

    invoke-virtual {v0, v1, v2, v3}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    .line 2248
    :cond_36
    move-object/from16 v0, p6

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v94

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->modelSecondDerivativesValues:Lorg/apache/commons/math3/linear/ArrayRealVector;

    move-object/from16 v89, v0

    move-object/from16 v0, v89

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v96

    move-object/from16 v0, p5

    move/from16 v1, v46

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v98

    mul-double v96, v96, v98

    add-double v94, v94, v96

    move-object/from16 v0, p6

    move/from16 v1, v38

    move-wide/from16 v2, v94

    invoke-virtual {v0, v1, v2, v3}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    .line 2249
    add-int/lit8 v40, v40, 0x1

    .line 2244
    add-int/lit8 v38, v38, 0x1

    goto :goto_16

    .line 2242
    :cond_37
    add-int/lit8 v46, v46, 0x1

    goto :goto_15

    .line 2252
    :cond_38
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->interpolationPoints:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    move-object/from16 v89, v0

    move-object/from16 v0, v89

    move-object/from16 v1, p5

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->operate(Lorg/apache/commons/math3/linear/RealVector;)Lorg/apache/commons/math3/linear/RealVector;

    move-result-object v89

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->modelSecondDerivativesParameters:Lorg/apache/commons/math3/linear/ArrayRealVector;

    move-object/from16 v94, v0

    move-object/from16 v0, v89

    move-object/from16 v1, v94

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/linear/RealVector;->ebeMultiply(Lorg/apache/commons/math3/linear/RealVector;)Lorg/apache/commons/math3/linear/RealVector;

    move-result-object v88

    .line 2253
    .local v88, "tmp":Lorg/apache/commons/math3/linear/RealVector;
    const/16 v47, 0x0

    .local v47, "k":I
    :goto_17
    move/from16 v0, v47

    move/from16 v1, v52

    if-ge v0, v1, :cond_3a

    .line 2254
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->modelSecondDerivativesParameters:Lorg/apache/commons/math3/linear/ArrayRealVector;

    move-object/from16 v89, v0

    move-object/from16 v0, v89

    move/from16 v1, v47

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v94

    const-wide/16 v96, 0x0

    cmpl-double v89, v94, v96

    if-eqz v89, :cond_39

    .line 2255
    const/16 v38, 0x0

    :goto_18
    move/from16 v0, v38

    move/from16 v1, v50

    if-ge v0, v1, :cond_39

    .line 2256
    move-object/from16 v0, p6

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v94

    move-object/from16 v0, v88

    move/from16 v1, v47

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/linear/RealVector;->getEntry(I)D

    move-result-wide v96

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->interpolationPoints:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    move-object/from16 v89, v0

    move-object/from16 v0, v89

    move/from16 v1, v47

    move/from16 v2, v38

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getEntry(II)D

    move-result-wide v98

    mul-double v96, v96, v98

    add-double v94, v94, v96

    move-object/from16 v0, p6

    move/from16 v1, v38

    move-wide/from16 v2, v94

    invoke-virtual {v0, v1, v2, v3}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    .line 2255
    add-int/lit8 v38, v38, 0x1

    goto :goto_18

    .line 2253
    :cond_39
    add-int/lit8 v47, v47, 0x1

    goto :goto_17

    .line 2260
    :cond_3a
    const-wide/16 v94, 0x0

    cmpl-double v89, v12, v94

    if-eqz v89, :cond_3b

    .line 2261
    const/16 v53, 0x32

    goto/16 :goto_2

    .line 2263
    :cond_3b
    move/from16 v0, v43

    move/from16 v1, v42

    if-le v0, v1, :cond_3c

    .line 2264
    const/16 v53, 0x96

    goto/16 :goto_2

    .line 2266
    :cond_3c
    const/16 v38, 0x0

    :goto_19
    move/from16 v0, v38

    move/from16 v1, v50

    if-ge v0, v1, :cond_3d

    .line 2267
    move-object/from16 v0, p6

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v94

    move-object/from16 v0, p7

    move/from16 v1, v38

    move-wide/from16 v2, v94

    invoke-virtual {v0, v1, v2, v3}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    .line 2266
    add-int/lit8 v38, v38, 0x1

    goto :goto_19

    .line 2269
    :cond_3d
    const/16 v53, 0x78

    goto/16 :goto_2

    .line 1875
    nop

    :sswitch_data_0
    .sparse-switch
        0x14 -> :sswitch_0
        0x1e -> :sswitch_1
        0x32 -> :sswitch_2
        0x5a -> :sswitch_3
        0x64 -> :sswitch_4
        0x78 -> :sswitch_5
        0x96 -> :sswitch_6
        0xbe -> :sswitch_7
        0xd2 -> :sswitch_8
    .end sparse-switch
.end method

.method private update(DDI)V
    .locals 43
    .param p1, "beta"    # D
    .param p3, "denom"    # D
    .param p5, "knew"    # I

    .prologue
    .line 2297
    invoke-static {}, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->printMethod()V

    .line 2299
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->currentBest:Lorg/apache/commons/math3/linear/ArrayRealVector;

    move-object/from16 v36, v0

    invoke-virtual/range {v36 .. v36}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getDimension()I

    move-result v26

    .line 2300
    .local v26, "n":I
    move-object/from16 v0, p0

    iget v0, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->numberOfInterpolationPoints:I

    move/from16 v27, v0

    .line 2301
    .local v27, "npt":I
    sub-int v36, v27, v26

    add-int/lit8 v28, v36, -0x1

    .line 2304
    .local v28, "nptm":I
    new-instance v29, Lorg/apache/commons/math3/linear/ArrayRealVector;

    add-int v36, v27, v26

    move-object/from16 v0, v29

    move/from16 v1, v36

    invoke-direct {v0, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;-><init>(I)V

    .line 2306
    .local v29, "work":Lorg/apache/commons/math3/linear/ArrayRealVector;
    const-wide/16 v34, 0x0

    .line 2307
    .local v34, "ztest":D
    const/16 v25, 0x0

    .local v25, "k":I
    :goto_0
    move/from16 v0, v25

    move/from16 v1, v27

    if-ge v0, v1, :cond_1

    .line 2308
    const/16 v23, 0x0

    .local v23, "j":I
    :goto_1
    move/from16 v0, v23

    move/from16 v1, v28

    if-ge v0, v1, :cond_0

    .line 2310
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->zMatrix:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    move/from16 v1, v25

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getEntry(II)D

    move-result-wide v36

    invoke-static/range {v36 .. v37}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v36

    invoke-static/range {v34 .. v37}, Lorg/apache/commons/math3/util/FastMath;->max(DD)D

    move-result-wide v34

    .line 2308
    add-int/lit8 v23, v23, 0x1

    goto :goto_1

    .line 2307
    :cond_0
    add-int/lit8 v25, v25, 0x1

    goto :goto_0

    .line 2313
    .end local v23    # "j":I
    :cond_1
    const-wide v36, 0x3bc79ca10c924223L    # 1.0E-20

    mul-double v34, v34, v36

    .line 2317
    const/16 v23, 0x1

    .restart local v23    # "j":I
    :goto_2
    move/from16 v0, v23

    move/from16 v1, v28

    if-ge v0, v1, :cond_3

    .line 2318
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->zMatrix:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    move/from16 v1, p5

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getEntry(II)D

    move-result-wide v8

    .line 2319
    .local v8, "d1":D
    invoke-static {v8, v9}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v36

    cmpl-double v36, v36, v34

    if-lez v36, :cond_2

    .line 2321
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->zMatrix:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    move-object/from16 v36, v0

    const/16 v37, 0x0

    move-object/from16 v0, v36

    move/from16 v1, p5

    move/from16 v2, v37

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getEntry(II)D

    move-result-wide v10

    .line 2323
    .local v10, "d2":D
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->zMatrix:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    move/from16 v1, p5

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getEntry(II)D

    move-result-wide v12

    .line 2324
    .local v12, "d3":D
    mul-double v36, v10, v10

    mul-double v38, v12, v12

    add-double v36, v36, v38

    invoke-static/range {v36 .. v37}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v14

    .line 2325
    .local v14, "d4":D
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->zMatrix:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    move-object/from16 v36, v0

    const/16 v37, 0x0

    move-object/from16 v0, v36

    move/from16 v1, p5

    move/from16 v2, v37

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getEntry(II)D

    move-result-wide v36

    div-double v16, v36, v14

    .line 2326
    .local v16, "d5":D
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->zMatrix:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    move/from16 v1, p5

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getEntry(II)D

    move-result-wide v36

    div-double v18, v36, v14

    .line 2327
    .local v18, "d6":D
    const/16 v22, 0x0

    .local v22, "i":I
    :goto_3
    move/from16 v0, v22

    move/from16 v1, v27

    if-ge v0, v1, :cond_2

    .line 2328
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->zMatrix:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    move-object/from16 v36, v0

    const/16 v37, 0x0

    move-object/from16 v0, v36

    move/from16 v1, v22

    move/from16 v2, v37

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getEntry(II)D

    move-result-wide v36

    mul-double v36, v36, v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->zMatrix:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getEntry(II)D

    move-result-wide v38

    mul-double v38, v38, v18

    add-double v20, v36, v38

    .line 2329
    .local v20, "d7":D
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->zMatrix:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    move-object/from16 v36, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->zMatrix:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getEntry(II)D

    move-result-wide v38

    mul-double v38, v38, v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->zMatrix:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    move-object/from16 v37, v0

    const/16 v40, 0x0

    move-object/from16 v0, v37

    move/from16 v1, v22

    move/from16 v2, v40

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getEntry(II)D

    move-result-wide v40

    mul-double v40, v40, v18

    sub-double v38, v38, v40

    move-object/from16 v0, v36

    move/from16 v1, v22

    move/from16 v2, v23

    move-wide/from16 v3, v38

    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->setEntry(IID)V

    .line 2330
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->zMatrix:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    move-object/from16 v36, v0

    const/16 v37, 0x0

    move-object/from16 v0, v36

    move/from16 v1, v22

    move/from16 v2, v37

    move-wide/from16 v3, v20

    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->setEntry(IID)V

    .line 2327
    add-int/lit8 v22, v22, 0x1

    goto :goto_3

    .line 2333
    .end local v10    # "d2":D
    .end local v12    # "d3":D
    .end local v14    # "d4":D
    .end local v16    # "d5":D
    .end local v18    # "d6":D
    .end local v20    # "d7":D
    .end local v22    # "i":I
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->zMatrix:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    move-object/from16 v36, v0

    const-wide/16 v38, 0x0

    move-object/from16 v0, v36

    move/from16 v1, p5

    move/from16 v2, v23

    move-wide/from16 v3, v38

    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->setEntry(IID)V

    .line 2317
    add-int/lit8 v23, v23, 0x1

    goto/16 :goto_2

    .line 2339
    .end local v8    # "d1":D
    :cond_3
    const/16 v22, 0x0

    .restart local v22    # "i":I
    :goto_4
    move/from16 v0, v22

    move/from16 v1, v27

    if-ge v0, v1, :cond_4

    .line 2340
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->zMatrix:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    move-object/from16 v36, v0

    const/16 v37, 0x0

    move-object/from16 v0, v36

    move/from16 v1, p5

    move/from16 v2, v37

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getEntry(II)D

    move-result-wide v36

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->zMatrix:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    move-object/from16 v38, v0

    const/16 v39, 0x0

    move-object/from16 v0, v38

    move/from16 v1, v22

    move/from16 v2, v39

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getEntry(II)D

    move-result-wide v38

    mul-double v36, v36, v38

    move-object/from16 v0, v29

    move/from16 v1, v22

    move-wide/from16 v2, v36

    invoke-virtual {v0, v1, v2, v3}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    .line 2339
    add-int/lit8 v22, v22, 0x1

    goto :goto_4

    .line 2342
    :cond_4
    move-object/from16 v0, v29

    move/from16 v1, p5

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v6

    .line 2343
    .local v6, "alpha":D
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->lagrangeValuesAtNewPoint:Lorg/apache/commons/math3/linear/ArrayRealVector;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    move/from16 v1, p5

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v32

    .line 2344
    .local v32, "tau":D
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->lagrangeValuesAtNewPoint:Lorg/apache/commons/math3/linear/ArrayRealVector;

    move-object/from16 v36, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->lagrangeValuesAtNewPoint:Lorg/apache/commons/math3/linear/ArrayRealVector;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    move/from16 v1, p5

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v38

    const-wide/high16 v40, 0x3ff0000000000000L    # 1.0

    sub-double v38, v38, v40

    move-object/from16 v0, v36

    move/from16 v1, p5

    move-wide/from16 v2, v38

    invoke-virtual {v0, v1, v2, v3}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    .line 2348
    invoke-static/range {p3 .. p4}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v30

    .line 2349
    .local v30, "sqrtDenom":D
    div-double v8, v32, v30

    .line 2350
    .restart local v8    # "d1":D
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->zMatrix:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    move-object/from16 v36, v0

    const/16 v37, 0x0

    move-object/from16 v0, v36

    move/from16 v1, p5

    move/from16 v2, v37

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getEntry(II)D

    move-result-wide v36

    div-double v10, v36, v30

    .line 2351
    .restart local v10    # "d2":D
    const/16 v22, 0x0

    :goto_5
    move/from16 v0, v22

    move/from16 v1, v27

    if-ge v0, v1, :cond_5

    .line 2352
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->zMatrix:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    move-object/from16 v36, v0

    const/16 v37, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->zMatrix:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    move-object/from16 v38, v0

    const/16 v39, 0x0

    move-object/from16 v0, v38

    move/from16 v1, v22

    move/from16 v2, v39

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getEntry(II)D

    move-result-wide v38

    mul-double v38, v38, v8

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->lagrangeValuesAtNewPoint:Lorg/apache/commons/math3/linear/ArrayRealVector;

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v40

    mul-double v40, v40, v10

    sub-double v38, v38, v40

    move-object/from16 v0, v36

    move/from16 v1, v22

    move/from16 v2, v37

    move-wide/from16 v3, v38

    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->setEntry(IID)V

    .line 2351
    add-int/lit8 v22, v22, 0x1

    goto :goto_5

    .line 2358
    :cond_5
    const/16 v23, 0x0

    :goto_6
    move/from16 v0, v23

    move/from16 v1, v26

    if-ge v0, v1, :cond_8

    .line 2359
    add-int v24, v27, v23

    .line 2360
    .local v24, "jp":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->bMatrix:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    move/from16 v1, p5

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getEntry(II)D

    move-result-wide v36

    move-object/from16 v0, v29

    move/from16 v1, v24

    move-wide/from16 v2, v36

    invoke-virtual {v0, v1, v2, v3}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    .line 2361
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->lagrangeValuesAtNewPoint:Lorg/apache/commons/math3/linear/ArrayRealVector;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v36

    mul-double v36, v36, v6

    move-object/from16 v0, v29

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v38

    mul-double v38, v38, v32

    sub-double v36, v36, v38

    div-double v12, v36, p3

    .line 2362
    .restart local v12    # "d3":D
    move-wide/from16 v0, p1

    neg-double v0, v0

    move-wide/from16 v36, v0

    move-object/from16 v0, v29

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v38

    mul-double v36, v36, v38

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->lagrangeValuesAtNewPoint:Lorg/apache/commons/math3/linear/ArrayRealVector;

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v38

    mul-double v38, v38, v32

    sub-double v36, v36, v38

    div-double v14, v36, p3

    .line 2363
    .restart local v14    # "d4":D
    const/16 v22, 0x0

    :goto_7
    move/from16 v0, v22

    move/from16 v1, v24

    if-gt v0, v1, :cond_7

    .line 2364
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->bMatrix:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    move-object/from16 v36, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->bMatrix:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getEntry(II)D

    move-result-wide v38

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->lagrangeValuesAtNewPoint:Lorg/apache/commons/math3/linear/ArrayRealVector;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v40

    mul-double v40, v40, v12

    add-double v38, v38, v40

    move-object/from16 v0, v29

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v40

    mul-double v40, v40, v14

    add-double v38, v38, v40

    move-object/from16 v0, v36

    move/from16 v1, v22

    move/from16 v2, v23

    move-wide/from16 v3, v38

    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->setEntry(IID)V

    .line 2366
    move/from16 v0, v22

    move/from16 v1, v27

    if-lt v0, v1, :cond_6

    .line 2367
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->bMatrix:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    move-object/from16 v36, v0

    sub-int v37, v22, v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->bMatrix:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getEntry(II)D

    move-result-wide v38

    move-object/from16 v0, v36

    move/from16 v1, v24

    move/from16 v2, v37

    move-wide/from16 v3, v38

    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->setEntry(IID)V

    .line 2363
    :cond_6
    add-int/lit8 v22, v22, 0x1

    goto :goto_7

    .line 2358
    :cond_7
    add-int/lit8 v23, v23, 0x1

    goto/16 :goto_6

    .line 2371
    .end local v12    # "d3":D
    .end local v14    # "d4":D
    .end local v24    # "jp":I
    :cond_8
    return-void
.end method


# virtual methods
.method protected doOptimize()Lorg/apache/commons/math3/optimization/PointValuePair;
    .locals 7

    .prologue
    .line 237
    invoke-virtual {p0}, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->getLowerBound()[D

    move-result-object v0

    .line 238
    .local v0, "lowerBound":[D
    invoke-virtual {p0}, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->getUpperBound()[D

    move-result-object v1

    .line 241
    .local v1, "upperBound":[D
    invoke-direct {p0, v0, v1}, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->setup([D[D)V

    .line 243
    invoke-virtual {p0}, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->getGoalType()Lorg/apache/commons/math3/optimization/GoalType;

    move-result-object v4

    sget-object v5, Lorg/apache/commons/math3/optimization/GoalType;->MINIMIZE:Lorg/apache/commons/math3/optimization/GoalType;

    if-ne v4, v5, :cond_0

    const/4 v4, 0x1

    :goto_0
    iput-boolean v4, p0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->isMinimize:Z

    .line 244
    new-instance v4, Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {p0}, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->getStartPoint()[D

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/apache/commons/math3/linear/ArrayRealVector;-><init>([D)V

    iput-object v4, p0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->currentBest:Lorg/apache/commons/math3/linear/ArrayRealVector;

    .line 246
    invoke-direct {p0, v0, v1}, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->bobyqa([D[D)D

    move-result-wide v2

    .line 248
    .local v2, "value":D
    new-instance v4, Lorg/apache/commons/math3/optimization/PointValuePair;

    iget-object v5, p0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->currentBest:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v5}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getDataRef()[D

    move-result-object v5

    iget-boolean v6, p0, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->isMinimize:Z

    if-eqz v6, :cond_1

    .end local v2    # "value":D
    :goto_1
    invoke-direct {v4, v5, v2, v3}, Lorg/apache/commons/math3/optimization/PointValuePair;-><init>([DD)V

    return-object v4

    .line 243
    :cond_0
    const/4 v4, 0x0

    goto :goto_0

    .line 248
    .restart local v2    # "value":D
    :cond_1
    neg-double v2, v2

    goto :goto_1
.end method
