.class public Lorg/apache/commons/math3/complex/Complex;
.super Ljava/lang/Object;
.source "Complex.java"

# interfaces
.implements Lorg/apache/commons/math3/FieldElement;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/apache/commons/math3/FieldElement",
        "<",
        "Lorg/apache/commons/math3/complex/Complex;",
        ">;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field public static final I:Lorg/apache/commons/math3/complex/Complex;

.field public static final INF:Lorg/apache/commons/math3/complex/Complex;

.field public static final NaN:Lorg/apache/commons/math3/complex/Complex;

.field public static final ONE:Lorg/apache/commons/math3/complex/Complex;

.field public static final ZERO:Lorg/apache/commons/math3/complex/Complex;

.field private static final serialVersionUID:J = -0x55fb6c0d48a4ff0cL


# instance fields
.field private final imaginary:D

.field private final transient isInfinite:Z

.field private final transient isNaN:Z

.field private final real:D


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .prologue
    const-wide/high16 v8, 0x7ff8000000000000L    # NaN

    const-wide/high16 v6, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    const-wide/16 v2, 0x0

    .line 59
    new-instance v0, Lorg/apache/commons/math3/complex/Complex;

    invoke-direct {v0, v2, v3, v4, v5}, Lorg/apache/commons/math3/complex/Complex;-><init>(DD)V

    sput-object v0, Lorg/apache/commons/math3/complex/Complex;->I:Lorg/apache/commons/math3/complex/Complex;

    .line 62
    new-instance v0, Lorg/apache/commons/math3/complex/Complex;

    invoke-direct {v0, v8, v9, v8, v9}, Lorg/apache/commons/math3/complex/Complex;-><init>(DD)V

    sput-object v0, Lorg/apache/commons/math3/complex/Complex;->NaN:Lorg/apache/commons/math3/complex/Complex;

    .line 65
    new-instance v0, Lorg/apache/commons/math3/complex/Complex;

    invoke-direct {v0, v6, v7, v6, v7}, Lorg/apache/commons/math3/complex/Complex;-><init>(DD)V

    sput-object v0, Lorg/apache/commons/math3/complex/Complex;->INF:Lorg/apache/commons/math3/complex/Complex;

    .line 67
    new-instance v0, Lorg/apache/commons/math3/complex/Complex;

    invoke-direct {v0, v4, v5, v2, v3}, Lorg/apache/commons/math3/complex/Complex;-><init>(DD)V

    sput-object v0, Lorg/apache/commons/math3/complex/Complex;->ONE:Lorg/apache/commons/math3/complex/Complex;

    .line 69
    new-instance v0, Lorg/apache/commons/math3/complex/Complex;

    invoke-direct {v0, v2, v3, v2, v3}, Lorg/apache/commons/math3/complex/Complex;-><init>(DD)V

    sput-object v0, Lorg/apache/commons/math3/complex/Complex;->ZERO:Lorg/apache/commons/math3/complex/Complex;

    return-void
.end method

.method public constructor <init>(D)V
    .locals 3
    .param p1, "real"    # D

    .prologue
    .line 89
    const-wide/16 v0, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Lorg/apache/commons/math3/complex/Complex;-><init>(DD)V

    .line 90
    return-void
.end method

.method public constructor <init>(DD)V
    .locals 3
    .param p1, "real"    # D
    .param p3, "imaginary"    # D

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 99
    iput-wide p1, p0, Lorg/apache/commons/math3/complex/Complex;->real:D

    .line 100
    iput-wide p3, p0, Lorg/apache/commons/math3/complex/Complex;->imaginary:D

    .line 102
    invoke-static {p1, p2}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p3, p4}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    move v0, v2

    :goto_0
    iput-boolean v0, p0, Lorg/apache/commons/math3/complex/Complex;->isNaN:Z

    .line 103
    iget-boolean v0, p0, Lorg/apache/commons/math3/complex/Complex;->isNaN:Z

    if-nez v0, :cond_3

    invoke-static {p1, p2}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p3, p4}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_1
    :goto_1
    iput-boolean v2, p0, Lorg/apache/commons/math3/complex/Complex;->isInfinite:Z

    .line 105
    return-void

    :cond_2
    move v0, v1

    .line 102
    goto :goto_0

    :cond_3
    move v2, v1

    .line 103
    goto :goto_1
.end method

.method public static equals(Lorg/apache/commons/math3/complex/Complex;Lorg/apache/commons/math3/complex/Complex;)Z
    .locals 1
    .param p0, "x"    # Lorg/apache/commons/math3/complex/Complex;
    .param p1, "y"    # Lorg/apache/commons/math3/complex/Complex;

    .prologue
    .line 397
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lorg/apache/commons/math3/complex/Complex;->equals(Lorg/apache/commons/math3/complex/Complex;Lorg/apache/commons/math3/complex/Complex;I)Z

    move-result v0

    return v0
.end method

