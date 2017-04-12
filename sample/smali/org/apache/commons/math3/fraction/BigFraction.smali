.class public Lorg/apache/commons/math3/fraction/BigFraction;
.super Ljava/lang/Number;
.source "BigFraction.java"

# interfaces
.implements Lorg/apache/commons/math3/FieldElement;
.implements Ljava/lang/Comparable;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Number;",
        "Lorg/apache/commons/math3/FieldElement",
        "<",
        "Lorg/apache/commons/math3/fraction/BigFraction;",
        ">;",
        "Ljava/lang/Comparable",
        "<",
        "Lorg/apache/commons/math3/fraction/BigFraction;",
        ">;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field public static final FOUR_FIFTHS:Lorg/apache/commons/math3/fraction/BigFraction;

.field public static final MINUS_ONE:Lorg/apache/commons/math3/fraction/BigFraction;

.field public static final ONE:Lorg/apache/commons/math3/fraction/BigFraction;

.field public static final ONE_FIFTH:Lorg/apache/commons/math3/fraction/BigFraction;

.field public static final ONE_HALF:Lorg/apache/commons/math3/fraction/BigFraction;

.field private static final ONE_HUNDRED:Ljava/math/BigInteger;

.field public static final ONE_QUARTER:Lorg/apache/commons/math3/fraction/BigFraction;

.field public static final ONE_THIRD:Lorg/apache/commons/math3/fraction/BigFraction;

.field public static final THREE_FIFTHS:Lorg/apache/commons/math3/fraction/BigFraction;

.field public static final THREE_QUARTERS:Lorg/apache/commons/math3/fraction/BigFraction;

.field public static final TWO:Lorg/apache/commons/math3/fraction/BigFraction;

.field public static final TWO_FIFTHS:Lorg/apache/commons/math3/fraction/BigFraction;

.field public static final TWO_QUARTERS:Lorg/apache/commons/math3/fraction/BigFraction;

.field public static final TWO_THIRDS:Lorg/apache/commons/math3/fraction/BigFraction;

.field public static final ZERO:Lorg/apache/commons/math3/fraction/BigFraction;

.field private static final serialVersionUID:J = -0x4e228907006eca93L


# instance fields
.field private final denominator:Ljava/math/BigInteger;

.field private final numerator:Ljava/math/BigInteger;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x5

    const/4 v5, 0x4

    const/4 v4, 0x3

    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 44
    new-instance v0, Lorg/apache/commons/math3/fraction/BigFraction;

    invoke-direct {v0, v3}, Lorg/apache/commons/math3/fraction/BigFraction;-><init>(I)V

    sput-object v0, Lorg/apache/commons/math3/fraction/BigFraction;->TWO:Lorg/apache/commons/math3/fraction/BigFraction;

    .line 47
    new-instance v0, Lorg/apache/commons/math3/fraction/BigFraction;

    invoke-direct {v0, v2}, Lorg/apache/commons/math3/fraction/BigFraction;-><init>(I)V

    sput-object v0, Lorg/apache/commons/math3/fraction/BigFraction;->ONE:Lorg/apache/commons/math3/fraction/BigFraction;

    .line 50
    new-instance v0, Lorg/apache/commons/math3/fraction/BigFraction;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/apache/commons/math3/fraction/BigFraction;-><init>(I)V

    sput-object v0, Lorg/apache/commons/math3/fraction/BigFraction;->ZERO:Lorg/apache/commons/math3/fraction/BigFraction;

    .line 53
    new-instance v0, Lorg/apache/commons/math3/fraction/BigFraction;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Lorg/apache/commons/math3/fraction/BigFraction;-><init>(I)V

    sput-object v0, Lorg/apache/commons/math3/fraction/BigFraction;->MINUS_ONE:Lorg/apache/commons/math3/fraction/BigFraction;

    .line 56
    new-instance v0, Lorg/apache/commons/math3/fraction/BigFraction;

    invoke-direct {v0, v5, v6}, Lorg/apache/commons/math3/fraction/BigFraction;-><init>(II)V

    sput-object v0, Lorg/apache/commons/math3/fraction/BigFraction;->FOUR_FIFTHS:Lorg/apache/commons/math3/fraction/BigFraction;

    .line 59
    new-instance v0, Lorg/apache/commons/math3/fraction/BigFraction;

    invoke-direct {v0, v2, v6}, Lorg/apache/commons/math3/fraction/BigFraction;-><init>(II)V

    sput-object v0, Lorg/apache/commons/math3/fraction/BigFraction;->ONE_FIFTH:Lorg/apache/commons/math3/fraction/BigFraction;

    .line 62
    new-instance v0, Lorg/apache/commons/math3/fraction/BigFraction;

    invoke-direct {v0, v2, v3}, Lorg/apache/commons/math3/fraction/BigFraction;-><init>(II)V

    sput-object v0, Lorg/apache/commons/math3/fraction/BigFraction;->ONE_HALF:Lorg/apache/commons/math3/fraction/BigFraction;

    .line 65
    new-instance v0, Lorg/apache/commons/math3/fraction/BigFraction;

    invoke-direct {v0, v2, v5}, Lorg/apache/commons/math3/fraction/BigFraction;-><init>(II)V

    sput-object v0, Lorg/apache/commons/math3/fraction/BigFraction;->ONE_QUARTER:Lorg/apache/commons/math3/fraction/BigFraction;

    .line 68
    new-instance v0, Lorg/apache/commons/math3/fraction/BigFraction;

    invoke-direct {v0, v2, v4}, Lorg/apache/commons/math3/fraction/BigFraction;-><init>(II)V

    sput-object v0, Lorg/apache/commons/math3/fraction/BigFraction;->ONE_THIRD:Lorg/apache/commons/math3/fraction/BigFraction;

    .line 71
    new-instance v0, Lorg/apache/commons/math3/fraction/BigFraction;

    invoke-direct {v0, v4, v6}, Lorg/apache/commons/math3/fraction/BigFraction;-><init>(II)V

    sput-object v0, Lorg/apache/commons/math3/fraction/BigFraction;->THREE_FIFTHS:Lorg/apache/commons/math3/fraction/BigFraction;

    .line 74
    new-instance v0, Lorg/apache/commons/math3/fraction/BigFraction;

    invoke-direct {v0, v4, v5}, Lorg/apache/commons/math3/fraction/BigFraction;-><init>(II)V

    sput-object v0, Lorg/apache/commons/math3/fraction/BigFraction;->THREE_QUARTERS:Lorg/apache/commons/math3/fraction/BigFraction;

    .line 77
    new-instance v0, Lorg/apache/commons/math3/fraction/BigFraction;

    invoke-direct {v0, v3, v6}, Lorg/apache/commons/math3/fraction/BigFraction;-><init>(II)V

    sput-object v0, Lorg/apache/commons/math3/fraction/BigFraction;->TWO_FIFTHS:Lorg/apache/commons/math3/fraction/BigFraction;

    .line 80
    new-instance v0, Lorg/apache/commons/math3/fraction/BigFraction;

    invoke-direct {v0, v3, v5}, Lorg/apache/commons/math3/fraction/BigFraction;-><init>(II)V

    sput-object v0, Lorg/apache/commons/math3/fraction/BigFraction;->TWO_QUARTERS:Lorg/apache/commons/math3/fraction/BigFraction;

    .line 83
    new-instance v0, Lorg/apache/commons/math3/fraction/BigFraction;

    invoke-direct {v0, v3, v4}, Lorg/apache/commons/math3/fraction/BigFraction;-><init>(II)V

    sput-object v0, Lorg/apache/commons/math3/fraction/BigFraction;->TWO_THIRDS:Lorg/apache/commons/math3/fraction/BigFraction;

    .line 89
    const-wide/16 v0, 0x64

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/math3/fraction/BigFraction;->ONE_HUNDRED:Ljava/math/BigInteger;

    return-void
.end method

