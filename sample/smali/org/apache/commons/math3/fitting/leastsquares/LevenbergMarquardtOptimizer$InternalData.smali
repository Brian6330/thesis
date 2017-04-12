.class Lorg/apache/commons/math3/fitting/leastsquares/LevenbergMarquardtOptimizer$InternalData;
.super Ljava/lang/Object;
.source "LevenbergMarquardtOptimizer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/math3/fitting/leastsquares/LevenbergMarquardtOptimizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "InternalData"
.end annotation


# instance fields
.field private final beta:[D

.field private final diagR:[D

.field private final jacNorm:[D

.field private final permutation:[I

.field private final rank:I

.field private final weightedJacobian:[[D


# direct methods
.method constructor <init>([[D[II[D[D[D)V
    .locals 0
    .param p1, "weightedJacobian"    # [[D
    .param p2, "permutation"    # [I
    .param p3, "rank"    # I
    .param p4, "diagR"    # [D
    .param p5, "jacNorm"    # [D
    .param p6, "beta"    # [D

    .prologue
    .line 582
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 583
    iput-object p1, p0, Lorg/apache/commons/math3/fitting/leastsquares/LevenbergMarquardtOptimizer$InternalData;->weightedJacobian:[[D

    .line 584
    iput-object p2, p0, Lorg/apache/commons/math3/fitting/leastsquares/LevenbergMarquardtOptimizer$InternalData;->permutation:[I

    .line 585
    iput p3, p0, Lorg/apache/commons/math3/fitting/leastsquares/LevenbergMarquardtOptimizer$InternalData;->rank:I

    .line 586
    iput-object p4, p0, Lorg/apache/commons/math3/fitting/leastsquares/LevenbergMarquardtOptimizer$InternalData;->diagR:[D

    .line 587
    iput-object p5, p0, Lorg/apache/commons/math3/fitting/leastsquares/LevenbergMarquardtOptimizer$InternalData;->jacNorm:[D

    .line 588
    iput-object p6, p0, Lorg/apache/commons/math3/fitting/leastsquares/LevenbergMarquardtOptimizer$InternalData;->beta:[D

    .line 589
    return-void
.end method

.method static synthetic access$000(Lorg/apache/commons/math3/fitting/leastsquares/LevenbergMarquardtOptimizer$InternalData;)[[D
    .locals 1
    .param p0, "x0"    # Lorg/apache/commons/math3/fitting/leastsquares/LevenbergMarquardtOptimizer$InternalData;

    .prologue
    .line 555
    iget-object v0, p0, Lorg/apache/commons/math3/fitting/leastsquares/LevenbergMarquardtOptimizer$InternalData;->weightedJacobian:[[D

    return-object v0
.end method

.method static synthetic access$100(Lorg/apache/commons/math3/fitting/leastsquares/LevenbergMarquardtOptimizer$InternalData;)[I
    .locals 1
    .param p0, "x0"    # Lorg/apache/commons/math3/fitting/leastsquares/LevenbergMarquardtOptimizer$InternalData;

    .prologue
    .line 555
    iget-object v0, p0, Lorg/apache/commons/math3/fitting/leastsquares/LevenbergMarquardtOptimizer$InternalData;->permutation:[I

    return-object v0
.end method

.method static synthetic access$200(Lorg/apache/commons/math3/fitting/leastsquares/LevenbergMarquardtOptimizer$InternalData;)[D
    .locals 1
    .param p0, "x0"    # Lorg/apache/commons/math3/fitting/leastsquares/LevenbergMarquardtOptimizer$InternalData;

    .prologue
    .line 555
    iget-object v0, p0, Lorg/apache/commons/math3/fitting/leastsquares/LevenbergMarquardtOptimizer$InternalData;->diagR:[D

    return-object v0
.end method

.method static synthetic access$300(Lorg/apache/commons/math3/fitting/leastsquares/LevenbergMarquardtOptimizer$InternalData;)[D
    .locals 1
    .param p0, "x0"    # Lorg/apache/commons/math3/fitting/leastsquares/LevenbergMarquardtOptimizer$InternalData;

    .prologue
    .line 555
    iget-object v0, p0, Lorg/apache/commons/math3/fitting/leastsquares/LevenbergMarquardtOptimizer$InternalData;->jacNorm:[D

    return-object v0
.end method

.method static synthetic access$400(Lorg/apache/commons/math3/fitting/leastsquares/LevenbergMarquardtOptimizer$InternalData;)I
    .locals 1
    .param p0, "x0"    # Lorg/apache/commons/math3/fitting/leastsquares/LevenbergMarquardtOptimizer$InternalData;

    .prologue
    .line 555
    iget v0, p0, Lorg/apache/commons/math3/fitting/leastsquares/LevenbergMarquardtOptimizer$InternalData;->rank:I

    return v0
.end method

.method static synthetic access$500(Lorg/apache/commons/math3/fitting/leastsquares/LevenbergMarquardtOptimizer$InternalData;)[D
    .locals 1
    .param p0, "x0"    # Lorg/apache/commons/math3/fitting/leastsquares/LevenbergMarquardtOptimizer$InternalData;

    .prologue
    .line 555
    iget-object v0, p0, Lorg/apache/commons/math3/fitting/leastsquares/LevenbergMarquardtOptimizer$InternalData;->beta:[D

    return-object v0
.end method