.method public static equals(Lorg/apache/commons/math3/complex/Complex;Lorg/apache/commons/math3/complex/Complex;D)Z
    .locals 6
    .param p0, "x"    # Lorg/apache/commons/math3/complex/Complex;
    .param p1, "y"    # Lorg/apache/commons/math3/complex/Complex;
    .param p2, "eps"    # D

    .prologue
    .line 416
    iget-wide v0, p0, Lorg/apache/commons/math3/complex/Complex;->real:D

    iget-wide v2, p1, Lorg/apache/commons/math3/complex/Complex;->real:D

    move-wide v4, p2

    invoke-static/range {v0 .. v5}, Lorg/apache/commons/math3/util/Precision;->equals(DDD)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lorg/apache/commons/math3/complex/Complex;->imaginary:D

    iget-wide v2, p1, Lorg/apache/commons/math3/complex/Complex;->imaginary:D

    move-wide v4, p2

    invoke-static/range {v0 .. v5}, Lorg/apache/commons/math3/util/Precision;->equals(DDD)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static equals(Lorg/apache/commons/math3/complex/Complex;Lorg/apache/commons/math3/complex/Complex;I)Z
    .locals 4
    .param p0, "x"    # Lorg/apache/commons/math3/complex/Complex;
    .param p1, "y"    # Lorg/apache/commons/math3/complex/Complex;
    .param p2, "maxUlps"    # I

    .prologue
    .line 382
    iget-wide v0, p0, Lorg/apache/commons/math3/complex/Complex;->real:D

    iget-wide v2, p1, Lorg/apache/commons/math3/complex/Complex;->real:D

    invoke-static {v0, v1, v2, v3, p2}, Lorg/apache/commons/math3/util/Precision;->equals(DDI)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lorg/apache/commons/math3/complex/Complex;->imaginary:D

    iget-wide v2, p1, Lorg/apache/commons/math3/complex/Complex;->imaginary:D

    invoke-static {v0, v1, v2, v3, p2}, Lorg/apache/commons/math3/util/Precision;->equals(DDI)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static equalsWithRelativeTolerance(Lorg/apache/commons/math3/complex/Complex;Lorg/apache/commons/math3/complex/Complex;D)Z
    .locals 6
    .param p0, "x"    # Lorg/apache/commons/math3/complex/Complex;
    .param p1, "y"    # Lorg/apache/commons/math3/complex/Complex;
    .param p2, "eps"    # D

    .prologue
    .line 437
    iget-wide v0, p0, Lorg/apache/commons/math3/complex/Complex;->real:D

    iget-wide v2, p1, Lorg/apache/commons/math3/complex/Complex;->real:D

    move-wide v4, p2

    invoke-static/range {v0 .. v5}, Lorg/apache/commons/math3/util/Precision;->equalsWithRelativeTolerance(DDD)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lorg/apache/commons/math3/complex/Complex;->imaginary:D

    iget-wide v2, p1, Lorg/apache/commons/math3/complex/Complex;->imaginary:D

    move-wide v4, p2

    invoke-static/range {v0 .. v5}, Lorg/apache/commons/math3/util/Precision;->equalsWithRelativeTolerance(DDD)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static valueOf(D)Lorg/apache/commons/math3/complex/Complex;
    .locals 2
    .param p0, "realPart"    # D

    .prologue
    .line 1289
    invoke-static {p0, p1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1290
    sget-object v0, Lorg/apache/commons/math3/complex/Complex;->NaN:Lorg/apache/commons/math3/complex/Complex;

    .line 1292
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lorg/apache/commons/math3/complex/Complex;

    invoke-direct {v0, p0, p1}, Lorg/apache/commons/math3/complex/Complex;-><init>(D)V

    goto :goto_0
.end method

.method public static valueOf(DD)Lorg/apache/commons/math3/complex/Complex;
    .locals 2
    .param p0, "realPart"    # D
    .param p2, "imaginaryPart"    # D

    .prologue
    .line 1275
    invoke-static {p0, p1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p2, p3}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1277
    :cond_0
    sget-object v0, Lorg/apache/commons/math3/complex/Complex;->NaN:Lorg/apache/commons/math3/complex/Complex;

    .line 1279
    :goto_0
    return-object v0

    :cond_1
    new-instance v0, Lorg/apache/commons/math3/complex/Complex;

    invoke-direct {v0, p0, p1, p2, p3}, Lorg/apache/commons/math3/complex/Complex;-><init>(DD)V

    goto :goto_0
.end method


# virtual methods
.method public abs()D
    .locals 10

    .prologue
    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    const-wide/16 v6, 0x0

    .line 116
    iget-boolean v2, p0, Lorg/apache/commons/math3/complex/Complex;->isNaN:Z

    if-eqz v2, :cond_0

    .line 117
    const-wide/high16 v2, 0x7ff8000000000000L    # NaN

    .line 133
    :goto_0
    return-wide v2

    .line 119
    :cond_0
    invoke-virtual {p0}, Lorg/apache/commons/math3/complex/Complex;->isInfinite()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 120
    const-wide/high16 v2, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    goto :goto_0

    .line 122
    :cond_1
    iget-wide v2, p0, Lorg/apache/commons/math3/complex/Complex;->real:D

    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v2

    iget-wide v4, p0, Lorg/apache/commons/math3/complex/Complex;->imaginary:D

    invoke-static {v4, v5}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v4

    cmpg-double v2, v2, v4

    if-gez v2, :cond_3

    .line 123
    iget-wide v2, p0, Lorg/apache/commons/math3/complex/Complex;->imaginary:D

    cmpl-double v2, v2, v6

    if-nez v2, :cond_2

    .line 124
    iget-wide v2, p0, Lorg/apache/commons/math3/complex/Complex;->real:D

    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v2

    goto :goto_0

    .line 126
    :cond_2
    iget-wide v2, p0, Lorg/apache/commons/math3/complex/Complex;->real:D

    iget-wide v4, p0, Lorg/apache/commons/math3/complex/Complex;->imaginary:D

    div-double v0, v2, v4

    .line 127
    .local v0, "q":D
    iget-wide v2, p0, Lorg/apache/commons/math3/complex/Complex;->imaginary:D

    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v2

    mul-double v4, v0, v0

    add-double/2addr v4, v8

    invoke-static {v4, v5}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v4

    mul-double/2addr v2, v4

    goto :goto_0

    .line 129
    .end local v0    # "q":D
    :cond_3
    iget-wide v2, p0, Lorg/apache/commons/math3/complex/Complex;->real:D

    cmpl-double v2, v2, v6

    if-nez v2, :cond_4

    .line 130
    iget-wide v2, p0, Lorg/apache/commons/math3/complex/Complex;->imaginary:D

    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v2

    goto :goto_0

    .line 132
    :cond_4
    iget-wide v2, p0, Lorg/apache/commons/math3/complex/Complex;->imaginary:D

    iget-wide v4, p0, Lorg/apache/commons/math3/complex/Complex;->real:D

    div-double v0, v2, v4

    .line 133
    .restart local v0    # "q":D
    iget-wide v2, p0, Lorg/apache/commons/math3/complex/Complex;->real:D

    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v2

    mul-double v4, v0, v0

    add-double/2addr v4, v8

    invoke-static {v4, v5}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v4

    mul-double/2addr v2, v4

    goto :goto_0
.end method

.method public acos()Lorg/apache/commons/math3/complex/Complex;
    .locals 2

    .prologue
    .line 656
    iget-boolean v0, p0, Lorg/apache/commons/math3/complex/Complex;->isNaN:Z

    if-eqz v0, :cond_0

    .line 657
    sget-object v0, Lorg/apache/commons/math3/complex/Complex;->NaN:Lorg/apache/commons/math3/complex/Complex;

    .line 660
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lorg/apache/commons/math3/complex/Complex;->sqrt1z()Lorg/apache/commons/math3/complex/Complex;

    move-result-object v0

    sget-object v1, Lorg/apache/commons/math3/complex/Complex;->I:Lorg/apache/commons/math3/complex/Complex;

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/complex/Complex;->multiply(Lorg/apache/commons/math3/complex/Complex;)Lorg/apache/commons/math3/complex/Complex;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/complex/Complex;->add(Lorg/apache/commons/math3/complex/Complex;)Lorg/apache/commons/math3/complex/Complex;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/math3/complex/Complex;->log()Lorg/apache/commons/math3/complex/Complex;

    move-result-object v0

    sget-object v1, Lorg/apache/commons/math3/complex/Complex;->I:Lorg/apache/commons/math3/complex/Complex;

    invoke-virtual {v1}, Lorg/apache/commons/math3/complex/Complex;->negate()Lorg/apache/commons/math3/complex/Complex;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/complex/Complex;->multiply(Lorg/apache/commons/math3/complex/Complex;)Lorg/apache/commons/math3/complex/Complex;

    move-result-object v0

    goto :goto_0
.end method

.method public bridge synthetic add(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;
        }
    .end annotation

    .prologue
    .line 57
    check-cast p1, Lorg/apache/commons/math3/complex/Complex;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/complex/Complex;->add(Lorg/apache/commons/math3/complex/Complex;)Lorg/apache/commons/math3/complex/Complex;

    move-result-object v0

    return-object v0
.end method

.method public add(D)Lorg/apache/commons/math3/complex/Complex;
    .locals 5
    .param p1, "addend"    # D

    .prologue
    .line 175
    iget-boolean v0, p0, Lorg/apache/commons/math3/complex/Complex;->isNaN:Z

    if-nez v0, :cond_0

    invoke-static {p1, p2}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 176
    :cond_0
    sget-object v0, Lorg/apache/commons/math3/complex/Complex;->NaN:Lorg/apache/commons/math3/complex/Complex;

    .line 179
    :goto_0
    return-object v0

    :cond_1
    iget-wide v0, p0, Lorg/apache/commons/math3/complex/Complex;->real:D

    add-double/2addr v0, p1

    iget-wide v2, p0, Lorg/apache/commons/math3/complex/Complex;->imaginary:D

    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/apache/commons/math3/complex/Complex;->createComplex(DD)Lorg/apache/commons/math3/complex/Complex;

    move-result-object v0

    goto :goto_0
.end method

.method public add(Lorg/apache/commons/math3/complex/Complex;)Lorg/apache/commons/math3/complex/Complex;
    .locals 6
    .param p1, "addend"    # Lorg/apache/commons/math3/complex/Complex;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;
        }
    .end annotation

    .prologue
    .line 157
    invoke-static {p1}, Lorg/apache/commons/math3/util/MathUtils;->checkNotNull(Ljava/lang/Object;)V

    .line 158
    iget-boolean v0, p0, Lorg/apache/commons/math3/complex/Complex;->isNaN:Z

    if-nez v0, :cond_0

    iget-boolean v0, p1, Lorg/apache/commons/math3/complex/Complex;->isNaN:Z

    if-eqz v0, :cond_1

    .line 159
    :cond_0
    sget-object v0, Lorg/apache/commons/math3/complex/Complex;->NaN:Lorg/apache/commons/math3/complex/Complex;

    .line 162
    :goto_0
    return-object v0

    :cond_1
    iget-wide v0, p0, Lorg/apache/commons/math3/complex/Complex;->real:D

    invoke-virtual {p1}, Lorg/apache/commons/math3/complex/Complex;->getReal()D

    move-result-wide v2

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/apache/commons/math3/complex/Complex;->imaginary:D

    invoke-virtual {p1}, Lorg/apache/commons/math3/complex/Complex;->getImaginary()D

    move-result-wide v4

    add-double/2addr v2, v4

    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/apache/commons/math3/complex/Complex;->createComplex(DD)Lorg/apache/commons/math3/complex/Complex;

    move-result-object v0

    goto :goto_0
.end method

.method public asin()Lorg/apache/commons/math3/complex/Complex;
    .locals 2

    .prologue
    .line 680
    iget-boolean v0, p0, Lorg/apache/commons/math3/complex/Complex;->isNaN:Z

    if-eqz v0, :cond_0

    .line 681
    sget-object v0, Lorg/apache/commons/math3/complex/Complex;->NaN:Lorg/apache/commons/math3/complex/Complex;

    .line 684
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lorg/apache/commons/math3/complex/Complex;->sqrt1z()Lorg/apache/commons/math3/complex/Complex;

    move-result-object v0

    sget-object v1, Lorg/apache/commons/math3/complex/Complex;->I:Lorg/apache/commons/math3/complex/Complex;

    invoke-virtual {p0, v1}, Lorg/apache/commons/math3/complex/Complex;->multiply(Lorg/apache/commons/math3/complex/Complex;)Lorg/apache/commons/math3/complex/Complex;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/complex/Complex;->add(Lorg/apache/commons/math3/complex/Complex;)Lorg/apache/commons/math3/complex/Complex;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/math3/complex/Complex;->log()Lorg/apache/commons/math3/complex/Complex;

    move-result-object v0

    sget-object v1, Lorg/apache/commons/math3/complex/Complex;->I:Lorg/apache/commons/math3/complex/Complex;

    invoke-virtual {v1}, Lorg/apache/commons/math3/complex/Complex;->negate()Lorg/apache/commons/math3/complex/Complex;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/complex/Complex;->multiply(Lorg/apache/commons/math3/complex/Complex;)Lorg/apache/commons/math3/complex/Complex;

    move-result-object v0

    goto :goto_0