.method public constructor <init>(D)V
    .locals 15
    .param p1, "value"    # D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathIllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 171
    invoke-direct {p0}, Ljava/lang/Number;-><init>()V

    .line 172
    invoke-static/range {p1 .. p2}, Ljava/lang/Double;->isNaN(D)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 173
    new-instance v5, Lorg/apache/commons/math3/exception/MathIllegalArgumentException;

    sget-object v10, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->NAN_VALUE_CONVERSION:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    const/4 v11, 0x0

    new-array v11, v11, [Ljava/lang/Object;

    invoke-direct {v5, v10, v11}, Lorg/apache/commons/math3/exception/MathIllegalArgumentException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v5

    .line 175
    :cond_0
    invoke-static/range {p1 .. p2}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 176
    new-instance v5, Lorg/apache/commons/math3/exception/MathIllegalArgumentException;

    sget-object v10, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->INFINITE_VALUE_CONVERSION:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    const/4 v11, 0x0

    new-array v11, v11, [Ljava/lang/Object;

    invoke-direct {v5, v10, v11}, Lorg/apache/commons/math3/exception/MathIllegalArgumentException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v5

    .line 180
    :cond_1
    invoke-static/range {p1 .. p2}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v0

    .line 181
    .local v0, "bits":J
    const-wide/high16 v10, -0x8000000000000000L

    and-long v8, v0, v10

    .line 182
    .local v8, "sign":J
    const-wide/high16 v10, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    and-long v2, v0, v10

    .line 183
    .local v2, "exponent":J
    const-wide v10, 0xfffffffffffffL

    and-long v6, v0, v10

    .line 184
    .local v6, "m":J
    const-wide/16 v10, 0x0

    cmp-long v5, v2, v10

    if-eqz v5, :cond_2

    .line 186
    const-wide/high16 v10, 0x10000000000000L

    or-long/2addr v6, v10

    .line 188
    :cond_2
    const-wide/16 v10, 0x0

    cmp-long v5, v8, v10

    if-eqz v5, :cond_3

    .line 189
    neg-long v6, v6

    .line 191
    :cond_3
    const/16 v5, 0x34

    shr-long v10, v2, v5

    long-to-int v5, v10

    add-int/lit16 v4, v5, -0x433

    .line 192
    .local v4, "k":I
    :goto_0
    const-wide v10, 0x1ffffffffffffeL

    and-long/2addr v10, v6

    const-wide/16 v12, 0x0

    cmp-long v5, v10, v12

    if-eqz v5, :cond_4

    const-wide/16 v10, 0x1

    and-long/2addr v10, v6

    const-wide/16 v12, 0x0

    cmp-long v5, v10, v12

    if-nez v5, :cond_4

    .line 193
    const/4 v5, 0x1

    shr-long/2addr v6, v5

    .line 194
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 197
    :cond_4
    if-gez v4, :cond_5

    .line 198
    invoke-static {v6, v7}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v5

    iput-object v5, p0, Lorg/apache/commons/math3/fraction/BigFraction;->numerator:Ljava/math/BigInteger;

    .line 199
    sget-object v5, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    neg-int v10, v4

    invoke-virtual {v5, v10}, Ljava/math/BigInteger;->flipBit(I)Ljava/math/BigInteger;

    move-result-object v5

    iput-object v5, p0, Lorg/apache/commons/math3/fraction/BigFraction;->denominator:Ljava/math/BigInteger;

    .line 205
    :goto_1
    return-void

    .line 201
    :cond_5
    invoke-static {v6, v7}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v5

    sget-object v10, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    invoke-virtual {v10, v4}, Ljava/math/BigInteger;->flipBit(I)Ljava/math/BigInteger;

    move-result-object v10

    invoke-virtual {v5, v10}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v5

    iput-object v5, p0, Lorg/apache/commons/math3/fraction/BigFraction;->numerator:Ljava/math/BigInteger;

    .line 202
    sget-object v5, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    iput-object v5, p0, Lorg/apache/commons/math3/fraction/BigFraction;->denominator:Ljava/math/BigInteger;

    goto :goto_1
.end method

.method public constructor <init>(DDI)V
    .locals 9
    .param p1, "value"    # D
    .param p3, "epsilon"    # D
    .param p5, "maxIterations"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/fraction/FractionConversionException;
        }
    .end annotation

    .prologue
    .line 231
    const v6, 0x7fffffff

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    move v7, p5

    invoke-direct/range {v1 .. v7}, Lorg/apache/commons/math3/fraction/BigFraction;-><init>(DDII)V

    .line 232
    return-void
.end method

.method private constructor <init>(DDII)V
    .locals 37
    .param p1, "value"    # D
    .param p3, "epsilon"    # D
    .param p5, "maxDenominator"    # I
    .param p6, "maxIterations"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/fraction/FractionConversionException;
        }
    .end annotation

    .prologue
    .line 270
    invoke-direct/range {p0 .. p0}, Ljava/lang/Number;-><init>()V

    .line 271
    const-wide/32 v22, 0x7fffffff

    .line 272
    .local v22, "overflow":J
    move-wide/from16 v32, p1

    .line 273
    .local v32, "r0":D
    invoke-static/range {v32 .. v33}, Lorg/apache/commons/math3/util/FastMath;->floor(D)D

    move-result-wide v6

    double-to-long v8, v6

    .line 275
    .local v8, "a0":J
    invoke-static {v8, v9}, Lorg/apache/commons/math3/util/FastMath;->abs(J)J

    move-result-wide v6

    cmp-long v5, v6, v22

    if-lez v5, :cond_0

    .line 276
    new-instance v5, Lorg/apache/commons/math3/fraction/FractionConversionException;

    const-wide/16 v10, 0x1

    move-wide/from16 v6, p1

    invoke-direct/range {v5 .. v11}, Lorg/apache/commons/math3/fraction/FractionConversionException;-><init>(DJJ)V

    throw v5

    .line 281
    :cond_0
    long-to-double v6, v8

    sub-double v6, v6, p1

    invoke-static {v6, v7}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v6

    cmpg-double v5, v6, p3

    if-gez v5, :cond_1

    .line 282
    invoke-static {v8, v9}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v5

    move-object/from16 v0, p0

    iput-object v5, v0, Lorg/apache/commons/math3/fraction/BigFraction;->numerator:Ljava/math/BigInteger;

    .line 283
    sget-object v5, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    move-object/from16 v0, p0

    iput-object v5, v0, Lorg/apache/commons/math3/fraction/BigFraction;->denominator:Ljava/math/BigInteger;

    .line 338
    :goto_0
    return-void

    .line 287
    :cond_1
    const-wide/16 v24, 0x1

    .line 288
    .local v24, "p0":J
    const-wide/16 v28, 0x0

    .line 289
    .local v28, "q0":J
    move-wide/from16 v26, v8

    .line 290
    .local v26, "p1":J
    const-wide/16 v30, 0x1

    .line 292
    .local v30, "q1":J
    const-wide/16 v14, 0x0

    .line 293
    .local v14, "p2":J
    const-wide/16 v16, 0x1

    .line 295
    .local v16, "q2":J
    const/4 v4, 0x0

    .line 296
    .local v4, "n":I
    const/16 v36, 0x0

    .line 298
    .local v36, "stop":Z
    :cond_2
    add-int/lit8 v4, v4, 0x1

    .line 299
    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    long-to-double v10, v8

    sub-double v10, v32, v10

    div-double v34, v6, v10

    .line 300
    .local v34, "r1":D
    invoke-static/range {v34 .. v35}, Lorg/apache/commons/math3/util/FastMath;->floor(D)D

    move-result-wide v6

    double-to-long v0, v6

    move-wide/from16 v18, v0

    .line 301
    .local v18, "a1":J
    mul-long v6, v18, v26

    add-long v14, v6, v24

    .line 302
    mul-long v6, v18, v30

    add-long v16, v6, v28

    .line 303
    cmp-long v5, v14, v22

    if-gtz v5, :cond_3

    cmp-long v5, v16, v22

    if-lez v5, :cond_5

    .line 306
    :cond_3
    const-wide/16 v6, 0x0

    cmpl-double v5, p3, v6

    if-nez v5, :cond_4

    invoke-static/range {v30 .. v31}, Lorg/apache/commons/math3/util/FastMath;->abs(J)J

    move-result-wide v6

    move/from16 v0, p5

    int-to-long v10, v0

    cmp-long v5, v6, v10

    if-gez v5, :cond_4

    .line 327
    :goto_1
    move/from16 v0, p6

    if-lt v4, v0, :cond_7

    .line 328
    new-instance v5, Lorg/apache/commons/math3/fraction/FractionConversionException;

    move-wide/from16 v0, p1

    move/from16 v2, p6

    invoke-direct {v5, v0, v1, v2}, Lorg/apache/commons/math3/fraction/FractionConversionException;-><init>(DI)V

    throw v5

    .line 309
    :cond_4
    new-instance v11, Lorg/apache/commons/math3/fraction/FractionConversionException;

    move-wide/from16 v12, p1

    invoke-direct/range {v11 .. v17}, Lorg/apache/commons/math3/fraction/FractionConversionException;-><init>(DJJ)V

    throw v11

    .line 312
    :cond_5
    long-to-double v6, v14

    move-wide/from16 v0, v16

    long-to-double v10, v0

    div-double v20, v6, v10

    .line 313
    .local v20, "convergent":D
    move/from16 v0, p6

    if-ge v4, v0, :cond_6

    sub-double v6, v20, p1

    invoke-static {v6, v7}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v6

    cmpl-double v5, v6, p3

    if-lez v5, :cond_6

    move/from16 v0, p5

    int-to-long v6, v0

    cmp-long v5, v16, v6

    if-gez v5, :cond_6

    .line 316
    move-wide/from16 v24, v26

    .line 317
    move-wide/from16 v26, v14

    .line 318
    move-wide/from16 v28, v30

    .line 319
    move-wide/from16 v30, v16

    .line 320
    move-wide/from16 v8, v18

    .line 321
    move-wide/from16 v32, v34

    .line 325
    :goto_2
    if-eqz v36, :cond_2

    goto :goto_1

    .line 323
    :cond_6
    const/16 v36, 0x1

    goto :goto_2

    .line 331
    .end local v20    # "convergent":D
    :cond_7
    move/from16 v0, p5

    int-to-long v6, v0

    cmp-long v5, v16, v6

    if-gez v5, :cond_8

    .line 332
    invoke-static {v14, v15}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v5

    move-object/from16 v0, p0

    iput-object v5, v0, Lorg/apache/commons/math3/fraction/BigFraction;->numerator:Ljava/math/BigInteger;

    .line 333
    invoke-static/range {v16 .. v17}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v5

    move-object/from16 v0, p0

    iput-object v5, v0, Lorg/apache/commons/math3/fraction/BigFraction;->denominator:Ljava/math/BigInteger;

    goto/16 :goto_0

    .line 335
    :cond_8
    invoke-static/range {v26 .. v27}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v5

    move-object/from16 v0, p0

    iput-object v5, v0, Lorg/apache/commons/math3/fraction/BigFraction;->numerator:Ljava/math/BigInteger;

    .line 336
    invoke-static/range {v30 .. v31}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v5

    move-object/from16 v0, p0

    iput-object v5, v0, Lorg/apache/commons/math3/fraction/BigFraction;->denominator:Ljava/math/BigInteger;

    goto/16 :goto_0
