.class final Lorg/apache/commons/math3/random/RandomGeneratorFactory$1;
.super Ljava/lang/Object;
.source "RandomGeneratorFactory.java"

# interfaces
.implements Lorg/apache/commons/math3/random/RandomGenerator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/commons/math3/random/RandomGeneratorFactory;->createRandomGenerator(Ljava/util/Random;)Lorg/apache/commons/math3/random/RandomGenerator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$rng:Ljava/util/Random;


# direct methods
.method constructor <init>(Ljava/util/Random;)V
    .locals 0

    .prologue
    .line 42
    iput-object p1, p0, Lorg/apache/commons/math3/random/RandomGeneratorFactory$1;->val$rng:Ljava/util/Random;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public nextBoolean()Z
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lorg/apache/commons/math3/random/RandomGeneratorFactory$1;->val$rng:Ljava/util/Random;

    invoke-virtual {v0}, Ljava/util/Random;->nextBoolean()Z

    move-result v0

    return v0
.end method

.method public nextBytes([B)V
    .locals 1
    .param p1, "bytes"    # [B

    .prologue
    .line 60
    iget-object v0, p0, Lorg/apache/commons/math3/random/RandomGeneratorFactory$1;->val$rng:Ljava/util/Random;

    invoke-virtual {v0, p1}, Ljava/util/Random;->nextBytes([B)V

    .line 61
    return-void
.end method

.method public nextDouble()D
    .locals 2

    .prologue
    .line 93
    iget-object v0, p0, Lorg/apache/commons/math3/random/RandomGeneratorFactory$1;->val$rng:Ljava/util/Random;

    invoke-virtual {v0}, Ljava/util/Random;->nextDouble()D

    move-result-wide v0

    return-wide v0
.end method

.method public nextFloat()F
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lorg/apache/commons/math3/random/RandomGeneratorFactory$1;->val$rng:Ljava/util/Random;

    invoke-virtual {v0}, Ljava/util/Random;->nextFloat()F

    move-result v0

    return v0
.end method

.method public nextGaussian()D
    .locals 2

    .prologue
    .line 98
    iget-object v0, p0, Lorg/apache/commons/math3/random/RandomGeneratorFactory$1;->val$rng:Ljava/util/Random;

    invoke-virtual {v0}, Ljava/util/Random;->nextGaussian()D

    move-result-wide v0

    return-wide v0
.end method

.method public nextInt()I
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lorg/apache/commons/math3/random/RandomGeneratorFactory$1;->val$rng:Ljava/util/Random;

    invoke-virtual {v0}, Ljava/util/Random;->nextInt()I

    move-result v0

    return v0
.end method

.method public nextInt(I)I
    .locals 2
    .param p1, "n"    # I

    .prologue
    .line 70
    if-gtz p1, :cond_0

    .line 71
    new-instance v0, Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;-><init>(Ljava/lang/Number;)V

    throw v0

    .line 73
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/math3/random/RandomGeneratorFactory$1;->val$rng:Ljava/util/Random;

    invoke-virtual {v0, p1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    return v0
.end method

.method public nextLong()J
    .locals 2

    .prologue
    .line 78
    iget-object v0, p0, Lorg/apache/commons/math3/random/RandomGeneratorFactory$1;->val$rng:Ljava/util/Random;

    invoke-virtual {v0}, Ljava/util/Random;->nextLong()J

    move-result-wide v0

    return-wide v0
.end method

.method public setSeed(I)V
    .locals 4
    .param p1, "seed"    # I

    .prologue
    .line 45
    iget-object v0, p0, Lorg/apache/commons/math3/random/RandomGeneratorFactory$1;->val$rng:Ljava/util/Random;

    int-to-long v2, p1

    invoke-virtual {v0, v2, v3}, Ljava/util/Random;->setSeed(J)V

    .line 46
    return-void
.end method

.method public setSeed(J)V
    .locals 1
    .param p1, "seed"    # J

    .prologue
    .line 55
    iget-object v0, p0, Lorg/apache/commons/math3/random/RandomGeneratorFactory$1;->val$rng:Ljava/util/Random;

    invoke-virtual {v0, p1, p2}, Ljava/util/Random;->setSeed(J)V

    .line 56
    return-void
.end method

.method public setSeed([I)V
    .locals 4
    .param p1, "seed"    # [I

    .prologue
    .line 50
    iget-object v0, p0, Lorg/apache/commons/math3/random/RandomGeneratorFactory$1;->val$rng:Ljava/util/Random;

    invoke-static {p1}, Lorg/apache/commons/math3/random/RandomGeneratorFactory;->convertToLong([I)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/util/Random;->setSeed(J)V

    .line 51
    return-void
.end method