.end method

.method public atan()Lorg/apache/commons/math3/complex/Complex;
    .locals 6

    .prologue
    .line 704
    iget-boolean v0, p0, Lorg/apache/commons/math3/complex/Complex;->isNaN:Z

    if-eqz v0, :cond_0

    .line 705
    sget-object v0, Lorg/apache/commons/math3/complex/Complex;->NaN:Lorg/apache/commons/math3/complex/Complex;

    .line 708
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lorg/apache/commons/math3/complex/Complex;->I:Lorg/apache/commons/math3/complex/Complex;

    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/complex/Complex;->add(Lorg/apache/commons/math3/complex/Complex;)Lorg/apache/commons/math3/complex/Complex;

    move-result-object v0

    sget-object v1, Lorg/apache/commons/math3/complex/Complex;->I:Lorg/apache/commons/math3/complex/Complex;

    invoke-virtual {v1, p0}, Lorg/apache/commons/math3/complex/Complex;->subtract(Lorg/apache/commons/math3/complex/Complex;)Lorg/apache/commons/math3/complex/Complex;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/complex/Complex;->divide(Lorg/apache/commons/math3/complex/Complex;)Lorg/apache/commons/math3/complex/Complex;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/math3/complex/Complex;->log()Lorg/apache/commons/math3/complex/Complex;

    move-result-object v0

    sget-object v1, Lorg/apache/commons/math3/complex/Complex;->I:Lorg/apache/commons/math3/complex/Complex;

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    const-wide/16 v4, 0x0

    invoke-virtual {p0, v2, v3, v4, v5}, Lorg/apache/commons/math3/complex/Complex;->createComplex(DD)Lorg/apache/commons/math3/complex/Complex;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/commons/math3/complex/Complex;->divide(Lorg/apache/commons/math3/complex/Complex;)Lorg/apache/commons/math3/complex/Complex;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/complex/Complex;->multiply(Lorg/apache/commons/math3/complex/Complex;)Lorg/apache/commons/math3/complex/Complex;

    move-result-object v0

    goto :goto_0
.end method

.method public conjugate()Lorg/apache/commons/math3/complex/Complex;
    .locals 4

    .prologue
    .line 197
    iget-boolean v0, p0, Lorg/apache/commons/math3/complex/Complex;->isNaN:Z

    if-eqz v0, :cond_0

    .line 198
    sget-object v0, Lorg/apache/commons/math3/complex/Complex;->NaN:Lorg/apache/commons/math3/complex/Complex;

    .line 201
    :goto_0
    return-object v0

    :cond_0
    iget-wide v0, p0, Lorg/apache/commons/math3/complex/Complex;->real:D

    iget-wide v2, p0, Lorg/apache/commons/math3/complex/Complex;->imaginary:D

    neg-double v2, v2

    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/apache/commons/math3/complex/Complex;->createComplex(DD)Lorg/apache/commons/math3/complex/Complex;

    move-result-object v0

    goto :goto_0
.end method

.method public cos()Lorg/apache/commons/math3/complex/Complex;
    .locals 6

    .prologue
    .line 745
    iget-boolean v0, p0, Lorg/apache/commons/math3/complex/Complex;->isNaN:Z

    if-eqz v0, :cond_0

    .line 746
    sget-object v0, Lorg/apache/commons/math3/complex/Complex;->NaN:Lorg/apache/commons/math3/complex/Complex;

    .line 749
    :goto_0
    return-object v0

    :cond_0
    iget-wide v0, p0, Lorg/apache/commons/math3/complex/Complex;->real:D

    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->cos(D)D

    move-result-wide v0

    iget-wide v2, p0, Lorg/apache/commons/math3/complex/Complex;->imaginary:D

    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/FastMath;->cosh(D)D

    move-result-wide v2

    mul-double/2addr v0, v2

    iget-wide v2, p0, Lorg/apache/commons/math3/complex/Complex;->real:D

    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/FastMath;->sin(D)D

    move-result-wide v2

    neg-double v2, v2

    iget-wide v4, p0, Lorg/apache/commons/math3/complex/Complex;->imaginary:D

    invoke-static {v4, v5}, Lorg/apache/commons/math3/util/FastMath;->sinh(D)D

    move-result-wide v4

    mul-double/2addr v2, v4

    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/apache/commons/math3/complex/Complex;->createComplex(DD)Lorg/apache/commons/math3/complex/Complex;

    move-result-object v0

    goto :goto_0
.end method

.method public cosh()Lorg/apache/commons/math3/complex/Complex;
    .locals 6

    .prologue
    .line 785
    iget-boolean v0, p0, Lorg/apache/commons/math3/complex/Complex;->isNaN:Z

    if-eqz v0, :cond_0

    .line 786
    sget-object v0, Lorg/apache/commons/math3/complex/Complex;->NaN:Lorg/apache/commons/math3/complex/Complex;

    .line 789
    :goto_0
    return-object v0

    :cond_0
    iget-wide v0, p0, Lorg/apache/commons/math3/complex/Complex;->real:D

    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->cosh(D)D

    move-result-wide v0

    iget-wide v2, p0, Lorg/apache/commons/math3/complex/Complex;->imaginary:D

    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/FastMath;->cos(D)D

    move-result-wide v2

    mul-double/2addr v0, v2

    iget-wide v2, p0, Lorg/apache/commons/math3/complex/Complex;->real:D

    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/FastMath;->sinh(D)D

    move-result-wide v2

    iget-wide v4, p0, Lorg/apache/commons/math3/complex/Complex;->imaginary:D

    invoke-static {v4, v5}, Lorg/apache/commons/math3/util/FastMath;->sin(D)D

    move-result-wide v4

    mul-double/2addr v2, v4

    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/apache/commons/math3/complex/Complex;->createComplex(DD)Lorg/apache/commons/math3/complex/Complex;

    move-result-object v0

    goto :goto_0
.end method

.method protected createComplex(DD)Lorg/apache/commons/math3/complex/Complex;
    .locals 1
    .param p1, "realPart"    # D
    .param p3, "imaginaryPart"    # D

    .prologue
    .line 1263
    new-instance v0, Lorg/apache/commons/math3/complex/Complex;

    invoke-direct {v0, p1, p2, p3, p4}, Lorg/apache/commons/math3/complex/Complex;-><init>(DD)V

    return-object v0
.end method

.method public bridge synthetic divide(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;,
            Lorg/apache/commons/math3/exception/MathArithmeticException;
        }
    .end annotation

    .prologue
    .line 57
    check-cast p1, Lorg/apache/commons/math3/complex/Complex;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/complex/Complex;->divide(Lorg/apache/commons/math3/complex/Complex;)Lorg/apache/commons/math3/complex/Complex;

    move-result-object v0

    return-object v0
.end method

.method public divide(D)Lorg/apache/commons/math3/complex/Complex;
    .locals 5
    .param p1, "divisor"    # D

    .prologue
    .line 285
    iget-boolean v0, p0, Lorg/apache/commons/math3/complex/Complex;->isNaN:Z

    if-nez v0, :cond_0

    invoke-static {p1, p2}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 286
    :cond_0
    sget-object v0, Lorg/apache/commons/math3/complex/Complex;->NaN:Lorg/apache/commons/math3/complex/Complex;

    .line 294
    :goto_0
    return-object v0

    .line 288
    :cond_1
    const-wide/16 v0, 0x0

    cmpl-double v0, p1, v0

    if-nez v0, :cond_2

    .line 289
    sget-object v0, Lorg/apache/commons/math3/complex/Complex;->NaN:Lorg/apache/commons/math3/complex/Complex;

    goto :goto_0

    .line 291
    :cond_2
    invoke-static {p1, p2}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 292
    invoke-virtual {p0}, Lorg/apache/commons/math3/complex/Complex;->isInfinite()Z

    move-result v0

    if-nez v0, :cond_3

    sget-object v0, Lorg/apache/commons/math3/complex/Complex;->ZERO:Lorg/apache/commons/math3/complex/Complex;

    goto :goto_0

    :cond_3
    sget-object v0, Lorg/apache/commons/math3/complex/Complex;->NaN:Lorg/apache/commons/math3/complex/Complex;

    goto :goto_0

    .line 294
    :cond_4
    iget-wide v0, p0, Lorg/apache/commons/math3/complex/Complex;->real:D

    div-double/2addr v0, p1

    iget-wide v2, p0, Lorg/apache/commons/math3/complex/Complex;->imaginary:D

    div-double/2addr v2, p1

    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/apache/commons/math3/complex/Complex;->createComplex(DD)Lorg/apache/commons/math3/complex/Complex;

    move-result-object v0

    goto :goto_0
