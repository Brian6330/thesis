.class public Lorg/apache/commons/math3/analysis/interpolation/MicrosphereInterpolator;
.super Ljava/lang/Object;
.source "MicrosphereInterpolator.java"

# interfaces
.implements Lorg/apache/commons/math3/analysis/interpolation/MultivariateInterpolator;


# static fields
.field public static final DEFAULT_BRIGHTNESS_EXPONENT:I = 0x2

.field public static final DEFAULT_MICROSPHERE_ELEMENTS:I = 0x7d0


# instance fields
.field private final brightnessExponent:I

.field private final microsphereElements:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 62
    const/16 v0, 0x7d0

    const/4 v1, 0x2

    invoke-direct {p0, v0, v1}, Lorg/apache/commons/math3/analysis/interpolation/MicrosphereInterpolator;-><init>(II)V

    .line 63
    return-void
.end method

.method public constructor <init>(II)V
    .locals 2
    .param p1, "elements"    # I
    .param p2, "exponent"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NotPositiveException;,
            Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;
        }
    .end annotation

    .prologue
    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    if-gez p2, :cond_0

    .line 77
    new-instance v0, Lorg/apache/commons/math3/exception/NotPositiveException;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/commons/math3/exception/NotPositiveException;-><init>(Ljava/lang/Number;)V

    throw v0

    .line 79
    :cond_0
    if-gtz p1, :cond_1

    .line 80
    new-instance v0, Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;-><init>(Ljava/lang/Number;)V

    throw v0

    .line 83
    :cond_1
    iput p1, p0, Lorg/apache/commons/math3/analysis/interpolation/MicrosphereInterpolator;->microsphereElements:I

    .line 84
    iput p2, p0, Lorg/apache/commons/math3/analysis/interpolation/MicrosphereInterpolator;->brightnessExponent:I

    .line 85
    return-void
.end method


# virtual methods
.method public interpolate([[D[D)Lorg/apache/commons/math3/analysis/MultivariateFunction;
    .locals 6
    .param p1, "xval"    # [[D
    .param p2, "yval"    # [D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;,
            Lorg/apache/commons/math3/exception/NoDataException;,
            Lorg/apache/commons/math3/exception/NullArgumentException;
        }
    .end annotation

    .prologue
    .line 95
    new-instance v5, Lorg/apache/commons/math3/random/UnitSphereRandomVectorGenerator;

    const/4 v0, 0x0

    aget-object v0, p1, v0

    array-length v0, v0

    invoke-direct {v5, v0}, Lorg/apache/commons/math3/random/UnitSphereRandomVectorGenerator;-><init>(I)V

    .line 97
    .local v5, "rand":Lorg/apache/commons/math3/random/UnitSphereRandomVectorGenerator;
    new-instance v0, Lorg/apache/commons/math3/analysis/interpolation/MicrosphereInterpolatingFunction;

    iget v3, p0, Lorg/apache/commons/math3/analysis/interpolation/MicrosphereInterpolator;->brightnessExponent:I

    iget v4, p0, Lorg/apache/commons/math3/analysis/interpolation/MicrosphereInterpolator;->microsphereElements:I

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/math3/analysis/interpolation/MicrosphereInterpolatingFunction;-><init>([[D[DIILorg/apache/commons/math3/random/UnitSphereRandomVectorGenerator;)V

    return-object v0
.end method