.end method

.method public constructor <init>(DI)V
    .locals 9
    .param p1, "value"    # D
    .param p3, "maxDenominator"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/fraction/FractionConversionException;
        }
    .end annotation

    .prologue
    .line 359
    const-wide/16 v4, 0x0

    const/16 v7, 0x64

    move-object v1, p0

    move-wide v2, p1

    move v6, p3

    invoke-direct/range {v1 .. v7}, Lorg/apache/commons/math3/fraction/BigFraction;-><init>(DDII)V

    .line 360
    return-void
.end method

.method public constructor <init>(I)V
    .locals 2
    .param p1, "num"    # I

    .prologue
    .line 372
    int-to-long v0, p1

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sget-object v1, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    invoke-direct {p0, v0, v1}, Lorg/apache/commons/math3/fraction/BigFraction;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    .line 373
    return-void
.end method

.method public constructor <init>(II)V
    .locals 4
    .param p1, "num"    # I
    .param p2, "den"    # I

    .prologue
    .line 387
    int-to-long v0, p1

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    int-to-long v2, p2

    invoke-static {v2, v3}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lorg/apache/commons/math3/fraction/BigFraction;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    .line 388
    return-void
.end method

.method public constructor <init>(J)V
    .locals 3
    .param p1, "num"    # J

    .prologue
    .line 399
    invoke-static {p1, p2}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sget-object v1, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    invoke-direct {p0, v0, v1}, Lorg/apache/commons/math3/fraction/BigFraction;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    .line 400
    return-void
.end method

.method public constructor <init>(JJ)V
    .locals 3
    .param p1, "num"    # J
    .param p3, "den"    # J

    .prologue
    .line 414
    invoke-static {p1, p2}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    invoke-static {p3, p4}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lorg/apache/commons/math3/fraction/BigFraction;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    .line 415
    return-void
.end method

.method public constructor <init>(Ljava/math/BigInteger;)V
    .locals 1
    .param p1, "num"    # Ljava/math/BigInteger;

    .prologue
    .line 107
    sget-object v0, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    invoke-direct {p0, p1, v0}, Lorg/apache/commons/math3/fraction/BigFraction;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    .line 108
    return-void
.end method