.end method

.method public divide(Lorg/apache/commons/math3/complex/Complex;)Lorg/apache/commons/math3/complex/Complex;
    .locals 14
    .param p1, "divisor"    # Lorg/apache/commons/math3/complex/Complex;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;
        }
    .end annotation

    .prologue
    const-wide/16 v10, 0x0

    .line 248
    invoke-static {p1}, Lorg/apache/commons/math3/util/MathUtils;->checkNotNull(Ljava/lang/Object;)V

    .line 249
    iget-boolean v8, p0, Lorg/apache/commons/math3/complex/Complex;->isNaN:Z

    if-nez v8, :cond_0

    iget-boolean v8, p1, Lorg/apache/commons/math3/complex/Complex;->isNaN:Z

    if-eqz v8, :cond_1

    .line 250
    :cond_0
    sget-object v8, Lorg/apache/commons/math3/complex/Complex;->NaN:Lorg/apache/commons/math3/complex/Complex;

    .line 271
    :goto_0
    return-object v8

    .line 253
    :cond_1
    invoke-virtual {p1}, Lorg/apache/commons/math3/complex/Complex;->getReal()D

    move-result-wide v0

    .line 254
    .local v0, "c":D
    invoke-virtual {p1}, Lorg/apache/commons/math3/complex/Complex;->getImaginary()D

    move-result-wide v2

    .line 255
    .local v2, "d":D
    cmpl-double v8, v0, v10

    if-nez v8, :cond_2

    cmpl-double v8, v2, v10

    if-nez v8, :cond_2

    .line 256
    sget-object v8, Lorg/apache/commons/math3/complex/Complex;->NaN:Lorg/apache/commons/math3/complex/Complex;

    goto :goto_0

    .line 259
    :cond_2
    invoke-virtual {p1}, Lorg/apache/commons/math3/complex/Complex;->isInfinite()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-virtual {p0}, Lorg/apache/commons/math3/complex/Complex;->isInfinite()Z

    move-result v8

    if-nez v8, :cond_3

    .line 260
    sget-object v8, Lorg/apache/commons/math3/complex/Complex;->ZERO:Lorg/apache/commons/math3/complex/Complex;

    goto :goto_0

    .line 263
    :cond_3
    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v8

    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v10

    cmpg-double v8, v8, v10

    if-gez v8, :cond_4

    .line 264
    div-double v6, v0, v2

    .line 265
    .local v6, "q":D
    mul-double v8, v0, v6

    add-double v4, v8, v2

    .line 266
    .local v4, "denominator":D
    iget-wide v8, p0, Lorg/apache/commons/math3/complex/Complex;->real:D

    mul-double/2addr v8, v6

    iget-wide v10, p0, Lorg/apache/commons/math3/complex/Complex;->imaginary:D

    add-double/2addr v8, v10

    div-double/2addr v8, v4

    iget-wide v10, p0, Lorg/apache/commons/math3/complex/Complex;->imaginary:D

    mul-double/2addr v10, v6

    iget-wide v12, p0, Lorg/apache/commons/math3/complex/Complex;->real:D

    sub-double/2addr v10, v12

    div-double/2addr v10, v4

    invoke-virtual {p0, v8, v9, v10, v11}, Lorg/apache/commons/math3/complex/Complex;->createComplex(DD)Lorg/apache/commons/math3/complex/Complex;

    move-result-object v8

    goto :goto_0

    .line 269
    .end local v4    # "denominator":D
    .end local v6    # "q":D
    :cond_4
    div-double v6, v2, v0

    .line 270
    .restart local v6    # "q":D
    mul-double v8, v2, v6

    add-double v4, v8, v0

    .line 271
    .restart local v4    # "denominator":D
    iget-wide v8, p0, Lorg/apache/commons/math3/complex/Complex;->imaginary:D

    mul-double/2addr v8, v6

    iget-wide v10, p0, Lorg/apache/commons/math3/complex/Complex;->real:D

    add-double/2addr v8, v10

    div-double/2addr v8, v4

    iget-wide v10, p0, Lorg/apache/commons/math3/complex/Complex;->imaginary:D

    iget-wide v12, p0, Lorg/apache/commons/math3/complex/Complex;->real:D

    mul-double/2addr v12, v6

    sub-double/2addr v10, v12

    div-double/2addr v10, v4

    invoke-virtual {p0, v8, v9, v10, v11}, Lorg/apache/commons/math3/complex/Complex;->createComplex(DD)Lorg/apache/commons/math3/complex/Complex;

    move-result-object v8

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 8
    .param p1, "other"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 349
    if-ne p0, p1, :cond_1

    .line 361
    :cond_0
    :goto_0
    return v1

    .line 352
    :cond_1
    instance-of v3, p1, Lorg/apache/commons/math3/complex/Complex;

    if-eqz v3, :cond_4

    move-object v0, p1

    .line 353
    check-cast v0, Lorg/apache/commons/math3/complex/Complex;

    .line 354
    .local v0, "c":Lorg/apache/commons/math3/complex/Complex;
    iget-boolean v3, v0, Lorg/apache/commons/math3/complex/Complex;->isNaN:Z

    if-eqz v3, :cond_2

    .line 355
    iget-boolean v1, p0, Lorg/apache/commons/math3/complex/Complex;->isNaN:Z

    goto :goto_0

    .line 357
    :cond_2
    iget-wide v4, p0, Lorg/apache/commons/math3/complex/Complex;->real:D

    iget-wide v6, v0, Lorg/apache/commons/math3/complex/Complex;->real:D

    invoke-static {v4, v5, v6, v7}, Lorg/apache/commons/math3/util/MathUtils;->equals(DD)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-wide v4, p0, Lorg/apache/commons/math3/complex/Complex;->imaginary:D

    iget-wide v6, v0, Lorg/apache/commons/math3/complex/Complex;->imaginary:D

    invoke-static {v4, v5, v6, v7}, Lorg/apache/commons/math3/util/MathUtils;->equals(DD)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_3
    move v1, v2

    goto :goto_0

    .end local v0    # "c":Lorg/apache/commons/math3/complex/Complex;
    :cond_4
    move v1, v2

    .line 361
    goto :goto_0
.end method

.method public exp()Lorg/apache/commons/math3/complex/Complex;
    .locals 6

    .prologue
    .line 826
    iget-boolean v2, p0, Lorg/apache/commons/math3/complex/Complex;->isNaN:Z

    if-eqz v2, :cond_0

    .line 827
    sget-object v2, Lorg/apache/commons/math3/complex/Complex;->NaN:Lorg/apache/commons/math3/complex/Complex;

    .line 831
    :goto_0
    return-object v2

    .line 830
    :cond_0
    iget-wide v2, p0, Lorg/apache/commons/math3/complex/Complex;->real:D

    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/FastMath;->exp(D)D

    move-result-wide v0

    .line 831
    .local v0, "expReal":D
    iget-wide v2, p0, Lorg/apache/commons/math3/complex/Complex;->imaginary:D

    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/FastMath;->cos(D)D

    move-result-wide v2

    mul-double/2addr v2, v0

    iget-wide v4, p0, Lorg/apache/commons/math3/complex/Complex;->imaginary:D

    invoke-static {v4, v5}, Lorg/apache/commons/math3/util/FastMath;->sin(D)D

    move-result-wide v4

    mul-double/2addr v4, v0

    invoke-virtual {p0, v2, v3, v4, v5}, Lorg/apache/commons/math3/complex/Complex;->createComplex(DD)Lorg/apache/commons/math3/complex/Complex;

    move-result-object v2

    goto :goto_0
.end method

.method public getArgument()D
    .locals 4

    .prologue
    .line 1191
    invoke-virtual {p0}, Lorg/apache/commons/math3/complex/Complex;->getImaginary()D

    move-result-wide v0

    invoke-virtual {p0}, Lorg/apache/commons/math3/complex/Complex;->getReal()D

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lorg/apache/commons/math3/util/FastMath;->atan2(DD)D

    move-result-wide v0

    return-wide v0
.end method

.method public bridge synthetic getField()Lorg/apache/commons/math3/Field;
    .locals 1

    .prologue
    .line 57
    invoke-virtual {p0}, Lorg/apache/commons/math3/complex/Complex;->getField()Lorg/apache/commons/math3/complex/ComplexField;

    move-result-object v0

    return-object v0
.end method

.method public getField()Lorg/apache/commons/math3/complex/ComplexField;
    .locals 1

    .prologue
    .line 1309
    invoke-static {}, Lorg/apache/commons/math3/complex/ComplexField;->getInstance()Lorg/apache/commons/math3/complex/ComplexField;

    move-result-object v0

    return-object v0
