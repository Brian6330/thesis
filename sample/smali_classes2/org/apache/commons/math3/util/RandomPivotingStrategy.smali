.class public Lorg/apache/commons/math3/util/RandomPivotingStrategy;
.super Ljava/lang/Object;
.source "RandomPivotingStrategy.java"

# interfaces
.implements Lorg/apache/commons/math3/util/PivotingStrategyInterface;
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x13352a9L


# instance fields
.field private final random:Lorg/apache/commons/math3/random/RandomGenerator;


# direct methods
.method public constructor <init>(Lorg/apache/commons/math3/random/RandomGenerator;)V
    .locals 0
    .param p1, "random"    # Lorg/apache/commons/math3/random/RandomGenerator;

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lorg/apache/commons/math3/util/RandomPivotingStrategy;->random:Lorg/apache/commons/math3/random/RandomGenerator;

    .line 42
    return-void
.end method


# virtual methods
.method public pivotIndex([DII)I
    .locals 2
    .param p1, "work"    # [D
    .param p2, "begin"    # I
    .param p3, "end"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathIllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 53
    sub-int v0, p3, p2

    invoke-static {p1, p2, v0}, Lorg/apache/commons/math3/util/MathArrays;->verifyValues([DII)Z

    .line 54
    iget-object v0, p0, Lorg/apache/commons/math3/util/RandomPivotingStrategy;->random:Lorg/apache/commons/math3/random/RandomGenerator;

    sub-int v1, p3, p2

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Lorg/apache/commons/math3/random/RandomGenerator;->nextInt(I)I

    move-result v0

    add-int/2addr v0, p2

    return v0
.end method