.method public constructor <init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V
    .locals 4
    .param p1, "num"    # Ljava/math/BigInteger;
    .param p2, "den"    # Ljava/math/BigInteger;

    .prologue
    const/4 v3, 0x0

    .line 119
    invoke-direct {p0}, Ljava/lang/Number;-><init>()V

    .line 120
    sget-object v1, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->NUMERATOR:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {p1, v1, v2}, Lorg/apache/commons/math3/util/MathUtils;->checkNotNull(Ljava/lang/Object;Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    .line 121
    sget-object v1, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->DENOMINATOR:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {p2, v1, v2}, Lorg/apache/commons/math3/util/MathUtils;->checkNotNull(Ljava/lang/Object;Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    .line 122
    sget-object v1, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    invoke-virtual {v1, p2}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 123
    new-instance v1, Lorg/apache/commons/math3/exception/ZeroException;

    sget-object v2, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->ZERO_DENOMINATOR:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    new-array v3, v3, [Ljava/lang/Object;

    invoke-direct {v1, v2, v3}, Lorg/apache/commons/math3/exception/ZeroException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v1

    .line 125
    :cond_0
    sget-object v1, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    invoke-virtual {v1, p1}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 126
    sget-object v1, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    iput-object v1, p0, Lorg/apache/commons/math3/fraction/BigFraction;->numerator:Ljava/math/BigInteger;

    .line 127
    sget-object v1, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    iput-object v1, p0, Lorg/apache/commons/math3/fraction/BigFraction;->denominator:Ljava/math/BigInteger;

    .line 148
    :goto_0
    return-void

    .line 131
    :cond_1
    invoke-virtual {p1, p2}, Ljava/math/BigInteger;->gcd(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    .line 132
    .local v0, "gcd":Ljava/math/BigInteger;
    sget-object v1, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v1, v0}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v1

    if-gez v1, :cond_2

    .line 133
    invoke-virtual {p1, v0}, Ljava/math/BigInteger;->divide(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    .line 134
    invoke-virtual {p2, v0}, Ljava/math/BigInteger;->divide(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p2

    .line 138
    :cond_2
    sget-object v1, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    invoke-virtual {v1, p2}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v1

    if-lez v1, :cond_3

    .line 139
    invoke-virtual {p1}, Ljava/math/BigInteger;->negate()Ljava/math/BigInteger;

    move-result-object p1

    .line 140
    invoke-virtual {p2}, Ljava/math/BigInteger;->negate()Ljava/math/BigInteger;

    move-result-object p2

    .line 144
    :cond_3
    iput-object p1, p0, Lorg/apache/commons/math3/fraction/BigFraction;->numerator:Ljava/math/BigInteger;

    .line 145
    iput-object p2, p0, Lorg/apache/commons/math3/fraction/BigFraction;->denominator:Ljava/math/BigInteger;

    goto :goto_0
.end method

.method public static getReducedFraction(II)Lorg/apache/commons/math3/fraction/BigFraction;
    .locals 1
    .param p0, "numerator"    # I
    .param p1, "denominator"    # I

    .prologue
    .line 438
    if-nez p0, :cond_0

    .line 439
    sget-object v0, Lorg/apache/commons/math3/fraction/BigFraction;->ZERO:Lorg/apache/commons/math3/fraction/BigFraction;

    .line 442
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lorg/apache/commons/math3/fraction/BigFraction;

    invoke-direct {v0, p0, p1}, Lorg/apache/commons/math3/fraction/BigFraction;-><init>(II)V

    goto :goto_0
.end method


# virtual methods
.method public abs()Lorg/apache/commons/math3/fraction/BigFraction;
    .locals 2

    .prologue
    .line 453
    sget-object v0, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    iget-object v1, p0, Lorg/apache/commons/math3/fraction/BigFraction;->numerator:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v0

    if-gtz v0, :cond_0

    .end local p0    # "this":Lorg/apache/commons/math3/fraction/BigFraction;
    :goto_0
    return-object p0

    .restart local p0    # "this":Lorg/apache/commons/math3/fraction/BigFraction;
    :cond_0
    invoke-virtual {p0}, Lorg/apache/commons/math3/fraction/BigFraction;->negate()Lorg/apache/commons/math3/fraction/BigFraction;

    move-result-object p0

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
    .line 39
    check-cast p1, Lorg/apache/commons/math3/fraction/BigFraction;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/fraction/BigFraction;->add(Lorg/apache/commons/math3/fraction/BigFraction;)Lorg/apache/commons/math3/fraction/BigFraction;

    move-result-object v0

    return-object v0
.end method

.method public add(I)Lorg/apache/commons/math3/fraction/BigFraction;
    .locals 2
    .param p1, "i"    # I

    .prologue
    .line 484
    int-to-long v0, p1

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/fraction/BigFraction;->add(Ljava/math/BigInteger;)Lorg/apache/commons/math3/fraction/BigFraction;

    move-result-object v0

    return-object v0
.end method

.method public add(J)Lorg/apache/commons/math3/fraction/BigFraction;
    .locals 1
    .param p1, "l"    # J

    .prologue
    .line 498
    invoke-static {p1, p2}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/fraction/BigFraction;->add(Ljava/math/BigInteger;)Lorg/apache/commons/math3/fraction/BigFraction;

    move-result-object v0

    return-object v0
.end method

.method public add(Ljava/math/BigInteger;)Lorg/apache/commons/math3/fraction/BigFraction;
    .locals 3
    .param p1, "bg"    # Ljava/math/BigInteger;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;
        }
    .end annotation

    .prologue
    .line 469
    invoke-static {p1}, Lorg/apache/commons/math3/util/MathUtils;->checkNotNull(Ljava/lang/Object;)V

    .line 470
    new-instance v0, Lorg/apache/commons/math3/fraction/BigFraction;

    iget-object v1, p0, Lorg/apache/commons/math3/fraction/BigFraction;->numerator:Ljava/math/BigInteger;

    iget-object v2, p0, Lorg/apache/commons/math3/fraction/BigFraction;->denominator:Ljava/math/BigInteger;

    invoke-virtual {v2, p1}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/commons/math3/fraction/BigFraction;->denominator:Ljava/math/BigInteger;

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/fraction/BigFraction;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    return-object v0
.end method

.method public add(Lorg/apache/commons/math3/fraction/BigFraction;)Lorg/apache/commons/math3/fraction/BigFraction;
    .locals 5
    .param p1, "fraction"    # Lorg/apache/commons/math3/fraction/BigFraction;

    .prologue
    .line 513
    if-nez p1, :cond_0

    .line 514
    new-instance v2, Lorg/apache/commons/math3/exception/NullArgumentException;

    sget-object v3, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->FRACTION:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-direct {v2, v3, v4}, Lorg/apache/commons/math3/exception/NullArgumentException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v2

    .line 516
    :cond_0
    sget-object v2, Lorg/apache/commons/math3/fraction/BigFraction;->ZERO:Lorg/apache/commons/math3/fraction/BigFraction;

    invoke-virtual {v2, p1}, Lorg/apache/commons/math3/fraction/BigFraction;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 530
    .end local p0    # "this":Lorg/apache/commons/math3/fraction/BigFraction;
    :goto_0
    return-object p0

    .line 520
    .restart local p0    # "this":Lorg/apache/commons/math3/fraction/BigFraction;
    :cond_1
    const/4 v1, 0x0

    .line 521
    .local v1, "num":Ljava/math/BigInteger;
    const/4 v0, 0x0

    .line 523
    .local v0, "den":Ljava/math/BigInteger;
    iget-object v2, p0, Lorg/apache/commons/math3/fraction/BigFraction;->denominator:Ljava/math/BigInteger;

    iget-object v3, p1, Lorg/apache/commons/math3/fraction/BigFraction;->denominator:Ljava/math/BigInteger;

    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 524
    iget-object v2, p0, Lorg/apache/commons/math3/fraction/BigFraction;->numerator:Ljava/math/BigInteger;

    iget-object v3, p1, Lorg/apache/commons/math3/fraction/BigFraction;->numerator:Ljava/math/BigInteger;

    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    .line 525
    iget-object v0, p0, Lorg/apache/commons/math3/fraction/BigFraction;->denominator:Ljava/math/BigInteger;

    .line 530
    :goto_1
    new-instance p0, Lorg/apache/commons/math3/fraction/BigFraction;

    .end local p0    # "this":Lorg/apache/commons/math3/fraction/BigFraction;
    invoke-direct {p0, v1, v0}, Lorg/apache/commons/math3/fraction/BigFraction;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    goto :goto_0

    .line 527
    .restart local p0    # "this":Lorg/apache/commons/math3/fraction/BigFraction;
    :cond_2
    iget-object v2, p0, Lorg/apache/commons/math3/fraction/BigFraction;->numerator:Ljava/math/BigInteger;

    iget-object v3, p1, Lorg/apache/commons/math3/fraction/BigFraction;->denominator:Ljava/math/BigInteger;

    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    iget-object v3, p1, Lorg/apache/commons/math3/fraction/BigFraction;->numerator:Ljava/math/BigInteger;

    iget-object v4, p0, Lorg/apache/commons/math3/fraction/BigFraction;->denominator:Ljava/math/BigInteger;

    invoke-virtual {v3, v4}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    .line 528
    iget-object v2, p0, Lorg/apache/commons/math3/fraction/BigFraction;->denominator:Ljava/math/BigInteger;

    iget-object v3, p1, Lorg/apache/commons/math3/fraction/BigFraction;->denominator:Ljava/math/BigInteger;

    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    goto :goto_1
.end method

.method public bigDecimalValue()Ljava/math/BigDecimal;
    .locals 3

    .prologue
    .line 547
    new-instance v0, Ljava/math/BigDecimal;

    iget-object v1, p0, Lorg/apache/commons/math3/fraction/BigFraction;->numerator:Ljava/math/BigInteger;

    invoke-direct {v0, v1}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;)V

    new-instance v1, Ljava/math/BigDecimal;

    iget-object v2, p0, Lorg/apache/commons/math3/fraction/BigFraction;->denominator:Ljava/math/BigInteger;

    invoke-direct {v1, v2}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;)V

    invoke-virtual {v0, v1}, Ljava/math/BigDecimal;->divide(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v0

    return-object v0
.end method

.method public bigDecimalValue(I)Ljava/math/BigDecimal;
    .locals 3
    .param p1, "roundingMode"    # I

    .prologue
    .line 566
    new-instance v0, Ljava/math/BigDecimal;

    iget-object v1, p0, Lorg/apache/commons/math3/fraction/BigFraction;->numerator:Ljava/math/BigInteger;

    invoke-direct {v0, v1}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;)V

    new-instance v1, Ljava/math/BigDecimal;

    iget-object v2, p0, Lorg/apache/commons/math3/fraction/BigFraction;->denominator:Ljava/math/BigInteger;

    invoke-direct {v1, v2}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;)V

    invoke-virtual {v0, v1, p1}, Ljava/math/BigDecimal;->divide(Ljava/math/BigDecimal;I)Ljava/math/BigDecimal;

    move-result-object v0

    return-object v0
.end method

.method public bigDecimalValue(II)Ljava/math/BigDecimal;
    .locals 3
    .param p1, "scale"    # I
    .param p2, "roundingMode"    # I

    .prologue
    .line 585
    new-instance v0, Ljava/math/BigDecimal;

    iget-object v1, p0, Lorg/apache/commons/math3/fraction/BigFraction;->numerator:Ljava/math/BigInteger;

    invoke-direct {v0, v1}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;)V

    new-instance v1, Ljava/math/BigDecimal;

    iget-object v2, p0, Lorg/apache/commons/math3/fraction/BigFraction;->denominator:Ljava/math/BigInteger;

    invoke-direct {v1, v2}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;)V

    invoke-virtual {v0, v1, p1, p2}, Ljava/math/BigDecimal;->divide(Ljava/math/BigDecimal;II)Ljava/math/BigDecimal;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 39
    check-cast p1, Lorg/apache/commons/math3/fraction/BigFraction;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/fraction/BigFraction;->compareTo(Lorg/apache/commons/math3/fraction/BigFraction;)I

    move-result v0

    return v0
.end method