.end method

.method public getImaginary()D
    .locals 2

    .prologue
    .line 463
    iget-wide v0, p0, Lorg/apache/commons/math3/complex/Complex;->imaginary:D

    return-wide v0
.end method

.method public getReal()D
    .locals 2

    .prologue
    .line 472
    iget-wide v0, p0, Lorg/apache/commons/math3/complex/Complex;->real:D

    return-wide v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 450
    iget-boolean v0, p0, Lorg/apache/commons/math3/complex/Complex;->isNaN:Z

    if-eqz v0, :cond_0

    .line 451
    const/4 v0, 0x7

    .line 453
    :goto_0
    return v0

    :cond_0
    iget-wide v0, p0, Lorg/apache/commons/math3/complex/Complex;->imaginary:D

    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/MathUtils;->hash(D)I

    move-result v0

    mul-int/lit8 v0, v0, 0x11

    iget-wide v2, p0, Lorg/apache/commons/math3/complex/Complex;->real:D

    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/MathUtils;->hash(D)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    goto :goto_0
.end method

.method public isInfinite()Z
    .locals 1

    .prologue
    .line 496
    iget-boolean v0, p0, Lorg/apache/commons/math3/complex/Complex;->isInfinite:Z

    return v0
.end method

.method public isNaN()Z
    .locals 1

    .prologue
    .line 483
    iget-boolean v0, p0, Lorg/apache/commons/math3/complex/Complex;->isNaN:Z

    return v0
.end method

.method public log()Lorg/apache/commons/math3/complex/Complex;
    .locals 6

    .prologue
    .line 871
    iget-boolean v0, p0, Lorg/apache/commons/math3/complex/Complex;->isNaN:Z

    if-eqz v0, :cond_0

    .line 872
    sget-object v0, Lorg/apache/commons/math3/complex/Complex;->NaN:Lorg/apache/commons/math3/complex/Complex;

    .line 875
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lorg/apache/commons/math3/complex/Complex;->abs()D

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->log(D)D

    move-result-wide v0

    iget-wide v2, p0, Lorg/apache/commons/math3/complex/Complex;->imaginary:D

    iget-wide v4, p0, Lorg/apache/commons/math3/complex/Complex;->real:D

    invoke-static {v2, v3, v4, v5}, Lorg/apache/commons/math3/util/FastMath;->atan2(DD)D

    move-result-wide v2

    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/apache/commons/math3/complex/Complex;->createComplex(DD)Lorg/apache/commons/math3/complex/Complex;

    move-result-object v0

    goto :goto_0
.end method

.method public bridge synthetic multiply(I)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 57
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/complex/Complex;->multiply(I)Lorg/apache/commons/math3/complex/Complex;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic multiply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;
        }
    .end annotation

    .prologue
    .line 57
    check-cast p1, Lorg/apache/commons/math3/complex/Complex;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/complex/Complex;->multiply(Lorg/apache/commons/math3/complex/Complex;)Lorg/apache/commons/math3/complex/Complex;

    move-result-object v0

    return-object v0
.end method

.method public multiply(D)Lorg/apache/commons/math3/complex/Complex;
    .locals 5
    .param p1, "factor"    # D

    .prologue
    .line 568
    iget-boolean v0, p0, Lorg/apache/commons/math3/complex/Complex;->isNaN:Z

    if-nez v0, :cond_0

    invoke-static {p1, p2}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 569
    :cond_0
    sget-object v0, Lorg/apache/commons/math3/complex/Complex;->NaN:Lorg/apache/commons/math3/complex/Complex;

    .line 577
    :goto_0
    return-object v0

    .line 571
    :cond_1
    iget-wide v0, p0, Lorg/apache/commons/math3/complex/Complex;->real:D

    invoke-static {v0, v1}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v0

    if-nez v0, :cond_2

    iget-wide v0, p0, Lorg/apache/commons/math3/complex/Complex;->imaginary:D

    invoke-static {v0, v1}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {p1, p2}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 575
    :cond_2
    sget-object v0, Lorg/apache/commons/math3/complex/Complex;->INF:Lorg/apache/commons/math3/complex/Complex;

    goto :goto_0

    .line 577
    :cond_3
    iget-wide v0, p0, Lorg/apache/commons/math3/complex/Complex;->real:D

    mul-double/2addr v0, p1

    iget-wide v2, p0, Lorg/apache/commons/math3/complex/Complex;->imaginary:D

    mul-double/2addr v2, p1

    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/apache/commons/math3/complex/Complex;->createComplex(DD)Lorg/apache/commons/math3/complex/Complex;

    move-result-object v0

    goto :goto_0
.end method

.method public multiply(I)Lorg/apache/commons/math3/complex/Complex;
    .locals 6
    .param p1, "factor"    # I

    .prologue
    .line 549
    iget-boolean v0, p0, Lorg/apache/commons/math3/complex/Complex;->isNaN:Z

    if-eqz v0, :cond_0

    .line 550
    sget-object v0, Lorg/apache/commons/math3/complex/Complex;->NaN:Lorg/apache/commons/math3/complex/Complex;

    .line 556
    :goto_0
    return-object v0

    .line 552
    :cond_0
    iget-wide v0, p0, Lorg/apache/commons/math3/complex/Complex;->real:D

    invoke-static {v0, v1}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v0

    if-nez v0, :cond_1

    iget-wide v0, p0, Lorg/apache/commons/math3/complex/Complex;->imaginary:D

    invoke-static {v0, v1}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 554
    :cond_1
    sget-object v0, Lorg/apache/commons/math3/complex/Complex;->INF:Lorg/apache/commons/math3/complex/Complex;

    goto :goto_0

    .line 556
    :cond_2
    iget-wide v0, p0, Lorg/apache/commons/math3/complex/Complex;->real:D

    int-to-double v2, p1

    mul-double/2addr v0, v2

    iget-wide v2, p0, Lorg/apache/commons/math3/complex/Complex;->imaginary:D

    int-to-double v4, p1

    mul-double/2addr v2, v4

    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/apache/commons/math3/complex/Complex;->createComplex(DD)Lorg/apache/commons/math3/complex/Complex;

    move-result-object v0

    goto :goto_0
.end method

.method public multiply(Lorg/apache/commons/math3/complex/Complex;)Lorg/apache/commons/math3/complex/Complex;
    .locals 8
    .param p1, "factor"    # Lorg/apache/commons/math3/complex/Complex;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;
        }
    .end annotation

    .prologue
    .line 525
    invoke-static {p1}, Lorg/apache/commons/math3/util/MathUtils;->checkNotNull(Ljava/lang/Object;)V

    .line 526
    iget-boolean v0, p0, Lorg/apache/commons/math3/complex/Complex;->isNaN:Z

    if-nez v0, :cond_0

    iget-boolean v0, p1, Lorg/apache/commons/math3/complex/Complex;->isNaN:Z

    if-eqz v0, :cond_1

    .line 527
    :cond_0
    sget-object v0, Lorg/apache/commons/math3/complex/Complex;->NaN:Lorg/apache/commons/math3/complex/Complex;

    .line 536
    :goto_0
    return-object v0

    .line 529
    :cond_1
    iget-wide v0, p0, Lorg/apache/commons/math3/complex/Complex;->real:D

    invoke-static {v0, v1}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v0

    if-nez v0, :cond_2

    iget-wide v0, p0, Lorg/apache/commons/math3/complex/Complex;->imaginary:D

    invoke-static {v0, v1}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v0

    if-nez v0, :cond_2

    iget-wide v0, p1, Lorg/apache/commons/math3/complex/Complex;->real:D

    invoke-static {v0, v1}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v0

    if-nez v0, :cond_2

    iget-wide v0, p1, Lorg/apache/commons/math3/complex/Complex;->imaginary:D

    invoke-static {v0, v1}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 534
    :cond_2
    sget-object v0, Lorg/apache/commons/math3/complex/Complex;->INF:Lorg/apache/commons/math3/complex/Complex;

    goto :goto_0

    .line 536
    :cond_3
    iget-wide v0, p0, Lorg/apache/commons/math3/complex/Complex;->real:D

    iget-wide v2, p1, Lorg/apache/commons/math3/complex/Complex;->real:D

    mul-double/2addr v0, v2

    iget-wide v2, p0, Lorg/apache/commons/math3/complex/Complex;->imaginary:D

    iget-wide v4, p1, Lorg/apache/commons/math3/complex/Complex;->imaginary:D

    mul-double/2addr v2, v4

    sub-double/2addr v0, v2

    iget-wide v2, p0, Lorg/apache/commons/math3/complex/Complex;->real:D

    iget-wide v4, p1, Lorg/apache/commons/math3/complex/Complex;->imaginary:D

    mul-double/2addr v2, v4

    iget-wide v4, p0, Lorg/apache/commons/math3/complex/Complex;->imaginary:D

    iget-wide v6, p1, Lorg/apache/commons/math3/complex/Complex;->real:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/apache/commons/math3/complex/Complex;->createComplex(DD)Lorg/apache/commons/math3/complex/Complex;

    move-result-object v0

    goto :goto_0
