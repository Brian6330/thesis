.class Lorg/apache/commons/math3/analysis/interpolation/MicrosphereInterpolatingFunction$MicrosphereSurfaceElement;
.super Ljava/lang/Object;
.source "MicrosphereInterpolatingFunction.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/math3/analysis/interpolation/MicrosphereInterpolatingFunction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MicrosphereSurfaceElement"
.end annotation


# instance fields
.field private brightestIllumination:D

.field private brightestSample:Ljava/util/Map$Entry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map$Entry",
            "<",
            "Lorg/apache/commons/math3/linear/RealVector;",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation
.end field

.field private final normal:Lorg/apache/commons/math3/linear/RealVector;


# direct methods
.method constructor <init>([D)V
    .locals 1
    .param p1, "n"    # [D

    .prologue
    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    new-instance v0, Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-direct {v0, p1}, Lorg/apache/commons/math3/linear/ArrayRealVector;-><init>([D)V

    iput-object v0, p0, Lorg/apache/commons/math3/analysis/interpolation/MicrosphereInterpolatingFunction$MicrosphereSurfaceElement;->normal:Lorg/apache/commons/math3/linear/RealVector;

    .line 78
    return-void
.end method


# virtual methods
.method illumination()D
    .locals 2

    .prologue
    .line 114
    iget-wide v0, p0, Lorg/apache/commons/math3/analysis/interpolation/MicrosphereInterpolatingFunction$MicrosphereSurfaceElement;->brightestIllumination:D

    return-wide v0
.end method

.method normal()Lorg/apache/commons/math3/linear/RealVector;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lorg/apache/commons/math3/analysis/interpolation/MicrosphereInterpolatingFunction$MicrosphereSurfaceElement;->normal:Lorg/apache/commons/math3/linear/RealVector;

    return-object v0
.end method

.method reset()V
    .locals 2

    .prologue
    .line 92
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/apache/commons/math3/analysis/interpolation/MicrosphereInterpolatingFunction$MicrosphereSurfaceElement;->brightestIllumination:D

    .line 93
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/math3/analysis/interpolation/MicrosphereInterpolatingFunction$MicrosphereSurfaceElement;->brightestSample:Ljava/util/Map$Entry;

    .line 94
    return-void
.end method

.method sample()Ljava/util/Map$Entry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry",
            "<",
            "Lorg/apache/commons/math3/linear/RealVector;",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation

    .prologue
    .line 122
    iget-object v0, p0, Lorg/apache/commons/math3/analysis/interpolation/MicrosphereInterpolatingFunction$MicrosphereSurfaceElement;->brightestSample:Ljava/util/Map$Entry;

    return-object v0
.end method

.method store(DLjava/util/Map$Entry;)V
    .locals 3
    .param p1, "illuminationFromSample"    # D
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(D",
            "Ljava/util/Map$Entry",
            "<",
            "Lorg/apache/commons/math3/linear/RealVector;",
            "Ljava/lang/Double;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 103
    .local p3, "sample":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lorg/apache/commons/math3/linear/RealVector;Ljava/lang/Double;>;"
    iget-wide v0, p0, Lorg/apache/commons/math3/analysis/interpolation/MicrosphereInterpolatingFunction$MicrosphereSurfaceElement;->brightestIllumination:D

    cmpl-double v0, p1, v0

    if-lez v0, :cond_0

    .line 104
    iput-wide p1, p0, Lorg/apache/commons/math3/analysis/interpolation/MicrosphereInterpolatingFunction$MicrosphereSurfaceElement;->brightestIllumination:D

    .line 105
    iput-object p3, p0, Lorg/apache/commons/math3/analysis/interpolation/MicrosphereInterpolatingFunction$MicrosphereSurfaceElement;->brightestSample:Ljava/util/Map$Entry;

    .line 107
    :cond_0
    return-void
.end method