.method public compareTo(Lorg/apache/commons/math3/fraction/BigFraction;)I
    .locals 4
    .param p1, "object"    # Lorg/apache/commons/math3/fraction/BigFraction;

    .prologue
    .line 600
    iget-object v2, p0, Lorg/apache/commons/math3/fraction/BigFraction;->numerator:Ljava/math/BigInteger;

    iget-object v3, p1, Lorg/apache/commons/math3/fraction/BigFraction;->denominator:Ljava/math/BigInteger;

    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    .line 601
    .local v1, "nOd":Ljava/math/BigInteger;
    iget-object v2, p0, Lorg/apache/commons/math3/fraction/BigFraction;->denominator:Ljava/math/BigInteger;

    iget-object v3, p1, Lorg/apache/commons/math3/fraction/BigFraction;->numerator:Ljava/math/BigInteger;

    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    .line 602
    .local v0, "dOn":Ljava/math/BigInteger;
    invoke-virtual {v1, v0}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v2

    return v2
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
    .line 39
    check-cast p1, Lorg/apache/commons/math3/fraction/BigFraction;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/fraction/BigFraction;->divide(Lorg/apache/commons/math3/fraction/BigFraction;)Lorg/apache/commons/math3/fraction/BigFraction;

    move-result-object v0

    return-object v0
.end method

.method public divide(I)Lorg/apache/commons/math3/fraction/BigFraction;
    .locals 2
    .param p1, "i"    # I

    .prologue
    .line 637
    int-to-long v0, p1

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/fraction/BigFraction;->divide(Ljava/math/BigInteger;)Lorg/apache/commons/math3/fraction/BigFraction;

    move-result-object v0

    return-object v0
.end method

.method public divide(J)Lorg/apache/commons/math3/fraction/BigFraction;
    .locals 1
    .param p1, "l"    # J

    .prologue
    .line 651
    invoke-static {p1, p2}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/fraction/BigFraction;->divide(Ljava/math/BigInteger;)Lorg/apache/commons/math3/fraction/BigFraction;

    move-result-object v0

    return-object v0
.end method

.method public divide(Ljava/math/BigInteger;)Lorg/apache/commons/math3/fraction/BigFraction;
    .locals 3
    .param p1, "bg"    # Ljava/math/BigInteger;

    .prologue
    const/4 v2, 0x0

    .line 617
    if-nez p1, :cond_0

    .line 618
    new-instance v0, Lorg/apache/commons/math3/exception/NullArgumentException;

    sget-object v1, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->FRACTION:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    new-array v2, v2, [Ljava/lang/Object;

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/exception/NullArgumentException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v0

    .line 620
    :cond_0
    sget-object v0, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    invoke-virtual {v0, p1}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 621
    new-instance v0, Lorg/apache/commons/math3/exception/MathArithmeticException;

    sget-object v1, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->ZERO_DENOMINATOR:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    new-array v2, v2, [Ljava/lang/Object;

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/exception/MathArithmeticException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v0

    .line 623
    :cond_1
    new-instance v0, Lorg/apache/commons/math3/fraction/BigFraction;

    iget-object v1, p0, Lorg/apache/commons/math3/fraction/BigFraction;->numerator:Ljava/math/BigInteger;

    iget-object v2, p0, Lorg/apache/commons/math3/fraction/BigFraction;->denominator:Ljava/math/BigInteger;

    invoke-virtual {v2, p1}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/fraction/BigFraction;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    return-object v0
.end method

.method public divide(Lorg/apache/commons/math3/fraction/BigFraction;)Lorg/apache/commons/math3/fraction/BigFraction;
    .locals 3
    .param p1, "fraction"    # Lorg/apache/commons/math3/fraction/BigFraction;

    .prologue
    const/4 v2, 0x0

    .line 666
    if-nez p1, :cond_0

    .line 667
    new-instance v0, Lorg/apache/commons/math3/exception/NullArgumentException;

    sget-object v1, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->FRACTION:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    new-array v2, v2, [Ljava/lang/Object;

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/exception/NullArgumentException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v0

    .line 669
    :cond_0
    sget-object v0, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    iget-object v1, p1, Lorg/apache/commons/math3/fraction/BigFraction;->numerator:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 670
    new-instance v0, Lorg/apache/commons/math3/exception/MathArithmeticException;

    sget-object v1, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->ZERO_DENOMINATOR:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    new-array v2, v2, [Ljava/lang/Object;

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/exception/MathArithmeticException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v0

    .line 673
    :cond_1
    invoke-virtual {p1}, Lorg/apache/commons/math3/fraction/BigFraction;->reciprocal()Lorg/apache/commons/math3/fraction/BigFraction;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/fraction/BigFraction;->multiply(Lorg/apache/commons/math3/fraction/BigFraction;)Lorg/apache/commons/math3/fraction/BigFraction;

    move-result-object v0

    return-object v0
.end method

.method public doubleValue()D
    .locals 8

    .prologue
    .line 687
    iget-object v3, p0, Lorg/apache/commons/math3/fraction/BigFraction;->numerator:Ljava/math/BigInteger;

    invoke-virtual {v3}, Ljava/math/BigInteger;->doubleValue()D

    move-result-wide v4

    iget-object v3, p0, Lorg/apache/commons/math3/fraction/BigFraction;->denominator:Ljava/math/BigInteger;

    invoke-virtual {v3}, Ljava/math/BigInteger;->doubleValue()D

    move-result-wide v6

    div-double v0, v4, v6

    .line 688
    .local v0, "result":D
    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 691
    iget-object v3, p0, Lorg/apache/commons/math3/fraction/BigFraction;->numerator:Ljava/math/BigInteger;

    invoke-virtual {v3}, Ljava/math/BigInteger;->bitLength()I

    move-result v3

    iget-object v4, p0, Lorg/apache/commons/math3/fraction/BigFraction;->denominator:Ljava/math/BigInteger;

    invoke-virtual {v4}, Ljava/math/BigInteger;->bitLength()I

    move-result v4

    invoke-static {v3, v4}, Lorg/apache/commons/math3/util/FastMath;->max(II)I

    move-result v3

    const-wide v4, 0x7fefffffffffffffL    # Double.MAX_VALUE

    invoke-static {v4, v5}, Lorg/apache/commons/math3/util/FastMath;->getExponent(D)I

    move-result v4

    sub-int v2, v3, v4

    .line 693
    .local v2, "shift":I
    iget-object v3, p0, Lorg/apache/commons/math3/fraction/BigFraction;->numerator:Ljava/math/BigInteger;

    invoke-virtual {v3, v2}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v3}, Ljava/math/BigInteger;->doubleValue()D

    move-result-wide v4

    iget-object v3, p0, Lorg/apache/commons/math3/fraction/BigFraction;->denominator:Ljava/math/BigInteger;

    invoke-virtual {v3, v2}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v3}, Ljava/math/BigInteger;->doubleValue()D

    move-result-wide v6

    div-double v0, v4, v6

    .line 696
    .end local v2    # "shift":I
    :cond_0
    return-wide v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "other"    # Ljava/lang/Object;

    .prologue
    .line 716
    const/4 v0, 0x0

    .line 718
    .local v0, "ret":Z
    if-ne p0, p1, :cond_1

    .line 719
    const/4 v0, 0x1

    .line 726
    .end local p1    # "other":Ljava/lang/Object;
    :cond_0
    :goto_0
    return v0

    .line 720
    .restart local p1    # "other":Ljava/lang/Object;
    :cond_1
    instance-of v3, p1, Lorg/apache/commons/math3/fraction/BigFraction;

    if-eqz v3, :cond_0

    .line 721
    check-cast p1, Lorg/apache/commons/math3/fraction/BigFraction;

    .end local p1    # "other":Ljava/lang/Object;
    invoke-virtual {p1}, Lorg/apache/commons/math3/fraction/BigFraction;->reduce()Lorg/apache/commons/math3/fraction/BigFraction;

    move-result-object v1

    .line 722
    .local v1, "rhs":Lorg/apache/commons/math3/fraction/BigFraction;
    invoke-virtual {p0}, Lorg/apache/commons/math3/fraction/BigFraction;->reduce()Lorg/apache/commons/math3/fraction/BigFraction;

    move-result-object v2

    .line 723
    .local v2, "thisOne":Lorg/apache/commons/math3/fraction/BigFraction;
    iget-object v3, v2, Lorg/apache/commons/math3/fraction/BigFraction;->numerator:Ljava/math/BigInteger;

    iget-object v4, v1, Lorg/apache/commons/math3/fraction/BigFraction;->numerator:Ljava/math/BigInteger;

    invoke-virtual {v3, v4}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, v2, Lorg/apache/commons/math3/fraction/BigFraction;->denominator:Ljava/math/BigInteger;

    iget-object v4, v1, Lorg/apache/commons/math3/fraction/BigFraction;->denominator:Ljava/math/BigInteger;

    invoke-virtual {v3, v4}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v0, 0x1

    :goto_1
    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public floatValue()F
    .locals 4

    .prologue
    .line 740
    iget-object v2, p0, Lorg/apache/commons/math3/fraction/BigFraction;->numerator:Ljava/math/BigInteger;

    invoke-virtual {v2}, Ljava/math/BigInteger;->floatValue()F

    move-result v2

    iget-object v3, p0, Lorg/apache/commons/math3/fraction/BigFraction;->denominator:Ljava/math/BigInteger;

    invoke-virtual {v3}, Ljava/math/BigInteger;->floatValue()F

    move-result v3

    div-float v0, v2, v3

    .line 741
    .local v0, "result":F
    float-to-double v2, v0

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 744
    iget-object v2, p0, Lorg/apache/commons/math3/fraction/BigFraction;->numerator:Ljava/math/BigInteger;

    invoke-virtual {v2}, Ljava/math/BigInteger;->bitLength()I

    move-result v2

    iget-object v3, p0, Lorg/apache/commons/math3/fraction/BigFraction;->denominator:Ljava/math/BigInteger;

    invoke-virtual {v3}, Ljava/math/BigInteger;->bitLength()I

    move-result v3

    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/FastMath;->max(II)I

    move-result v2

    const v3, 0x7f7fffff    # Float.MAX_VALUE

    invoke-static {v3}, Lorg/apache/commons/math3/util/FastMath;->getExponent(F)I

    move-result v3

    sub-int v1, v2, v3

    .line 746
    .local v1, "shift":I
    iget-object v2, p0, Lorg/apache/commons/math3/fraction/BigFraction;->numerator:Ljava/math/BigInteger;

    invoke-virtual {v2, v1}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v2}, Ljava/math/BigInteger;->floatValue()F

    move-result v2

    iget-object v3, p0, Lorg/apache/commons/math3/fraction/BigFraction;->denominator:Ljava/math/BigInteger;

    invoke-virtual {v3, v1}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v3}, Ljava/math/BigInteger;->floatValue()F

    move-result v3

    div-float v0, v2, v3

    .line 749
    .end local v1    # "shift":I
    :cond_0
    return v0
