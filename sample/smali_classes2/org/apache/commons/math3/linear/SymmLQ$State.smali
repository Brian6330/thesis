.class Lorg/apache/commons/math3/linear/SymmLQ$State;
.super Ljava/lang/Object;
.source "SymmLQ.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/math3/linear/SymmLQ;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "State"
.end annotation


# static fields
.field static final CBRT_MACH_PREC:D

.field static final MACH_PREC:D


# instance fields
.field private final a:Lorg/apache/commons/math3/linear/RealLinearOperator;

.field private final b:Lorg/apache/commons/math3/linear/RealVector;

.field private bIsNull:Z

.field private beta:D

.field private beta1:D

.field private bstep:D

.field private cgnorm:D

.field private final check:Z

.field private dbar:D

.field private final delta:D

.field private gammaZeta:D

.field private gbar:D

.field private gmax:D

.field private gmin:D

.field private final goodb:Z

.field private hasConverged:Z

.field private lqnorm:D

.field private final m:Lorg/apache/commons/math3/linear/RealLinearOperator;

.field private final mb:Lorg/apache/commons/math3/linear/RealVector;

.field private minusEpsZeta:D

.field private oldb:D

.field private r1:Lorg/apache/commons/math3/linear/RealVector;

.field private r2:Lorg/apache/commons/math3/linear/RealVector;

.field private rnorm:D

.field private final shift:D

.field private snprod:D

.field private tnorm:D

.field private wbar:Lorg/apache/commons/math3/linear/RealVector;

.field private final xL:Lorg/apache/commons/math3/linear/RealVector;

.field private y:Lorg/apache/commons/math3/linear/RealVector;

.field private ynorm2:D


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 365
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->ulp(D)D

    move-result-wide v0

    sput-wide v0, Lorg/apache/commons/math3/linear/SymmLQ$State;->MACH_PREC:D

    .line 366
    sget-wide v0, Lorg/apache/commons/math3/linear/SymmLQ$State;->MACH_PREC:D

    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->cbrt(D)D

    move-result-wide v0

    sput-wide v0, Lorg/apache/commons/math3/linear/SymmLQ$State;->CBRT_MACH_PREC:D

    .line 367
    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/linear/RealLinearOperator;Lorg/apache/commons/math3/linear/RealLinearOperator;Lorg/apache/commons/math3/linear/RealVector;ZDDZ)V
    .locals 3
    .param p1, "a"    # Lorg/apache/commons/math3/linear/RealLinearOperator;
    .param p2, "m"    # Lorg/apache/commons/math3/linear/RealLinearOperator;
    .param p3, "b"    # Lorg/apache/commons/math3/linear/RealVector;
    .param p4, "goodb"    # Z
    .param p5, "shift"    # D
    .param p7, "delta"    # D
    .param p9, "check"    # Z

    .prologue
    .line 389
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 390
    iput-object p1, p0, Lorg/apache/commons/math3/linear/SymmLQ$State;->a:Lorg/apache/commons/math3/linear/RealLinearOperator;

    .line 391
    iput-object p2, p0, Lorg/apache/commons/math3/linear/SymmLQ$State;->m:Lorg/apache/commons/math3/linear/RealLinearOperator;

    .line 392
    iput-object p3, p0, Lorg/apache/commons/math3/linear/SymmLQ$State;->b:Lorg/apache/commons/math3/linear/RealVector;

    .line 393
    new-instance v0, Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {p3}, Lorg/apache/commons/math3/linear/RealVector;->getDimension()I

    move-result v1

    invoke-direct {v0, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;-><init>(I)V

    iput-object v0, p0, Lorg/apache/commons/math3/linear/SymmLQ$State;->xL:Lorg/apache/commons/math3/linear/RealVector;

    .line 394
    iput-boolean p4, p0, Lorg/apache/commons/math3/linear/SymmLQ$State;->goodb:Z

    .line 395
    iput-wide p5, p0, Lorg/apache/commons/math3/linear/SymmLQ$State;->shift:D

    .line 396
    if-nez p2, :cond_0

    .end local p3    # "b":Lorg/apache/commons/math3/linear/RealVector;
    :goto_0
    iput-object p3, p0, Lorg/apache/commons/math3/linear/SymmLQ$State;->mb:Lorg/apache/commons/math3/linear/RealVector;

    .line 397
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/commons/math3/linear/SymmLQ$State;->hasConverged:Z

    .line 398
    iput-boolean p9, p0, Lorg/apache/commons/math3/linear/SymmLQ$State;->check:Z

    .line 399
    iput-wide p7, p0, Lorg/apache/commons/math3/linear/SymmLQ$State;->delta:D

    .line 400
    return-void

    .line 396
    .restart local p3    # "b":Lorg/apache/commons/math3/linear/RealVector;
    :cond_0
    invoke-virtual {p2, p3}, Lorg/apache/commons/math3/linear/RealLinearOperator;->operate(Lorg/apache/commons/math3/linear/RealVector;)Lorg/apache/commons/math3/linear/RealVector;

    move-result-object p3

    goto :goto_0
.end method

.method private static checkSymmetry(Lorg/apache/commons/math3/linear/RealLinearOperator;Lorg/apache/commons/math3/linear/RealVector;Lorg/apache/commons/math3/linear/RealVector;Lorg/apache/commons/math3/linear/RealVector;)V
    .locals 12
    .param p0, "l"    # Lorg/apache/commons/math3/linear/RealLinearOperator;
    .param p1, "x"    # Lorg/apache/commons/math3/linear/RealVector;
    .param p2, "y"    # Lorg/apache/commons/math3/linear/RealVector;
    .param p3, "z"    # Lorg/apache/commons/math3/linear/RealVector;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/linear/NonSelfAdjointOperatorException;
        }
    .end annotation

    .prologue
    .line 418
    invoke-virtual {p2, p2}, Lorg/apache/commons/math3/linear/RealVector;->dotProduct(Lorg/apache/commons/math3/linear/RealVector;)D

    move-result-wide v4

    .line 419
    .local v4, "s":D
    invoke-virtual {p1, p3}, Lorg/apache/commons/math3/linear/RealVector;->dotProduct(Lorg/apache/commons/math3/linear/RealVector;)D

    move-result-wide v6

    .line 420
    .local v6, "t":D
    sget-wide v8, Lorg/apache/commons/math3/linear/SymmLQ$State;->MACH_PREC:D

    add-double/2addr v8, v4

    sget-wide v10, Lorg/apache/commons/math3/linear/SymmLQ$State;->CBRT_MACH_PREC:D

    mul-double v2, v8, v10

    .line 421
    .local v2, "epsa":D
    sub-double v8, v4, v6

    invoke-static {v8, v9}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v8

    cmpl-double v8, v8, v2

    if-lez v8, :cond_0

    .line 423
    new-instance v1, Lorg/apache/commons/math3/linear/NonSelfAdjointOperatorException;

    invoke-direct {v1}, Lorg/apache/commons/math3/linear/NonSelfAdjointOperatorException;-><init>()V

    .line 424
    .local v1, "e":Lorg/apache/commons/math3/linear/NonSelfAdjointOperatorException;
    invoke-virtual {v1}, Lorg/apache/commons/math3/linear/NonSelfAdjointOperatorException;->getContext()Lorg/apache/commons/math3/exception/util/ExceptionContext;

    move-result-object v0

    .line 425
    .local v0, "context":Lorg/apache/commons/math3/exception/util/ExceptionContext;
    const-string v8, "operator"

    invoke-virtual {v0, v8, p0}, Lorg/apache/commons/math3/exception/util/ExceptionContext;->setValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 426
    const-string v8, "vector1"

    invoke-virtual {v0, v8, p1}, Lorg/apache/commons/math3/exception/util/ExceptionContext;->setValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 427
    const-string v8, "vector2"

    invoke-virtual {v0, v8, p2}, Lorg/apache/commons/math3/exception/util/ExceptionContext;->setValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 428
    const-string v8, "threshold"

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v9

    invoke-virtual {v0, v8, v9}, Lorg/apache/commons/math3/exception/util/ExceptionContext;->setValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 429
    throw v1

    .line 431
    .end local v0    # "context":Lorg/apache/commons/math3/exception/util/ExceptionContext;
    .end local v1    # "e":Lorg/apache/commons/math3/linear/NonSelfAdjointOperatorException;
    :cond_0
    return-void