.end method

.method public bridge synthetic negate()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 57
    invoke-virtual {p0}, Lorg/apache/commons/math3/complex/Complex;->negate()Lorg/apache/commons/math3/complex/Complex;

    move-result-object v0

    return-object v0
.end method

.method public negate()Lorg/apache/commons/math3/complex/Complex;
    .locals 4

    .prologue
    .line 588
    iget-boolean v0, p0, Lorg/apache/commons/math3/complex/Complex;->isNaN:Z

    if-eqz v0, :cond_0

    .line 589
    sget-object v0, Lorg/apache/commons/math3/complex/Complex;->NaN:Lorg/apache/commons/math3/complex/Complex;

    .line 592
    :goto_0
    return-object v0

    :cond_0
    iget-wide v0, p0, Lorg/apache/commons/math3/complex/Complex;->real:D

    neg-double v0, v0

    iget-wide v2, p0, Lorg/apache/commons/math3/complex/Complex;->imaginary:D

    neg-double v2, v2

    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/apache/commons/math3/complex/Complex;->createComplex(DD)Lorg/apache/commons/math3/complex/Complex;

    move-result-object v0

    goto :goto_0
.end method

.method public nthRoot(I)Ljava/util/List;
    .locals 22
    .param p1, "n"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Lorg/apache/commons/math3/complex/Complex;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NotPositiveException;
        }
    .end annotation

    .prologue
    .line 1218
    if-gtz p1, :cond_0

    .line 1219
    new-instance v16, Lorg/apache/commons/math3/exception/NotPositiveException;

    sget-object v17, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->CANNOT_COMPUTE_NTH_ROOT_FOR_NEGATIVE_N:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    invoke-direct/range {v16 .. v18}, Lorg/apache/commons/math3/exception/NotPositiveException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;Ljava/lang/Number;)V

    throw v16

    .line 1223
    :cond_0
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 1225
    .local v7, "result":Ljava/util/List;, "Ljava/util/List<Lorg/apache/commons/math3/complex/Complex;>;"
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/apache/commons/math3/complex/Complex;->isNaN:Z

    move/from16 v16, v0

    if-eqz v16, :cond_2

    .line 1226
    sget-object v16, Lorg/apache/commons/math3/complex/Complex;->NaN:Lorg/apache/commons/math3/complex/Complex;

    move-object/from16 v0, v16

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1249
    :cond_1
    :goto_0
    return-object v7

    .line 1229
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/complex/Complex;->isInfinite()Z

    move-result v16

    if-eqz v16, :cond_3

    .line 1230
    sget-object v16, Lorg/apache/commons/math3/complex/Complex;->INF:Lorg/apache/commons/math3/complex/Complex;

    move-object/from16 v0, v16

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1235
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/complex/Complex;->abs()D

    move-result-wide v16

    const-wide/high16 v18, 0x3ff0000000000000L    # 1.0

    move/from16 v0, p1

    int-to-double v0, v0

    move-wide/from16 v20, v0

    div-double v18, v18, v20

    invoke-static/range {v16 .. v19}, Lorg/apache/commons/math3/util/FastMath;->pow(DD)D

    move-result-wide v10

    .line 1238
    .local v10, "nthRootOfAbs":D
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/complex/Complex;->getArgument()D

    move-result-wide v16

    move/from16 v0, p1

    int-to-double v0, v0

    move-wide/from16 v18, v0

    div-double v8, v16, v18

    .line 1239
    .local v8, "nthPhi":D
    const-wide v16, 0x401921fb54442d18L    # 6.283185307179586

    move/from16 v0, p1

    int-to-double v0, v0

    move-wide/from16 v18, v0

    div-double v14, v16, v18

    .line 1240
    .local v14, "slice":D
    move-wide v4, v8

    .line 1241
    .local v4, "innerPart":D
    const/4 v6, 0x0

    .local v6, "k":I
    :goto_1
    move/from16 v0, p1

    if-ge v6, v0, :cond_1

    .line 1243
    invoke-static {v4, v5}, Lorg/apache/commons/math3/util/FastMath;->cos(D)D

    move-result-wide v16

    mul-double v12, v10, v16

    .line 1244
    .local v12, "realPart":D
    invoke-static {v4, v5}, Lorg/apache/commons/math3/util/FastMath;->sin(D)D

    move-result-wide v16

    mul-double v2, v10, v16

    .line 1245
    .local v2, "imaginaryPart":D
    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v13, v2, v3}, Lorg/apache/commons/math3/complex/Complex;->createComplex(DD)Lorg/apache/commons/math3/complex/Complex;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1246
    add-double/2addr v4, v14

    .line 1241
    add-int/lit8 v6, v6, 0x1

    goto :goto_1
.end method

.method public pow(D)Lorg/apache/commons/math3/complex/Complex;
    .locals 1
    .param p1, "x"    # D

    .prologue
    .line 913
    invoke-virtual {p0}, Lorg/apache/commons/math3/complex/Complex;->log()Lorg/apache/commons/math3/complex/Complex;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/apache/commons/math3/complex/Complex;->multiply(D)Lorg/apache/commons/math3/complex/Complex;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/math3/complex/Complex;->exp()Lorg/apache/commons/math3/complex/Complex;

    move-result-object v0

    return-object v0
.end method

.method public pow(Lorg/apache/commons/math3/complex/Complex;)Lorg/apache/commons/math3/complex/Complex;
    .locals 1
    .param p1, "x"    # Lorg/apache/commons/math3/complex/Complex;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;
        }
    .end annotation

    .prologue
    .line 901
    invoke-static {p1}, Lorg/apache/commons/math3/util/MathUtils;->checkNotNull(Ljava/lang/Object;)V

    .line 902
    invoke-virtual {p0}, Lorg/apache/commons/math3/complex/Complex;->log()Lorg/apache/commons/math3/complex/Complex;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/commons/math3/complex/Complex;->multiply(Lorg/apache/commons/math3/complex/Complex;)Lorg/apache/commons/math3/complex/Complex;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/math3/complex/Complex;->exp()Lorg/apache/commons/math3/complex/Complex;

    move-result-object v0

    return-object v0
.end method

.method protected final readResolve()Ljava/lang/Object;
    .locals 4

    .prologue
    .line 1304
    iget-wide v0, p0, Lorg/apache/commons/math3/complex/Complex;->real:D

    iget-wide v2, p0, Lorg/apache/commons/math3/complex/Complex;->imaginary:D

    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/apache/commons/math3/complex/Complex;->createComplex(DD)Lorg/apache/commons/math3/complex/Complex;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic reciprocal()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathArithmeticException;
        }
    .end annotation

    .prologue
    .line 57
    invoke-virtual {p0}, Lorg/apache/commons/math3/complex/Complex;->reciprocal()Lorg/apache/commons/math3/complex/Complex;

    move-result-object v0

    return-object v0
.end method

