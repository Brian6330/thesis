.class public Lorg/apache/commons/math3/util/Decimal64;
.super Ljava/lang/Number;
.source "Decimal64.java"

# interfaces
.implements Lorg/apache/commons/math3/RealFieldElement;
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Number;",
        "Lorg/apache/commons/math3/RealFieldElement",
        "<",
        "Lorg/apache/commons/math3/util/Decimal64;",
        ">;",
        "Ljava/lang/Comparable",
        "<",
        "Lorg/apache/commons/math3/util/Decimal64;",
        ">;"
    }
.end annotation


# static fields
.field public static final NAN:Lorg/apache/commons/math3/util/Decimal64;

.field public static final NEGATIVE_INFINITY:Lorg/apache/commons/math3/util/Decimal64;

.field public static final ONE:Lorg/apache/commons/math3/util/Decimal64;

.field public static final POSITIVE_INFINITY:Lorg/apache/commons/math3/util/Decimal64;

.field public static final ZERO:Lorg/apache/commons/math3/util/Decimal64;

.field private static final serialVersionUID:J = 0x13302a3L


# instance fields
.field private final value:D


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 58
    new-instance v0, Lorg/apache/commons/math3/util/Decimal64;

    const-wide/16 v2, 0x0

    invoke-direct {v0, v2, v3}, Lorg/apache/commons/math3/util/Decimal64;-><init>(D)V

    sput-object v0, Lorg/apache/commons/math3/util/Decimal64;->ZERO:Lorg/apache/commons/math3/util/Decimal64;

    .line 59
    new-instance v0, Lorg/apache/commons/math3/util/Decimal64;

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    invoke-direct {v0, v2, v3}, Lorg/apache/commons/math3/util/Decimal64;-><init>(D)V

    sput-object v0, Lorg/apache/commons/math3/util/Decimal64;->ONE:Lorg/apache/commons/math3/util/Decimal64;

    .line 60
    new-instance v0, Lorg/apache/commons/math3/util/Decimal64;

    const-wide/high16 v2, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    invoke-direct {v0, v2, v3}, Lorg/apache/commons/math3/util/Decimal64;-><init>(D)V

    sput-object v0, Lorg/apache/commons/math3/util/Decimal64;->NEGATIVE_INFINITY:Lorg/apache/commons/math3/util/Decimal64;

    .line 61
    new-instance v0, Lorg/apache/commons/math3/util/Decimal64;

    const-wide/high16 v2, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    invoke-direct {v0, v2, v3}, Lorg/apache/commons/math3/util/Decimal64;-><init>(D)V

    sput-object v0, Lorg/apache/commons/math3/util/Decimal64;->POSITIVE_INFINITY:Lorg/apache/commons/math3/util/Decimal64;

    .line 62
    new-instance v0, Lorg/apache/commons/math3/util/Decimal64;

    const-wide/high16 v2, 0x7ff8000000000000L    # NaN

    invoke-direct {v0, v2, v3}, Lorg/apache/commons/math3/util/Decimal64;-><init>(D)V

    sput-object v0, Lorg/apache/commons/math3/util/Decimal64;->NAN:Lorg/apache/commons/math3/util/Decimal64;

    .line 63
    return-void
.end method

.method public constructor <init>(D)V
    .locals 1
    .param p1, "x"    # D

    .prologue
    .line 73
    invoke-direct {p0}, Ljava/lang/Number;-><init>()V

    .line 74
    iput-wide p1, p0, Lorg/apache/commons/math3/util/Decimal64;->value:D

    .line 75
    return-void
.end method


# virtual methods
.method public bridge synthetic abs()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 30
    invoke-virtual {p0}, Lorg/apache/commons/math3/util/Decimal64;->abs()Lorg/apache/commons/math3/util/Decimal64;

    move-result-object v0

    return-object v0
.end method

.method public abs()Lorg/apache/commons/math3/util/Decimal64;
    .locals 4

    .prologue
    .line 358
    new-instance v0, Lorg/apache/commons/math3/util/Decimal64;

    iget-wide v2, p0, Lorg/apache/commons/math3/util/Decimal64;->value:D

    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Lorg/apache/commons/math3/util/Decimal64;-><init>(D)V

    return-object v0
.end method

.method public bridge synthetic acos()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 30
    invoke-virtual {p0}, Lorg/apache/commons/math3/util/Decimal64;->acos()Lorg/apache/commons/math3/util/Decimal64;

    move-result-object v0

    return-object v0
.end method

.method public acos()Lorg/apache/commons/math3/util/Decimal64;
    .locals 4

    .prologue
    .line 531
    new-instance v0, Lorg/apache/commons/math3/util/Decimal64;

    iget-wide v2, p0, Lorg/apache/commons/math3/util/Decimal64;->value:D

    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/FastMath;->acos(D)D

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Lorg/apache/commons/math3/util/Decimal64;-><init>(D)V

    return-object v0
.end method

.method public bridge synthetic acosh()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 30
    invoke-virtual {p0}, Lorg/apache/commons/math3/util/Decimal64;->acosh()Lorg/apache/commons/math3/util/Decimal64;

    move-result-object v0

    return-object v0
.end method

.method public acosh()Lorg/apache/commons/math3/util/Decimal64;
    .locals 4

    .prologue
    .line 580
    new-instance v0, Lorg/apache/commons/math3/util/Decimal64;

    iget-wide v2, p0, Lorg/apache/commons/math3/util/Decimal64;->value:D

    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/FastMath;->acosh(D)D

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Lorg/apache/commons/math3/util/Decimal64;-><init>(D)V

    return-object v0
.end method

.method public bridge synthetic add(D)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # D

    .prologue
    .line 30
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/math3/util/Decimal64;->add(D)Lorg/apache/commons/math3/util/Decimal64;

    move-result-object v0

    return-object v0
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
    .line 30
    check-cast p1, Lorg/apache/commons/math3/util/Decimal64;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/util/Decimal64;->add(Lorg/apache/commons/math3/util/Decimal64;)Lorg/apache/commons/math3/util/Decimal64;

    move-result-object v0

    return-object v0
.end method

.method public add(D)Lorg/apache/commons/math3/util/Decimal64;
    .locals 5
    .param p1, "a"    # D

    .prologue
    .line 316
    new-instance v0, Lorg/apache/commons/math3/util/Decimal64;

    iget-wide v2, p0, Lorg/apache/commons/math3/util/Decimal64;->value:D

    add-double/2addr v2, p1

    invoke-direct {v0, v2, v3}, Lorg/apache/commons/math3/util/Decimal64;-><init>(D)V

    return-object v0
.end method

.method public add(Lorg/apache/commons/math3/util/Decimal64;)Lorg/apache/commons/math3/util/Decimal64;
    .locals 6
    .param p1, "a"    # Lorg/apache/commons/math3/util/Decimal64;

    .prologue
    .line 94
    new-instance v0, Lorg/apache/commons/math3/util/Decimal64;

    iget-wide v2, p0, Lorg/apache/commons/math3/util/Decimal64;->value:D

    iget-wide v4, p1, Lorg/apache/commons/math3/util/Decimal64;->value:D

    add-double/2addr v2, v4

    invoke-direct {v0, v2, v3}, Lorg/apache/commons/math3/util/Decimal64;-><init>(D)V

    return-object v0
.end method

.method public bridge synthetic asin()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 30
    invoke-virtual {p0}, Lorg/apache/commons/math3/util/Decimal64;->asin()Lorg/apache/commons/math3/util/Decimal64;

    move-result-object v0

    return-object v0
.end method

.method public asin()Lorg/apache/commons/math3/util/Decimal64;
    .locals 4

    .prologue
    .line 538
    new-instance v0, Lorg/apache/commons/math3/util/Decimal64;

    iget-wide v2, p0, Lorg/apache/commons/math3/util/Decimal64;->value:D

    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/FastMath;->asin(D)D

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Lorg/apache/commons/math3/util/Decimal64;-><init>(D)V

    return-object v0
.end method

.method public bridge synthetic asinh()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 30
    invoke-virtual {p0}, Lorg/apache/commons/math3/util/Decimal64;->asinh()Lorg/apache/commons/math3/util/Decimal64;

    move-result-object v0

    return-object v0
.end method