.end method

.method public getDenominator()Ljava/math/BigInteger;
    .locals 1

    .prologue
    .line 760
    iget-object v0, p0, Lorg/apache/commons/math3/fraction/BigFraction;->denominator:Ljava/math/BigInteger;

    return-object v0
.end method

.method public getDenominatorAsInt()I
    .locals 1

    .prologue
    .line 771
    iget-object v0, p0, Lorg/apache/commons/math3/fraction/BigFraction;->denominator:Ljava/math/BigInteger;

    invoke-virtual {v0}, Ljava/math/BigInteger;->intValue()I

    move-result v0

    return v0
.end method

.method public getDenominatorAsLong()J
    .locals 2

    .prologue
    .line 782
    iget-object v0, p0, Lorg/apache/commons/math3/fraction/BigFraction;->denominator:Ljava/math/BigInteger;

    invoke-virtual {v0}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public bridge synthetic getField()Lorg/apache/commons/math3/Field;
    .locals 1

    .prologue
    .line 39
    invoke-virtual {p0}, Lorg/apache/commons/math3/fraction/BigFraction;->getField()Lorg/apache/commons/math3/fraction/BigFractionField;

    move-result-object v0

    return-object v0
.end method

.method public getField()Lorg/apache/commons/math3/fraction/BigFractionField;
    .locals 1

    .prologue
    .line 1144
    invoke-static {}, Lorg/apache/commons/math3/fraction/BigFractionField;->getInstance()Lorg/apache/commons/math3/fraction/BigFractionField;

    move-result-object v0

    return-object v0
.end method

.method public getNumerator()Ljava/math/BigInteger;
    .locals 1

    .prologue
    .line 793
    iget-object v0, p0, Lorg/apache/commons/math3/fraction/BigFraction;->numerator:Ljava/math/BigInteger;

    return-object v0
.end method

.method public getNumeratorAsInt()I
    .locals 1

    .prologue
    .line 804
    iget-object v0, p0, Lorg/apache/commons/math3/fraction/BigFraction;->numerator:Ljava/math/BigInteger;

    invoke-virtual {v0}, Ljava/math/BigInteger;->intValue()I

    move-result v0

    return v0
.end method