.method public reciprocal()Lorg/apache/commons/math3/complex/Complex;
    .locals 10

    .prologue
    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    const-wide/16 v6, 0x0

    .line 300
    iget-boolean v4, p0, Lorg/apache/commons/math3/complex/Complex;->isNaN:Z

    if-eqz v4, :cond_0

    .line 301
    sget-object v4, Lorg/apache/commons/math3/complex/Complex;->NaN:Lorg/apache/commons/math3/complex/Complex;

    .line 319
    :goto_0
    return-object v4

    .line 304
    :cond_0
    iget-wide v4, p0, Lorg/apache/commons/math3/complex/Complex;->real:D

    cmpl-double v4, v4, v6

    if-nez v4, :cond_1

    iget-wide v4, p0, Lorg/apache/commons/math3/complex/Complex;->imaginary:D

    cmpl-double v4, v4, v6

    if-nez v4, :cond_1

    .line 305
    sget-object v4, Lorg/apache/commons/math3/complex/Complex;->INF:Lorg/apache/commons/math3/complex/Complex;

    goto :goto_0

    .line 308
    :cond_1
    iget-boolean v4, p0, Lorg/apache/commons/math3/complex/Complex;->isInfinite:Z

    if-eqz v4, :cond_2

    .line 309
    sget-object v4, Lorg/apache/commons/math3/complex/Complex;->ZERO:Lorg/apache/commons/math3/complex/Complex;

    goto :goto_0

    .line 312
    :cond_2
    iget-wide v4, p0, Lorg/apache/commons/math3/complex/Complex;->real:D

    invoke-static {v4, v5}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v4

    iget-wide v6, p0, Lorg/apache/commons/math3/complex/Complex;->imaginary:D

    invoke-static {v6, v7}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v6

    cmpg-double v4, v4, v6

    if-gez v4, :cond_3

    .line 313
    iget-wide v4, p0, Lorg/apache/commons/math3/complex/Complex;->real:D

    iget-wide v6, p0, Lorg/apache/commons/math3/complex/Complex;->imaginary:D

    div-double v0, v4, v6

    .line 314
    .local v0, "q":D
    iget-wide v4, p0, Lorg/apache/commons/math3/complex/Complex;->real:D

    mul-double/2addr v4, v0

    iget-wide v6, p0, Lorg/apache/commons/math3/complex/Complex;->imaginary:D

    add-double/2addr v4, v6

    div-double v2, v8, v4

    .line 315
    .local v2, "scale":D
    mul-double v4, v2, v0

    neg-double v6, v2

    invoke-virtual {p0, v4, v5, v6, v7}, Lorg/apache/commons/math3/complex/Complex;->createComplex(DD)Lorg/apache/commons/math3/complex/Complex;

    move-result-object v4

    goto :goto_0

    .line 317
    .end local v0    # "q":D
    .end local v2    # "scale":D
    :cond_3
    iget-wide v4, p0, Lorg/apache/commons/math3/complex/Complex;->imaginary:D

    iget-wide v6, p0, Lorg/apache/commons/math3/complex/Complex;->real:D

    div-double v0, v4, v6

    .line 318
    .restart local v0    # "q":D
    iget-wide v4, p0, Lorg/apache/commons/math3/complex/Complex;->imaginary:D

    mul-double/2addr v4, v0

    iget-wide v6, p0, Lorg/apache/commons/math3/complex/Complex;->real:D

    add-double/2addr v4, v6

    div-double v2, v8, v4

    .line 319
    .restart local v2    # "scale":D
    neg-double v4, v2

    mul-double/2addr v4, v0

    invoke-virtual {p0, v2, v3, v4, v5}, Lorg/apache/commons/math3/complex/Complex;->createComplex(DD)Lorg/apache/commons/math3/complex/Complex;

    move-result-object v4

    goto :goto_0
.end method

.method public sin()Lorg/apache/commons/math3/complex/Complex;
    .locals 6

    .prologue
    .line 949
    iget-boolean v0, p0, Lorg/apache/commons/math3/complex/Complex;->isNaN:Z

    if-eqz v0, :cond_0

    .line 950
    sget-object v0, Lorg/apache/commons/math3/complex/Complex;->NaN:Lorg/apache/commons/math3/complex/Complex;

    .line 953
    :goto_0
    return-object v0

    :cond_0
    iget-wide v0, p0, Lorg/apache/commons/math3/complex/Complex;->real:D

    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->sin(D)D

    move-result-wide v0

    iget-wide v2, p0, Lorg/apache/commons/math3/complex/Complex;->imaginary:D

    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/FastMath;->cosh(D)D

    move-result-wide v2

    mul-double/2addr v0, v2

    iget-wide v2, p0, Lorg/apache/commons/math3/complex/Complex;->real:D

    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/FastMath;->cos(D)D

    move-result-wide v2

    iget-wide v4, p0, Lorg/apache/commons/math3/complex/Complex;->imaginary:D

    invoke-static {v4, v5}, Lorg/apache/commons/math3/util/FastMath;->sinh(D)D

    move-result-wide v4

    mul-double/2addr v2, v4

    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/apache/commons/math3/complex/Complex;->createComplex(DD)Lorg/apache/commons/math3/complex/Complex;

    move-result-object v0

    goto :goto_0
.end method

.method public sinh()Lorg/apache/commons/math3/complex/Complex;
    .locals 6

    .prologue
    .line 989
    iget-boolean v0, p0, Lorg/apache/commons/math3/complex/Complex;->isNaN:Z

    if-eqz v0, :cond_0

    .line 990
    sget-object v0, Lorg/apache/commons/math3/complex/Complex;->NaN:Lorg/apache/commons/math3/complex/Complex;

    .line 993
    :goto_0
    return-object v0

    :cond_0
    iget-wide v0, p0, Lorg/apache/commons/math3/complex/Complex;->real:D

    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->sinh(D)D

    move-result-wide v0

    iget-wide v2, p0, Lorg/apache/commons/math3/complex/Complex;->imaginary:D

    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/FastMath;->cos(D)D

    move-result-wide v2

    mul-double/2addr v0, v2

    iget-wide v2, p0, Lorg/apache/commons/math3/complex/Complex;->real:D

    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/FastMath;->cosh(D)D

    move-result-wide v2

    iget-wide v4, p0, Lorg/apache/commons/math3/complex/Complex;->imaginary:D

    invoke-static {v4, v5}, Lorg/apache/commons/math3/util/FastMath;->sin(D)D

    move-result-wide v4

    mul-double/2addr v2, v4

    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/apache/commons/math3/complex/Complex;->createComplex(DD)Lorg/apache/commons/math3/complex/Complex;

    move-result-object v0

    goto :goto_0
.end method

.method public sqrt()Lorg/apache/commons/math3/complex/Complex;
    .locals 10

    .prologue
    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    const-wide/16 v6, 0x0

    .line 1032
    iget-boolean v2, p0, Lorg/apache/commons/math3/complex/Complex;->isNaN:Z

    if-eqz v2, :cond_0

    .line 1033
    sget-object v2, Lorg/apache/commons/math3/complex/Complex;->NaN:Lorg/apache/commons/math3/complex/Complex;

    .line 1044
    :goto_0
    return-object v2

    .line 1036
    :cond_0
    iget-wide v2, p0, Lorg/apache/commons/math3/complex/Complex;->real:D

    cmpl-double v2, v2, v6

    if-nez v2, :cond_1

    iget-wide v2, p0, Lorg/apache/commons/math3/complex/Complex;->imaginary:D

    cmpl-double v2, v2, v6

    if-nez v2, :cond_1

    .line 1037
    invoke-virtual {p0, v6, v7, v6, v7}, Lorg/apache/commons/math3/complex/Complex;->createComplex(DD)Lorg/apache/commons/math3/complex/Complex;

    move-result-object v2

    goto :goto_0

    .line 1040
    :cond_1
    iget-wide v2, p0, Lorg/apache/commons/math3/complex/Complex;->real:D

    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v2

    invoke-virtual {p0}, Lorg/apache/commons/math3/complex/Complex;->abs()D

    move-result-wide v4

    add-double/2addr v2, v4

    div-double/2addr v2, v8

    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v0

    .line 1041
    .local v0, "t":D
    iget-wide v2, p0, Lorg/apache/commons/math3/complex/Complex;->real:D

    cmpl-double v2, v2, v6

    if-ltz v2, :cond_2

    .line 1042
    iget-wide v2, p0, Lorg/apache/commons/math3/complex/Complex;->imaginary:D

    mul-double v4, v8, v0

    div-double/2addr v2, v4

    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/apache/commons/math3/complex/Complex;->createComplex(DD)Lorg/apache/commons/math3/complex/Complex;

    move-result-object v2

    goto :goto_0

    .line 1044
    :cond_2
    iget-wide v2, p0, Lorg/apache/commons/math3/complex/Complex;->imaginary:D

    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v2

    mul-double v4, v8, v0

    div-double/2addr v2, v4

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    iget-wide v6, p0, Lorg/apache/commons/math3/complex/Complex;->imaginary:D

    invoke-static {v4, v5, v6, v7}, Lorg/apache/commons/math3/util/FastMath;->copySign(DD)D

    move-result-wide v4

    mul-double/2addr v4, v0

    invoke-virtual {p0, v2, v3, v4, v5}, Lorg/apache/commons/math3/complex/Complex;->createComplex(DD)Lorg/apache/commons/math3/complex/Complex;

    move-result-object v2

    goto :goto_0
.end method

.method public sqrt1z()Lorg/apache/commons/math3/complex/Complex;
    .locals 4

    .prologue
    .line 1067
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    const-wide/16 v2, 0x0

    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/apache/commons/math3/complex/Complex;->createComplex(DD)Lorg/apache/commons/math3/complex/Complex;

    move-result-object v0

    invoke-virtual {p0, p0}, Lorg/apache/commons/math3/complex/Complex;->multiply(Lorg/apache/commons/math3/complex/Complex;)Lorg/apache/commons/math3/complex/Complex;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/complex/Complex;->subtract(Lorg/apache/commons/math3/complex/Complex;)Lorg/apache/commons/math3/complex/Complex;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/math3/complex/Complex;->sqrt()Lorg/apache/commons/math3/complex/Complex;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic subtract(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;
        }
    .end annotation

    .prologue
    .line 57
    check-cast p1, Lorg/apache/commons/math3/complex/Complex;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/complex/Complex;->subtract(Lorg/apache/commons/math3/complex/Complex;)Lorg/apache/commons/math3/complex/Complex;

    move-result-object v0

    return-object v0
.end method