.end method

.method private static daxpbypz(DLorg/apache/commons/math3/linear/RealVector;DLorg/apache/commons/math3/linear/RealVector;Lorg/apache/commons/math3/linear/RealVector;)V
    .locals 8
    .param p0, "a"    # D
    .param p2, "x"    # Lorg/apache/commons/math3/linear/RealVector;
    .param p3, "b"    # D
    .param p5, "y"    # Lorg/apache/commons/math3/linear/RealVector;
    .param p6, "z"    # Lorg/apache/commons/math3/linear/RealVector;

    .prologue
    .line 481
    invoke-virtual {p6}, Lorg/apache/commons/math3/linear/RealVector;->getDimension()I

    move-result v1

    .line 482
    .local v1, "n":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 484
    invoke-virtual {p2, v0}, Lorg/apache/commons/math3/linear/RealVector;->getEntry(I)D

    move-result-wide v4

    mul-double/2addr v4, p0

    invoke-virtual {p5, v0}, Lorg/apache/commons/math3/linear/RealVector;->getEntry(I)D

    move-result-wide v6

    mul-double/2addr v6, p3

    add-double/2addr v4, v6

    invoke-virtual {p6, v0}, Lorg/apache/commons/math3/linear/RealVector;->getEntry(I)D

    move-result-wide v6

    add-double v2, v4, v6

    .line 485
    .local v2, "zi":D
    invoke-virtual {p6, v0, v2, v3}, Lorg/apache/commons/math3/linear/RealVector;->setEntry(ID)V

    .line 482
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 487
    .end local v2    # "zi":D
    :cond_0
    return-void
.end method

.method private static daxpy(DLorg/apache/commons/math3/linear/RealVector;Lorg/apache/commons/math3/linear/RealVector;)V
    .locals 6
    .param p0, "a"    # D
    .param p2, "x"    # Lorg/apache/commons/math3/linear/RealVector;
    .param p3, "y"    # Lorg/apache/commons/math3/linear/RealVector;

    .prologue
    .line 462
    invoke-virtual {p2}, Lorg/apache/commons/math3/linear/RealVector;->getDimension()I

    move-result v1

    .line 463
    .local v1, "n":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 464
    invoke-virtual {p2, v0}, Lorg/apache/commons/math3/linear/RealVector;->getEntry(I)D

    move-result-wide v2

    mul-double/2addr v2, p0

    invoke-virtual {p3, v0}, Lorg/apache/commons/math3/linear/RealVector;->getEntry(I)D

    move-result-wide v4

    add-double/2addr v2, v4

    invoke-virtual {p3, v0, v2, v3}, Lorg/apache/commons/math3/linear/RealVector;->setEntry(ID)V

    .line 463
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 466
    :cond_0
    return-void
.end method

.method private static throwNPDLOException(Lorg/apache/commons/math3/linear/RealLinearOperator;Lorg/apache/commons/math3/linear/RealVector;)V
    .locals 3
    .param p0, "l"    # Lorg/apache/commons/math3/linear/RealLinearOperator;
    .param p1, "v"    # Lorg/apache/commons/math3/linear/RealVector;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/linear/NonPositiveDefiniteOperatorException;
        }
    .end annotation

    .prologue
    .line 444
    new-instance v1, Lorg/apache/commons/math3/linear/NonPositiveDefiniteOperatorException;

    invoke-direct {v1}, Lorg/apache/commons/math3/linear/NonPositiveDefiniteOperatorException;-><init>()V

    .line 445
    .local v1, "e":Lorg/apache/commons/math3/linear/NonPositiveDefiniteOperatorException;
    invoke-virtual {v1}, Lorg/apache/commons/math3/linear/NonPositiveDefiniteOperatorException;->getContext()Lorg/apache/commons/math3/exception/util/ExceptionContext;

    move-result-object v0

    .line 446
    .local v0, "context":Lorg/apache/commons/math3/exception/util/ExceptionContext;
    const-string v2, "operator"

    invoke-virtual {v0, v2, p0}, Lorg/apache/commons/math3/exception/util/ExceptionContext;->setValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 447
    const-string v2, "vector"

    invoke-virtual {v0, v2, p1}, Lorg/apache/commons/math3/exception/util/ExceptionContext;->setValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 448
    throw v1
.end method