.method public asinh()Lorg/apache/commons/math3/util/Decimal64;
    .locals 4

    .prologue
    .line 587
    new-instance v0, Lorg/apache/commons/math3/util/Decimal64;

    iget-wide v2, p0, Lorg/apache/commons/math3/util/Decimal64;->value:D

    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/FastMath;->asinh(D)D

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Lorg/apache/commons/math3/util/Decimal64;-><init>(D)V

    return-object v0
.end method

.method public bridge synthetic atan()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 30
    invoke-virtual {p0}, Lorg/apache/commons/math3/util/Decimal64;->atan()Lorg/apache/commons/math3/util/Decimal64;

    move-result-object v0

    return-object v0
.end method

.method public atan()Lorg/apache/commons/math3/util/Decimal64;
    .locals 4

    .prologue
    .line 545
    new-instance v0, Lorg/apache/commons/math3/util/Decimal64;

    iget-wide v2, p0, Lorg/apache/commons/math3/util/Decimal64;->value:D

    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/FastMath;->atan(D)D

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Lorg/apache/commons/math3/util/Decimal64;-><init>(D)V

    return-object v0
.end method

.method public bridge synthetic atan2(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    .prologue
    .line 30
    check-cast p1, Lorg/apache/commons/math3/util/Decimal64;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/util/Decimal64;->atan2(Lorg/apache/commons/math3/util/Decimal64;)Lorg/apache/commons/math3/util/Decimal64;

    move-result-object v0

    return-object v0
.end method

.method public atan2(Lorg/apache/commons/math3/util/Decimal64;)Lorg/apache/commons/math3/util/Decimal64;
    .locals 6
    .param p1, "x"    # Lorg/apache/commons/math3/util/Decimal64;

    .prologue
    .line 552
    new-instance v0, Lorg/apache/commons/math3/util/Decimal64;

    iget-wide v2, p0, Lorg/apache/commons/math3/util/Decimal64;->value:D

    iget-wide v4, p1, Lorg/apache/commons/math3/util/Decimal64;->value:D

    invoke-static {v2, v3, v4, v5}, Lorg/apache/commons/math3/util/FastMath;->atan2(DD)D

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Lorg/apache/commons/math3/util/Decimal64;-><init>(D)V

    return-object v0
.end method

.method public bridge synthetic atanh()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 30
    invoke-virtual {p0}, Lorg/apache/commons/math3/util/Decimal64;->atanh()Lorg/apache/commons/math3/util/Decimal64;

    move-result-object v0

    return-object v0
.end method

.method public atanh()Lorg/apache/commons/math3/util/Decimal64;
    .locals 4

    .prologue
    .line 594
    new-instance v0, Lorg/apache/commons/math3/util/Decimal64;

    iget-wide v2, p0, Lorg/apache/commons/math3/util/Decimal64;->value:D

    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/FastMath;->atanh(D)D

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Lorg/apache/commons/math3/util/Decimal64;-><init>(D)V

    return-object v0
.end method

.method public byteValue()B
    .locals 2

    .prologue
    .line 173
    iget-wide v0, p0, Lorg/apache/commons/math3/util/Decimal64;->value:D

    double-to-int v0, v0

    int-to-byte v0, v0

    return v0
.end method

.method public bridge synthetic cbrt()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 30
    invoke-virtual {p0}, Lorg/apache/commons/math3/util/Decimal64;->cbrt()Lorg/apache/commons/math3/util/Decimal64;

    move-result-object v0

    return-object v0
.end method

.method public cbrt()Lorg/apache/commons/math3/util/Decimal64;
    .locals 4

    .prologue
    .line 435
    new-instance v0, Lorg/apache/commons/math3/util/Decimal64;

    iget-wide v2, p0, Lorg/apache/commons/math3/util/Decimal64;->value:D

    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/FastMath;->cbrt(D)D

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Lorg/apache/commons/math3/util/Decimal64;-><init>(D)V

    return-object v0
.end method

.method public bridge synthetic ceil()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 30
    invoke-virtual {p0}, Lorg/apache/commons/math3/util/Decimal64;->ceil()Lorg/apache/commons/math3/util/Decimal64;

    move-result-object v0

    return-object v0
.end method

.method public ceil()Lorg/apache/commons/math3/util/Decimal64;
    .locals 4

    .prologue
    .line 365
    new-instance v0, Lorg/apache/commons/math3/util/Decimal64;

    iget-wide v2, p0, Lorg/apache/commons/math3/util/Decimal64;->value:D

    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/FastMath;->ceil(D)D

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Lorg/apache/commons/math3/util/Decimal64;-><init>(D)V

    return-object v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 30
    check-cast p1, Lorg/apache/commons/math3/util/Decimal64;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/util/Decimal64;->compareTo(Lorg/apache/commons/math3/util/Decimal64;)I

    move-result v0

    return v0
.end method

.method public compareTo(Lorg/apache/commons/math3/util/Decimal64;)I
    .locals 4
    .param p1, "o"    # Lorg/apache/commons/math3/util/Decimal64;

    .prologue
    .line 236
    iget-wide v0, p0, Lorg/apache/commons/math3/util/Decimal64;->value:D

    iget-wide v2, p1, Lorg/apache/commons/math3/util/Decimal64;->value:D

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Double;->compare(DD)I

    move-result v0

    return v0
.end method

.method public bridge synthetic copySign(D)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # D

    .prologue
    .line 30
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/math3/util/Decimal64;->copySign(D)Lorg/apache/commons/math3/util/Decimal64;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic copySign(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 30
    check-cast p1, Lorg/apache/commons/math3/util/Decimal64;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/util/Decimal64;->copySign(Lorg/apache/commons/math3/util/Decimal64;)Lorg/apache/commons/math3/util/Decimal64;

    move-result-object v0

    return-object v0
.end method

.method public copySign(D)Lorg/apache/commons/math3/util/Decimal64;
    .locals 5
    .param p1, "sign"    # D

    .prologue
    .line 407
    new-instance v0, Lorg/apache/commons/math3/util/Decimal64;

    iget-wide v2, p0, Lorg/apache/commons/math3/util/Decimal64;->value:D

    invoke-static {v2, v3, p1, p2}, Lorg/apache/commons/math3/util/FastMath;->copySign(DD)D

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Lorg/apache/commons/math3/util/Decimal64;-><init>(D)V

    return-object v0
.end method

.method public copySign(Lorg/apache/commons/math3/util/Decimal64;)Lorg/apache/commons/math3/util/Decimal64;
    .locals 6
    .param p1, "sign"    # Lorg/apache/commons/math3/util/Decimal64;

    .prologue
    .line 400
    new-instance v0, Lorg/apache/commons/math3/util/Decimal64;

    iget-wide v2, p0, Lorg/apache/commons/math3/util/Decimal64;->value:D

    iget-wide v4, p1, Lorg/apache/commons/math3/util/Decimal64;->value:D

    invoke-static {v2, v3, v4, v5}, Lorg/apache/commons/math3/util/FastMath;->copySign(DD)D

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Lorg/apache/commons/math3/util/Decimal64;-><init>(D)V

    return-object v0
.end method

.method public bridge synthetic cos()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 30
    invoke-virtual {p0}, Lorg/apache/commons/math3/util/Decimal64;->cos()Lorg/apache/commons/math3/util/Decimal64;

    move-result-object v0

    return-object v0
.end method

.method public cos()Lorg/apache/commons/math3/util/Decimal64;
    .locals 4

    .prologue
    .line 510
    new-instance v0, Lorg/apache/commons/math3/util/Decimal64;

    iget-wide v2, p0, Lorg/apache/commons/math3/util/Decimal64;->value:D

    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/FastMath;->cos(D)D

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Lorg/apache/commons/math3/util/Decimal64;-><init>(D)V

    return-object v0
.end method

.method public bridge synthetic cosh()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 30
    invoke-virtual {p0}, Lorg/apache/commons/math3/util/Decimal64;->cosh()Lorg/apache/commons/math3/util/Decimal64;

    move-result-object v0

    return-object v0
.end method

.method public cosh()Lorg/apache/commons/math3/util/Decimal64;
    .locals 4

    .prologue
    .line 559
    new-instance v0, Lorg/apache/commons/math3/util/Decimal64;

    iget-wide v2, p0, Lorg/apache/commons/math3/util/Decimal64;->value:D

    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/FastMath;->cosh(D)D

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Lorg/apache/commons/math3/util/Decimal64;-><init>(D)V

    return-object v0
.end method

.method public bridge synthetic divide(D)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # D

    .prologue
    .line 30
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/math3/util/Decimal64;->divide(D)Lorg/apache/commons/math3/util/Decimal64;

    move-result-object v0

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
    .line 30
    check-cast p1, Lorg/apache/commons/math3/util/Decimal64;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/util/Decimal64;->divide(Lorg/apache/commons/math3/util/Decimal64;)Lorg/apache/commons/math3/util/Decimal64;

    move-result-object v0

    return-object v0
.end method

.method public divide(D)Lorg/apache/commons/math3/util/Decimal64;
    .locals 5
    .param p1, "a"    # D

    .prologue
    .line 337
    new-instance v0, Lorg/apache/commons/math3/util/Decimal64;

    iget-wide v2, p0, Lorg/apache/commons/math3/util/Decimal64;->value:D

    div-double/2addr v2, p1

    invoke-direct {v0, v2, v3}, Lorg/apache/commons/math3/util/Decimal64;-><init>(D)V

    return-object v0
.end method

.method public divide(Lorg/apache/commons/math3/util/Decimal64;)Lorg/apache/commons/math3/util/Decimal64;
    .locals 6
    .param p1, "a"    # Lorg/apache/commons/math3/util/Decimal64;

    .prologue
    .line 148
    new-instance v0, Lorg/apache/commons/math3/util/Decimal64;

    iget-wide v2, p0, Lorg/apache/commons/math3/util/Decimal64;->value:D

    iget-wide v4, p1, Lorg/apache/commons/math3/util/Decimal64;->value:D

    div-double/2addr v2, v4

    invoke-direct {v0, v2, v3}, Lorg/apache/commons/math3/util/Decimal64;-><init>(D)V

    return-object v0
.end method

.method public doubleValue()D
    .locals 2

    .prologue
    .line 219
    iget-wide v0, p0, Lorg/apache/commons/math3/util/Decimal64;->value:D

    return-wide v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 246
    instance-of v2, p1, Lorg/apache/commons/math3/util/Decimal64;

    if-eqz v2, :cond_0

    move-object v0, p1

    .line 247
    check-cast v0, Lorg/apache/commons/math3/util/Decimal64;

    .line 248
    .local v0, "that":Lorg/apache/commons/math3/util/Decimal64;
    iget-wide v2, p0, Lorg/apache/commons/math3/util/Decimal64;->value:D

    invoke-static {v2, v3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    iget-wide v4, v0, Lorg/apache/commons/math3/util/Decimal64;->value:D

    invoke-static {v4, v5}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    const/4 v1, 0x1

    .line 251
    .end local v0    # "that":Lorg/apache/commons/math3/util/Decimal64;
    :cond_0
    return v1
.end method

.method public bridge synthetic exp()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 30
    invoke-virtual {p0}, Lorg/apache/commons/math3/util/Decimal64;->exp()Lorg/apache/commons/math3/util/Decimal64;

    move-result-object v0

    return-object v0
.end method

.method public exp()Lorg/apache/commons/math3/util/Decimal64;
    .locals 4

    .prologue
    .line 474
    new-instance v0, Lorg/apache/commons/math3/util/Decimal64;

    iget-wide v2, p0, Lorg/apache/commons/math3/util/Decimal64;->value:D

    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/FastMath;->exp(D)D

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Lorg/apache/commons/math3/util/Decimal64;-><init>(D)V

    return-object v0
.end method

.method public bridge synthetic expm1()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 30
    invoke-virtual {p0}, Lorg/apache/commons/math3/util/Decimal64;->expm1()Lorg/apache/commons/math3/util/Decimal64;

    move-result-object v0

    return-object v0
.end method

.method public expm1()Lorg/apache/commons/math3/util/Decimal64;
    .locals 4

    .prologue
    .line 481
    new-instance v0, Lorg/apache/commons/math3/util/Decimal64;

    iget-wide v2, p0, Lorg/apache/commons/math3/util/Decimal64;->value:D

    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/FastMath;->expm1(D)D

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Lorg/apache/commons/math3/util/Decimal64;-><init>(D)V

    return-object v0
.end method

.method public floatValue()F
    .locals 2

    .prologue
    .line 213
    iget-wide v0, p0, Lorg/apache/commons/math3/util/Decimal64;->value:D

    double-to-float v0, v0

    return v0
.end method

.method public bridge synthetic floor()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 30
    invoke-virtual {p0}, Lorg/apache/commons/math3/util/Decimal64;->floor()Lorg/apache/commons/math3/util/Decimal64;

    move-result-object v0

    return-object v0
.end method

.method public floor()Lorg/apache/commons/math3/util/Decimal64;
    .locals 4

    .prologue
    .line 372
    new-instance v0, Lorg/apache/commons/math3/util/Decimal64;

    iget-wide v2, p0, Lorg/apache/commons/math3/util/Decimal64;->value:D

    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/FastMath;->floor(D)D

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Lorg/apache/commons/math3/util/Decimal64;-><init>(D)V

    return-object v0
.end method

.method public getField()Lorg/apache/commons/math3/Field;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/commons/math3/Field",
            "<",
            "Lorg/apache/commons/math3/util/Decimal64;",
            ">;"
        }
    .end annotation

    .prologue
    .line 83
    invoke-static {}, Lorg/apache/commons/math3/util/Decimal64Field;->getInstance()Lorg/apache/commons/math3/util/Decimal64Field;

    move-result-object v0

    return-object v0
.end method

.method public getReal()D
    .locals 2

    .prologue
    .line 309
    iget-wide v0, p0, Lorg/apache/commons/math3/util/Decimal64;->value:D

    return-wide v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 264
    iget-wide v2, p0, Lorg/apache/commons/math3/util/Decimal64;->value:D

    invoke-static {v2, v3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v0

    .line 265
    .local v0, "v":J
    const/16 v2, 0x20

    ushr-long v2, v0, v2

    xor-long/2addr v2, v0

    long-to-int v2, v2

    return v2
.end method

.method public bridge synthetic hypot(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    .prologue
    .line 30
    check-cast p1, Lorg/apache/commons/math3/util/Decimal64;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/util/Decimal64;->hypot(Lorg/apache/commons/math3/util/Decimal64;)Lorg/apache/commons/math3/util/Decimal64;

    move-result-object v0

    return-object v0
.end method

.method public hypot(Lorg/apache/commons/math3/util/Decimal64;)Lorg/apache/commons/math3/util/Decimal64;
    .locals 6
    .param p1, "y"    # Lorg/apache/commons/math3/util/Decimal64;

    .prologue
    .line 421
    new-instance v0, Lorg/apache/commons/math3/util/Decimal64;

    iget-wide v2, p0, Lorg/apache/commons/math3/util/Decimal64;->value:D

    iget-wide v4, p1, Lorg/apache/commons/math3/util/Decimal64;->value:D

    invoke-static {v2, v3, v4, v5}, Lorg/apache/commons/math3/util/FastMath;->hypot(DD)D

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Lorg/apache/commons/math3/util/Decimal64;-><init>(D)V

    return-object v0
.end method

.method public intValue()I
    .locals 2

    .prologue
    .line 193
    iget-wide v0, p0, Lorg/apache/commons/math3/util/Decimal64;->value:D

    double-to-int v0, v0

    return v0
.end method

.method public isInfinite()Z
    .locals 2

    .prologue
    .line 292
    iget-wide v0, p0, Lorg/apache/commons/math3/util/Decimal64;->value:D

    invoke-static {v0, v1}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v0

    return v0
.end method

.method public isNaN()Z
    .locals 2

    .prologue
    .line 302
    iget-wide v0, p0, Lorg/apache/commons/math3/util/Decimal64;->value:D

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic linearCombination(DLjava/lang/Object;DLjava/lang/Object;)Ljava/lang/Object;
    .locals 7
    .param p1, "x0"    # D
    .param p3, "x1"    # Ljava/lang/Object;
    .param p4, "x2"    # D
    .param p6, "x3"    # Ljava/lang/Object;

    .prologue
    .line 30
    move-object v3, p3

    check-cast v3, Lorg/apache/commons/math3/util/Decimal64;

    move-object v6, p6

    check-cast v6, Lorg/apache/commons/math3/util/Decimal64;

    move-object v0, p0

    move-wide v1, p1

    move-wide v4, p4

    invoke-virtual/range {v0 .. v6}, Lorg/apache/commons/math3/util/Decimal64;->linearCombination(DLorg/apache/commons/math3/util/Decimal64;DLorg/apache/commons/math3/util/Decimal64;)Lorg/apache/commons/math3/util/Decimal64;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic linearCombination(DLjava/lang/Object;DLjava/lang/Object;DLjava/lang/Object;)Ljava/lang/Object;
    .locals 11
    .param p1, "x0"    # D
    .param p3, "x1"    # Ljava/lang/Object;
    .param p4, "x2"    # D
    .param p6, "x3"    # Ljava/lang/Object;
    .param p7, "x4"    # D
    .param p9, "x5"    # Ljava/lang/Object;

    .prologue
    .line 30
    move-object v4, p3

    check-cast v4, Lorg/apache/commons/math3/util/Decimal64;

    move-object/from16 v7, p6

    check-cast v7, Lorg/apache/commons/math3/util/Decimal64;

    move-object/from16 v10, p9

    check-cast v10, Lorg/apache/commons/math3/util/Decimal64;

    move-object v1, p0

    move-wide v2, p1

    move-wide v5, p4

    move-wide/from16 v8, p7

    invoke-virtual/range {v1 .. v10}, Lorg/apache/commons/math3/util/Decimal64;->linearCombination(DLorg/apache/commons/math3/util/Decimal64;DLorg/apache/commons/math3/util/Decimal64;DLorg/apache/commons/math3/util/Decimal64;)Lorg/apache/commons/math3/util/Decimal64;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic linearCombination(DLjava/lang/Object;DLjava/lang/Object;DLjava/lang/Object;DLjava/lang/Object;)Ljava/lang/Object;
    .locals 13
    .param p1, "x0"    # D
    .param p3, "x1"    # Ljava/lang/Object;
    .param p4, "x2"    # D
    .param p6, "x3"    # Ljava/lang/Object;
    .param p7, "x4"    # D
    .param p9, "x5"    # Ljava/lang/Object;
    .param p10, "x6"    # D
    .param p12, "x7"    # Ljava/lang/Object;

    .prologue
    .line 30
    move-object/from16 v3, p3

    check-cast v3, Lorg/apache/commons/math3/util/Decimal64;

    move-object/from16 v6, p6

    check-cast v6, Lorg/apache/commons/math3/util/Decimal64;

    move-object/from16 v9, p9

    check-cast v9, Lorg/apache/commons/math3/util/Decimal64;

    move-object/from16 v12, p12

    check-cast v12, Lorg/apache/commons/math3/util/Decimal64;

    move-object v0, p0

    move-wide v1, p1

    move-wide/from16 v4, p4

    move-wide/from16 v7, p7

    move-wide/from16 v10, p10

    invoke-virtual/range {v0 .. v12}, Lorg/apache/commons/math3/util/Decimal64;->linearCombination(DLorg/apache/commons/math3/util/Decimal64;DLorg/apache/commons/math3/util/Decimal64;DLorg/apache/commons/math3/util/Decimal64;DLorg/apache/commons/math3/util/Decimal64;)Lorg/apache/commons/math3/util/Decimal64;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic linearCombination(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;
    .param p3, "x2"    # Ljava/lang/Object;
    .param p4, "x3"    # Ljava/lang/Object;

    .prologue
    .line 30
    check-cast p1, Lorg/apache/commons/math3/util/Decimal64;

    .end local p1    # "x0":Ljava/lang/Object;
    check-cast p2, Lorg/apache/commons/math3/util/Decimal64;

    .end local p2    # "x1":Ljava/lang/Object;
    check-cast p3, Lorg/apache/commons/math3/util/Decimal64;

    .end local p3    # "x2":Ljava/lang/Object;
    check-cast p4, Lorg/apache/commons/math3/util/Decimal64;

    .end local p4    # "x3":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/apache/commons/math3/util/Decimal64;->linearCombination(Lorg/apache/commons/math3/util/Decimal64;Lorg/apache/commons/math3/util/Decimal64;Lorg/apache/commons/math3/util/Decimal64;Lorg/apache/commons/math3/util/Decimal64;)Lorg/apache/commons/math3/util/Decimal64;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic linearCombination(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;
    .param p3, "x2"    # Ljava/lang/Object;
    .param p4, "x3"    # Ljava/lang/Object;
    .param p5, "x4"    # Ljava/lang/Object;
    .param p6, "x5"    # Ljava/lang/Object;

    .prologue
    .line 30
    move-object v1, p1

    check-cast v1, Lorg/apache/commons/math3/util/Decimal64;

    move-object v2, p2

    check-cast v2, Lorg/apache/commons/math3/util/Decimal64;

    move-object v3, p3

    check-cast v3, Lorg/apache/commons/math3/util/Decimal64;

    move-object v4, p4

    check-cast v4, Lorg/apache/commons/math3/util/Decimal64;

    move-object v5, p5

    check-cast v5, Lorg/apache/commons/math3/util/Decimal64;

    move-object v6, p6

    check-cast v6, Lorg/apache/commons/math3/util/Decimal64;

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lorg/apache/commons/math3/util/Decimal64;->linearCombination(Lorg/apache/commons/math3/util/Decimal64;Lorg/apache/commons/math3/util/Decimal64;Lorg/apache/commons/math3/util/Decimal64;Lorg/apache/commons/math3/util/Decimal64;Lorg/apache/commons/math3/util/Decimal64;Lorg/apache/commons/math3/util/Decimal64;)Lorg/apache/commons/math3/util/Decimal64;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic linearCombination(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;
    .param p3, "x2"    # Ljava/lang/Object;
    .param p4, "x3"    # Ljava/lang/Object;
    .param p5, "x4"    # Ljava/lang/Object;
    .param p6, "x5"    # Ljava/lang/Object;
    .param p7, "x6"    # Ljava/lang/Object;
    .param p8, "x7"    # Ljava/lang/Object;

    .prologue
    .line 30
    move-object v1, p1

    check-cast v1, Lorg/apache/commons/math3/util/Decimal64;

    move-object v2, p2

    check-cast v2, Lorg/apache/commons/math3/util/Decimal64;

    move-object v3, p3

    check-cast v3, Lorg/apache/commons/math3/util/Decimal64;

    move-object v4, p4

    check-cast v4, Lorg/apache/commons/math3/util/Decimal64;

    move-object v5, p5

    check-cast v5, Lorg/apache/commons/math3/util/Decimal64;

    move-object v6, p6

    check-cast v6, Lorg/apache/commons/math3/util/Decimal64;

    move-object/from16 v7, p7

    check-cast v7, Lorg/apache/commons/math3/util/Decimal64;

    move-object/from16 v8, p8

    check-cast v8, Lorg/apache/commons/math3/util/Decimal64;

    move-object v0, p0

    invoke-virtual/range {v0 .. v8}, Lorg/apache/commons/math3/util/Decimal64;->linearCombination(Lorg/apache/commons/math3/util/Decimal64;Lorg/apache/commons/math3/util/Decimal64;Lorg/apache/commons/math3/util/Decimal64;Lorg/apache/commons/math3/util/Decimal64;Lorg/apache/commons/math3/util/Decimal64;Lorg/apache/commons/math3/util/Decimal64;Lorg/apache/commons/math3/util/Decimal64;Lorg/apache/commons/math3/util/Decimal64;)Lorg/apache/commons/math3/util/Decimal64;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic linearCombination([D[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [D
    .param p2, "x1"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    .prologue
    .line 30
    check-cast p2, [Lorg/apache/commons/math3/util/Decimal64;

    .end local p2    # "x1":[Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/math3/util/Decimal64;->linearCombination([D[Lorg/apache/commons/math3/util/Decimal64;)Lorg/apache/commons/math3/util/Decimal64;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic linearCombination([Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;
    .param p2, "x1"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    .prologue
    .line 30
    check-cast p1, [Lorg/apache/commons/math3/util/Decimal64;

    .end local p1    # "x0":[Ljava/lang/Object;
    check-cast p2, [Lorg/apache/commons/math3/util/Decimal64;

    .end local p2    # "x1":[Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/math3/util/Decimal64;->linearCombination([Lorg/apache/commons/math3/util/Decimal64;[Lorg/apache/commons/math3/util/Decimal64;)Lorg/apache/commons/math3/util/Decimal64;

    move-result-object v0

    return-object v0
.end method

.method public linearCombination(DLorg/apache/commons/math3/util/Decimal64;DLorg/apache/commons/math3/util/Decimal64;)Lorg/apache/commons/math3/util/Decimal64;
    .locals 9
    .param p1, "a1"    # D
    .param p3, "b1"    # Lorg/apache/commons/math3/util/Decimal64;
    .param p4, "a2"    # D
    .param p6, "b2"    # Lorg/apache/commons/math3/util/Decimal64;

    .prologue
    .line 643
    new-instance v8, Lorg/apache/commons/math3/util/Decimal64;

    iget-wide v2, p3, Lorg/apache/commons/math3/util/Decimal64;->value:D

    iget-wide v6, p6, Lorg/apache/commons/math3/util/Decimal64;->value:D

    move-wide v0, p1

    move-wide v4, p4

    invoke-static/range {v0 .. v7}, Lorg/apache/commons/math3/util/MathArrays;->linearCombination(DDDD)D

    move-result-wide v0

    invoke-direct {v8, v0, v1}, Lorg/apache/commons/math3/util/Decimal64;-><init>(D)V

    return-object v8
.end method

.method public linearCombination(DLorg/apache/commons/math3/util/Decimal64;DLorg/apache/commons/math3/util/Decimal64;DLorg/apache/commons/math3/util/Decimal64;)Lorg/apache/commons/math3/util/Decimal64;
    .locals 15
    .param p1, "a1"    # D
    .param p3, "b1"    # Lorg/apache/commons/math3/util/Decimal64;
    .param p4, "a2"    # D
    .param p6, "b2"    # Lorg/apache/commons/math3/util/Decimal64;
    .param p7, "a3"    # D
    .param p9, "b3"    # Lorg/apache/commons/math3/util/Decimal64;

    .prologue
    .line 664
    new-instance v14, Lorg/apache/commons/math3/util/Decimal64;

    move-object/from16 v0, p3

    iget-wide v4, v0, Lorg/apache/commons/math3/util/Decimal64;->value:D

    move-object/from16 v0, p6

    iget-wide v8, v0, Lorg/apache/commons/math3/util/Decimal64;->value:D

    move-object/from16 v0, p9

    iget-wide v12, v0, Lorg/apache/commons/math3/util/Decimal64;->value:D

    move-wide/from16 v2, p1

    move-wide/from16 v6, p4

    move-wide/from16 v10, p7

    invoke-static/range {v2 .. v13}, Lorg/apache/commons/math3/util/MathArrays;->linearCombination(DDDDDD)D

    move-result-wide v2

    invoke-direct {v14, v2, v3}, Lorg/apache/commons/math3/util/Decimal64;-><init>(D)V

    return-object v14
.end method

.method public linearCombination(DLorg/apache/commons/math3/util/Decimal64;DLorg/apache/commons/math3/util/Decimal64;DLorg/apache/commons/math3/util/Decimal64;DLorg/apache/commons/math3/util/Decimal64;)Lorg/apache/commons/math3/util/Decimal64;
    .locals 19
    .param p1, "a1"    # D
    .param p3, "b1"    # Lorg/apache/commons/math3/util/Decimal64;
    .param p4, "a2"    # D
    .param p6, "b2"    # Lorg/apache/commons/math3/util/Decimal64;
    .param p7, "a3"    # D
    .param p9, "b3"    # Lorg/apache/commons/math3/util/Decimal64;
    .param p10, "a4"    # D
    .param p12, "b4"    # Lorg/apache/commons/math3/util/Decimal64;

    .prologue
    .line 689
    new-instance v18, Lorg/apache/commons/math3/util/Decimal64;

    move-object/from16 v0, p3

    iget-wide v4, v0, Lorg/apache/commons/math3/util/Decimal64;->value:D

    move-object/from16 v0, p6

    iget-wide v8, v0, Lorg/apache/commons/math3/util/Decimal64;->value:D

    move-object/from16 v0, p9

    iget-wide v12, v0, Lorg/apache/commons/math3/util/Decimal64;->value:D

    move-object/from16 v0, p12

    iget-wide v0, v0, Lorg/apache/commons/math3/util/Decimal64;->value:D

    move-wide/from16 v16, v0

    move-wide/from16 v2, p1

    move-wide/from16 v6, p4

    move-wide/from16 v10, p7

    move-wide/from16 v14, p10

    invoke-static/range {v2 .. v17}, Lorg/apache/commons/math3/util/MathArrays;->linearCombination(DDDDDDDD)D

    move-result-wide v2

    move-object/from16 v0, v18

    invoke-direct {v0, v2, v3}, Lorg/apache/commons/math3/util/Decimal64;-><init>(D)V

    return-object v18
.end method

.method public linearCombination(Lorg/apache/commons/math3/util/Decimal64;Lorg/apache/commons/math3/util/Decimal64;Lorg/apache/commons/math3/util/Decimal64;Lorg/apache/commons/math3/util/Decimal64;)Lorg/apache/commons/math3/util/Decimal64;
    .locals 9
    .param p1, "a1"    # Lorg/apache/commons/math3/util/Decimal64;
    .param p2, "b1"    # Lorg/apache/commons/math3/util/Decimal64;
    .param p3, "a2"    # Lorg/apache/commons/math3/util/Decimal64;
    .param p4, "b2"    # Lorg/apache/commons/math3/util/Decimal64;

    .prologue
    .line 634
    new-instance v8, Lorg/apache/commons/math3/util/Decimal64;

    iget-wide v0, p1, Lorg/apache/commons/math3/util/Decimal64;->value:D

    iget-wide v2, p2, Lorg/apache/commons/math3/util/Decimal64;->value:D

    iget-wide v4, p3, Lorg/apache/commons/math3/util/Decimal64;->value:D

    iget-wide v6, p4, Lorg/apache/commons/math3/util/Decimal64;->value:D

    invoke-static/range {v0 .. v7}, Lorg/apache/commons/math3/util/MathArrays;->linearCombination(DDDD)D

    move-result-wide v0

    invoke-direct {v8, v0, v1}, Lorg/apache/commons/math3/util/Decimal64;-><init>(D)V

    return-object v8
.end method

.method public linearCombination(Lorg/apache/commons/math3/util/Decimal64;Lorg/apache/commons/math3/util/Decimal64;Lorg/apache/commons/math3/util/Decimal64;Lorg/apache/commons/math3/util/Decimal64;Lorg/apache/commons/math3/util/Decimal64;Lorg/apache/commons/math3/util/Decimal64;)Lorg/apache/commons/math3/util/Decimal64;
    .locals 15
    .param p1, "a1"    # Lorg/apache/commons/math3/util/Decimal64;
    .param p2, "b1"    # Lorg/apache/commons/math3/util/Decimal64;
    .param p3, "a2"    # Lorg/apache/commons/math3/util/Decimal64;
    .param p4, "b2"    # Lorg/apache/commons/math3/util/Decimal64;
    .param p5, "a3"    # Lorg/apache/commons/math3/util/Decimal64;
    .param p6, "b3"    # Lorg/apache/commons/math3/util/Decimal64;

    .prologue
    .line 653
    new-instance v14, Lorg/apache/commons/math3/util/Decimal64;

    move-object/from16 v0, p1

    iget-wide v2, v0, Lorg/apache/commons/math3/util/Decimal64;->value:D

    move-object/from16 v0, p2

    iget-wide v4, v0, Lorg/apache/commons/math3/util/Decimal64;->value:D

    move-object/from16 v0, p3

    iget-wide v6, v0, Lorg/apache/commons/math3/util/Decimal64;->value:D

    move-object/from16 v0, p4

    iget-wide v8, v0, Lorg/apache/commons/math3/util/Decimal64;->value:D

    move-object/from16 v0, p5

    iget-wide v10, v0, Lorg/apache/commons/math3/util/Decimal64;->value:D

    move-object/from16 v0, p6

    iget-wide v12, v0, Lorg/apache/commons/math3/util/Decimal64;->value:D

    invoke-static/range {v2 .. v13}, Lorg/apache/commons/math3/util/MathArrays;->linearCombination(DDDDDD)D

    move-result-wide v2

    invoke-direct {v14, v2, v3}, Lorg/apache/commons/math3/util/Decimal64;-><init>(D)V

    return-object v14
.end method

.method public linearCombination(Lorg/apache/commons/math3/util/Decimal64;Lorg/apache/commons/math3/util/Decimal64;Lorg/apache/commons/math3/util/Decimal64;Lorg/apache/commons/math3/util/Decimal64;Lorg/apache/commons/math3/util/Decimal64;Lorg/apache/commons/math3/util/Decimal64;Lorg/apache/commons/math3/util/Decimal64;Lorg/apache/commons/math3/util/Decimal64;)Lorg/apache/commons/math3/util/Decimal64;
    .locals 19
    .param p1, "a1"    # Lorg/apache/commons/math3/util/Decimal64;
    .param p2, "b1"    # Lorg/apache/commons/math3/util/Decimal64;
    .param p3, "a2"    # Lorg/apache/commons/math3/util/Decimal64;
    .param p4, "b2"    # Lorg/apache/commons/math3/util/Decimal64;
    .param p5, "a3"    # Lorg/apache/commons/math3/util/Decimal64;
    .param p6, "b3"    # Lorg/apache/commons/math3/util/Decimal64;
    .param p7, "a4"    # Lorg/apache/commons/math3/util/Decimal64;
    .param p8, "b4"    # Lorg/apache/commons/math3/util/Decimal64;

    .prologue
    .line 676
    new-instance v18, Lorg/apache/commons/math3/util/Decimal64;

    move-object/from16 v0, p1

    iget-wide v2, v0, Lorg/apache/commons/math3/util/Decimal64;->value:D

    move-object/from16 v0, p2

    iget-wide v4, v0, Lorg/apache/commons/math3/util/Decimal64;->value:D

    move-object/from16 v0, p3

    iget-wide v6, v0, Lorg/apache/commons/math3/util/Decimal64;->value:D

    move-object/from16 v0, p4

    iget-wide v8, v0, Lorg/apache/commons/math3/util/Decimal64;->value:D

    move-object/from16 v0, p5

    iget-wide v10, v0, Lorg/apache/commons/math3/util/Decimal64;->value:D

    move-object/from16 v0, p6

    iget-wide v12, v0, Lorg/apache/commons/math3/util/Decimal64;->value:D

    move-object/from16 v0, p7

    iget-wide v14, v0, Lorg/apache/commons/math3/util/Decimal64;->value:D

    move-object/from16 v0, p8

    iget-wide v0, v0, Lorg/apache/commons/math3/util/Decimal64;->value:D

    move-wide/from16 v16, v0

    invoke-static/range {v2 .. v17}, Lorg/apache/commons/math3/util/MathArrays;->linearCombination(DDDDDDDD)D

    move-result-wide v2

    move-object/from16 v0, v18

    invoke-direct {v0, v2, v3}, Lorg/apache/commons/math3/util/Decimal64;-><init>(D)V

    return-object v18
.end method

.method public linearCombination([D[Lorg/apache/commons/math3/util/Decimal64;)Lorg/apache/commons/math3/util/Decimal64;
    .locals 6
    .param p1, "a"    # [D
    .param p2, "b"    # [Lorg/apache/commons/math3/util/Decimal64;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    .prologue
    .line 619
    array-length v2, p1

    array-length v3, p2

    if-eq v2, v3, :cond_0

    .line 620
    new-instance v2, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    array-length v3, p1

    array-length v4, p2

    invoke-direct {v2, v3, v4}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v2

    .line 622
    :cond_0
    array-length v2, p2

    new-array v0, v2, [D

    .line 623
    .local v0, "bDouble":[D
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_1

    .line 624
    aget-object v2, p2, v1

    iget-wide v2, v2, Lorg/apache/commons/math3/util/Decimal64;->value:D

    aput-wide v2, v0, v1

    .line 623
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 626
    :cond_1
    new-instance v2, Lorg/apache/commons/math3/util/Decimal64;

    invoke-static {p1, v0}, Lorg/apache/commons/math3/util/MathArrays;->linearCombination([D[D)D

    move-result-wide v4

    invoke-direct {v2, v4, v5}, Lorg/apache/commons/math3/util/Decimal64;-><init>(D)V

    return-object v2
.end method

.method public linearCombination([Lorg/apache/commons/math3/util/Decimal64;[Lorg/apache/commons/math3/util/Decimal64;)Lorg/apache/commons/math3/util/Decimal64;
    .locals 6
    .param p1, "a"    # [Lorg/apache/commons/math3/util/Decimal64;
    .param p2, "b"    # [Lorg/apache/commons/math3/util/Decimal64;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    .prologue
    .line 602
    array-length v3, p1

    array-length v4, p2

    if-eq v3, v4, :cond_0

    .line 603
    new-instance v3, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    array-length v4, p1

    array-length v5, p2

    invoke-direct {v3, v4, v5}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v3

    .line 605
    :cond_0
    array-length v3, p1

    new-array v0, v3, [D

    .line 606
    .local v0, "aDouble":[D
    array-length v3, p2

    new-array v1, v3, [D

    .line 607
    .local v1, "bDouble":[D
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, p1

    if-ge v2, v3, :cond_1

    .line 608
    aget-object v3, p1, v2

    iget-wide v4, v3, Lorg/apache/commons/math3/util/Decimal64;->value:D

    aput-wide v4, v0, v2

    .line 609
    aget-object v3, p2, v2

    iget-wide v4, v3, Lorg/apache/commons/math3/util/Decimal64;->value:D

    aput-wide v4, v1, v2

    .line 607
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 611
    :cond_1
    new-instance v3, Lorg/apache/commons/math3/util/Decimal64;

    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/MathArrays;->linearCombination([D[D)D

    move-result-wide v4

    invoke-direct {v3, v4, v5}, Lorg/apache/commons/math3/util/Decimal64;-><init>(D)V

    return-object v3
.end method

.method public bridge synthetic log()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 30
    invoke-virtual {p0}, Lorg/apache/commons/math3/util/Decimal64;->log()Lorg/apache/commons/math3/util/Decimal64;

    move-result-object v0

    return-object v0
.end method

.method public log()Lorg/apache/commons/math3/util/Decimal64;
    .locals 4

    .prologue
    .line 488
    new-instance v0, Lorg/apache/commons/math3/util/Decimal64;

    iget-wide v2, p0, Lorg/apache/commons/math3/util/Decimal64;->value:D

    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/FastMath;->log(D)D

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Lorg/apache/commons/math3/util/Decimal64;-><init>(D)V

    return-object v0
.end method

.method public log10()Lorg/apache/commons/math3/util/Decimal64;
    .locals 4

    .prologue
    .line 503
    new-instance v0, Lorg/apache/commons/math3/util/Decimal64;

    iget-wide v2, p0, Lorg/apache/commons/math3/util/Decimal64;->value:D

    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/FastMath;->log10(D)D

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Lorg/apache/commons/math3/util/Decimal64;-><init>(D)V

    return-object v0
.end method

.method public bridge synthetic log1p()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 30
    invoke-virtual {p0}, Lorg/apache/commons/math3/util/Decimal64;->log1p()Lorg/apache/commons/math3/util/Decimal64;

    move-result-object v0

    return-object v0
.end method

.method public log1p()Lorg/apache/commons/math3/util/Decimal64;
    .locals 4

    .prologue
    .line 495
    new-instance v0, Lorg/apache/commons/math3/util/Decimal64;

    iget-wide v2, p0, Lorg/apache/commons/math3/util/Decimal64;->value:D

    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/FastMath;->log1p(D)D

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Lorg/apache/commons/math3/util/Decimal64;-><init>(D)V

    return-object v0
.end method

.method public longValue()J
    .locals 2

    .prologue
    .line 203
    iget-wide v0, p0, Lorg/apache/commons/math3/util/Decimal64;->value:D

    double-to-long v0, v0

    return-wide v0
.end method

.method public bridge synthetic multiply(D)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # D

    .prologue
    .line 30
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/math3/util/Decimal64;->multiply(D)Lorg/apache/commons/math3/util/Decimal64;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic multiply(I)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 30
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/util/Decimal64;->multiply(I)Lorg/apache/commons/math3/util/Decimal64;

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
    .line 30
    check-cast p1, Lorg/apache/commons/math3/util/Decimal64;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/util/Decimal64;->multiply(Lorg/apache/commons/math3/util/Decimal64;)Lorg/apache/commons/math3/util/Decimal64;

    move-result-object v0

    return-object v0
.end method

.method public multiply(D)Lorg/apache/commons/math3/util/Decimal64;
    .locals 5
    .param p1, "a"    # D

    .prologue
    .line 330
    new-instance v0, Lorg/apache/commons/math3/util/Decimal64;

    iget-wide v2, p0, Lorg/apache/commons/math3/util/Decimal64;->value:D

    mul-double/2addr v2, p1

    invoke-direct {v0, v2, v3}, Lorg/apache/commons/math3/util/Decimal64;-><init>(D)V

    return-object v0
.end method

.method public multiply(I)Lorg/apache/commons/math3/util/Decimal64;
    .locals 6
    .param p1, "n"    # I

    .prologue
    .line 136
    new-instance v0, Lorg/apache/commons/math3/util/Decimal64;

    int-to-double v2, p1

    iget-wide v4, p0, Lorg/apache/commons/math3/util/Decimal64;->value:D

    mul-double/2addr v2, v4

    invoke-direct {v0, v2, v3}, Lorg/apache/commons/math3/util/Decimal64;-><init>(D)V

    return-object v0
.end method

.method public multiply(Lorg/apache/commons/math3/util/Decimal64;)Lorg/apache/commons/math3/util/Decimal64;
    .locals 6
    .param p1, "a"    # Lorg/apache/commons/math3/util/Decimal64;

    .prologue
    .line 126
    new-instance v0, Lorg/apache/commons/math3/util/Decimal64;

    iget-wide v2, p0, Lorg/apache/commons/math3/util/Decimal64;->value:D

    iget-wide v4, p1, Lorg/apache/commons/math3/util/Decimal64;->value:D

    mul-double/2addr v2, v4

    invoke-direct {v0, v2, v3}, Lorg/apache/commons/math3/util/Decimal64;-><init>(D)V

    return-object v0
.end method

.method public bridge synthetic negate()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 30
    invoke-virtual {p0}, Lorg/apache/commons/math3/util/Decimal64;->negate()Lorg/apache/commons/math3/util/Decimal64;

    move-result-object v0

    return-object v0
.end method

.method public negate()Lorg/apache/commons/math3/util/Decimal64;
    .locals 4

    .prologue
    .line 115
    new-instance v0, Lorg/apache/commons/math3/util/Decimal64;

    iget-wide v2, p0, Lorg/apache/commons/math3/util/Decimal64;->value:D

    neg-double v2, v2

    invoke-direct {v0, v2, v3}, Lorg/apache/commons/math3/util/Decimal64;-><init>(D)V

    return-object v0
.end method

.method public bridge synthetic pow(D)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # D

    .prologue
    .line 30
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/math3/util/Decimal64;->pow(D)Lorg/apache/commons/math3/util/Decimal64;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic pow(I)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 30
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/util/Decimal64;->pow(I)Lorg/apache/commons/math3/util/Decimal64;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic pow(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    .prologue
    .line 30
    check-cast p1, Lorg/apache/commons/math3/util/Decimal64;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/util/Decimal64;->pow(Lorg/apache/commons/math3/util/Decimal64;)Lorg/apache/commons/math3/util/Decimal64;

    move-result-object v0

    return-object v0
.end method

.method public pow(D)Lorg/apache/commons/math3/util/Decimal64;
    .locals 5
    .param p1, "p"    # D

    .prologue
    .line 453
    new-instance v0, Lorg/apache/commons/math3/util/Decimal64;

    iget-wide v2, p0, Lorg/apache/commons/math3/util/Decimal64;->value:D

    invoke-static {v2, v3, p1, p2}, Lorg/apache/commons/math3/util/FastMath;->pow(DD)D

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Lorg/apache/commons/math3/util/Decimal64;-><init>(D)V

    return-object v0
.end method

.method public pow(I)Lorg/apache/commons/math3/util/Decimal64;
    .locals 4
    .param p1, "n"    # I

    .prologue
    .line 460
    new-instance v0, Lorg/apache/commons/math3/util/Decimal64;

    iget-wide v2, p0, Lorg/apache/commons/math3/util/Decimal64;->value:D

    invoke-static {v2, v3, p1}, Lorg/apache/commons/math3/util/FastMath;->pow(DI)D

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Lorg/apache/commons/math3/util/Decimal64;-><init>(D)V

    return-object v0
.end method

.method public pow(Lorg/apache/commons/math3/util/Decimal64;)Lorg/apache/commons/math3/util/Decimal64;
    .locals 6
    .param p1, "e"    # Lorg/apache/commons/math3/util/Decimal64;

    .prologue
    .line 467
    new-instance v0, Lorg/apache/commons/math3/util/Decimal64;

    iget-wide v2, p0, Lorg/apache/commons/math3/util/Decimal64;->value:D

    iget-wide v4, p1, Lorg/apache/commons/math3/util/Decimal64;->value:D

    invoke-static {v2, v3, v4, v5}, Lorg/apache/commons/math3/util/FastMath;->pow(DD)D

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Lorg/apache/commons/math3/util/Decimal64;-><init>(D)V

    return-object v0
.end method

.method public bridge synthetic reciprocal()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 30
    invoke-virtual {p0}, Lorg/apache/commons/math3/util/Decimal64;->reciprocal()Lorg/apache/commons/math3/util/Decimal64;

    move-result-object v0

    return-object v0
.end method

.method public reciprocal()Lorg/apache/commons/math3/util/Decimal64;
    .locals 6

    .prologue
    .line 159
    new-instance v0, Lorg/apache/commons/math3/util/Decimal64;

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    iget-wide v4, p0, Lorg/apache/commons/math3/util/Decimal64;->value:D

    div-double/2addr v2, v4

    invoke-direct {v0, v2, v3}, Lorg/apache/commons/math3/util/Decimal64;-><init>(D)V

    return-object v0
.end method

.method public bridge synthetic remainder(D)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # D

    .prologue
    .line 30
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/math3/util/Decimal64;->remainder(D)Lorg/apache/commons/math3/util/Decimal64;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic remainder(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    .prologue
    .line 30
    check-cast p1, Lorg/apache/commons/math3/util/Decimal64;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/util/Decimal64;->remainder(Lorg/apache/commons/math3/util/Decimal64;)Lorg/apache/commons/math3/util/Decimal64;

    move-result-object v0

    return-object v0
.end method

.method public remainder(D)Lorg/apache/commons/math3/util/Decimal64;
    .locals 5
    .param p1, "a"    # D

    .prologue
    .line 344
    new-instance v0, Lorg/apache/commons/math3/util/Decimal64;

    iget-wide v2, p0, Lorg/apache/commons/math3/util/Decimal64;->value:D

    invoke-static {v2, v3, p1, p2}, Lorg/apache/commons/math3/util/FastMath;->IEEEremainder(DD)D

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Lorg/apache/commons/math3/util/Decimal64;-><init>(D)V

    return-object v0
.end method

.method public remainder(Lorg/apache/commons/math3/util/Decimal64;)Lorg/apache/commons/math3/util/Decimal64;
    .locals 6
    .param p1, "a"    # Lorg/apache/commons/math3/util/Decimal64;

    .prologue
    .line 351
    new-instance v0, Lorg/apache/commons/math3/util/Decimal64;

    iget-wide v2, p0, Lorg/apache/commons/math3/util/Decimal64;->value:D

    iget-wide v4, p1, Lorg/apache/commons/math3/util/Decimal64;->value:D

    invoke-static {v2, v3, v4, v5}, Lorg/apache/commons/math3/util/FastMath;->IEEEremainder(DD)D

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Lorg/apache/commons/math3/util/Decimal64;-><init>(D)V

    return-object v0
.end method

.method public bridge synthetic rint()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 30
    invoke-virtual {p0}, Lorg/apache/commons/math3/util/Decimal64;->rint()Lorg/apache/commons/math3/util/Decimal64;

    move-result-object v0

    return-object v0
.end method

.method public rint()Lorg/apache/commons/math3/util/Decimal64;
    .locals 4

    .prologue
    .line 379
    new-instance v0, Lorg/apache/commons/math3/util/Decimal64;

    iget-wide v2, p0, Lorg/apache/commons/math3/util/Decimal64;->value:D

    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/FastMath;->rint(D)D

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Lorg/apache/commons/math3/util/Decimal64;-><init>(D)V

    return-object v0
.end method

.method public bridge synthetic rootN(I)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 30
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/util/Decimal64;->rootN(I)Lorg/apache/commons/math3/util/Decimal64;

    move-result-object v0

    return-object v0
.end method

.method public rootN(I)Lorg/apache/commons/math3/util/Decimal64;
    .locals 8
    .param p1, "n"    # I

    .prologue
    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    .line 442
    iget-wide v0, p0, Lorg/apache/commons/math3/util/Decimal64;->value:D

    const-wide/16 v2, 0x0

    cmpg-double v0, v0, v2

    if-gez v0, :cond_0

    .line 443
    new-instance v0, Lorg/apache/commons/math3/util/Decimal64;

    iget-wide v2, p0, Lorg/apache/commons/math3/util/Decimal64;->value:D

    neg-double v2, v2

    int-to-double v4, p1

    div-double v4, v6, v4

    invoke-static {v2, v3, v4, v5}, Lorg/apache/commons/math3/util/FastMath;->pow(DD)D

    move-result-wide v2

    neg-double v2, v2

    invoke-direct {v0, v2, v3}, Lorg/apache/commons/math3/util/Decimal64;-><init>(D)V

    .line 445
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lorg/apache/commons/math3/util/Decimal64;

    iget-wide v2, p0, Lorg/apache/commons/math3/util/Decimal64;->value:D

    int-to-double v4, p1

    div-double v4, v6, v4

    invoke-static {v2, v3, v4, v5}, Lorg/apache/commons/math3/util/FastMath;->pow(DD)D

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Lorg/apache/commons/math3/util/Decimal64;-><init>(D)V

    goto :goto_0
.end method

.method public round()J
    .locals 2

    .prologue
    .line 386
    iget-wide v0, p0, Lorg/apache/commons/math3/util/Decimal64;->value:D

    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->round(D)J

    move-result-wide v0

    return-wide v0
.end method

.method public bridge synthetic scalb(I)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 30
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/util/Decimal64;->scalb(I)Lorg/apache/commons/math3/util/Decimal64;

    move-result-object v0

    return-object v0
.end method

.method public scalb(I)Lorg/apache/commons/math3/util/Decimal64;
    .locals 4
    .param p1, "n"    # I

    .prologue
    .line 414
    new-instance v0, Lorg/apache/commons/math3/util/Decimal64;

    iget-wide v2, p0, Lorg/apache/commons/math3/util/Decimal64;->value:D

    invoke-static {v2, v3, p1}, Lorg/apache/commons/math3/util/FastMath;->scalb(DI)D

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Lorg/apache/commons/math3/util/Decimal64;-><init>(D)V

    return-object v0
.end method

.method public shortValue()S
    .locals 2

    .prologue
    .line 183
    iget-wide v0, p0, Lorg/apache/commons/math3/util/Decimal64;->value:D

    double-to-int v0, v0

    int-to-short v0, v0

    return v0
.end method

.method public bridge synthetic signum()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 30
    invoke-virtual {p0}, Lorg/apache/commons/math3/util/Decimal64;->signum()Lorg/apache/commons/math3/util/Decimal64;

    move-result-object v0

    return-object v0
.end method

.method public signum()Lorg/apache/commons/math3/util/Decimal64;
    .locals 4

    .prologue
    .line 393
    new-instance v0, Lorg/apache/commons/math3/util/Decimal64;

    iget-wide v2, p0, Lorg/apache/commons/math3/util/Decimal64;->value:D

    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/FastMath;->signum(D)D

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Lorg/apache/commons/math3/util/Decimal64;-><init>(D)V

    return-object v0
.end method

.method public bridge synthetic sin()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 30
    invoke-virtual {p0}, Lorg/apache/commons/math3/util/Decimal64;->sin()Lorg/apache/commons/math3/util/Decimal64;

    move-result-object v0

    return-object v0
.end method

.method public sin()Lorg/apache/commons/math3/util/Decimal64;
    .locals 4

    .prologue
    .line 517
    new-instance v0, Lorg/apache/commons/math3/util/Decimal64;

    iget-wide v2, p0, Lorg/apache/commons/math3/util/Decimal64;->value:D

    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/FastMath;->sin(D)D

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Lorg/apache/commons/math3/util/Decimal64;-><init>(D)V

    return-object v0
.end method

.method public bridge synthetic sinh()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 30
    invoke-virtual {p0}, Lorg/apache/commons/math3/util/Decimal64;->sinh()Lorg/apache/commons/math3/util/Decimal64;

    move-result-object v0

    return-object v0
.end method

.method public sinh()Lorg/apache/commons/math3/util/Decimal64;
    .locals 4

    .prologue
    .line 566
    new-instance v0, Lorg/apache/commons/math3/util/Decimal64;

    iget-wide v2, p0, Lorg/apache/commons/math3/util/Decimal64;->value:D

    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/FastMath;->sinh(D)D

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Lorg/apache/commons/math3/util/Decimal64;-><init>(D)V

    return-object v0
.end method

.method public bridge synthetic sqrt()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 30
    invoke-virtual {p0}, Lorg/apache/commons/math3/util/Decimal64;->sqrt()Lorg/apache/commons/math3/util/Decimal64;

    move-result-object v0

    return-object v0
.end method

.method public sqrt()Lorg/apache/commons/math3/util/Decimal64;
    .locals 4

    .prologue
    .line 428
    new-instance v0, Lorg/apache/commons/math3/util/Decimal64;

    iget-wide v2, p0, Lorg/apache/commons/math3/util/Decimal64;->value:D

    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Lorg/apache/commons/math3/util/Decimal64;-><init>(D)V

    return-object v0
.end method

.method public bridge synthetic subtract(D)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # D

    .prologue
    .line 30
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/math3/util/Decimal64;->subtract(D)Lorg/apache/commons/math3/util/Decimal64;

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
    .line 30
    check-cast p1, Lorg/apache/commons/math3/util/Decimal64;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/util/Decimal64;->subtract(Lorg/apache/commons/math3/util/Decimal64;)Lorg/apache/commons/math3/util/Decimal64;

    move-result-object v0

    return-object v0
.end method

.method public subtract(D)Lorg/apache/commons/math3/util/Decimal64;
    .locals 5
    .param p1, "a"    # D

    .prologue
    .line 323
    new-instance v0, Lorg/apache/commons/math3/util/Decimal64;

    iget-wide v2, p0, Lorg/apache/commons/math3/util/Decimal64;->value:D

    sub-double/2addr v2, p1

    invoke-direct {v0, v2, v3}, Lorg/apache/commons/math3/util/Decimal64;-><init>(D)V

    return-object v0
.end method

.method public subtract(Lorg/apache/commons/math3/util/Decimal64;)Lorg/apache/commons/math3/util/Decimal64;
    .locals 6
    .param p1, "a"    # Lorg/apache/commons/math3/util/Decimal64;

    .prologue
    .line 105
    new-instance v0, Lorg/apache/commons/math3/util/Decimal64;

    iget-wide v2, p0, Lorg/apache/commons/math3/util/Decimal64;->value:D

    iget-wide v4, p1, Lorg/apache/commons/math3/util/Decimal64;->value:D

    sub-double/2addr v2, v4

    invoke-direct {v0, v2, v3}, Lorg/apache/commons/math3/util/Decimal64;-><init>(D)V

    return-object v0
.end method

.method public bridge synthetic tan()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 30
    invoke-virtual {p0}, Lorg/apache/commons/math3/util/Decimal64;->tan()Lorg/apache/commons/math3/util/Decimal64;

    move-result-object v0

    return-object v0
.end method

.method public tan()Lorg/apache/commons/math3/util/Decimal64;
    .locals 4

    .prologue
    .line 524
    new-instance v0, Lorg/apache/commons/math3/util/Decimal64;

    iget-wide v2, p0, Lorg/apache/commons/math3/util/Decimal64;->value:D

    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/FastMath;->tan(D)D

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Lorg/apache/commons/math3/util/Decimal64;-><init>(D)V

    return-object v0
.end method

.method public bridge synthetic tanh()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 30
    invoke-virtual {p0}, Lorg/apache/commons/math3/util/Decimal64;->tanh()Lorg/apache/commons/math3/util/Decimal64;

    move-result-object v0

    return-object v0
.end method

.method public tanh()Lorg/apache/commons/math3/util/Decimal64;
    .locals 4

    .prologue
    .line 573
    new-instance v0, Lorg/apache/commons/math3/util/Decimal64;

    iget-wide v2, p0, Lorg/apache/commons/math3/util/Decimal64;->value:D

    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/FastMath;->tanh(D)D

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Lorg/apache/commons/math3/util/Decimal64;-><init>(D)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 278
    iget-wide v0, p0, Lorg/apache/commons/math3/util/Decimal64;->value:D

    invoke-static {v0, v1}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
