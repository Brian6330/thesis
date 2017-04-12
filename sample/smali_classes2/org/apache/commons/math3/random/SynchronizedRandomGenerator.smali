.class public Lorg/apache/commons/math3/random/SynchronizedRandomGenerator;
.super Ljava/lang/Object;
.source "SynchronizedRandomGenerator.java"

# interfaces
.implements Lorg/apache/commons/math3/random/RandomGenerator;


# instance fields
.field private final wrapped:Lorg/apache/commons/math3/random/RandomGenerator;


# direct methods
.method public constructor <init>(Lorg/apache/commons/math3/random/RandomGenerator;)V
    .locals 0
    .param p1, "rng"    # Lorg/apache/commons/math3/random/RandomGenerator;

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lorg/apache/commons/math3/random/SynchronizedRandomGenerator;->wrapped:Lorg/apache/commons/math3/random/RandomGenerator;

    .line 43
    return-void
.end method


# virtual methods
.method public declared-synchronized nextBoolean()Z
    .locals 1

    .prologue
    .line 98
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/apache/commons/math3/random/SynchronizedRandomGenerator;->wrapped:Lorg/apache/commons/math3/random/RandomGenerator;

    invoke-interface {v0}, Lorg/apache/commons/math3/random/RandomGenerator;->nextBoolean()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized nextBytes([B)V
    .locals 1
    .param p1, "bytes"    # [B

    .prologue
    .line 70
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/apache/commons/math3/random/SynchronizedRandomGenerator;->wrapped:Lorg/apache/commons/math3/random/RandomGenerator;

    invoke-interface {v0, p1}, Lorg/apache/commons/math3/random/RandomGenerator;->nextBytes([B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 71
    monitor-exit p0

    return-void

    .line 70
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized nextDouble()D
    .locals 2

    .prologue
    .line 112
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/apache/commons/math3/random/SynchronizedRandomGenerator;->wrapped:Lorg/apache/commons/math3/random/RandomGenerator;

    invoke-interface {v0}, Lorg/apache/commons/math3/random/RandomGenerator;->nextDouble()D
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized nextFloat()F
    .locals 1

    .prologue
    .line 105
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/apache/commons/math3/random/SynchronizedRandomGenerator;->wrapped:Lorg/apache/commons/math3/random/RandomGenerator;

    invoke-interface {v0}, Lorg/apache/commons/math3/random/RandomGenerator;->nextFloat()F
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized nextGaussian()D
    .locals 2

    .prologue
    .line 119
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/apache/commons/math3/random/SynchronizedRandomGenerator;->wrapped:Lorg/apache/commons/math3/random/RandomGenerator;

    invoke-interface {v0}, Lorg/apache/commons/math3/random/RandomGenerator;->nextGaussian()D
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized nextInt()I
    .locals 1

    .prologue
    .line 77
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/apache/commons/math3/random/SynchronizedRandomGenerator;->wrapped:Lorg/apache/commons/math3/random/RandomGenerator;

    invoke-interface {v0}, Lorg/apache/commons/math3/random/RandomGenerator;->nextInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized nextInt(I)I
    .locals 1
    .param p1, "n"    # I

    .prologue
    .line 84
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/apache/commons/math3/random/SynchronizedRandomGenerator;->wrapped:Lorg/apache/commons/math3/random/RandomGenerator;

    invoke-interface {v0, p1}, Lorg/apache/commons/math3/random/RandomGenerator;->nextInt(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized nextLong()J
    .locals 2

    .prologue
    .line 91
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/apache/commons/math3/random/SynchronizedRandomGenerator;->wrapped:Lorg/apache/commons/math3/random/RandomGenerator;

    invoke-interface {v0}, Lorg/apache/commons/math3/random/RandomGenerator;->nextLong()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setSeed(I)V
    .locals 1
    .param p1, "seed"    # I

    .prologue
    .line 49
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/apache/commons/math3/random/SynchronizedRandomGenerator;->wrapped:Lorg/apache/commons/math3/random/RandomGenerator;

    invoke-interface {v0, p1}, Lorg/apache/commons/math3/random/RandomGenerator;->setSeed(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 50
    monitor-exit p0

    return-void

    .line 49
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setSeed(J)V
    .locals 1
    .param p1, "seed"    # J

    .prologue
    .line 63
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/apache/commons/math3/random/SynchronizedRandomGenerator;->wrapped:Lorg/apache/commons/math3/random/RandomGenerator;

    invoke-interface {v0, p1, p2}, Lorg/apache/commons/math3/random/RandomGenerator;->setSeed(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 64
    monitor-exit p0

    return-void

    .line 63
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setSeed([I)V
    .locals 1
    .param p1, "seed"    # [I

    .prologue
    .line 56
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/apache/commons/math3/random/SynchronizedRandomGenerator;->wrapped:Lorg/apache/commons/math3/random/RandomGenerator;

    invoke-interface {v0, p1}, Lorg/apache/commons/math3/random/RandomGenerator;->setSeed([I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 57
    monitor-exit p0

    return-void

    .line 56
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
