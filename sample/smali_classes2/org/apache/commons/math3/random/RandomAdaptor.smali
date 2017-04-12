.class public Lorg/apache/commons/math3/random/RandomAdaptor;
.super Ljava/util/Random;
.source "RandomAdaptor.java"

# interfaces
.implements Lorg/apache/commons/math3/random/RandomGenerator;


# static fields
.field private static final serialVersionUID:J = 0x20029f8358de5c39L


# instance fields
.field private final randomGenerator:Lorg/apache/commons/math3/random/RandomGenerator;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/util/Random;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/math3/random/RandomAdaptor;->randomGenerator:Lorg/apache/commons/math3/random/RandomGenerator;

    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/random/RandomGenerator;)V
    .locals 0
    .param p1, "randomGenerator"    # Lorg/apache/commons/math3/random/RandomGenerator;

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/util/Random;-><init>()V

    .line 47
    iput-object p1, p0, Lorg/apache/commons/math3/random/RandomAdaptor;->randomGenerator:Lorg/apache/commons/math3/random/RandomGenerator;

    .line 48
    return-void
.end method

.method public static createAdaptor(Lorg/apache/commons/math3/random/RandomGenerator;)Ljava/util/Random;
    .locals 1
    .param p0, "randomGenerator"    # Lorg/apache/commons/math3/random/RandomGenerator;

    .prologue
    .line 58
    new-instance v0, Lorg/apache/commons/math3/random/RandomAdaptor;

    invoke-direct {v0, p0}, Lorg/apache/commons/math3/random/RandomAdaptor;-><init>(Lorg/apache/commons/math3/random/RandomGenerator;)V

    return-object v0
.end method


# virtual methods
.method public nextBoolean()Z
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lorg/apache/commons/math3/random/RandomAdaptor;->randomGenerator:Lorg/apache/commons/math3/random/RandomGenerator;

    invoke-interface {v0}, Lorg/apache/commons/math3/random/RandomGenerator;->nextBoolean()Z

    move-result v0

    return v0
.end method

.method public nextBytes([B)V
    .locals 1
    .param p1, "bytes"    # [B

    .prologue
    .line 85
    iget-object v0, p0, Lorg/apache/commons/math3/random/RandomAdaptor;->randomGenerator:Lorg/apache/commons/math3/random/RandomGenerator;

    invoke-interface {v0, p1}, Lorg/apache/commons/math3/random/RandomGenerator;->nextBytes([B)V

    .line 86
    return-void
.end method

.method public nextDouble()D
    .locals 2

    .prologue
    .line 99
    iget-object v0, p0, Lorg/apache/commons/math3/random/RandomAdaptor;->randomGenerator:Lorg/apache/commons/math3/random/RandomGenerator;

    invoke-interface {v0}, Lorg/apache/commons/math3/random/RandomGenerator;->nextDouble()D

    move-result-wide v0

    return-wide v0
.end method

.method public nextFloat()F
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lorg/apache/commons/math3/random/RandomAdaptor;->randomGenerator:Lorg/apache/commons/math3/random/RandomGenerator;

    invoke-interface {v0}, Lorg/apache/commons/math3/random/RandomGenerator;->nextFloat()F

    move-result v0

    return v0
.end method

.method public nextGaussian()D
    .locals 2

    .prologue
    .line 128
    iget-object v0, p0, Lorg/apache/commons/math3/random/RandomAdaptor;->randomGenerator:Lorg/apache/commons/math3/random/RandomGenerator;

    invoke-interface {v0}, Lorg/apache/commons/math3/random/RandomGenerator;->nextGaussian()D

    move-result-wide v0

    return-wide v0
.end method

.method public nextInt()I
    .locals 1

    .prologue
    .line 142
    iget-object v0, p0, Lorg/apache/commons/math3/random/RandomAdaptor;->randomGenerator:Lorg/apache/commons/math3/random/RandomGenerator;

    invoke-interface {v0}, Lorg/apache/commons/math3/random/RandomGenerator;->nextInt()I

    move-result v0

    return v0
.end method

.method public nextInt(I)I
    .locals 1
    .param p1, "n"    # I

    .prologue
    .line 158
    iget-object v0, p0, Lorg/apache/commons/math3/random/RandomAdaptor;->randomGenerator:Lorg/apache/commons/math3/random/RandomGenerator;

    invoke-interface {v0, p1}, Lorg/apache/commons/math3/random/RandomGenerator;->nextInt(I)I

    move-result v0

    return v0
.end method

.method public nextLong()J
    .locals 2

    .prologue
    .line 172
    iget-object v0, p0, Lorg/apache/commons/math3/random/RandomAdaptor;->randomGenerator:Lorg/apache/commons/math3/random/RandomGenerator;

    invoke-interface {v0}, Lorg/apache/commons/math3/random/RandomGenerator;->nextLong()J

    move-result-wide v0

    return-wide v0
.end method

.method public setSeed(I)V
    .locals 1
    .param p1, "seed"    # I

    .prologue
    .line 177
    iget-object v0, p0, Lorg/apache/commons/math3/random/RandomAdaptor;->randomGenerator:Lorg/apache/commons/math3/random/RandomGenerator;

    if-eqz v0, :cond_0

    .line 178
    iget-object v0, p0, Lorg/apache/commons/math3/random/RandomAdaptor;->randomGenerator:Lorg/apache/commons/math3/random/RandomGenerator;

    invoke-interface {v0, p1}, Lorg/apache/commons/math3/random/RandomGenerator;->setSeed(I)V

    .line 180
    :cond_0
    return-void
.end method

.method public setSeed(J)V
    .locals 1
    .param p1, "seed"    # J

    .prologue
    .line 192
    iget-object v0, p0, Lorg/apache/commons/math3/random/RandomAdaptor;->randomGenerator:Lorg/apache/commons/math3/random/RandomGenerator;

    if-eqz v0, :cond_0

    .line 193
    iget-object v0, p0, Lorg/apache/commons/math3/random/RandomAdaptor;->randomGenerator:Lorg/apache/commons/math3/random/RandomGenerator;

    invoke-interface {v0, p1, p2}, Lorg/apache/commons/math3/random/RandomGenerator;->setSeed(J)V

    .line 195
    :cond_0
    return-void
.end method

.method public setSeed([I)V
    .locals 1
    .param p1, "seed"    # [I

    .prologue
    .line 184
    iget-object v0, p0, Lorg/apache/commons/math3/random/RandomAdaptor;->randomGenerator:Lorg/apache/commons/math3/random/RandomGenerator;

    if-eqz v0, :cond_0

    .line 185
    iget-object v0, p0, Lorg/apache/commons/math3/random/RandomAdaptor;->randomGenerator:Lorg/apache/commons/math3/random/RandomGenerator;

    invoke-interface {v0, p1}, Lorg/apache/commons/math3/random/RandomGenerator;->setSeed([I)V

    .line 187
    :cond_0
    return-void
.end method
