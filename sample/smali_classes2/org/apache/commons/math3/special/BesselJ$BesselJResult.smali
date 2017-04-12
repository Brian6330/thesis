.class public Lorg/apache/commons/math3/special/BesselJ$BesselJResult;
.super Ljava/lang/Object;
.source "BesselJ.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/math3/special/BesselJ;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BesselJResult"
.end annotation


# instance fields
.field private final nVals:I

.field private final vals:[D


# direct methods
.method public constructor <init>([DI)V
    .locals 1
    .param p1, "b"    # [D
    .param p2, "n"    # I

    .prologue
    .line 206
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 207
    array-length v0, p1

    invoke-static {p1, v0}, Lorg/apache/commons/math3/util/MathArrays;->copyOf([DI)[D

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/math3/special/BesselJ$BesselJResult;->vals:[D

    .line 208
    iput p2, p0, Lorg/apache/commons/math3/special/BesselJ$BesselJResult;->nVals:I

    .line 209
    return-void
.end method

.method static synthetic access$000(Lorg/apache/commons/math3/special/BesselJ$BesselJResult;)I
    .locals 1
    .param p0, "x0"    # Lorg/apache/commons/math3/special/BesselJ$BesselJResult;

    .prologue
    .line 192
    iget v0, p0, Lorg/apache/commons/math3/special/BesselJ$BesselJResult;->nVals:I

    return v0
.end method

.method static synthetic access$100(Lorg/apache/commons/math3/special/BesselJ$BesselJResult;)[D
    .locals 1
    .param p0, "x0"    # Lorg/apache/commons/math3/special/BesselJ$BesselJResult;

    .prologue
    .line 192
    iget-object v0, p0, Lorg/apache/commons/math3/special/BesselJ$BesselJResult;->vals:[D

    return-object v0
.end method


# virtual methods
.method public getVals()[D
    .locals 2

    .prologue
    .line 215
    iget-object v0, p0, Lorg/apache/commons/math3/special/BesselJ$BesselJResult;->vals:[D

    iget-object v1, p0, Lorg/apache/commons/math3/special/BesselJ$BesselJResult;->vals:[D

    array-length v1, v1

    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/MathArrays;->copyOf([DI)[D

    move-result-object v0

    return-object v0
.end method

.method public getnVals()I
    .locals 1

    .prologue
    .line 223
    iget v0, p0, Lorg/apache/commons/math3/special/BesselJ$BesselJResult;->nVals:I

    return v0
.end method