.method private updateNorms()V
    .locals 26

    .prologue
    .line 760
    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/apache/commons/math3/linear/SymmLQ$State;->tnorm:D

    move-wide/from16 v20, v0

    invoke-static/range {v20 .. v21}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v6

    .line 761
    .local v6, "anorm":D
    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/apache/commons/math3/linear/SymmLQ$State;->ynorm2:D

    move-wide/from16 v20, v0

    invoke-static/range {v20 .. v21}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v18

    .line 762
    .local v18, "ynorm":D
    sget-wide v20, Lorg/apache/commons/math3/linear/SymmLQ$State;->MACH_PREC:D

    mul-double v10, v6, v20

    .line 763
    .local v10, "epsa":D
    mul-double v20, v6, v18

    sget-wide v22, Lorg/apache/commons/math3/linear/SymmLQ$State;->MACH_PREC:D

    mul-double v14, v20, v22

    .line 764
    .local v14, "epsx":D
    mul-double v20, v6, v18

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/apache/commons/math3/linear/SymmLQ$State;->delta:D

    move-wide/from16 v22, v0

    mul-double v12, v20, v22

    .line 765
    .local v12, "epsr":D
    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/apache/commons/math3/linear/SymmLQ$State;->gbar:D

    move-wide/from16 v20, v0

    const-wide/16 v22, 0x0

    cmpl-double v20, v20, v22

    if-nez v20, :cond_0

    move-wide v8, v10

    .line 766
    .local v8, "diag":D
    :goto_0
    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/apache/commons/math3/linear/SymmLQ$State;->gammaZeta:D

    move-wide/from16 v20, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/apache/commons/math3/linear/SymmLQ$State;->gammaZeta:D

    move-wide/from16 v22, v0

    mul-double v20, v20, v22

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/apache/commons/math3/linear/SymmLQ$State;->minusEpsZeta:D

    move-wide/from16 v22, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/apache/commons/math3/linear/SymmLQ$State;->minusEpsZeta:D

    move-wide/from16 v24, v0

    mul-double v22, v22, v24

    add-double v20, v20, v22

    invoke-static/range {v20 .. v21}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v20

    move-wide/from16 v0, v20

    move-object/from16 v2, p0

    iput-wide v0, v2, Lorg/apache/commons/math3/linear/SymmLQ$State;->lqnorm:D

    .line 768
    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/apache/commons/math3/linear/SymmLQ$State;->snprod:D

    move-wide/from16 v20, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/apache/commons/math3/linear/SymmLQ$State;->beta1:D

    move-wide/from16 v22, v0

    mul-double v16, v20, v22

    .line 769
    .local v16, "qrnorm":D
    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/apache/commons/math3/linear/SymmLQ$State;->beta:D

    move-wide/from16 v20, v0

    mul-double v20, v20, v16

    invoke-static {v8, v9}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v22

    div-double v20, v20, v22

    move-wide/from16 v0, v20

    move-object/from16 v2, p0

    iput-wide v0, v2, Lorg/apache/commons/math3/linear/SymmLQ$State;->cgnorm:D

    .line 778
    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/apache/commons/math3/linear/SymmLQ$State;->lqnorm:D

    move-wide/from16 v20, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/apache/commons/math3/linear/SymmLQ$State;->cgnorm:D

    move-wide/from16 v22, v0

    cmpg-double v20, v20, v22

    if-gtz v20, :cond_1

    .line 779
    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/apache/commons/math3/linear/SymmLQ$State;->gmax:D

    move-wide/from16 v20, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/apache/commons/math3/linear/SymmLQ$State;->gmin:D

    move-wide/from16 v22, v0

    div-double v4, v20, v22

    .line 783
    .local v4, "acond":D
    :goto_1
    sget-wide v20, Lorg/apache/commons/math3/linear/SymmLQ$State;->MACH_PREC:D

    mul-double v20, v20, v4

    const-wide v22, 0x3fb999999999999aL    # 0.1

    cmpl-double v20, v20, v22

    if-ltz v20, :cond_2

    .line 784
    new-instance v20, Lorg/apache/commons/math3/linear/IllConditionedOperatorException;

    move-object/from16 v0, v20

    invoke-direct {v0, v4, v5}, Lorg/apache/commons/math3/linear/IllConditionedOperatorException;-><init>(D)V

    throw v20

    .line 765
    .end local v4    # "acond":D
    .end local v8    # "diag":D
    .end local v16    # "qrnorm":D
    :cond_0
    move-object/from16 v0, p0

    iget-wide v8, v0, Lorg/apache/commons/math3/linear/SymmLQ$State;->gbar:D

    goto/16 :goto_0

    .line 781
    .restart local v8    # "diag":D
    .restart local v16    # "qrnorm":D
    :cond_1
    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/apache/commons/math3/linear/SymmLQ$State;->gmax:D

    move-wide/from16 v20, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/apache/commons/math3/linear/SymmLQ$State;->gmin:D

    move-wide/from16 v22, v0

    invoke-static {v8, v9}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v24

    invoke-static/range {v22 .. v25}, Lorg/apache/commons/math3/util/FastMath;->min(DD)D

    move-result-wide v22

    div-double v4, v20, v22

    .restart local v4    # "acond":D
    goto :goto_1

    .line 786
    :cond_2
    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/apache/commons/math3/linear/SymmLQ$State;->beta1:D

    move-wide/from16 v20, v0

    cmpg-double v20, v20, v14

    if-gtz v20, :cond_3

    .line 791
    new-instance v20, Lorg/apache/commons/math3/linear/SingularOperatorException;

    invoke-direct/range {v20 .. v20}, Lorg/apache/commons/math3/linear/SingularOperatorException;-><init>()V

    throw v20

    .line 793
    :cond_3
    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/apache/commons/math3/linear/SymmLQ$State;->cgnorm:D

    move-wide/from16 v20, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/apache/commons/math3/linear/SymmLQ$State;->lqnorm:D

    move-wide/from16 v22, v0

    invoke-static/range {v20 .. v23}, Lorg/apache/commons/math3/util/FastMath;->min(DD)D

    move-result-wide v20

    move-wide/from16 v0, v20

    move-object/from16 v2, p0

    iput-wide v0, v2, Lorg/apache/commons/math3/linear/SymmLQ$State;->rnorm:D

    .line 794
    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/apache/commons/math3/linear/SymmLQ$State;->cgnorm:D

    move-wide/from16 v20, v0

    cmpg-double v20, v20, v14

    if-lez v20, :cond_4

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/apache/commons/math3/linear/SymmLQ$State;->cgnorm:D

    move-wide/from16 v20, v0

    cmpg-double v20, v20, v12

    if-gtz v20, :cond_5

    :cond_4
    const/16 v20, 0x1

    :goto_2
    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lorg/apache/commons/math3/linear/SymmLQ$State;->hasConverged:Z

    .line 795
    return-void

    .line 794
    :cond_5
    const/16 v20, 0x0

    goto :goto_2
.end method


# virtual methods
.method bEqualsNullVector()Z
    .locals 1

    .prologue
    .line 812
    iget-boolean v0, p0, Lorg/apache/commons/math3/linear/SymmLQ$State;->bIsNull:Z

    return v0
.end method

.method betaEqualsZero()Z
    .locals 4

    .prologue
    .line 822
    iget-wide v0, p0, Lorg/apache/commons/math3/linear/SymmLQ$State;->beta:D

    sget-wide v2, Lorg/apache/commons/math3/linear/SymmLQ$State;->MACH_PREC:D

    cmpg-double v0, v0, v2

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method getNormOfResidual()D
    .locals 2

    .prologue
    .line 831
    iget-wide v0, p0, Lorg/apache/commons/math3/linear/SymmLQ$State;->rnorm:D

    return-wide v0
.end method

.method hasConverged()Z
    .locals 1

    .prologue
    .line 803
    iget-boolean v0, p0, Lorg/apache/commons/math3/linear/SymmLQ$State;->hasConverged:Z

    return v0
.end method

