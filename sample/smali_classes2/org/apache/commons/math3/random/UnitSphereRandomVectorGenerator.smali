.class public Lorg/apache/commons/math3/random/UnitSphereRandomVectorGenerator;
.super Ljava/lang/Object;
.source "UnitSphereRandomVectorGenerator.java"

# interfaces
.implements Lorg/apache/commons/math3/random/RandomVectorGenerator;


# instance fields
.field private final dimension:I

.field private final rand:Lorg/apache/commons/math3/random/RandomGenerator;


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .param p1, "dimension"    # I

    .prologue
    .line 56
    new-instance v0, Lorg/apache/commons/math3/random/MersenneTwister;

    invoke-direct {v0}, Lorg/apache/commons/math3/random/MersenneTwister;-><init>()V

    invoke-direct {p0, p1, v0}, Lorg/apache/commons/math3/random/UnitSphereRandomVectorGenerator;-><init>(ILorg/apache/commons/math3/random/RandomGenerator;)V

    .line 57
    return-void
.end method

.method public constructor <init>(ILorg/apache/commons/math3/random/RandomGenerator;)V
    .locals 0
    .param p1, "dimension"    # I
    .param p2, "rand"    # Lorg/apache/commons/math3/random/RandomGenerator;

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput p1, p0, Lorg/apache/commons/math3/random/UnitSphereRandomVectorGenerator;->dimension:I

    .line 47
    iput-object p2, p0, Lorg/apache/commons/math3/random/UnitSphereRandomVectorGenerator;->rand:Lorg/apache/commons/math3/random/RandomGenerator;

    .line 48
    return-void
.end method


# virtual methods
.method public nextVector()[D
    .locals 12

    .prologue
    .line 61
    iget v8, p0, Lorg/apache/commons/math3/random/UnitSphereRandomVectorGenerator;->dimension:I

    new-array v5, v8, [D

    .line 66
    .local v5, "v":[D
    const-wide/16 v6, 0x0

    .line 67
    .local v6, "normSq":D
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    iget v8, p0, Lorg/apache/commons/math3/random/UnitSphereRandomVectorGenerator;->dimension:I

    if-ge v4, v8, :cond_0

    .line 68
    iget-object v8, p0, Lorg/apache/commons/math3/random/UnitSphereRandomVectorGenerator;->rand:Lorg/apache/commons/math3/random/RandomGenerator;

    invoke-interface {v8}, Lorg/apache/commons/math3/random/RandomGenerator;->nextGaussian()D

    move-result-wide v0

    .line 69
    .local v0, "comp":D
    aput-wide v0, v5, v4

    .line 70
    mul-double v8, v0, v0

    add-double/2addr v6, v8

    .line 67
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 73
    .end local v0    # "comp":D
    :cond_0
    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    invoke-static {v6, v7}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v10

    div-double v2, v8, v10

    .line 74
    .local v2, "f":D
    const/4 v4, 0x0

    :goto_1
    iget v8, p0, Lorg/apache/commons/math3/random/UnitSphereRandomVectorGenerator;->dimension:I

    if-ge v4, v8, :cond_1

    .line 75
    aget-wide v8, v5, v4

    mul-double/2addr v8, v2

    aput-wide v8, v5, v4

    .line 74
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 78
    :cond_1
    return-object v5
.end method
