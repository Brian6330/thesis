.class public Lorg/apache/commons/math3/analysis/integration/LegendreGaussIntegrator;
.super Lorg/apache/commons/math3/analysis/integration/BaseAbstractUnivariateIntegrator;
.source "LegendreGaussIntegrator.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final ABSCISSAS_2:[D

.field private static final ABSCISSAS_3:[D

.field private static final ABSCISSAS_4:[D

.field private static final ABSCISSAS_5:[D

.field private static final WEIGHTS_2:[D

.field private static final WEIGHTS_3:[D

.field private static final WEIGHTS_4:[D

.field private static final WEIGHTS_5:[D


# instance fields
.field private final abscissas:[D

.field private final weights:[D


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    .line 58
    const/4 v0, 0x2

    new-array v0, v0, [D

    const/4 v1, 0x0

    const-wide/high16 v2, -0x4010000000000000L    # -1.0

    const-wide/high16 v4, 0x4008000000000000L    # 3.0

    invoke-static {v4, v5}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v4

    div-double/2addr v2, v4

    aput-wide v2, v0, v1

    const/4 v1, 0x1

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v4, 0x4008000000000000L    # 3.0

    invoke-static {v4, v5}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v4

    div-double/2addr v2, v4

    aput-wide v2, v0, v1

    sput-object v0, Lorg/apache/commons/math3/analysis/integration/LegendreGaussIntegrator;->ABSCISSAS_2:[D

    .line 64
    const/4 v0, 0x2

    new-array v0, v0, [D

    fill-array-data v0, :array_0

    sput-object v0, Lorg/apache/commons/math3/analysis/integration/LegendreGaussIntegrator;->WEIGHTS_2:[D

    .line 70
    const/4 v0, 0x3

    new-array v0, v0, [D

    const/4 v1, 0x0

    const-wide v2, 0x3fe3333333333333L    # 0.6

    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v2

    neg-double v2, v2

    aput-wide v2, v0, v1

    const/4 v1, 0x1

    const-wide/16 v2, 0x0

    aput-wide v2, v0, v1

    const/4 v1, 0x2

    const-wide v2, 0x3fe3333333333333L    # 0.6

    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v2

    aput-wide v2, v0, v1

    sput-object v0, Lorg/apache/commons/math3/analysis/integration/LegendreGaussIntegrator;->ABSCISSAS_3:[D

    .line 77
    const/4 v0, 0x3

    new-array v0, v0, [D

    fill-array-data v0, :array_1

    sput-object v0, Lorg/apache/commons/math3/analysis/integration/LegendreGaussIntegrator;->WEIGHTS_3:[D

    .line 84
    const/4 v0, 0x4

    new-array v0, v0, [D

    const/4 v1, 0x0

    const-wide/high16 v2, 0x402e000000000000L    # 15.0

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    const-wide/high16 v6, 0x403e000000000000L    # 30.0

    invoke-static {v6, v7}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v6

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    const-wide v4, 0x4041800000000000L    # 35.0

    div-double/2addr v2, v4

    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v2

    neg-double v2, v2

    aput-wide v2, v0, v1

    const/4 v1, 0x1

    const-wide/high16 v2, 0x402e000000000000L    # 15.0

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    const-wide/high16 v6, 0x403e000000000000L    # 30.0

    invoke-static {v6, v7}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v6

    mul-double/2addr v4, v6

    sub-double/2addr v2, v4

    const-wide v4, 0x4041800000000000L    # 35.0

    div-double/2addr v2, v4

    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v2

    neg-double v2, v2

    aput-wide v2, v0, v1

    const/4 v1, 0x2

    const-wide/high16 v2, 0x402e000000000000L    # 15.0

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    const-wide/high16 v6, 0x403e000000000000L    # 30.0

    invoke-static {v6, v7}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v6

    mul-double/2addr v4, v6

    sub-double/2addr v2, v4

    const-wide v4, 0x4041800000000000L    # 35.0

    div-double/2addr v2, v4

    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v2

    aput-wide v2, v0, v1

    const/4 v1, 0x3

    const-wide/high16 v2, 0x402e000000000000L    # 15.0

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    const-wide/high16 v6, 0x403e000000000000L    # 30.0

    invoke-static {v6, v7}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v6

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    const-wide v4, 0x4041800000000000L    # 35.0

    div-double/2addr v2, v4

    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v2

    aput-wide v2, v0, v1

    sput-object v0, Lorg/apache/commons/math3/analysis/integration/LegendreGaussIntegrator;->ABSCISSAS_4:[D

    .line 92
    const/4 v0, 0x4

    new-array v0, v0, [D

    const/4 v1, 0x0

    const-wide v2, 0x4056800000000000L    # 90.0

    const-wide/high16 v4, 0x4014000000000000L    # 5.0

    const-wide/high16 v6, 0x403e000000000000L    # 30.0

    invoke-static {v6, v7}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v6

    mul-double/2addr v4, v6

    sub-double/2addr v2, v4

    const-wide v4, 0x4066800000000000L    # 180.0

    div-double/2addr v2, v4

    aput-wide v2, v0, v1

    const/4 v1, 0x1

    const-wide v2, 0x4056800000000000L    # 90.0

    const-wide/high16 v4, 0x4014000000000000L    # 5.0

    const-wide/high16 v6, 0x403e000000000000L    # 30.0

    invoke-static {v6, v7}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v6

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    const-wide v4, 0x4066800000000000L    # 180.0

    div-double/2addr v2, v4

    aput-wide v2, v0, v1

    const/4 v1, 0x2

    const-wide v2, 0x4056800000000000L    # 90.0

    const-wide/high16 v4, 0x4014000000000000L    # 5.0

    const-wide/high16 v6, 0x403e000000000000L    # 30.0

    invoke-static {v6, v7}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v6

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    const-wide v4, 0x4066800000000000L    # 180.0

    div-double/2addr v2, v4

    aput-wide v2, v0, v1

    const/4 v1, 0x3

    const-wide v2, 0x4056800000000000L    # 90.0

    const-wide/high16 v4, 0x4014000000000000L    # 5.0

    const-wide/high16 v6, 0x403e000000000000L    # 30.0

    invoke-static {v6, v7}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v6

    mul-double/2addr v4, v6

    sub-double/2addr v2, v4

    const-wide v4, 0x4066800000000000L    # 180.0

    div-double/2addr v2, v4

    aput-wide v2, v0, v1

    sput-object v0, Lorg/apache/commons/math3/analysis/integration/LegendreGaussIntegrator;->WEIGHTS_4:[D

    .line 100
    const/4 v0, 0x5

    new-array v0, v0, [D

    const/4 v1, 0x0

    const-wide v2, 0x4041800000000000L    # 35.0

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    const-wide v6, 0x4051800000000000L    # 70.0

    invoke-static {v6, v7}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v6

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    const-wide v4, 0x404f800000000000L    # 63.0

    div-double/2addr v2, v4

    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v2

    neg-double v2, v2

    aput-wide v2, v0, v1

    const/4 v1, 0x1

    const-wide v2, 0x4041800000000000L    # 35.0

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    const-wide v6, 0x4051800000000000L    # 70.0

    invoke-static {v6, v7}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v6

    mul-double/2addr v4, v6

    sub-double/2addr v2, v4

    const-wide v4, 0x404f800000000000L    # 63.0

    div-double/2addr v2, v4

    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v2

    neg-double v2, v2

    aput-wide v2, v0, v1

    const/4 v1, 0x2

    const-wide/16 v2, 0x0

    aput-wide v2, v0, v1

    const/4 v1, 0x3

    const-wide v2, 0x4041800000000000L    # 35.0

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    const-wide v6, 0x4051800000000000L    # 70.0

    invoke-static {v6, v7}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v6

    mul-double/2addr v4, v6

    sub-double/2addr v2, v4

    const-wide v4, 0x404f800000000000L    # 63.0

    div-double/2addr v2, v4

    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v2

    aput-wide v2, v0, v1

    const/4 v1, 0x4

    const-wide v2, 0x4041800000000000L    # 35.0

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    const-wide v6, 0x4051800000000000L    # 70.0

    invoke-static {v6, v7}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v6

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    const-wide v4, 0x404f800000000000L    # 63.0

    div-double/2addr v2, v4

    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v2

    aput-wide v2, v0, v1

    sput-object v0, Lorg/apache/commons/math3/analysis/integration/LegendreGaussIntegrator;->ABSCISSAS_5:[D

    .line 109
    const/4 v0, 0x5

    new-array v0, v0, [D

    const/4 v1, 0x0

    const-wide v2, 0x4074200000000000L    # 322.0

    const-wide/high16 v4, 0x402a000000000000L    # 13.0

    const-wide v6, 0x4051800000000000L    # 70.0

    invoke-static {v6, v7}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v6

    mul-double/2addr v4, v6

    sub-double/2addr v2, v4

    const-wide v4, 0x408c200000000000L    # 900.0

    div-double/2addr v2, v4

    aput-wide v2, v0, v1

    const/4 v1, 0x1

    const-wide v2, 0x4074200000000000L    # 322.0

    const-wide/high16 v4, 0x402a000000000000L    # 13.0

    const-wide v6, 0x4051800000000000L    # 70.0

    invoke-static {v6, v7}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v6

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    const-wide v4, 0x408c200000000000L    # 900.0

    div-double/2addr v2, v4

    aput-wide v2, v0, v1

    const/4 v1, 0x2

    const-wide v2, 0x3fe23456789abcdfL    # 0.5688888888888889

    aput-wide v2, v0, v1

    const/4 v1, 0x3

    const-wide v2, 0x4074200000000000L    # 322.0

    const-wide/high16 v4, 0x402a000000000000L    # 13.0

    const-wide v6, 0x4051800000000000L    # 70.0

    invoke-static {v6, v7}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v6

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    const-wide v4, 0x408c200000000000L    # 900.0

    div-double/2addr v2, v4

    aput-wide v2, v0, v1

    const/4 v1, 0x4

    const-wide v2, 0x4074200000000000L    # 322.0

    const-wide/high16 v4, 0x402a000000000000L    # 13.0

    const-wide v6, 0x4051800000000000L    # 70.0

    invoke-static {v6, v7}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v6

    mul-double/2addr v4, v6

    sub-double/2addr v2, v4

    const-wide v4, 0x408c200000000000L    # 900.0

    div-double/2addr v2, v4

    aput-wide v2, v0, v1

    sput-object v0, Lorg/apache/commons/math3/analysis/integration/LegendreGaussIntegrator;->WEIGHTS_5:[D

    return-void

    .line 64
    :array_0
    .array-data 8
        0x3ff0000000000000L    # 1.0
        0x3ff0000000000000L    # 1.0
    .end array-data

    .line 77
    :array_1
    .array-data 8
        0x3fe1c71c71c71c72L    # 0.5555555555555556
        0x3fec71c71c71c71cL    # 0.8888888888888888
        0x3fe1c71c71c71c72L    # 0.5555555555555556
    .end array-data
.end method

.method public constructor <init>(IDD)V
    .locals 8
    .param p1, "n"    # I
    .param p2, "relativeAccuracy"    # D
    .param p4, "absoluteAccuracy"    # D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathIllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 179
    const/4 v6, 0x3

    const v7, 0x7fffffff

    move-object v0, p0

    move v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-direct/range {v0 .. v7}, Lorg/apache/commons/math3/analysis/integration/LegendreGaussIntegrator;-><init>(IDDII)V

    .line 181
    return-void
.end method

.method public constructor <init>(IDDII)V
    .locals 8
    .param p1, "n"    # I
    .param p2, "relativeAccuracy"    # D
    .param p4, "absoluteAccuracy"    # D
    .param p6, "minimalIterationCount"    # I
    .param p7, "maximalIterationCount"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathIllegalArgumentException;,
            Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;,
            Lorg/apache/commons/math3/exception/NumberIsTooSmallException;
        }
    .end annotation

    .prologue
    .line 142
    move-object v1, p0

    move-wide v2, p2

    move-wide v4, p4

    move v6, p6

    move v7, p7

    invoke-direct/range {v1 .. v7}, Lorg/apache/commons/math3/analysis/integration/BaseAbstractUnivariateIntegrator;-><init>(DDII)V

    .line 143
    packed-switch p1, :pswitch_data_0

    .line 161
    new-instance v0, Lorg/apache/commons/math3/exception/MathIllegalArgumentException;

    sget-object v1, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->N_POINTS_GAUSS_LEGENDRE_INTEGRATOR_NOT_SUPPORTED:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const/4 v4, 0x2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const/4 v4, 0x5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/exception/MathIllegalArgumentException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v0

    .line 145
    :pswitch_0
    sget-object v0, Lorg/apache/commons/math3/analysis/integration/LegendreGaussIntegrator;->ABSCISSAS_2:[D

    iput-object v0, p0, Lorg/apache/commons/math3/analysis/integration/LegendreGaussIntegrator;->abscissas:[D

    .line 146
    sget-object v0, Lorg/apache/commons/math3/analysis/integration/LegendreGaussIntegrator;->WEIGHTS_2:[D

    iput-object v0, p0, Lorg/apache/commons/math3/analysis/integration/LegendreGaussIntegrator;->weights:[D

    .line 166
    :goto_0
    return-void

    .line 149
    :pswitch_1
    sget-object v0, Lorg/apache/commons/math3/analysis/integration/LegendreGaussIntegrator;->ABSCISSAS_3:[D

    iput-object v0, p0, Lorg/apache/commons/math3/analysis/integration/LegendreGaussIntegrator;->abscissas:[D

    .line 150
    sget-object v0, Lorg/apache/commons/math3/analysis/integration/LegendreGaussIntegrator;->WEIGHTS_3:[D

    iput-object v0, p0, Lorg/apache/commons/math3/analysis/integration/LegendreGaussIntegrator;->weights:[D

    goto :goto_0

    .line 153
    :pswitch_2
    sget-object v0, Lorg/apache/commons/math3/analysis/integration/LegendreGaussIntegrator;->ABSCISSAS_4:[D

    iput-object v0, p0, Lorg/apache/commons/math3/analysis/integration/LegendreGaussIntegrator;->abscissas:[D

    .line 154
    sget-object v0, Lorg/apache/commons/math3/analysis/integration/LegendreGaussIntegrator;->WEIGHTS_4:[D

    iput-object v0, p0, Lorg/apache/commons/math3/analysis/integration/LegendreGaussIntegrator;->weights:[D

    goto :goto_0

    .line 157
    :pswitch_3
    sget-object v0, Lorg/apache/commons/math3/analysis/integration/LegendreGaussIntegrator;->ABSCISSAS_5:[D

    iput-object v0, p0, Lorg/apache/commons/math3/analysis/integration/LegendreGaussIntegrator;->abscissas:[D

    .line 158
    sget-object v0, Lorg/apache/commons/math3/analysis/integration/LegendreGaussIntegrator;->WEIGHTS_5:[D

    iput-object v0, p0, Lorg/apache/commons/math3/analysis/integration/LegendreGaussIntegrator;->weights:[D

    goto :goto_0

    .line 143
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public constructor <init>(III)V
    .locals 8
    .param p1, "n"    # I
    .param p2, "minimalIterationCount"    # I
    .param p3, "maximalIterationCount"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathIllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 198
    const-wide v2, 0x3eb0c6f7a0b5ed8dL    # 1.0E-6

    const-wide v4, 0x3cd203af9ee75616L    # 1.0E-15

    move-object v0, p0

    move v1, p1

    move v6, p2

    move v7, p3

    invoke-direct/range {v0 .. v7}, Lorg/apache/commons/math3/analysis/integration/LegendreGaussIntegrator;-><init>(IDDII)V

    .line 200
    return-void
.end method

.method private stage(I)D
    .locals 14
    .param p1, "n"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/TooManyEvaluationsException;
        }
    .end annotation

    .prologue
    .line 248
    invoke-virtual {p0}, Lorg/apache/commons/math3/analysis/integration/LegendreGaussIntegrator;->getMax()D

    move-result-wide v10

    invoke-virtual {p0}, Lorg/apache/commons/math3/analysis/integration/LegendreGaussIntegrator;->getMin()D

    move-result-wide v12

    sub-double/2addr v10, v12

    int-to-double v12, p1

    div-double v6, v10, v12

    .line 249
    .local v6, "step":D
    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    div-double v0, v6, v10

    .line 252
    .local v0, "halfStep":D
    invoke-virtual {p0}, Lorg/apache/commons/math3/analysis/integration/LegendreGaussIntegrator;->getMin()D

    move-result-wide v10

    add-double v4, v10, v0

    .line 253
    .local v4, "midPoint":D
    const-wide/16 v8, 0x0

    .line 254
    .local v8, "sum":D
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, p1, :cond_1

    .line 255
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_1
    iget-object v10, p0, Lorg/apache/commons/math3/analysis/integration/LegendreGaussIntegrator;->abscissas:[D

    array-length v10, v10

    if-ge v3, v10, :cond_0

    .line 256
    iget-object v10, p0, Lorg/apache/commons/math3/analysis/integration/LegendreGaussIntegrator;->weights:[D

    aget-wide v10, v10, v3

    iget-object v12, p0, Lorg/apache/commons/math3/analysis/integration/LegendreGaussIntegrator;->abscissas:[D

    aget-wide v12, v12, v3

    mul-double/2addr v12, v0

    add-double/2addr v12, v4

    invoke-virtual {p0, v12, v13}, Lorg/apache/commons/math3/analysis/integration/LegendreGaussIntegrator;->computeObjectiveValue(D)D

    move-result-wide v12

    mul-double/2addr v10, v12

    add-double/2addr v8, v10

    .line 255
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 258
    :cond_0
    add-double/2addr v4, v6

    .line 254
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 261
    .end local v3    # "j":I
    :cond_1
    mul-double v10, v0, v8

    return-wide v10
.end method


# virtual methods
.method protected doIntegrate()D
    .locals 22
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathIllegalArgumentException;,
            Lorg/apache/commons/math3/exception/TooManyEvaluationsException;,
            Lorg/apache/commons/math3/exception/MaxCountExceededException;
        }
    .end annotation

    .prologue
    .line 208
    const/4 v7, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lorg/apache/commons/math3/analysis/integration/LegendreGaussIntegrator;->stage(I)D

    move-result-wide v8

    .line 210
    .local v8, "oldt":D
    const/4 v6, 0x2

    .line 214
    .local v6, "n":I
    :goto_0
    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lorg/apache/commons/math3/analysis/integration/LegendreGaussIntegrator;->stage(I)D

    move-result-wide v12

    .line 217
    .local v12, "t":D
    sub-double v14, v12, v8

    invoke-static {v14, v15}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v2

    .line 218
    .local v2, "delta":D
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/analysis/integration/LegendreGaussIntegrator;->getAbsoluteAccuracy()D

    move-result-wide v14

    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/analysis/integration/LegendreGaussIntegrator;->getRelativeAccuracy()D

    move-result-wide v16

    invoke-static {v8, v9}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v18

    invoke-static {v12, v13}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v20

    add-double v18, v18, v20

    mul-double v16, v16, v18

    const-wide/high16 v18, 0x3fe0000000000000L    # 0.5

    mul-double v16, v16, v18

    invoke-static/range {v14 .. v17}, Lorg/apache/commons/math3/util/FastMath;->max(DD)D

    move-result-wide v4

    .line 223
    .local v4, "limit":D
    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/apache/commons/math3/analysis/integration/LegendreGaussIntegrator;->iterations:Lorg/apache/commons/math3/util/Incrementor;

    invoke-virtual {v7}, Lorg/apache/commons/math3/util/Incrementor;->getCount()I

    move-result v7

    add-int/lit8 v7, v7, 0x1

    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/analysis/integration/LegendreGaussIntegrator;->getMinimalIterationCount()I

    move-result v14

    if-lt v7, v14, :cond_0

    cmpg-double v7, v2, v4

    if-gtz v7, :cond_0

    .line 224
    return-wide v12

    .line 228
    :cond_0
    const-wide/high16 v14, 0x4010000000000000L    # 4.0

    div-double v16, v2, v4

    const-wide/high16 v18, 0x3fe0000000000000L    # 0.5

    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/apache/commons/math3/analysis/integration/LegendreGaussIntegrator;->abscissas:[D

    array-length v7, v7

    int-to-double v0, v7

    move-wide/from16 v20, v0

    div-double v18, v18, v20

    invoke-static/range {v16 .. v19}, Lorg/apache/commons/math3/util/FastMath;->pow(DD)D

    move-result-wide v16

    invoke-static/range {v14 .. v17}, Lorg/apache/commons/math3/util/FastMath;->min(DD)D

    move-result-wide v10

    .line 229
    .local v10, "ratio":D
    int-to-double v14, v6

    mul-double/2addr v14, v10

    double-to-int v7, v14

    add-int/lit8 v14, v6, 0x1

    invoke-static {v7, v14}, Lorg/apache/commons/math3/util/FastMath;->max(II)I

    move-result v6

    .line 230
    move-wide v8, v12

    .line 231
    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/apache/commons/math3/analysis/integration/LegendreGaussIntegrator;->iterations:Lorg/apache/commons/math3/util/Incrementor;

    invoke-virtual {v7}, Lorg/apache/commons/math3/util/Incrementor;->incrementCount()V

    goto :goto_0
.end method