.method init()V
    .locals 14

    .prologue
    .line 544
    iget-object v3, p0, Lorg/apache/commons/math3/linear/SymmLQ$State;->xL:Lorg/apache/commons/math3/linear/RealVector;

    const-wide/16 v8, 0x0

    invoke-virtual {v3, v8, v9}, Lorg/apache/commons/math3/linear/RealVector;->set(D)V

    .line 549
    iget-object v3, p0, Lorg/apache/commons/math3/linear/SymmLQ$State;->b:Lorg/apache/commons/math3/linear/RealVector;

    invoke-virtual {v3}, Lorg/apache/commons/math3/linear/RealVector;->copy()Lorg/apache/commons/math3/linear/RealVector;

    move-result-object v3

    iput-object v3, p0, Lorg/apache/commons/math3/linear/SymmLQ$State;->r1:Lorg/apache/commons/math3/linear/RealVector;

    .line 550
    iget-object v3, p0, Lorg/apache/commons/math3/linear/SymmLQ$State;->m:Lorg/apache/commons/math3/linear/RealLinearOperator;

    if-nez v3, :cond_2

    iget-object v3, p0, Lorg/apache/commons/math3/linear/SymmLQ$State;->b:Lorg/apache/commons/math3/linear/RealVector;

    invoke-virtual {v3}, Lorg/apache/commons/math3/linear/RealVector;->copy()Lorg/apache/commons/math3/linear/RealVector;

    move-result-object v3

    :goto_0
    iput-object v3, p0, Lorg/apache/commons/math3/linear/SymmLQ$State;->y:Lorg/apache/commons/math3/linear/RealVector;

    .line 551
    iget-object v3, p0, Lorg/apache/commons/math3/linear/SymmLQ$State;->m:Lorg/apache/commons/math3/linear/RealLinearOperator;

    if-eqz v3, :cond_0

    iget-boolean v3, p0, Lorg/apache/commons/math3/linear/SymmLQ$State;->check:Z

    if-eqz v3, :cond_0

    .line 552
    iget-object v3, p0, Lorg/apache/commons/math3/linear/SymmLQ$State;->m:Lorg/apache/commons/math3/linear/RealLinearOperator;

    iget-object v8, p0, Lorg/apache/commons/math3/linear/SymmLQ$State;->r1:Lorg/apache/commons/math3/linear/RealVector;

    iget-object v9, p0, Lorg/apache/commons/math3/linear/SymmLQ$State;->y:Lorg/apache/commons/math3/linear/RealVector;

    iget-object v10, p0, Lorg/apache/commons/math3/linear/SymmLQ$State;->m:Lorg/apache/commons/math3/linear/RealLinearOperator;

    iget-object v11, p0, Lorg/apache/commons/math3/linear/SymmLQ$State;->y:Lorg/apache/commons/math3/linear/RealVector;

    invoke-virtual {v10, v11}, Lorg/apache/commons/math3/linear/RealLinearOperator;->operate(Lorg/apache/commons/math3/linear/RealVector;)Lorg/apache/commons/math3/linear/RealVector;

    move-result-object v10

    invoke-static {v3, v8, v9, v10}, Lorg/apache/commons/math3/linear/SymmLQ$State;->checkSymmetry(Lorg/apache/commons/math3/linear/RealLinearOperator;Lorg/apache/commons/math3/linear/RealVector;Lorg/apache/commons/math3/linear/RealVector;Lorg/apache/commons/math3/linear/RealVector;)V

    .line 555
    :cond_0
    iget-object v3, p0, Lorg/apache/commons/math3/linear/SymmLQ$State;->r1:Lorg/apache/commons/math3/linear/RealVector;

    iget-object v8, p0, Lorg/apache/commons/math3/linear/SymmLQ$State;->y:Lorg/apache/commons/math3/linear/RealVector;

    invoke-virtual {v3, v8}, Lorg/apache/commons/math3/linear/RealVector;->dotProduct(Lorg/apache/commons/math3/linear/RealVector;)D

    move-result-wide v8

    iput-wide v8, p0, Lorg/apache/commons/math3/linear/SymmLQ$State;->beta1:D

    .line 556
    iget-wide v8, p0, Lorg/apache/commons/math3/linear/SymmLQ$State;->beta1:D

    const-wide/16 v10, 0x0

    cmpg-double v3, v8, v10

    if-gez v3, :cond_1

    .line 557
    iget-object v3, p0, Lorg/apache/commons/math3/linear/SymmLQ$State;->m:Lorg/apache/commons/math3/linear/RealLinearOperator;

    iget-object v8, p0, Lorg/apache/commons/math3/linear/SymmLQ$State;->y:Lorg/apache/commons/math3/linear/RealVector;

    invoke-static {v3, v8}, Lorg/apache/commons/math3/linear/SymmLQ$State;->throwNPDLOException(Lorg/apache/commons/math3/linear/RealLinearOperator;Lorg/apache/commons/math3/linear/RealVector;)V

    .line 559
    :cond_1
    iget-wide v8, p0, Lorg/apache/commons/math3/linear/SymmLQ$State;->beta1:D

    const-wide/16 v10, 0x0

    cmpl-double v3, v8, v10

    if-nez v3, :cond_3

    .line 561
    const/4 v3, 0x1

    iput-boolean v3, p0, Lorg/apache/commons/math3/linear/SymmLQ$State;->bIsNull:Z

    .line 628
    :goto_1
    return-void

    .line 550
    :cond_2
    iget-object v3, p0, Lorg/apache/commons/math3/linear/SymmLQ$State;->m:Lorg/apache/commons/math3/linear/RealLinearOperator;

    iget-object v8, p0, Lorg/apache/commons/math3/linear/SymmLQ$State;->r1:Lorg/apache/commons/math3/linear/RealVector;

    invoke-virtual {v3, v8}, Lorg/apache/commons/math3/linear/RealLinearOperator;->operate(Lorg/apache/commons/math3/linear/RealVector;)Lorg/apache/commons/math3/linear/RealVector;

    move-result-object v3

    goto :goto_0

    .line 564
    :cond_3
    const/4 v3, 0x0

    iput-boolean v3, p0, Lorg/apache/commons/math3/linear/SymmLQ$State;->bIsNull:Z

    .line 565
    iget-wide v8, p0, Lorg/apache/commons/math3/linear/SymmLQ$State;->beta1:D

    invoke-static {v8, v9}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v8

    iput-wide v8, p0, Lorg/apache/commons/math3/linear/SymmLQ$State;->beta1:D

    .line 571
    iget-object v3, p0, Lorg/apache/commons/math3/linear/SymmLQ$State;->y:Lorg/apache/commons/math3/linear/RealVector;

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    iget-wide v10, p0, Lorg/apache/commons/math3/linear/SymmLQ$State;->beta1:D

    div-double/2addr v8, v10

    invoke-virtual {v3, v8, v9}, Lorg/apache/commons/math3/linear/RealVector;->mapMultiply(D)Lorg/apache/commons/math3/linear/RealVector;

    move-result-object v2

    .line 572
    .local v2, "v":Lorg/apache/commons/math3/linear/RealVector;
    iget-object v3, p0, Lorg/apache/commons/math3/linear/SymmLQ$State;->a:Lorg/apache/commons/math3/linear/RealLinearOperator;

    invoke-virtual {v3, v2}, Lorg/apache/commons/math3/linear/RealLinearOperator;->operate(Lorg/apache/commons/math3/linear/RealVector;)Lorg/apache/commons/math3/linear/RealVector;

    move-result-object v3

    iput-object v3, p0, Lorg/apache/commons/math3/linear/SymmLQ$State;->y:Lorg/apache/commons/math3/linear/RealVector;

    .line 573
    iget-boolean v3, p0, Lorg/apache/commons/math3/linear/SymmLQ$State;->check:Z

    if-eqz v3, :cond_4

    .line 574
    iget-object v3, p0, Lorg/apache/commons/math3/linear/SymmLQ$State;->a:Lorg/apache/commons/math3/linear/RealLinearOperator;

    iget-object v8, p0, Lorg/apache/commons/math3/linear/SymmLQ$State;->y:Lorg/apache/commons/math3/linear/RealVector;

    iget-object v9, p0, Lorg/apache/commons/math3/linear/SymmLQ$State;->a:Lorg/apache/commons/math3/linear/RealLinearOperator;

    iget-object v10, p0, Lorg/apache/commons/math3/linear/SymmLQ$State;->y:Lorg/apache/commons/math3/linear/RealVector;

    invoke-virtual {v9, v10}, Lorg/apache/commons/math3/linear/RealLinearOperator;->operate(Lorg/apache/commons/math3/linear/RealVector;)Lorg/apache/commons/math3/linear/RealVector;

    move-result-object v9

    invoke-static {v3, v2, v8, v9}, Lorg/apache/commons/math3/linear/SymmLQ$State;->checkSymmetry(Lorg/apache/commons/math3/linear/RealLinearOperator;Lorg/apache/commons/math3/linear/RealVector;Lorg/apache/commons/math3/linear/RealVector;Lorg/apache/commons/math3/linear/RealVector;)V

    .line 580
    :cond_4
    iget-wide v8, p0, Lorg/apache/commons/math3/linear/SymmLQ$State;->shift:D

    neg-double v8, v8

    iget-object v3, p0, Lorg/apache/commons/math3/linear/SymmLQ$State;->y:Lorg/apache/commons/math3/linear/RealVector;

    invoke-static {v8, v9, v2, v3}, Lorg/apache/commons/math3/linear/SymmLQ$State;->daxpy(DLorg/apache/commons/math3/linear/RealVector;Lorg/apache/commons/math3/linear/RealVector;)V

    .line 581
    iget-object v3, p0, Lorg/apache/commons/math3/linear/SymmLQ$State;->y:Lorg/apache/commons/math3/linear/RealVector;

    invoke-virtual {v2, v3}, Lorg/apache/commons/math3/linear/RealVector;->dotProduct(Lorg/apache/commons/math3/linear/RealVector;)D

    move-result-wide v0

    .line 582
    .local v0, "alpha":D
    neg-double v8, v0

    iget-wide v10, p0, Lorg/apache/commons/math3/linear/SymmLQ$State;->beta1:D

    div-double/2addr v8, v10

    iget-object v3, p0, Lorg/apache/commons/math3/linear/SymmLQ$State;->r1:Lorg/apache/commons/math3/linear/RealVector;

    iget-object v10, p0, Lorg/apache/commons/math3/linear/SymmLQ$State;->y:Lorg/apache/commons/math3/linear/RealVector;

    invoke-static {v8, v9, v3, v10}, Lorg/apache/commons/math3/linear/SymmLQ$State;->daxpy(DLorg/apache/commons/math3/linear/RealVector;Lorg/apache/commons/math3/linear/RealVector;)V

    .line 589
    iget-object v3, p0, Lorg/apache/commons/math3/linear/SymmLQ$State;->y:Lorg/apache/commons/math3/linear/RealVector;

    invoke-virtual {v2, v3}, Lorg/apache/commons/math3/linear/RealVector;->dotProduct(Lorg/apache/commons/math3/linear/RealVector;)D

    move-result-wide v6

    .line 590
    .local v6, "vty":D
    invoke-virtual {v2, v2}, Lorg/apache/commons/math3/linear/RealVector;->dotProduct(Lorg/apache/commons/math3/linear/RealVector;)D

    move-result-wide v4

    .line 591
    .local v4, "vtv":D
    neg-double v8, v6

    div-double/2addr v8, v4

    iget-object v3, p0, Lorg/apache/commons/math3/linear/SymmLQ$State;->y:Lorg/apache/commons/math3/linear/RealVector;

    invoke-static {v8, v9, v2, v3}, Lorg/apache/commons/math3/linear/SymmLQ$State;->daxpy(DLorg/apache/commons/math3/linear/RealVector;Lorg/apache/commons/math3/linear/RealVector;)V

    .line 592
    iget-object v3, p0, Lorg/apache/commons/math3/linear/SymmLQ$State;->y:Lorg/apache/commons/math3/linear/RealVector;

    invoke-virtual {v3}, Lorg/apache/commons/math3/linear/RealVector;->copy()Lorg/apache/commons/math3/linear/RealVector;

    move-result-object v3

    iput-object v3, p0, Lorg/apache/commons/math3/linear/SymmLQ$State;->r2:Lorg/apache/commons/math3/linear/RealVector;

    .line 593
    iget-object v3, p0, Lorg/apache/commons/math3/linear/SymmLQ$State;->m:Lorg/apache/commons/math3/linear/RealLinearOperator;

    if-eqz v3, :cond_5

    .line 594
    iget-object v3, p0, Lorg/apache/commons/math3/linear/SymmLQ$State;->m:Lorg/apache/commons/math3/linear/RealLinearOperator;

    iget-object v8, p0, Lorg/apache/commons/math3/linear/SymmLQ$State;->r2:Lorg/apache/commons/math3/linear/RealVector;

    invoke-virtual {v3, v8}, Lorg/apache/commons/math3/linear/RealLinearOperator;->operate(Lorg/apache/commons/math3/linear/RealVector;)Lorg/apache/commons/math3/linear/RealVector;

    move-result-object v3

    iput-object v3, p0, Lorg/apache/commons/math3/linear/SymmLQ$State;->y:Lorg/apache/commons/math3/linear/RealVector;

    .line 596
    :cond_5
    iget-wide v8, p0, Lorg/apache/commons/math3/linear/SymmLQ$State;->beta1:D

    iput-wide v8, p0, Lorg/apache/commons/math3/linear/SymmLQ$State;->oldb:D

    .line 597
    iget-object v3, p0, Lorg/apache/commons/math3/linear/SymmLQ$State;->r2:Lorg/apache/commons/math3/linear/RealVector;

    iget-object v8, p0, Lorg/apache/commons/math3/linear/SymmLQ$State;->y:Lorg/apache/commons/math3/linear/RealVector;

    invoke-virtual {v3, v8}, Lorg/apache/commons/math3/linear/RealVector;->dotProduct(Lorg/apache/commons/math3/linear/RealVector;)D

    move-result-wide v8

    iput-wide v8, p0, Lorg/apache/commons/math3/linear/SymmLQ$State;->beta:D

    .line 598
    iget-wide v8, p0, Lorg/apache/commons/math3/linear/SymmLQ$State;->beta:D

    const-wide/16 v10, 0x0

    cmpg-double v3, v8, v10

    if-gez v3, :cond_6

    .line 599
    iget-object v3, p0, Lorg/apache/commons/math3/linear/SymmLQ$State;->m:Lorg/apache/commons/math3/linear/RealLinearOperator;

    iget-object v8, p0, Lorg/apache/commons/math3/linear/SymmLQ$State;->y:Lorg/apache/commons/math3/linear/RealVector;

    invoke-static {v3, v8}, Lorg/apache/commons/math3/linear/SymmLQ$State;->throwNPDLOException(Lorg/apache/commons/math3/linear/RealLinearOperator;Lorg/apache/commons/math3/linear/RealVector;)V

    .line 601
    :cond_6
    iget-wide v8, p0, Lorg/apache/commons/math3/linear/SymmLQ$State;->beta:D

    invoke-static {v8, v9}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v8

    iput-wide v8, p0, Lorg/apache/commons/math3/linear/SymmLQ$State;->beta:D

    .line 609
    iget-wide v8, p0, Lorg/apache/commons/math3/linear/SymmLQ$State;->beta1:D

    iput-wide v8, p0, Lorg/apache/commons/math3/linear/SymmLQ$State;->cgnorm:D

    .line 610
    iput-wide v0, p0, Lorg/apache/commons/math3/linear/SymmLQ$State;->gbar:D

    .line 611
    iget-wide v8, p0, Lorg/apache/commons/math3/linear/SymmLQ$State;->beta:D

    iput-wide v8, p0, Lorg/apache/commons/math3/linear/SymmLQ$State;->dbar:D

    .line 612
    iget-wide v8, p0, Lorg/apache/commons/math3/linear/SymmLQ$State;->beta1:D

    iput-wide v8, p0, Lorg/apache/commons/math3/linear/SymmLQ$State;->gammaZeta:D

    .line 613
    const-wide/16 v8, 0x0

    iput-wide v8, p0, Lorg/apache/commons/math3/linear/SymmLQ$State;->minusEpsZeta:D

    .line 614
    const-wide/16 v8, 0x0

    iput-wide v8, p0, Lorg/apache/commons/math3/linear/SymmLQ$State;->bstep:D

    .line 615
    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    iput-wide v8, p0, Lorg/apache/commons/math3/linear/SymmLQ$State;->snprod:D

    .line 616
    mul-double v8, v0, v0

    iget-wide v10, p0, Lorg/apache/commons/math3/linear/SymmLQ$State;->beta:D

    iget-wide v12, p0, Lorg/apache/commons/math3/linear/SymmLQ$State;->beta:D

    mul-double/2addr v10, v12

    add-double/2addr v8, v10

    iput-wide v8, p0, Lorg/apache/commons/math3/linear/SymmLQ$State;->tnorm:D

    .line 617
    const-wide/16 v8, 0x0

    iput-wide v8, p0, Lorg/apache/commons/math3/linear/SymmLQ$State;->ynorm2:D

    .line 618
    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v8

    sget-wide v10, Lorg/apache/commons/math3/linear/SymmLQ$State;->MACH_PREC:D

    add-double/2addr v8, v10

    iput-wide v8, p0, Lorg/apache/commons/math3/linear/SymmLQ$State;->gmax:D

    .line 619
    iget-wide v8, p0, Lorg/apache/commons/math3/linear/SymmLQ$State;->gmax:D

    iput-wide v8, p0, Lorg/apache/commons/math3/linear/SymmLQ$State;->gmin:D

    .line 621
    iget-boolean v3, p0, Lorg/apache/commons/math3/linear/SymmLQ$State;->goodb:Z

    if-eqz v3, :cond_7

    .line 622
    new-instance v3, Lorg/apache/commons/math3/linear/ArrayRealVector;

    iget-object v8, p0, Lorg/apache/commons/math3/linear/SymmLQ$State;->a:Lorg/apache/commons/math3/linear/RealLinearOperator;

    invoke-virtual {v8}, Lorg/apache/commons/math3/linear/RealLinearOperator;->getRowDimension()I

    move-result v8

    invoke-direct {v3, v8}, Lorg/apache/commons/math3/linear/ArrayRealVector;-><init>(I)V

    iput-object v3, p0, Lorg/apache/commons/math3/linear/SymmLQ$State;->wbar:Lorg/apache/commons/math3/linear/RealVector;

    .line 623
    iget-object v3, p0, Lorg/apache/commons/math3/linear/SymmLQ$State;->wbar:Lorg/apache/commons/math3/linear/RealVector;

    const-wide/16 v8, 0x0

    invoke-virtual {v3, v8, v9}, Lorg/apache/commons/math3/linear/RealVector;->set(D)V

    .line 627
    :goto_2
    invoke-direct {p0}, Lorg/apache/commons/math3/linear/SymmLQ$State;->updateNorms()V

    goto/16 :goto_1

    .line 625
    :cond_7
    iput-object v2, p0, Lorg/apache/commons/math3/linear/SymmLQ$State;->wbar:Lorg/apache/commons/math3/linear/RealVector;

    goto :goto_2
