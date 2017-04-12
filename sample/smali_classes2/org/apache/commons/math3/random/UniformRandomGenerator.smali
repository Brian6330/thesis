.class public Lorg/apache/commons/math3/random/UniformRandomGenerator;
.super Ljava/lang/Object;
.source "UniformRandomGenerator.java"

# interfaces
.implements Lorg/apache/commons/math3/random/NormalizedRandomGenerator;


# static fields
.field private static final SQRT3:D


# instance fields
.field private final generator:Lorg/apache/commons/math3/random/RandomGenerator;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 36
    const-wide/high16 v0, 0x4008000000000000L    # 3.0

    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v0

    sput-wide v0, Lorg/apache/commons/math3/random/UniformRandomGenerator;->SQRT3:D

    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/random/RandomGenerator;)V
    .locals 0
    .param p1, "generator"    # Lorg/apache/commons/math3/random/RandomGenerator;

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Lorg/apache/commons/math3/random/UniformRandomGenerator;->generator:Lorg/apache/commons/math3/random/RandomGenerator;

    .line 46
    return-void
.end method


# virtual methods
.method public nextNormalizedDouble()D
    .locals 6

    .prologue
    .line 54
    sget-wide v0, Lorg/apache/commons/math3/random/UniformRandomGenerator;->SQRT3:D

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    iget-object v4, p0, Lorg/apache/commons/math3/random/UniformRandomGenerator;->generator:Lorg/apache/commons/math3/random/RandomGenerator;

    invoke-interface {v4}, Lorg/apache/commons/math3/random/RandomGenerator;->nextDouble()D

    move-result-wide v4

    mul-double/2addr v2, v4

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v2, v4

    mul-double/2addr v0, v2

    return-wide v0
.end method