.method public getNumeratorAsLong()J
    .locals 2

    .prologue
    .line 815
    iget-object v0, p0, Lorg/apache/commons/math3/fraction/BigFraction;->numerator:Ljava/math/BigInteger;

    invoke-virtual {v0}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 828
    iget-object v0, p0, Lorg/apache/commons/math3/fraction/BigFraction;->numerator:Ljava/math/BigInteger;

    invoke-virtual {v0}, Ljava/math/BigInteger;->hashCode()I

    move-result v0

    add-int/lit16 v0, v0, 0x275

    mul-int/lit8 v0, v0, 0x25

    iget-object v1, p0, Lorg/apache/commons/math3/fraction/BigFraction;->denominator:Ljava/math/BigInteger;

    invoke-virtual {v1}, Ljava/math/BigInteger;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public intValue()I
    .locals 2

    .prologue
    .line 842
    iget-object v0, p0, Lorg/apache/commons/math3/fraction/BigFraction;->numerator:Ljava/math/BigInteger;

    iget-object v1, p0, Lorg/apache/commons/math3/fraction/BigFraction;->denominator:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->divide(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->intValue()I

    move-result v0

    return v0
.end method

.method public longValue()J
    .locals 2

    .prologue
    .line 856
    iget-object v0, p0, Lorg/apache/commons/math3/fraction/BigFraction;->numerator:Ljava/math/BigInteger;

    iget-object v1, p0, Lorg/apache/commons/math3/fraction/BigFraction;->denominator:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->divide(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public bridge synthetic multiply(I)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 39
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/fraction/BigFraction;->multiply(I)Lorg/apache/commons/math3/fraction/BigFraction;

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
    .line 39
    check-cast p1, Lorg/apache/commons/math3/fraction/BigFraction;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/fraction/BigFraction;->multiply(Lorg/apache/commons/math3/fraction/BigFraction;)Lorg/apache/commons/math3/fraction/BigFraction;

    move-result-object v0

    return-object v0
.end method

.method public multiply(I)Lorg/apache/commons/math3/fraction/BigFraction;
    .locals 2
    .param p1, "i"    # I

    .prologue
    .line 887
    int-to-long v0, p1

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/fraction/BigFraction;->multiply(Ljava/math/BigInteger;)Lorg/apache/commons/math3/fraction/BigFraction;

    move-result-object v0

    return-object v0
.end method

.method public multiply(J)Lorg/apache/commons/math3/fraction/BigFraction;
    .locals 1
    .param p1, "l"    # J

    .prologue
    .line 901
    invoke-static {p1, p2}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/fraction/BigFraction;->multiply(Ljava/math/BigInteger;)Lorg/apache/commons/math3/fraction/BigFraction;

    move-result-object v0

    return-object v0
.end method

.method public multiply(Ljava/math/BigInteger;)Lorg/apache/commons/math3/fraction/BigFraction;
    .locals 3
    .param p1, "bg"    # Ljava/math/BigInteger;

    .prologue
    .line 870
    if-nez p1, :cond_0

    .line 871
    new-instance v0, Lorg/apache/commons/math3/exception/NullArgumentException;

    invoke-direct {v0}, Lorg/apache/commons/math3/exception/NullArgumentException;-><init>()V

    throw v0

    .line 873
    :cond_0
    new-instance v0, Lorg/apache/commons/math3/fraction/BigFraction;

    iget-object v1, p0, Lorg/apache/commons/math3/fraction/BigFraction;->numerator:Ljava/math/BigInteger;

    invoke-virtual {p1, v1}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/commons/math3/fraction/BigFraction;->denominator:Ljava/math/BigInteger;

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/fraction/BigFraction;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    return-object v0
.end method

.method public multiply(Lorg/apache/commons/math3/fraction/BigFraction;)Lorg/apache/commons/math3/fraction/BigFraction;
    .locals 4
    .param p1, "fraction"    # Lorg/apache/commons/math3/fraction/BigFraction;

    .prologue
    .line 915
    if-nez p1, :cond_0

    .line 916
    new-instance v0, Lorg/apache/commons/math3/exception/NullArgumentException;

    sget-object v1, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->FRACTION:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/exception/NullArgumentException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v0

    .line 918
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/math3/fraction/BigFraction;->numerator:Ljava/math/BigInteger;

    sget-object v1, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p1, Lorg/apache/commons/math3/fraction/BigFraction;->numerator:Ljava/math/BigInteger;

    sget-object v1, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 920
    :cond_1
    sget-object v0, Lorg/apache/commons/math3/fraction/BigFraction;->ZERO:Lorg/apache/commons/math3/fraction/BigFraction;

    .line 922
    :goto_0
    return-object v0

    :cond_2
    new-instance v0, Lorg/apache/commons/math3/fraction/BigFraction;

    iget-object v1, p0, Lorg/apache/commons/math3/fraction/BigFraction;->numerator:Ljava/math/BigInteger;

    iget-object v2, p1, Lorg/apache/commons/math3/fraction/BigFraction;->numerator:Ljava/math/BigInteger;

    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/commons/math3/fraction/BigFraction;->denominator:Ljava/math/BigInteger;

    iget-object v3, p1, Lorg/apache/commons/math3/fraction/BigFraction;->denominator:Ljava/math/BigInteger;

    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/fraction/BigFraction;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    goto :goto_0
.end method

.method public bridge synthetic negate()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 39
    invoke-virtual {p0}, Lorg/apache/commons/math3/fraction/BigFraction;->negate()Lorg/apache/commons/math3/fraction/BigFraction;

    move-result-object v0

    return-object v0
.end method

.method public negate()Lorg/apache/commons/math3/fraction/BigFraction;
    .locals 3

    .prologue
    .line 935
    new-instance v0, Lorg/apache/commons/math3/fraction/BigFraction;

    iget-object v1, p0, Lorg/apache/commons/math3/fraction/BigFraction;->numerator:Ljava/math/BigInteger;

    invoke-virtual {v1}, Ljava/math/BigInteger;->negate()Ljava/math/BigInteger;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/commons/math3/fraction/BigFraction;->denominator:Ljava/math/BigInteger;

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/fraction/BigFraction;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    return-object v0
.end method

.method public percentageValue()D
    .locals 2

    .prologue
    .line 947
    sget-object v0, Lorg/apache/commons/math3/fraction/BigFraction;->ONE_HUNDRED:Ljava/math/BigInteger;

    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/fraction/BigFraction;->multiply(Ljava/math/BigInteger;)Lorg/apache/commons/math3/fraction/BigFraction;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/math3/fraction/BigFraction;->doubleValue()D

    move-result-wide v0

    return-wide v0
.end method

.method public pow(D)D
    .locals 5
    .param p1, "exponent"    # D

    .prologue
    .line 1018
    iget-object v0, p0, Lorg/apache/commons/math3/fraction/BigFraction;->numerator:Ljava/math/BigInteger;

    invoke-virtual {v0}, Ljava/math/BigInteger;->doubleValue()D

    move-result-wide v0

    invoke-static {v0, v1, p1, p2}, Lorg/apache/commons/math3/util/FastMath;->pow(DD)D

    move-result-wide v0

    iget-object v2, p0, Lorg/apache/commons/math3/fraction/BigFraction;->denominator:Ljava/math/BigInteger;

    invoke-virtual {v2}, Ljava/math/BigInteger;->doubleValue()D

    move-result-wide v2

    invoke-static {v2, v3, p1, p2}, Lorg/apache/commons/math3/util/FastMath;->pow(DD)D

    move-result-wide v2

    div-double/2addr v0, v2

    return-wide v0
.end method

.method public pow(I)Lorg/apache/commons/math3/fraction/BigFraction;
    .locals 4
    .param p1, "exponent"    # I

    .prologue
    .line 962
    if-gez p1, :cond_0

    .line 963
    new-instance v0, Lorg/apache/commons/math3/fraction/BigFraction;

    iget-object v1, p0, Lorg/apache/commons/math3/fraction/BigFraction;->denominator:Ljava/math/BigInteger;

    neg-int v2, p1

    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->pow(I)Ljava/math/BigInteger;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/commons/math3/fraction/BigFraction;->numerator:Ljava/math/BigInteger;

    neg-int v3, p1

    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->pow(I)Ljava/math/BigInteger;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/fraction/BigFraction;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    .line 965
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lorg/apache/commons/math3/fraction/BigFraction;

    iget-object v1, p0, Lorg/apache/commons/math3/fraction/BigFraction;->numerator:Ljava/math/BigInteger;

    invoke-virtual {v1, p1}, Ljava/math/BigInteger;->pow(I)Ljava/math/BigInteger;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/commons/math3/fraction/BigFraction;->denominator:Ljava/math/BigInteger;

    invoke-virtual {v2, p1}, Ljava/math/BigInteger;->pow(I)Ljava/math/BigInteger;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/fraction/BigFraction;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    goto :goto_0
.end method

.method public pow(J)Lorg/apache/commons/math3/fraction/BigFraction;
    .locals 7
    .param p1, "exponent"    # J

    .prologue
    .line 979
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gez v0, :cond_0

    .line 980
    new-instance v0, Lorg/apache/commons/math3/fraction/BigFraction;

    iget-object v1, p0, Lorg/apache/commons/math3/fraction/BigFraction;->denominator:Ljava/math/BigInteger;

    neg-long v2, p1

    invoke-static {v1, v2, v3}, Lorg/apache/commons/math3/util/ArithmeticUtils;->pow(Ljava/math/BigInteger;J)Ljava/math/BigInteger;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/commons/math3/fraction/BigFraction;->numerator:Ljava/math/BigInteger;

    neg-long v4, p1

    invoke-static {v2, v4, v5}, Lorg/apache/commons/math3/util/ArithmeticUtils;->pow(Ljava/math/BigInteger;J)Ljava/math/BigInteger;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/fraction/BigFraction;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    .line 983
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lorg/apache/commons/math3/fraction/BigFraction;

    iget-object v1, p0, Lorg/apache/commons/math3/fraction/BigFraction;->numerator:Ljava/math/BigInteger;

    invoke-static {v1, p1, p2}, Lorg/apache/commons/math3/util/ArithmeticUtils;->pow(Ljava/math/BigInteger;J)Ljava/math/BigInteger;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/commons/math3/fraction/BigFraction;->denominator:Ljava/math/BigInteger;

    invoke-static {v2, p1, p2}, Lorg/apache/commons/math3/util/ArithmeticUtils;->pow(Ljava/math/BigInteger;J)Ljava/math/BigInteger;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/fraction/BigFraction;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    goto :goto_0
.end method

.method public pow(Ljava/math/BigInteger;)Lorg/apache/commons/math3/fraction/BigFraction;
    .locals 4
    .param p1, "exponent"    # Ljava/math/BigInteger;

    .prologue
    .line 998
    sget-object v1, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    invoke-virtual {p1, v1}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v1

    if-gez v1, :cond_0

    .line 999
    invoke-virtual {p1}, Ljava/math/BigInteger;->negate()Ljava/math/BigInteger;

    move-result-object v0

    .line 1000
    .local v0, "eNeg":Ljava/math/BigInteger;
    new-instance v1, Lorg/apache/commons/math3/fraction/BigFraction;

    iget-object v2, p0, Lorg/apache/commons/math3/fraction/BigFraction;->denominator:Ljava/math/BigInteger;

    invoke-static {v2, v0}, Lorg/apache/commons/math3/util/ArithmeticUtils;->pow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/commons/math3/fraction/BigFraction;->numerator:Ljava/math/BigInteger;

    invoke-static {v3, v0}, Lorg/apache/commons/math3/util/ArithmeticUtils;->pow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lorg/apache/commons/math3/fraction/BigFraction;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    .line 1003
    .end local v0    # "eNeg":Ljava/math/BigInteger;
    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Lorg/apache/commons/math3/fraction/BigFraction;

    iget-object v2, p0, Lorg/apache/commons/math3/fraction/BigFraction;->numerator:Ljava/math/BigInteger;

    invoke-static {v2, p1}, Lorg/apache/commons/math3/util/ArithmeticUtils;->pow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/commons/math3/fraction/BigFraction;->denominator:Ljava/math/BigInteger;

    invoke-static {v3, p1}, Lorg/apache/commons/math3/util/ArithmeticUtils;->pow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lorg/apache/commons/math3/fraction/BigFraction;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    goto :goto_0
.end method

.method public bridge synthetic reciprocal()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathArithmeticException;
        }
    .end annotation

    .prologue
    .line 39
    invoke-virtual {p0}, Lorg/apache/commons/math3/fraction/BigFraction;->reciprocal()Lorg/apache/commons/math3/fraction/BigFraction;

    move-result-object v0

    return-object v0
.end method

.method public reciprocal()Lorg/apache/commons/math3/fraction/BigFraction;
    .locals 3

    .prologue
    .line 1030
    new-instance v0, Lorg/apache/commons/math3/fraction/BigFraction;

    iget-object v1, p0, Lorg/apache/commons/math3/fraction/BigFraction;->denominator:Ljava/math/BigInteger;

    iget-object v2, p0, Lorg/apache/commons/math3/fraction/BigFraction;->numerator:Ljava/math/BigInteger;

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/fraction/BigFraction;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    return-object v0
.end method

.method public reduce()Lorg/apache/commons/math3/fraction/BigFraction;
    .locals 4

    .prologue
    .line 1042
    iget-object v1, p0, Lorg/apache/commons/math3/fraction/BigFraction;->numerator:Ljava/math/BigInteger;

    iget-object v2, p0, Lorg/apache/commons/math3/fraction/BigFraction;->denominator:Ljava/math/BigInteger;

    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->gcd(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    .line 1043
    .local v0, "gcd":Ljava/math/BigInteger;
    new-instance v1, Lorg/apache/commons/math3/fraction/BigFraction;

    iget-object v2, p0, Lorg/apache/commons/math3/fraction/BigFraction;->numerator:Ljava/math/BigInteger;

    invoke-virtual {v2, v0}, Ljava/math/BigInteger;->divide(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/commons/math3/fraction/BigFraction;->denominator:Ljava/math/BigInteger;

    invoke-virtual {v3, v0}, Ljava/math/BigInteger;->divide(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lorg/apache/commons/math3/fraction/BigFraction;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    return-object v1
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
    .line 39
    check-cast p1, Lorg/apache/commons/math3/fraction/BigFraction;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/fraction/BigFraction;->subtract(Lorg/apache/commons/math3/fraction/BigFraction;)Lorg/apache/commons/math3/fraction/BigFraction;

    move-result-object v0

    return-object v0
.end method

.method public subtract(I)Lorg/apache/commons/math3/fraction/BigFraction;
    .locals 2
    .param p1, "i"    # I

    .prologue
    .line 1073
    int-to-long v0, p1

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/fraction/BigFraction;->subtract(Ljava/math/BigInteger;)Lorg/apache/commons/math3/fraction/BigFraction;

    move-result-object v0

    return-object v0
.end method

.method public subtract(J)Lorg/apache/commons/math3/fraction/BigFraction;
    .locals 1
    .param p1, "l"    # J

    .prologue
    .line 1086
    invoke-static {p1, p2}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/fraction/BigFraction;->subtract(Ljava/math/BigInteger;)Lorg/apache/commons/math3/fraction/BigFraction;

    move-result-object v0

    return-object v0
.end method

.method public subtract(Ljava/math/BigInteger;)Lorg/apache/commons/math3/fraction/BigFraction;
    .locals 3
    .param p1, "bg"    # Ljava/math/BigInteger;

    .prologue
    .line 1057
    if-nez p1, :cond_0

    .line 1058
    new-instance v0, Lorg/apache/commons/math3/exception/NullArgumentException;

    invoke-direct {v0}, Lorg/apache/commons/math3/exception/NullArgumentException;-><init>()V

    throw v0

    .line 1060
    :cond_0
    new-instance v0, Lorg/apache/commons/math3/fraction/BigFraction;

    iget-object v1, p0, Lorg/apache/commons/math3/fraction/BigFraction;->numerator:Ljava/math/BigInteger;

    iget-object v2, p0, Lorg/apache/commons/math3/fraction/BigFraction;->denominator:Ljava/math/BigInteger;

    invoke-virtual {v2, p1}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/commons/math3/fraction/BigFraction;->denominator:Ljava/math/BigInteger;

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/fraction/BigFraction;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    return-object v0
.end method

.method public subtract(Lorg/apache/commons/math3/fraction/BigFraction;)Lorg/apache/commons/math3/fraction/BigFraction;
    .locals 5
    .param p1, "fraction"    # Lorg/apache/commons/math3/fraction/BigFraction;

    .prologue
    .line 1100
    if-nez p1, :cond_0

    .line 1101
    new-instance v2, Lorg/apache/commons/math3/exception/NullArgumentException;

    sget-object v3, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->FRACTION:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-direct {v2, v3, v4}, Lorg/apache/commons/math3/exception/NullArgumentException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v2

    .line 1103
    :cond_0
    sget-object v2, Lorg/apache/commons/math3/fraction/BigFraction;->ZERO:Lorg/apache/commons/math3/fraction/BigFraction;

    invoke-virtual {v2, p1}, Lorg/apache/commons/math3/fraction/BigFraction;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1116
    .end local p0    # "this":Lorg/apache/commons/math3/fraction/BigFraction;
    :goto_0
    return-object p0

    .line 1107
    .restart local p0    # "this":Lorg/apache/commons/math3/fraction/BigFraction;
    :cond_1
    const/4 v1, 0x0

    .line 1108
    .local v1, "num":Ljava/math/BigInteger;
    const/4 v0, 0x0

    .line 1109
    .local v0, "den":Ljava/math/BigInteger;
    iget-object v2, p0, Lorg/apache/commons/math3/fraction/BigFraction;->denominator:Ljava/math/BigInteger;

    iget-object v3, p1, Lorg/apache/commons/math3/fraction/BigFraction;->denominator:Ljava/math/BigInteger;

    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1110
    iget-object v2, p0, Lorg/apache/commons/math3/fraction/BigFraction;->numerator:Ljava/math/BigInteger;

    iget-object v3, p1, Lorg/apache/commons/math3/fraction/BigFraction;->numerator:Ljava/math/BigInteger;

    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    .line 1111
    iget-object v0, p0, Lorg/apache/commons/math3/fraction/BigFraction;->denominator:Ljava/math/BigInteger;

    .line 1116
    :goto_1
    new-instance p0, Lorg/apache/commons/math3/fraction/BigFraction;

    .end local p0    # "this":Lorg/apache/commons/math3/fraction/BigFraction;
    invoke-direct {p0, v1, v0}, Lorg/apache/commons/math3/fraction/BigFraction;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    goto :goto_0

    .line 1113
    .restart local p0    # "this":Lorg/apache/commons/math3/fraction/BigFraction;
    :cond_2
    iget-object v2, p0, Lorg/apache/commons/math3/fraction/BigFraction;->numerator:Ljava/math/BigInteger;

    iget-object v3, p1, Lorg/apache/commons/math3/fraction/BigFraction;->denominator:Ljava/math/BigInteger;

    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    iget-object v3, p1, Lorg/apache/commons/math3/fraction/BigFraction;->numerator:Ljava/math/BigInteger;

    iget-object v4, p0, Lorg/apache/commons/math3/fraction/BigFraction;->denominator:Ljava/math/BigInteger;

    invoke-virtual {v3, v4}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    .line 1114
    iget-object v2, p0, Lorg/apache/commons/math3/fraction/BigFraction;->denominator:Ljava/math/BigInteger;

    iget-object v3, p1, Lorg/apache/commons/math3/fraction/BigFraction;->denominator:Ljava/math/BigInteger;

    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    goto :goto_1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1131
    const/4 v0, 0x0

    .line 1132
    .local v0, "str":Ljava/lang/String;
    sget-object v1, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    iget-object v2, p0, Lorg/apache/commons/math3/fraction/BigFraction;->denominator:Ljava/math/BigInteger;

    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1133
    iget-object v1, p0, Lorg/apache/commons/math3/fraction/BigFraction;->numerator:Ljava/math/BigInteger;

    invoke-virtual {v1}, Ljava/math/BigInteger;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1139
    :goto_0
    return-object v0

    .line 1134
    :cond_0
    sget-object v1, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    iget-object v2, p0, Lorg/apache/commons/math3/fraction/BigFraction;->numerator:Ljava/math/BigInteger;

    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1135
    const-string v0, "0"

    goto :goto_0

    .line 1137
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lorg/apache/commons/math3/fraction/BigFraction;->numerator:Ljava/math/BigInteger;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " / "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/commons/math3/fraction/BigFraction;->denominator:Ljava/math/BigInteger;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