.method public subtract(D)Lorg/apache/commons/math3/complex/Complex;
    .locals 5
    .param p1, "subtrahend"    # D

    .prologue
    .line 633
    iget-boolean v0, p0, Lorg/apache/commons/math3/complex/Complex;->isNaN:Z

    if-nez v0, :cond_0

    invoke-static {p1, p2}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 634
    :cond_0
    sget-object v0, Lorg/apache/commons/math3/complex/Complex;->NaN:Lorg/apache/commons/math3/complex/Complex;

    .line 636
    :goto_0
    return-object v0

    :cond_1
    iget-wide v0, p0, Lorg/apache/commons/math3/complex/Complex;->real:D

    sub-double/2addr v0, p1

    iget-wide v2, p0, Lorg/apache/commons/math3/complex/Complex;->imaginary:D

    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/apache/commons/math3/complex/Complex;->createComplex(DD)Lorg/apache/commons/math3/complex/Complex;

    move-result-object v0

    goto :goto_0
.end method

.method public subtract(Lorg/apache/commons/math3/complex/Complex;)Lorg/apache/commons/math3/complex/Complex;
    .locals 6
    .param p1, "subtrahend"    # Lorg/apache/commons/math3/complex/Complex;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;
        }
    .end annotation

    .prologue
    .line 615
    invoke-static {p1}, Lorg/apache/commons/math3/util/MathUtils;->checkNotNull(Ljava/lang/Object;)V

    .line 616
    iget-boolean v0, p0, Lorg/apache/commons/math3/complex/Complex;->isNaN:Z

    if-nez v0, :cond_0

    iget-boolean v0, p1, Lorg/apache/commons/math3/complex/Complex;->isNaN:Z

    if-eqz v0, :cond_1

    .line 617
    :cond_0
    sget-object v0, Lorg/apache/commons/math3/complex/Complex;->NaN:Lorg/apache/commons/math3/complex/Complex;

    .line 620
    :goto_0
    return-object v0

    :cond_1
    iget-wide v0, p0, Lorg/apache/commons/math3/complex/Complex;->real:D

    invoke-virtual {p1}, Lorg/apache/commons/math3/complex/Complex;->getReal()D

    move-result-wide v2

    sub-double/2addr v0, v2

    iget-wide v2, p0, Lorg/apache/commons/math3/complex/Complex;->imaginary:D

    invoke-virtual {p1}, Lorg/apache/commons/math3/complex/Complex;->getImaginary()D

    move-result-wide v4

    sub-double/2addr v2, v4

    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/apache/commons/math3/complex/Complex;->createComplex(DD)Lorg/apache/commons/math3/complex/Complex;

    move-result-object v0

    goto :goto_0
.end method

.method public tan()Lorg/apache/commons/math3/complex/Complex;
    .locals 14

    .prologue
    const-wide/high16 v12, 0x4000000000000000L    # 2.0

    const-wide/16 v10, 0x0

    .line 1103
    iget-boolean v6, p0, Lorg/apache/commons/math3/complex/Complex;->isNaN:Z

    if-nez v6, :cond_0

    iget-wide v6, p0, Lorg/apache/commons/math3/complex/Complex;->real:D

    invoke-static {v6, v7}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1104
    :cond_0
    sget-object v6, Lorg/apache/commons/math3/complex/Complex;->NaN:Lorg/apache/commons/math3/complex/Complex;

    .line 1117
    :goto_0
    return-object v6

    .line 1106
    :cond_1
    iget-wide v6, p0, Lorg/apache/commons/math3/complex/Complex;->imaginary:D

    const-wide/high16 v8, 0x4034000000000000L    # 20.0

    cmpl-double v6, v6, v8

    if-lez v6, :cond_2

    .line 1107
    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    invoke-virtual {p0, v10, v11, v6, v7}, Lorg/apache/commons/math3/complex/Complex;->createComplex(DD)Lorg/apache/commons/math3/complex/Complex;

    move-result-object v6

    goto :goto_0

    .line 1109
    :cond_2
    iget-wide v6, p0, Lorg/apache/commons/math3/complex/Complex;->imaginary:D

    const-wide/high16 v8, -0x3fcc000000000000L    # -20.0

    cmpg-double v6, v6, v8

    if-gez v6, :cond_3

    .line 1110
    const-wide/high16 v6, -0x4010000000000000L    # -1.0

    invoke-virtual {p0, v10, v11, v6, v7}, Lorg/apache/commons/math3/complex/Complex;->createComplex(DD)Lorg/apache/commons/math3/complex/Complex;

    move-result-object v6

    goto :goto_0

    .line 1113
    :cond_3
    iget-wide v6, p0, Lorg/apache/commons/math3/complex/Complex;->real:D

    mul-double v4, v12, v6

    .line 1114
    .local v4, "real2":D
    iget-wide v6, p0, Lorg/apache/commons/math3/complex/Complex;->imaginary:D

    mul-double v2, v12, v6

    .line 1115
    .local v2, "imaginary2":D
    invoke-static {v4, v5}, Lorg/apache/commons/math3/util/FastMath;->cos(D)D

    move-result-wide v6

    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/FastMath;->cosh(D)D

    move-result-wide v8

    add-double v0, v6, v8

    .line 1117
    .local v0, "d":D
    invoke-static {v4, v5}, Lorg/apache/commons/math3/util/FastMath;->sin(D)D

    move-result-wide v6

    div-double/2addr v6, v0

    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/FastMath;->sinh(D)D

    move-result-wide v8

    div-double/2addr v8, v0

    invoke-virtual {p0, v6, v7, v8, v9}, Lorg/apache/commons/math3/complex/Complex;->createComplex(DD)Lorg/apache/commons/math3/complex/Complex;

    move-result-object v6

    goto :goto_0
.end method

.method public tanh()Lorg/apache/commons/math3/complex/Complex;
    .locals 14

    .prologue
    const-wide/high16 v12, 0x4000000000000000L    # 2.0

    const-wide/16 v10, 0x0

    .line 1154
    iget-boolean v6, p0, Lorg/apache/commons/math3/complex/Complex;->isNaN:Z

    if-nez v6, :cond_0

    iget-wide v6, p0, Lorg/apache/commons/math3/complex/Complex;->imaginary:D

    invoke-static {v6, v7}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1155
    :cond_0
    sget-object v6, Lorg/apache/commons/math3/complex/Complex;->NaN:Lorg/apache/commons/math3/complex/Complex;

    .line 1167
    :goto_0
    return-object v6

    .line 1157
    :cond_1
    iget-wide v6, p0, Lorg/apache/commons/math3/complex/Complex;->real:D

    const-wide/high16 v8, 0x4034000000000000L    # 20.0

    cmpl-double v6, v6, v8

    if-lez v6, :cond_2

    .line 1158
    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    invoke-virtual {p0, v6, v7, v10, v11}, Lorg/apache/commons/math3/complex/Complex;->createComplex(DD)Lorg/apache/commons/math3/complex/Complex;

    move-result-object v6

    goto :goto_0

    .line 1160
    :cond_2
    iget-wide v6, p0, Lorg/apache/commons/math3/complex/Complex;->real:D

    const-wide/high16 v8, -0x3fcc000000000000L    # -20.0

    cmpg-double v6, v6, v8

    if-gez v6, :cond_3

    .line 1161
    const-wide/high16 v6, -0x4010000000000000L    # -1.0

    invoke-virtual {p0, v6, v7, v10, v11}, Lorg/apache/commons/math3/complex/Complex;->createComplex(DD)Lorg/apache/commons/math3/complex/Complex;

    move-result-object v6

    goto :goto_0

    .line 1163
    :cond_3
    iget-wide v6, p0, Lorg/apache/commons/math3/complex/Complex;->real:D

    mul-double v4, v12, v6

    .line 1164
    .local v4, "real2":D
    iget-wide v6, p0, Lorg/apache/commons/math3/complex/Complex;->imaginary:D

    mul-double v2, v12, v6

    .line 1165
    .local v2, "imaginary2":D
    invoke-static {v4, v5}, Lorg/apache/commons/math3/util/FastMath;->cosh(D)D

    move-result-wide v6

    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/FastMath;->cos(D)D

    move-result-wide v8

    add-double v0, v6, v8

    .line 1167
    .local v0, "d":D
    invoke-static {v4, v5}, Lorg/apache/commons/math3/util/FastMath;->sinh(D)D

    move-result-wide v6

    div-double/2addr v6, v0

    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/FastMath;->sin(D)D

    move-result-wide v8

    div-double/2addr v8, v0

    invoke-virtual {p0, v6, v7, v8, v9}, Lorg/apache/commons/math3/complex/Complex;->createComplex(DD)Lorg/apache/commons/math3/complex/Complex;

    move-result-object v6

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 1315
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lorg/apache/commons/math3/complex/Complex;->real:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lorg/apache/commons/math3/complex/Complex;->imaginary:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