.end method

.method refineSolution(Lorg/apache/commons/math3/linear/RealVector;)V
    .locals 24
    .param p1, "x"    # Lorg/apache/commons/math3/linear/RealVector;

    .prologue
    .line 503
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/linear/SymmLQ$State;->xL:Lorg/apache/commons/math3/linear/RealVector;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lorg/apache/commons/math3/linear/RealVector;->getDimension()I

    move-result v11

    .line 504
    .local v11, "n":I
    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/apache/commons/math3/linear/SymmLQ$State;->lqnorm:D

    move-wide/from16 v20, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/apache/commons/math3/linear/SymmLQ$State;->cgnorm:D

    move-wide/from16 v22, v0

    cmpg-double v20, v20, v22

    if-gez v20, :cond_2

    .line 505
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/apache/commons/math3/linear/SymmLQ$State;->goodb:Z

    move/from16 v20, v0

    if-nez v20, :cond_1

    .line 506
    const/16 v20, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/linear/SymmLQ$State;->xL:Lorg/apache/commons/math3/linear/RealVector;

    move-object/from16 v21, v0

    move-object/from16 v0, p1

    move/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/math3/linear/RealVector;->setSubVector(ILorg/apache/commons/math3/linear/RealVector;)V

    .line 536
    :cond_0
    return-void

    .line 508
    :cond_1
    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/apache/commons/math3/linear/SymmLQ$State;->bstep:D

    move-wide/from16 v20, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/apache/commons/math3/linear/SymmLQ$State;->beta1:D

    move-wide/from16 v22, v0

    div-double v12, v20, v22

    .line 509
    .local v12, "step":D
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_0
    if-ge v10, v11, :cond_0

    .line 510
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/linear/SymmLQ$State;->mb:Lorg/apache/commons/math3/linear/RealVector;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v10}, Lorg/apache/commons/math3/linear/RealVector;->getEntry(I)D

    move-result-wide v6

    .line 511
    .local v6, "bi":D
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/linear/SymmLQ$State;->xL:Lorg/apache/commons/math3/linear/RealVector;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v10}, Lorg/apache/commons/math3/linear/RealVector;->getEntry(I)D

    move-result-wide v16

    .line 512
    .local v16, "xi":D
    mul-double v20, v12, v6

    add-double v20, v20, v16

    move-object/from16 v0, p1

    move-wide/from16 v1, v20

    invoke-virtual {v0, v10, v1, v2}, Lorg/apache/commons/math3/linear/RealVector;->setEntry(ID)V

    .line 509
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 516
    .end local v6    # "bi":D
    .end local v10    # "i":I
    .end local v12    # "step":D
    .end local v16    # "xi":D
    :cond_2
    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/apache/commons/math3/linear/SymmLQ$State;->tnorm:D

    move-wide/from16 v20, v0

    invoke-static/range {v20 .. v21}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v4

    .line 517
    .local v4, "anorm":D
    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/apache/commons/math3/linear/SymmLQ$State;->gbar:D

    move-wide/from16 v20, v0

    const-wide/16 v22, 0x0

    cmpl-double v20, v20, v22

    if-nez v20, :cond_3

    sget-wide v20, Lorg/apache/commons/math3/linear/SymmLQ$State;->MACH_PREC:D

    mul-double v8, v4, v20

    .line 518
    .local v8, "diag":D
    :goto_1
    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/apache/commons/math3/linear/SymmLQ$State;->gammaZeta:D

    move-wide/from16 v20, v0

    div-double v18, v20, v8

    .line 519
    .local v18, "zbar":D
    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/apache/commons/math3/linear/SymmLQ$State;->bstep:D

    move-wide/from16 v20, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/apache/commons/math3/linear/SymmLQ$State;->snprod:D

    move-wide/from16 v22, v0

    mul-double v22, v22, v18

    add-double v20, v20, v22

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/apache/commons/math3/linear/SymmLQ$State;->beta1:D

    move-wide/from16 v22, v0

    div-double v12, v20, v22

    .line 521
    .restart local v12    # "step":D
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/apache/commons/math3/linear/SymmLQ$State;->goodb:Z

    move/from16 v20, v0

    if-nez v20, :cond_4

    .line 522
    const/4 v10, 0x0

    .restart local v10    # "i":I
    :goto_2
    if-ge v10, v11, :cond_0

    .line 523
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/linear/SymmLQ$State;->xL:Lorg/apache/commons/math3/linear/RealVector;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v10}, Lorg/apache/commons/math3/linear/RealVector;->getEntry(I)D

    move-result-wide v16

    .line 524
    .restart local v16    # "xi":D
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/linear/SymmLQ$State;->wbar:Lorg/apache/commons/math3/linear/RealVector;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v10}, Lorg/apache/commons/math3/linear/RealVector;->getEntry(I)D

    move-result-wide v14

    .line 525
    .local v14, "wi":D
    mul-double v20, v18, v14

    add-double v20, v20, v16

    move-object/from16 v0, p1

    move-wide/from16 v1, v20

    invoke-virtual {v0, v10, v1, v2}, Lorg/apache/commons/math3/linear/RealVector;->setEntry(ID)V

    .line 522
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    .line 517
    .end local v8    # "diag":D
    .end local v10    # "i":I
    .end local v12    # "step":D
    .end local v14    # "wi":D
    .end local v16    # "xi":D
    .end local v18    # "zbar":D
    :cond_3
    move-object/from16 v0, p0

    iget-wide v8, v0, Lorg/apache/commons/math3/linear/SymmLQ$State;->gbar:D

    goto :goto_1

    .line 528
    .restart local v8    # "diag":D
    .restart local v12    # "step":D
    .restart local v18    # "zbar":D
    :cond_4
    const/4 v10, 0x0

    .restart local v10    # "i":I
    :goto_3
    if-ge v10, v11, :cond_0

    .line 529
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/linear/SymmLQ$State;->xL:Lorg/apache/commons/math3/linear/RealVector;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v10}, Lorg/apache/commons/math3/linear/RealVector;->getEntry(I)D

    move-result-wide v16

    .line 530
    .restart local v16    # "xi":D
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/linear/SymmLQ$State;->wbar:Lorg/apache/commons/math3/linear/RealVector;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v10}, Lorg/apache/commons/math3/linear/RealVector;->getEntry(I)D

    move-result-wide v14

    .line 531
    .restart local v14    # "wi":D
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/linear/SymmLQ$State;->mb:Lorg/apache/commons/math3/linear/RealVector;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v10}, Lorg/apache/commons/math3/linear/RealVector;->getEntry(I)D

    move-result-wide v6

    .line 532
    .restart local v6    # "bi":D
    mul-double v20, v18, v14

    add-double v20, v20, v16

    mul-double v22, v12, v6

    add-double v20, v20, v22

    move-object/from16 v0, p1

    move-wide/from16 v1, v20

    invoke-virtual {v0, v10, v1, v2}, Lorg/apache/commons/math3/linear/RealVector;->setEntry(ID)V

    .line 528
    add-int/lit8 v10, v10, 0x1

    goto :goto_3
.end method

.method update()V
    .locals 40

    .prologue
    .line 637
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/commons/math3/linear/SymmLQ$State;->y:Lorg/apache/commons/math3/linear/RealVector;

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/apache/commons/math3/linear/SymmLQ$State;->beta:D

    move-wide/from16 v36, v0

    div-double v6, v6, v36

    invoke-virtual {v2, v6, v7}, Lorg/apache/commons/math3/linear/RealVector;->mapMultiply(D)Lorg/apache/commons/math3/linear/RealVector;

    move-result-object v4

    .line 638
    .local v4, "v":Lorg/apache/commons/math3/linear/RealVector;
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/commons/math3/linear/SymmLQ$State;->a:Lorg/apache/commons/math3/linear/RealLinearOperator;

    invoke-virtual {v2, v4}, Lorg/apache/commons/math3/linear/RealLinearOperator;->operate(Lorg/apache/commons/math3/linear/RealVector;)Lorg/apache/commons/math3/linear/RealVector;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/apache/commons/math3/linear/SymmLQ$State;->y:Lorg/apache/commons/math3/linear/RealVector;

    .line 639
    move-object/from16 v0, p0

    iget-wide v2, v0, Lorg/apache/commons/math3/linear/SymmLQ$State;->shift:D

    neg-double v2, v2

    move-object/from16 v0, p0

    iget-wide v6, v0, Lorg/apache/commons/math3/linear/SymmLQ$State;->beta:D

    neg-double v6, v6

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/apache/commons/math3/linear/SymmLQ$State;->oldb:D

    move-wide/from16 v36, v0

    div-double v5, v6, v36

    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/apache/commons/math3/linear/SymmLQ$State;->r1:Lorg/apache/commons/math3/linear/RealVector;

    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/apache/commons/math3/linear/SymmLQ$State;->y:Lorg/apache/commons/math3/linear/RealVector;

    invoke-static/range {v2 .. v8}, Lorg/apache/commons/math3/linear/SymmLQ$State;->daxpbypz(DLorg/apache/commons/math3/linear/RealVector;DLorg/apache/commons/math3/linear/RealVector;Lorg/apache/commons/math3/linear/RealVector;)V

    .line 640
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/commons/math3/linear/SymmLQ$State;->y:Lorg/apache/commons/math3/linear/RealVector;

    invoke-virtual {v4, v2}, Lorg/apache/commons/math3/linear/RealVector;->dotProduct(Lorg/apache/commons/math3/linear/RealVector;)D

    move-result-wide v10

    .line 651
    .local v10, "alpha":D
    neg-double v2, v10

    move-object/from16 v0, p0

    iget-wide v6, v0, Lorg/apache/commons/math3/linear/SymmLQ$State;->beta:D

    div-double/2addr v2, v6

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/commons/math3/linear/SymmLQ$State;->r2:Lorg/apache/commons/math3/linear/RealVector;

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/apache/commons/math3/linear/SymmLQ$State;->y:Lorg/apache/commons/math3/linear/RealVector;

    invoke-static {v2, v3, v5, v6}, Lorg/apache/commons/math3/linear/SymmLQ$State;->daxpy(DLorg/apache/commons/math3/linear/RealVector;Lorg/apache/commons/math3/linear/RealVector;)V

    .line 665
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/commons/math3/linear/SymmLQ$State;->r2:Lorg/apache/commons/math3/linear/RealVector;

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/apache/commons/math3/linear/SymmLQ$State;->r1:Lorg/apache/commons/math3/linear/RealVector;

    .line 666
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/commons/math3/linear/SymmLQ$State;->y:Lorg/apache/commons/math3/linear/RealVector;

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/apache/commons/math3/linear/SymmLQ$State;->r2:Lorg/apache/commons/math3/linear/RealVector;

    .line 667
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/commons/math3/linear/SymmLQ$State;->m:Lorg/apache/commons/math3/linear/RealLinearOperator;

    if-eqz v2, :cond_0

    .line 668
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/commons/math3/linear/SymmLQ$State;->m:Lorg/apache/commons/math3/linear/RealLinearOperator;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/commons/math3/linear/SymmLQ$State;->r2:Lorg/apache/commons/math3/linear/RealVector;

    invoke-virtual {v2, v3}, Lorg/apache/commons/math3/linear/RealLinearOperator;->operate(Lorg/apache/commons/math3/linear/RealVector;)Lorg/apache/commons/math3/linear/RealVector;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/apache/commons/math3/linear/SymmLQ$State;->y:Lorg/apache/commons/math3/linear/RealVector;

    .line 670
    :cond_0
    move-object/from16 v0, p0

    iget-wide v2, v0, Lorg/apache/commons/math3/linear/SymmLQ$State;->beta:D

    move-object/from16 v0, p0

    iput-wide v2, v0, Lorg/apache/commons/math3/linear/SymmLQ$State;->oldb:D

    .line 671
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/commons/math3/linear/SymmLQ$State;->r2:Lorg/apache/commons/math3/linear/RealVector;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/commons/math3/linear/SymmLQ$State;->y:Lorg/apache/commons/math3/linear/RealVector;

    invoke-virtual {v2, v3}, Lorg/apache/commons/math3/linear/RealVector;->dotProduct(Lorg/apache/commons/math3/linear/RealVector;)D

    move-result-wide v2

    move-object/from16 v0, p0

    iput-wide v2, v0, Lorg/apache/commons/math3/linear/SymmLQ$State;->beta:D

    .line 672
    move-object/from16 v0, p0

    iget-wide v2, v0, Lorg/apache/commons/math3/linear/SymmLQ$State;->beta:D

    const-wide/16 v6, 0x0

    cmpg-double v2, v2, v6

    if-gez v2, :cond_1

    .line 673
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/commons/math3/linear/SymmLQ$State;->m:Lorg/apache/commons/math3/linear/RealLinearOperator;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/commons/math3/linear/SymmLQ$State;->y:Lorg/apache/commons/math3/linear/RealVector;

    invoke-static {v2, v3}, Lorg/apache/commons/math3/linear/SymmLQ$State;->throwNPDLOException(Lorg/apache/commons/math3/linear/RealLinearOperator;Lorg/apache/commons/math3/linear/RealVector;)V

    .line 675
    :cond_1
    move-object/from16 v0, p0

    iget-wide v2, v0, Lorg/apache/commons/math3/linear/SymmLQ$State;->beta:D

    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v2

    move-object/from16 v0, p0

    iput-wide v2, v0, Lorg/apache/commons/math3/linear/SymmLQ$State;->beta:D

    .line 684
    move-object/from16 v0, p0

    iget-wide v2, v0, Lorg/apache/commons/math3/linear/SymmLQ$State;->tnorm:D

    mul-double v6, v10, v10

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/apache/commons/math3/linear/SymmLQ$State;->oldb:D

    move-wide/from16 v36, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/apache/commons/math3/linear/SymmLQ$State;->oldb:D

    move-wide/from16 v38, v0

    mul-double v36, v36, v38

    add-double v6, v6, v36

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/apache/commons/math3/linear/SymmLQ$State;->beta:D

    move-wide/from16 v36, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/apache/commons/math3/linear/SymmLQ$State;->beta:D

    move-wide/from16 v38, v0

    mul-double v36, v36, v38

    add-double v6, v6, v36

    add-double/2addr v2, v6

    move-object/from16 v0, p0

    iput-wide v2, v0, Lorg/apache/commons/math3/linear/SymmLQ$State;->tnorm:D

    .line 692
    move-object/from16 v0, p0

    iget-wide v2, v0, Lorg/apache/commons/math3/linear/SymmLQ$State;->gbar:D

    move-object/from16 v0, p0

    iget-wide v6, v0, Lorg/apache/commons/math3/linear/SymmLQ$State;->gbar:D

    mul-double/2addr v2, v6

    move-object/from16 v0, p0

    iget-wide v6, v0, Lorg/apache/commons/math3/linear/SymmLQ$State;->oldb:D

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/apache/commons/math3/linear/SymmLQ$State;->oldb:D

    move-wide/from16 v36, v0

    mul-double v6, v6, v36

    add-double/2addr v2, v6

    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v18

    .line 693
    .local v18, "gamma":D
    move-object/from16 v0, p0

    iget-wide v2, v0, Lorg/apache/commons/math3/linear/SymmLQ$State;->gbar:D

    div-double v12, v2, v18

    .line 694
    .local v12, "c":D
    move-object/from16 v0, p0

    iget-wide v2, v0, Lorg/apache/commons/math3/linear/SymmLQ$State;->oldb:D

    div-double v22, v2, v18

    .line 704
    .local v22, "s":D
    move-object/from16 v0, p0

    iget-wide v2, v0, Lorg/apache/commons/math3/linear/SymmLQ$State;->dbar:D

    mul-double/2addr v2, v12

    mul-double v6, v22, v10

    add-double v14, v2, v6

    .line 705
    .local v14, "deltak":D
    move-object/from16 v0, p0

    iget-wide v2, v0, Lorg/apache/commons/math3/linear/SymmLQ$State;->dbar:D

    mul-double v2, v2, v22

    mul-double v6, v12, v10

    sub-double/2addr v2, v6

    move-object/from16 v0, p0

    iput-wide v2, v0, Lorg/apache/commons/math3/linear/SymmLQ$State;->gbar:D

    .line 706
    move-object/from16 v0, p0

    iget-wide v2, v0, Lorg/apache/commons/math3/linear/SymmLQ$State;->beta:D

    mul-double v16, v22, v2

    .line 707
    .local v16, "eps":D
    neg-double v2, v12

    move-object/from16 v0, p0

    iget-wide v6, v0, Lorg/apache/commons/math3/linear/SymmLQ$State;->beta:D

    mul-double/2addr v2, v6

    move-object/from16 v0, p0

    iput-wide v2, v0, Lorg/apache/commons/math3/linear/SymmLQ$State;->dbar:D

    .line 708
    move-object/from16 v0, p0

    iget-wide v2, v0, Lorg/apache/commons/math3/linear/SymmLQ$State;->gammaZeta:D

    div-double v30, v2, v18

    .line 717
    .local v30, "zeta":D
    mul-double v32, v30, v12

    .line 718
    .local v32, "zetaC":D
    mul-double v34, v30, v22

    .line 719
    .local v34, "zetaS":D
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/commons/math3/linear/SymmLQ$State;->xL:Lorg/apache/commons/math3/linear/RealVector;

    invoke-virtual {v2}, Lorg/apache/commons/math3/linear/RealVector;->getDimension()I

    move-result v20

    .line 720
    .local v20, "n":I
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_0
    move/from16 v0, v20

    if-ge v9, v0, :cond_2

    .line 721
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/commons/math3/linear/SymmLQ$State;->xL:Lorg/apache/commons/math3/linear/RealVector;

    invoke-virtual {v2, v9}, Lorg/apache/commons/math3/linear/RealVector;->getEntry(I)D

    move-result-wide v28

    .line 722
    .local v28, "xi":D
    invoke-virtual {v4, v9}, Lorg/apache/commons/math3/linear/RealVector;->getEntry(I)D

    move-result-wide v24

    .line 723
    .local v24, "vi":D
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/commons/math3/linear/SymmLQ$State;->wbar:Lorg/apache/commons/math3/linear/RealVector;

    invoke-virtual {v2, v9}, Lorg/apache/commons/math3/linear/RealVector;->getEntry(I)D

    move-result-wide v26

    .line 724
    .local v26, "wi":D
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/commons/math3/linear/SymmLQ$State;->xL:Lorg/apache/commons/math3/linear/RealVector;

    mul-double v6, v26, v32

    add-double v6, v6, v28

    mul-double v36, v24, v34

    add-double v6, v6, v36

    invoke-virtual {v2, v9, v6, v7}, Lorg/apache/commons/math3/linear/RealVector;->setEntry(ID)V

    .line 725
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/commons/math3/linear/SymmLQ$State;->wbar:Lorg/apache/commons/math3/linear/RealVector;

    mul-double v6, v26, v22

    mul-double v36, v24, v12

    sub-double v6, v6, v36

    invoke-virtual {v2, v9, v6, v7}, Lorg/apache/commons/math3/linear/RealVector;->setEntry(ID)V

    .line 720
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 733
    .end local v24    # "vi":D
    .end local v26    # "wi":D
    .end local v28    # "xi":D
    :cond_2
    move-object/from16 v0, p0

    iget-wide v2, v0, Lorg/apache/commons/math3/linear/SymmLQ$State;->bstep:D

    move-object/from16 v0, p0

    iget-wide v6, v0, Lorg/apache/commons/math3/linear/SymmLQ$State;->snprod:D

    mul-double/2addr v6, v12

    mul-double v6, v6, v30

    add-double/2addr v2, v6

    move-object/from16 v0, p0

    iput-wide v2, v0, Lorg/apache/commons/math3/linear/SymmLQ$State;->bstep:D

    .line 734
    move-object/from16 v0, p0

    iget-wide v2, v0, Lorg/apache/commons/math3/linear/SymmLQ$State;->snprod:D

    mul-double v2, v2, v22

    move-object/from16 v0, p0

    iput-wide v2, v0, Lorg/apache/commons/math3/linear/SymmLQ$State;->snprod:D

    .line 735
    move-object/from16 v0, p0

    iget-wide v2, v0, Lorg/apache/commons/math3/linear/SymmLQ$State;->gmax:D

    move-wide/from16 v0, v18

    invoke-static {v2, v3, v0, v1}, Lorg/apache/commons/math3/util/FastMath;->max(DD)D

    move-result-wide v2

    move-object/from16 v0, p0

    iput-wide v2, v0, Lorg/apache/commons/math3/linear/SymmLQ$State;->gmax:D

    .line 736
    move-object/from16 v0, p0

    iget-wide v2, v0, Lorg/apache/commons/math3/linear/SymmLQ$State;->gmin:D

    move-wide/from16 v0, v18

    invoke-static {v2, v3, v0, v1}, Lorg/apache/commons/math3/util/FastMath;->min(DD)D

    move-result-wide v2

    move-object/from16 v0, p0

    iput-wide v2, v0, Lorg/apache/commons/math3/linear/SymmLQ$State;->gmin:D

    .line 737
    move-object/from16 v0, p0

    iget-wide v2, v0, Lorg/apache/commons/math3/linear/SymmLQ$State;->ynorm2:D

    mul-double v6, v30, v30

    add-double/2addr v2, v6

    move-object/from16 v0, p0

    iput-wide v2, v0, Lorg/apache/commons/math3/linear/SymmLQ$State;->ynorm2:D

    .line 738
    move-object/from16 v0, p0

    iget-wide v2, v0, Lorg/apache/commons/math3/linear/SymmLQ$State;->minusEpsZeta:D

    mul-double v6, v14, v30

    sub-double/2addr v2, v6

    move-object/from16 v0, p0

    iput-wide v2, v0, Lorg/apache/commons/math3/linear/SymmLQ$State;->gammaZeta:D

    .line 739
    move-wide/from16 v0, v16

    neg-double v2, v0

    mul-double v2, v2, v30

    move-object/from16 v0, p0

    iput-wide v2, v0, Lorg/apache/commons/math3/linear/SymmLQ$State;->minusEpsZeta:D

    .line 752
    invoke-direct/range {p0 .. p0}, Lorg/apache/commons/math3/linear/SymmLQ$State;->updateNorms()V

    .line 753
    return-void
.end method
