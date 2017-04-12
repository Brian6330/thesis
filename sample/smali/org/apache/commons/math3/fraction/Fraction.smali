.class public Lorg/apache/commons/math3/fraction/Fraction;
.super Ljava/lang/Number;
.source "Fraction.java"

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
        "Lorg/apache/commons/math3/fraction/Fraction;",
        ">;",
        "Ljava/lang/Comparable",
        "<",
        "Lorg/apache/commons/math3/fraction/Fraction;",
        ">;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final DEFAULT_EPSILON:D = 1.0E-5

.field public static final FOUR_FIFTHS:Lorg/apache/commons/math3/fraction/Fraction;

.field public static final MINUS_ONE:Lorg/apache/commons/math3/fraction/Fraction;

.field public static final ONE:Lorg/apache/commons/math3/fraction/Fraction;

.field public static final ONE_FIFTH:Lorg/apache/commons/math3/fraction/Fraction;

.field public static final ONE_HALF:Lorg/apache/commons/math3/fraction/Fraction;

.field public static final ONE_QUARTER:Lorg/apache/commons/math3/fraction/Fraction;

.field public static final ONE_THIRD:Lorg/apache/commons/math3/fraction/Fraction;

.field public static final THREE_FIFTHS:Lorg/apache/commons/math3/fraction/Fraction;

.field public static final THREE_QUARTERS:Lorg/apache/commons/math3/fraction/Fraction;

.field public static final TWO:Lorg/apache/commons/math3/fraction/Fraction;

.field public static final TWO_FIFTHS:Lorg/apache/commons/math3/fraction/Fraction;

.field public static final TWO_QUARTERS:Lorg/apache/commons/math3/fraction/Fraction;

.field public static final TWO_THIRDS:Lorg/apache/commons/math3/fraction/Fraction;

.field public static final ZERO:Lorg/apache/commons/math3/fraction/Fraction;

.field private static final serialVersionUID:J = 0x3352326b0f0153fbL


# instance fields
.field private final denominator:I

.field private final numerator:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x5

    const/4 v5, 0x4

    const/4 v4, 0x3

    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 41
    new-instance v0, Lorg/apache/commons/math3/fraction/Fraction;

    invoke-direct {v0, v3, v2}, Lorg/apache/commons/math3/fraction/Fraction;-><init>(II)V

    sput-object v0, Lorg/apache/commons/math3/fraction/Fraction;->TWO:Lorg/apache/commons/math3/fraction/Fraction;

    .line 44
    new-instance v0, Lorg/apache/commons/math3/fraction/Fraction;

    invoke-direct {v0, v2, v2}, Lorg/apache/commons/math3/fraction/Fraction;-><init>(II)V

    sput-object v0, Lorg/apache/commons/math3/fraction/Fraction;->ONE:Lorg/apache/commons/math3/fraction/Fraction;

    .line 47
    new-instance v0, Lorg/apache/commons/math3/fraction/Fraction;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/fraction/Fraction;-><init>(II)V

    sput-object v0, Lorg/apache/commons/math3/fraction/Fraction;->ZERO:Lorg/apache/commons/math3/fraction/Fraction;

    .line 50
    new-instance v0, Lorg/apache/commons/math3/fraction/Fraction;

    invoke-direct {v0, v5, v6}, Lorg/apache/commons/math3/fraction/Fraction;-><init>(II)V

    sput-object v0, Lorg/apache/commons/math3/fraction/Fraction;->FOUR_FIFTHS:Lorg/apache/commons/math3/fraction/Fraction;

    .line 53
    new-instance v0, Lorg/apache/commons/math3/fraction/Fraction;

    invoke-direct {v0, v2, v6}, Lorg/apache/commons/math3/fraction/Fraction;-><init>(II)V

    sput-object v0, Lorg/apache/commons/math3/fraction/Fraction;->ONE_FIFTH:Lorg/apache/commons/math3/fraction/Fraction;

    .line 56
    new-instance v0, Lorg/apache/commons/math3/fraction/Fraction;

    invoke-direct {v0, v2, v3}, Lorg/apache/commons/math3/fraction/Fraction;-><init>(II)V

    sput-object v0, Lorg/apache/commons/math3/fraction/Fraction;->ONE_HALF:Lorg/apache/commons/math3/fraction/Fraction;

    .line 59
    new-instance v0, Lorg/apache/commons/math3/fraction/Fraction;

    invoke-direct {v0, v2, v5}, Lorg/apache/commons/math3/fraction/Fraction;-><init>(II)V

    sput-object v0, Lorg/apache/commons/math3/fraction/Fraction;->ONE_QUARTER:Lorg/apache/commons/math3/fraction/Fraction;

    .line 62
    new-instance v0, Lorg/apache/commons/math3/fraction/Fraction;

    invoke-direct {v0, v2, v4}, Lorg/apache/commons/math3/fraction/Fraction;-><init>(II)V

    sput-object v0, Lorg/apache/commons/math3/fraction/Fraction;->ONE_THIRD:Lorg/apache/commons/math3/fraction/Fraction;

    .line 65
    new-instance v0, Lorg/apache/commons/math3/fraction/Fraction;

    invoke-direct {v0, v4, v6}, Lorg/apache/commons/math3/fraction/Fraction;-><init>(II)V

    sput-object v0, Lorg/apache/commons/math3/fraction/Fraction;->THREE_FIFTHS:Lorg/apache/commons/math3/fraction/Fraction;

    .line 68
    new-instance v0, Lorg/apache/commons/math3/fraction/Fraction;

    invoke-direct {v0, v4, v5}, Lorg/apache/commons/math3/fraction/Fraction;-><init>(II)V

    sput-object v0, Lorg/apache/commons/math3/fraction/Fraction;->THREE_QUARTERS:Lorg/apache/commons/math3/fraction/Fraction;

    .line 71
    new-instance v0, Lorg/apache/commons/math3/fraction/Fraction;

    invoke-direct {v0, v3, v6}, Lorg/apache/commons/math3/fraction/Fraction;-><init>(II)V

    sput-object v0, Lorg/apache/commons/math3/fraction/Fraction;->TWO_FIFTHS:Lorg/apache/commons/math3/fraction/Fraction;

    .line 74
    new-instance v0, Lorg/apache/commons/math3/fraction/Fraction;

    invoke-direct {v0, v3, v5}, Lorg/apache/commons/math3/fraction/Fraction;-><init>(II)V

    sput-object v0, Lorg/apache/commons/math3/fraction/Fraction;->TWO_QUARTERS:Lorg/apache/commons/math3/fraction/Fraction;

    .line 77
    new-instance v0, Lorg/apache/commons/math3/fraction/Fraction;

    invoke-direct {v0, v3, v4}, Lorg/apache/commons/math3/fraction/Fraction;-><init>(II)V

    sput-object v0, Lorg/apache/commons/math3/fraction/Fraction;->TWO_THIRDS:Lorg/apache/commons/math3/fraction/Fraction;

    .line 80
    new-instance v0, Lorg/apache/commons/math3/fraction/Fraction;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/fraction/Fraction;-><init>(II)V

    sput-object v0, Lorg/apache/commons/math3/fraction/Fraction;->MINUS_ONE:Lorg/apache/commons/math3/fraction/Fraction;

    return-void
.end method

.method public constructor <init>(D)V
    .locals 7
    .param p1, "value"    # D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/fraction/FractionConversionException;
        }
    .end annotation

    .prologue
    .line 101
    const-wide v4, 0x3ee4f8b588e368f1L    # 1.0E-5

    const/16 v6, 0x64

    move-object v1, p0

    move-wide v2, p1

    invoke-direct/range {v1 .. v6}, Lorg/apache/commons/math3/fraction/Fraction;-><init>(DDI)V

    .line 102
    return-void
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
    .line 123
    const v6, 0x7fffffff

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    move v7, p5

    invoke-direct/range {v1 .. v7}, Lorg/apache/commons/math3/fraction/Fraction;-><init>(DDII)V

    .line 124
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
    .line 179
    invoke-direct/range {p0 .. p0}, Ljava/lang/Number;-><init>()V

    .line 180
    const-wide/32 v22, 0x7fffffff

    .line 181
    .local v22, "overflow":J
    move-wide/from16 v32, p1

    .line 182
    .local v32, "r0":D
    invoke-static/range {v32 .. v33}, Lorg/apache/commons/math3/util/FastMath;->floor(D)D

    move-result-wide v6

    double-to-long v8, v6

    .line 183
    .local v8, "a0":J
    invoke-static {v8, v9}, Lorg/apache/commons/math3/util/FastMath;->abs(J)J

    move-result-wide v6

    cmp-long v5, v6, v22

    if-lez v5, :cond_0

    .line 184
    new-instance v5, Lorg/apache/commons/math3/fraction/FractionConversionException;

    const-wide/16 v10, 0x1

    move-wide/from16 v6, p1

    invoke-direct/range {v5 .. v11}, Lorg/apache/commons/math3/fraction/FractionConversionException;-><init>(DJJ)V

    throw v5

    .line 188
    :cond_0
    long-to-double v6, v8

    sub-double v6, v6, p1

    invoke-static {v6, v7}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v6

    cmpg-double v5, v6, p3

    if-gez v5, :cond_1

    .line 189
    long-to-int v5, v8

    move-object/from16 v0, p0

    iput v5, v0, Lorg/apache/commons/math3/fraction/Fraction;->numerator:I

    .line 190
    const/4 v5, 0x1

    move-object/from16 v0, p0

    iput v5, v0, Lorg/apache/commons/math3/fraction/Fraction;->denominator:I

    .line 245
    :goto_0
    return-void

    .line 194
    :cond_1
    const-wide/16 v24, 0x1

    .line 195
    .local v24, "p0":J
    const-wide/16 v28, 0x0

    .line 196
    .local v28, "q0":J
    move-wide/from16 v26, v8

    .line 197
    .local v26, "p1":J
    const-wide/16 v30, 0x1

    .line 199
    .local v30, "q1":J
    const-wide/16 v14, 0x0

    .line 200
    .local v14, "p2":J
    const-wide/16 v16, 0x1

    .line 202
    .local v16, "q2":J
    const/4 v4, 0x0

    .line 203
    .local v4, "n":I
    const/16 v36, 0x0

    .line 205
    .local v36, "stop":Z
    :cond_2
    add-int/lit8 v4, v4, 0x1

    .line 206
    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    long-to-double v10, v8

    sub-double v10, v32, v10

    div-double v34, v6, v10

    .line 207
    .local v34, "r1":D
    invoke-static/range {v34 .. v35}, Lorg/apache/commons/math3/util/FastMath;->floor(D)D

    move-result-wide v6

    double-to-long v0, v6

    move-wide/from16 v18, v0

    .line 208
    .local v18, "a1":J
    mul-long v6, v18, v26

    add-long v14, v6, v24

    .line 209
    mul-long v6, v18, v30

    add-long v16, v6, v28

    .line 211
    invoke-static {v14, v15}, Lorg/apache/commons/math3/util/FastMath;->abs(J)J

    move-result-wide v6

    cmp-long v5, v6, v22

    if-gtz v5, :cond_3

    invoke-static/range {v16 .. v17}, Lorg/apache/commons/math3/util/FastMath;->abs(J)J

    move-result-wide v6

    cmp-long v5, v6, v22

    if-lez v5, :cond_5

    .line 214
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

    .line 233
    :goto_1
    move/from16 v0, p6

    if-lt v4, v0, :cond_7

    .line 234
    new-instance v5, Lorg/apache/commons/math3/fraction/FractionConversionException;

    move-wide/from16 v0, p1

    move/from16 v2, p6

    invoke-direct {v5, v0, v1, v2}, Lorg/apache/commons/math3/fraction/FractionConversionException;-><init>(DI)V

    throw v5

    .line 217
    :cond_4
    new-instance v11, Lorg/apache/commons/math3/fraction/FractionConversionException;

    move-wide/from16 v12, p1

    invoke-direct/range {v11 .. v17}, Lorg/apache/commons/math3/fraction/FractionConversionException;-><init>(DJJ)V

    throw v11

    .line 220
    :cond_5
    long-to-double v6, v14

    move-wide/from16 v0, v16

    long-to-double v10, v0

    div-double v20, v6, v10

    .line 221
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

    .line 222
    move-wide/from16 v24, v26

    .line 223
    move-wide/from16 v26, v14

    .line 224
    move-wide/from16 v28, v30

    .line 225
    move-wide/from16 v30, v16

    .line 226
    move-wide/from16 v8, v18

    .line 227
    move-wide/from16 v32, v34

    .line 231
    :goto_2
    if-eqz v36, :cond_2

    goto :goto_1

    .line 229
    :cond_6
    const/16 v36, 0x1

    goto :goto_2

    .line 237
    .end local v20    # "convergent":D
    :cond_7
    move/from16 v0, p5

    int-to-long v6, v0

    cmp-long v5, v16, v6

    if-gez v5, :cond_8

    .line 238
    long-to-int v5, v14

    move-object/from16 v0, p0

    iput v5, v0, Lorg/apache/commons/math3/fraction/Fraction;->numerator:I

    .line 239
    move-wide/from16 v0, v16

    long-to-int v5, v0

    move-object/from16 v0, p0

    iput v5, v0, Lorg/apache/commons/math3/fraction/Fraction;->denominator:I

    goto/16 :goto_0

    .line 241
    :cond_8
    move-wide/from16 v0, v26

    long-to-int v5, v0

    move-object/from16 v0, p0

    iput v5, v0, Lorg/apache/commons/math3/fraction/Fraction;->numerator:I

    .line 242
    move-wide/from16 v0, v30

    long-to-int v5, v0

    move-object/from16 v0, p0

    iput v5, v0, Lorg/apache/commons/math3/fraction/Fraction;->denominator:I

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
    .line 143
    const-wide/16 v4, 0x0

    const/16 v7, 0x64

    move-object v1, p0

    move-wide v2, p1

    move v6, p3

    invoke-direct/range {v1 .. v7}, Lorg/apache/commons/math3/fraction/Fraction;-><init>(DDII)V

    .line 144
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "num"    # I

    .prologue
    .line 253
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lorg/apache/commons/math3/fraction/Fraction;-><init>(II)V

    .line 254
    return-void
.end method

.method public constructor <init>(II)V
    .locals 7
    .param p1, "num"    # I
    .param p2, "den"    # I

    .prologue
    const/4 v3, 0x2

    const/4 v6, 0x0

    const/high16 v1, -0x80000000

    const/4 v5, 0x1

    .line 263
    invoke-direct {p0}, Ljava/lang/Number;-><init>()V

    .line 264
    if-nez p2, :cond_0

    .line 265
    new-instance v1, Lorg/apache/commons/math3/exception/MathArithmeticException;

    sget-object v2, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->ZERO_DENOMINATOR_IN_FRACTION:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-direct {v1, v2, v3}, Lorg/apache/commons/math3/exception/MathArithmeticException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v1

    .line 268
    :cond_0
    if-gez p2, :cond_3

    .line 269
    if-eq p1, v1, :cond_1

    if-ne p2, v1, :cond_2

    .line 271
    :cond_1
    new-instance v1, Lorg/apache/commons/math3/exception/MathArithmeticException;

    sget-object v2, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->OVERFLOW_IN_FRACTION:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-direct {v1, v2, v3}, Lorg/apache/commons/math3/exception/MathArithmeticException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v1

    .line 274
    :cond_2
    neg-int p1, p1

    .line 275
    neg-int p2, p2

    .line 278
    :cond_3
    invoke-static {p1, p2}, Lorg/apache/commons/math3/util/ArithmeticUtils;->gcd(II)I

    move-result v0

    .line 279
    .local v0, "d":I
    if-le v0, v5, :cond_4

    .line 280
    div-int/2addr p1, v0

    .line 281
    div-int/2addr p2, v0

    .line 285
    :cond_4
    if-gez p2, :cond_5

    .line 286
    neg-int p1, p1

    .line 287
    neg-int p2, p2

    .line 289
    :cond_5
    iput p1, p0, Lorg/apache/commons/math3/fraction/Fraction;->numerator:I

    .line 290
    iput p2, p0, Lorg/apache/commons/math3/fraction/Fraction;->denominator:I

    .line 291
    return-void
.end method

.method private addSub(Lorg/apache/commons/math3/fraction/Fraction;Z)Lorg/apache/commons/math3/fraction/Fraction;
    .locals 12
    .param p1, "fraction"    # Lorg/apache/commons/math3/fraction/Fraction;
    .param p2, "isAdd"    # Z

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 484
    if-nez p1, :cond_0

    .line 485
    new-instance v7, Lorg/apache/commons/math3/exception/NullArgumentException;

    sget-object v8, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->FRACTION:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    new-array v9, v10, [Ljava/lang/Object;

    invoke-direct {v7, v8, v9}, Lorg/apache/commons/math3/exception/NullArgumentException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v7

    .line 488
    :cond_0
    iget v7, p0, Lorg/apache/commons/math3/fraction/Fraction;->numerator:I

    if-nez v7, :cond_2

    .line 489
    if-eqz p2, :cond_1

    .line 525
    .end local p1    # "fraction":Lorg/apache/commons/math3/fraction/Fraction;
    :goto_0
    return-object p1

    .line 489
    .restart local p1    # "fraction":Lorg/apache/commons/math3/fraction/Fraction;
    :cond_1
    invoke-virtual {p1}, Lorg/apache/commons/math3/fraction/Fraction;->negate()Lorg/apache/commons/math3/fraction/Fraction;

    move-result-object p1

    goto :goto_0

    .line 491
    :cond_2
    iget v7, p1, Lorg/apache/commons/math3/fraction/Fraction;->numerator:I

    if-nez v7, :cond_3

    move-object p1, p0

    .line 492
    goto :goto_0

    .line 496
    :cond_3
    iget v7, p0, Lorg/apache/commons/math3/fraction/Fraction;->denominator:I

    iget v8, p1, Lorg/apache/commons/math3/fraction/Fraction;->denominator:I

    invoke-static {v7, v8}, Lorg/apache/commons/math3/util/ArithmeticUtils;->gcd(II)I

    move-result v0

    .line 497
    .local v0, "d1":I
    if-ne v0, v11, :cond_5

    .line 499
    iget v7, p0, Lorg/apache/commons/math3/fraction/Fraction;->numerator:I

    iget v8, p1, Lorg/apache/commons/math3/fraction/Fraction;->denominator:I

    invoke-static {v7, v8}, Lorg/apache/commons/math3/util/ArithmeticUtils;->mulAndCheck(II)I

    move-result v5

    .line 500
    .local v5, "uvp":I
    iget v7, p1, Lorg/apache/commons/math3/fraction/Fraction;->numerator:I

    iget v8, p0, Lorg/apache/commons/math3/fraction/Fraction;->denominator:I

    invoke-static {v7, v8}, Lorg/apache/commons/math3/util/ArithmeticUtils;->mulAndCheck(II)I

    move-result v4

    .line 501
    .local v4, "upv":I
    new-instance v8, Lorg/apache/commons/math3/fraction/Fraction;

    if-eqz p2, :cond_4

    invoke-static {v5, v4}, Lorg/apache/commons/math3/util/ArithmeticUtils;->addAndCheck(II)I

    move-result v7

    :goto_1
    iget v9, p0, Lorg/apache/commons/math3/fraction/Fraction;->denominator:I

    iget v10, p1, Lorg/apache/commons/math3/fraction/Fraction;->denominator:I

    invoke-static {v9, v10}, Lorg/apache/commons/math3/util/ArithmeticUtils;->mulAndCheck(II)I

    move-result v9

    invoke-direct {v8, v7, v9}, Lorg/apache/commons/math3/fraction/Fraction;-><init>(II)V

    move-object p1, v8

    goto :goto_0

    :cond_4
    invoke-static {v5, v4}, Lorg/apache/commons/math3/util/ArithmeticUtils;->subAndCheck(II)I

    move-result v7

    goto :goto_1

    .line 509
    .end local v4    # "upv":I
    .end local v5    # "uvp":I
    :cond_5
    iget v7, p0, Lorg/apache/commons/math3/fraction/Fraction;->numerator:I

    int-to-long v8, v7

    invoke-static {v8, v9}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v7

    iget v8, p1, Lorg/apache/commons/math3/fraction/Fraction;->denominator:I

    div-int/2addr v8, v0

    int-to-long v8, v8

    invoke-static {v8, v9}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v5

    .line 511
    .local v5, "uvp":Ljava/math/BigInteger;
    iget v7, p1, Lorg/apache/commons/math3/fraction/Fraction;->numerator:I

    int-to-long v8, v7

    invoke-static {v8, v9}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v7

    iget v8, p0, Lorg/apache/commons/math3/fraction/Fraction;->denominator:I

    div-int/2addr v8, v0

    int-to-long v8, v8

    invoke-static {v8, v9}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v4

    .line 513
    .local v4, "upv":Ljava/math/BigInteger;
    if-eqz p2, :cond_6

    invoke-virtual {v5, v4}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    .line 516
    .local v2, "t":Ljava/math/BigInteger;
    :goto_2
    int-to-long v8, v0

    invoke-static {v8, v9}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v7

    invoke-virtual {v7}, Ljava/math/BigInteger;->intValue()I

    move-result v3

    .line 517
    .local v3, "tmodd1":I
    if-nez v3, :cond_7

    move v1, v0

    .line 520
    .local v1, "d2":I
    :goto_3
    int-to-long v8, v1

    invoke-static {v8, v9}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/math/BigInteger;->divide(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v6

    .line 521
    .local v6, "w":Ljava/math/BigInteger;
    invoke-virtual {v6}, Ljava/math/BigInteger;->bitLength()I

    move-result v7

    const/16 v8, 0x1f

    if-le v7, v8, :cond_8

    .line 522
    new-instance v7, Lorg/apache/commons/math3/exception/MathArithmeticException;

    sget-object v8, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->NUMERATOR_OVERFLOW_AFTER_MULTIPLY:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    new-array v9, v11, [Ljava/lang/Object;

    aput-object v6, v9, v10

    invoke-direct {v7, v8, v9}, Lorg/apache/commons/math3/exception/MathArithmeticException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v7

    .line 513
    .end local v1    # "d2":I
    .end local v2    # "t":Ljava/math/BigInteger;
    .end local v3    # "tmodd1":I
    .end local v6    # "w":Ljava/math/BigInteger;
    :cond_6
    invoke-virtual {v5, v4}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    goto :goto_2

    .line 517
    .restart local v2    # "t":Ljava/math/BigInteger;
    .restart local v3    # "tmodd1":I
    :cond_7
    invoke-static {v3, v0}, Lorg/apache/commons/math3/util/ArithmeticUtils;->gcd(II)I

    move-result v1

    goto :goto_3

    .line 525
    .restart local v1    # "d2":I
    .restart local v6    # "w":Ljava/math/BigInteger;
    :cond_8
    new-instance v7, Lorg/apache/commons/math3/fraction/Fraction;

    invoke-virtual {v6}, Ljava/math/BigInteger;->intValue()I

    move-result v8

    iget v9, p0, Lorg/apache/commons/math3/fraction/Fraction;->denominator:I

    div-int/2addr v9, v0

    iget v10, p1, Lorg/apache/commons/math3/fraction/Fraction;->denominator:I

    div-int/2addr v10, v1

    invoke-static {v9, v10}, Lorg/apache/commons/math3/util/ArithmeticUtils;->mulAndCheck(II)I

    move-result v9

    invoke-direct {v7, v8, v9}, Lorg/apache/commons/math3/fraction/Fraction;-><init>(II)V

    move-object p1, v7

    goto/16 :goto_0
.end method

.method public static getReducedFraction(II)Lorg/apache/commons/math3/fraction/Fraction;
    .locals 7
    .param p0, "numerator"    # I
    .param p1, "denominator"    # I

    .prologue
    const/4 v3, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/high16 v2, -0x80000000

    .line 619
    if-nez p1, :cond_0

    .line 620
    new-instance v1, Lorg/apache/commons/math3/exception/MathArithmeticException;

    sget-object v2, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->ZERO_DENOMINATOR_IN_FRACTION:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-direct {v1, v2, v3}, Lorg/apache/commons/math3/exception/MathArithmeticException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v1

    .line 623
    :cond_0
    if-nez p0, :cond_1

    .line 624
    sget-object v1, Lorg/apache/commons/math3/fraction/Fraction;->ZERO:Lorg/apache/commons/math3/fraction/Fraction;

    .line 643
    :goto_0
    return-object v1

    .line 627
    :cond_1
    if-ne p1, v2, :cond_2

    and-int/lit8 v1, p0, 0x1

    if-nez v1, :cond_2

    .line 628
    div-int/lit8 p0, p0, 0x2

    div-int/lit8 p1, p1, 0x2

    .line 630
    :cond_2
    if-gez p1, :cond_5

    .line 631
    if-eq p0, v2, :cond_3

    if-ne p1, v2, :cond_4

    .line 633
    :cond_3
    new-instance v1, Lorg/apache/commons/math3/exception/MathArithmeticException;

    sget-object v2, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->OVERFLOW_IN_FRACTION:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-direct {v1, v2, v3}, Lorg/apache/commons/math3/exception/MathArithmeticException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v1

    .line 636
    :cond_4
    neg-int p0, p0

    .line 637
    neg-int p1, p1

    .line 640
    :cond_5
    invoke-static {p0, p1}, Lorg/apache/commons/math3/util/ArithmeticUtils;->gcd(II)I

    move-result v0

    .line 641
    .local v0, "gcd":I
    div-int/2addr p0, v0

    .line 642
    div-int/2addr p1, v0

    .line 643
    new-instance v1, Lorg/apache/commons/math3/fraction/Fraction;

    invoke-direct {v1, p0, p1}, Lorg/apache/commons/math3/fraction/Fraction;-><init>(II)V

    goto :goto_0
.end method


# virtual methods
.method public abs()Lorg/apache/commons/math3/fraction/Fraction;
    .locals 2

    .prologue
    .line 299
    iget v1, p0, Lorg/apache/commons/math3/fraction/Fraction;->numerator:I

    if-ltz v1, :cond_0

    .line 300
    move-object v0, p0

    .line 304
    .local v0, "ret":Lorg/apache/commons/math3/fraction/Fraction;
    :goto_0
    return-object v0

    .line 302
    .end local v0    # "ret":Lorg/apache/commons/math3/fraction/Fraction;
    :cond_0
    invoke-virtual {p0}, Lorg/apache/commons/math3/fraction/Fraction;->negate()Lorg/apache/commons/math3/fraction/Fraction;

    move-result-object v0

    .restart local v0    # "ret":Lorg/apache/commons/math3/fraction/Fraction;
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
    .line 36
    check-cast p1, Lorg/apache/commons/math3/fraction/Fraction;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/fraction/Fraction;->add(Lorg/apache/commons/math3/fraction/Fraction;)Lorg/apache/commons/math3/fraction/Fraction;

    move-result-object v0

    return-object v0
.end method

.method public add(I)Lorg/apache/commons/math3/fraction/Fraction;
    .locals 3
    .param p1, "i"    # I

    .prologue
    .line 447
    new-instance v0, Lorg/apache/commons/math3/fraction/Fraction;

    iget v1, p0, Lorg/apache/commons/math3/fraction/Fraction;->numerator:I

    iget v2, p0, Lorg/apache/commons/math3/fraction/Fraction;->denominator:I

    mul-int/2addr v2, p1

    add-int/2addr v1, v2

    iget v2, p0, Lorg/apache/commons/math3/fraction/Fraction;->denominator:I

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/fraction/Fraction;-><init>(II)V

    return-object v0
.end method

.method public add(Lorg/apache/commons/math3/fraction/Fraction;)Lorg/apache/commons/math3/fraction/Fraction;
    .locals 1
    .param p1, "fraction"    # Lorg/apache/commons/math3/fraction/Fraction;

    .prologue
    .line 438
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lorg/apache/commons/math3/fraction/Fraction;->addSub(Lorg/apache/commons/math3/fraction/Fraction;Z)Lorg/apache/commons/math3/fraction/Fraction;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 36
    check-cast p1, Lorg/apache/commons/math3/fraction/Fraction;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/fraction/Fraction;->compareTo(Lorg/apache/commons/math3/fraction/Fraction;)I

    move-result v0

    return v0
.end method

.method public compareTo(Lorg/apache/commons/math3/fraction/Fraction;)I
    .locals 8
    .param p1, "object"    # Lorg/apache/commons/math3/fraction/Fraction;

    .prologue
    .line 314
    iget v4, p0, Lorg/apache/commons/math3/fraction/Fraction;->numerator:I

    int-to-long v4, v4

    iget v6, p1, Lorg/apache/commons/math3/fraction/Fraction;->denominator:I

    int-to-long v6, v6

    mul-long v2, v4, v6

    .line 315
    .local v2, "nOd":J
    iget v4, p0, Lorg/apache/commons/math3/fraction/Fraction;->denominator:I

    int-to-long v4, v4

    iget v6, p1, Lorg/apache/commons/math3/fraction/Fraction;->numerator:I

    int-to-long v6, v6

    mul-long v0, v4, v6

    .line 316
    .local v0, "dOn":J
    cmp-long v4, v2, v0

    if-gez v4, :cond_0

    const/4 v4, -0x1

    :goto_0
    return v4

    :cond_0
    cmp-long v4, v2, v0

    if-lez v4, :cond_1

    const/4 v4, 0x1

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    goto :goto_0
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
    .line 36
    check-cast p1, Lorg/apache/commons/math3/fraction/Fraction;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/fraction/Fraction;->divide(Lorg/apache/commons/math3/fraction/Fraction;)Lorg/apache/commons/math3/fraction/Fraction;

    move-result-object v0

    return-object v0
.end method

.method public divide(I)Lorg/apache/commons/math3/fraction/Fraction;
    .locals 3
    .param p1, "i"    # I

    .prologue
    .line 592
    new-instance v0, Lorg/apache/commons/math3/fraction/Fraction;

    iget v1, p0, Lorg/apache/commons/math3/fraction/Fraction;->numerator:I

    iget v2, p0, Lorg/apache/commons/math3/fraction/Fraction;->denominator:I

    mul-int/2addr v2, p1

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/fraction/Fraction;-><init>(II)V

    return-object v0
.end method

.method public divide(Lorg/apache/commons/math3/fraction/Fraction;)Lorg/apache/commons/math3/fraction/Fraction;
    .locals 5
    .param p1, "fraction"    # Lorg/apache/commons/math3/fraction/Fraction;

    .prologue
    const/4 v4, 0x0

    .line 576
    if-nez p1, :cond_0

    .line 577
    new-instance v0, Lorg/apache/commons/math3/exception/NullArgumentException;

    sget-object v1, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->FRACTION:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    new-array v2, v4, [Ljava/lang/Object;

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/exception/NullArgumentException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v0

    .line 579
    :cond_0
    iget v0, p1, Lorg/apache/commons/math3/fraction/Fraction;->numerator:I

    if-nez v0, :cond_1

    .line 580
    new-instance v0, Lorg/apache/commons/math3/exception/MathArithmeticException;

    sget-object v1, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->ZERO_FRACTION_TO_DIVIDE_BY:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    iget v3, p1, Lorg/apache/commons/math3/fraction/Fraction;->numerator:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    const/4 v3, 0x1

    iget v4, p1, Lorg/apache/commons/math3/fraction/Fraction;->denominator:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/exception/MathArithmeticException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v0

    .line 583
    :cond_1
    invoke-virtual {p1}, Lorg/apache/commons/math3/fraction/Fraction;->reciprocal()Lorg/apache/commons/math3/fraction/Fraction;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/fraction/Fraction;->multiply(Lorg/apache/commons/math3/fraction/Fraction;)Lorg/apache/commons/math3/fraction/Fraction;

    move-result-object v0

    return-object v0
.end method

.method public doubleValue()D
    .locals 4

    .prologue
    .line 326
    iget v0, p0, Lorg/apache/commons/math3/fraction/Fraction;->numerator:I

    int-to-double v0, v0

    iget v2, p0, Lorg/apache/commons/math3/fraction/Fraction;->denominator:I

    int-to-double v2, v2

    div-double/2addr v0, v2

    return-wide v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "other"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 340
    if-ne p0, p1, :cond_1

    .line 350
    :cond_0
    :goto_0
    return v1

    .line 343
    :cond_1
    instance-of v3, p1, Lorg/apache/commons/math3/fraction/Fraction;

    if-eqz v3, :cond_3

    move-object v0, p1

    .line 346
    check-cast v0, Lorg/apache/commons/math3/fraction/Fraction;

    .line 347
    .local v0, "rhs":Lorg/apache/commons/math3/fraction/Fraction;
    iget v3, p0, Lorg/apache/commons/math3/fraction/Fraction;->numerator:I

    iget v4, v0, Lorg/apache/commons/math3/fraction/Fraction;->numerator:I

    if-ne v3, v4, :cond_2

    iget v3, p0, Lorg/apache/commons/math3/fraction/Fraction;->denominator:I

    iget v4, v0, Lorg/apache/commons/math3/fraction/Fraction;->denominator:I

    if-eq v3, v4, :cond_0

    :cond_2
    move v1, v2

    goto :goto_0

    .end local v0    # "rhs":Lorg/apache/commons/math3/fraction/Fraction;
    :cond_3
    move v1, v2

    .line 350
    goto :goto_0
.end method

.method public floatValue()F
    .locals 2

    .prologue
    .line 360
    invoke-virtual {p0}, Lorg/apache/commons/math3/fraction/Fraction;->doubleValue()D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method public getDenominator()I
    .locals 1

    .prologue
    .line 368
    iget v0, p0, Lorg/apache/commons/math3/fraction/Fraction;->denominator:I

    return v0
.end method

.method public bridge synthetic getField()Lorg/apache/commons/math3/Field;
    .locals 1

    .prologue
    .line 36
    invoke-virtual {p0}, Lorg/apache/commons/math3/fraction/Fraction;->getField()Lorg/apache/commons/math3/fraction/FractionField;

    move-result-object v0

    return-object v0
.end method

.method public getField()Lorg/apache/commons/math3/fraction/FractionField;
    .locals 1

    .prologue
    .line 670
    invoke-static {}, Lorg/apache/commons/math3/fraction/FractionField;->getInstance()Lorg/apache/commons/math3/fraction/FractionField;

    move-result-object v0

    return-object v0
.end method

.method public getNumerator()I
    .locals 1

    .prologue
    .line 376
    iget v0, p0, Lorg/apache/commons/math3/fraction/Fraction;->numerator:I

    return v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 385
    iget v0, p0, Lorg/apache/commons/math3/fraction/Fraction;->numerator:I

    add-int/lit16 v0, v0, 0x275

    mul-int/lit8 v0, v0, 0x25

    iget v1, p0, Lorg/apache/commons/math3/fraction/Fraction;->denominator:I

    add-int/2addr v0, v1

    return v0
.end method

.method public intValue()I
    .locals 2

    .prologue
    .line 395
    invoke-virtual {p0}, Lorg/apache/commons/math3/fraction/Fraction;->doubleValue()D

    move-result-wide v0

    double-to-int v0, v0

    return v0
.end method

.method public longValue()J
    .locals 2

    .prologue
    .line 405
    invoke-virtual {p0}, Lorg/apache/commons/math3/fraction/Fraction;->doubleValue()D

    move-result-wide v0

    double-to-long v0, v0

    return-wide v0
.end method

.method public bridge synthetic multiply(I)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 36
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/fraction/Fraction;->multiply(I)Lorg/apache/commons/math3/fraction/Fraction;

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
    .line 36
    check-cast p1, Lorg/apache/commons/math3/fraction/Fraction;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/fraction/Fraction;->multiply(Lorg/apache/commons/math3/fraction/Fraction;)Lorg/apache/commons/math3/fraction/Fraction;

    move-result-object v0

    return-object v0
.end method

.method public multiply(I)Lorg/apache/commons/math3/fraction/Fraction;
    .locals 3
    .param p1, "i"    # I

    .prologue
    .line 562
    new-instance v0, Lorg/apache/commons/math3/fraction/Fraction;

    iget v1, p0, Lorg/apache/commons/math3/fraction/Fraction;->numerator:I

    mul-int/2addr v1, p1

    iget v2, p0, Lorg/apache/commons/math3/fraction/Fraction;->denominator:I

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/fraction/Fraction;-><init>(II)V

    return-object v0
.end method

.method public multiply(Lorg/apache/commons/math3/fraction/Fraction;)Lorg/apache/commons/math3/fraction/Fraction;
    .locals 5
    .param p1, "fraction"    # Lorg/apache/commons/math3/fraction/Fraction;

    .prologue
    .line 541
    if-nez p1, :cond_0

    .line 542
    new-instance v2, Lorg/apache/commons/math3/exception/NullArgumentException;

    sget-object v3, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->FRACTION:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-direct {v2, v3, v4}, Lorg/apache/commons/math3/exception/NullArgumentException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v2

    .line 544
    :cond_0
    iget v2, p0, Lorg/apache/commons/math3/fraction/Fraction;->numerator:I

    if-eqz v2, :cond_1

    iget v2, p1, Lorg/apache/commons/math3/fraction/Fraction;->numerator:I

    if-nez v2, :cond_2

    .line 545
    :cond_1
    sget-object v2, Lorg/apache/commons/math3/fraction/Fraction;->ZERO:Lorg/apache/commons/math3/fraction/Fraction;

    .line 551
    :goto_0
    return-object v2

    .line 549
    :cond_2
    iget v2, p0, Lorg/apache/commons/math3/fraction/Fraction;->numerator:I

    iget v3, p1, Lorg/apache/commons/math3/fraction/Fraction;->denominator:I

    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/ArithmeticUtils;->gcd(II)I

    move-result v0

    .line 550
    .local v0, "d1":I
    iget v2, p1, Lorg/apache/commons/math3/fraction/Fraction;->numerator:I

    iget v3, p0, Lorg/apache/commons/math3/fraction/Fraction;->denominator:I

    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/ArithmeticUtils;->gcd(II)I

    move-result v1

    .line 551
    .local v1, "d2":I
    iget v2, p0, Lorg/apache/commons/math3/fraction/Fraction;->numerator:I

    div-int/2addr v2, v0

    iget v3, p1, Lorg/apache/commons/math3/fraction/Fraction;->numerator:I

    div-int/2addr v3, v1

    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/ArithmeticUtils;->mulAndCheck(II)I

    move-result v2

    iget v3, p0, Lorg/apache/commons/math3/fraction/Fraction;->denominator:I

    div-int/2addr v3, v1

    iget v4, p1, Lorg/apache/commons/math3/fraction/Fraction;->denominator:I

    div-int/2addr v4, v0

    invoke-static {v3, v4}, Lorg/apache/commons/math3/util/ArithmeticUtils;->mulAndCheck(II)I

    move-result v3

    invoke-static {v2, v3}, Lorg/apache/commons/math3/fraction/Fraction;->getReducedFraction(II)Lorg/apache/commons/math3/fraction/Fraction;

    move-result-object v2

    goto :goto_0
.end method

.method public bridge synthetic negate()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 36
    invoke-virtual {p0}, Lorg/apache/commons/math3/fraction/Fraction;->negate()Lorg/apache/commons/math3/fraction/Fraction;

    move-result-object v0

    return-object v0
.end method

.method public negate()Lorg/apache/commons/math3/fraction/Fraction;
    .locals 5

    .prologue
    .line 413
    iget v0, p0, Lorg/apache/commons/math3/fraction/Fraction;->numerator:I

    const/high16 v1, -0x80000000

    if-ne v0, v1, :cond_0

    .line 414
    new-instance v0, Lorg/apache/commons/math3/exception/MathArithmeticException;

    sget-object v1, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->OVERFLOW_IN_FRACTION:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, p0, Lorg/apache/commons/math3/fraction/Fraction;->numerator:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget v4, p0, Lorg/apache/commons/math3/fraction/Fraction;->denominator:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/exception/MathArithmeticException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v0

    .line 416
    :cond_0
    new-instance v0, Lorg/apache/commons/math3/fraction/Fraction;

    iget v1, p0, Lorg/apache/commons/math3/fraction/Fraction;->numerator:I

    neg-int v1, v1

    iget v2, p0, Lorg/apache/commons/math3/fraction/Fraction;->denominator:I

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/fraction/Fraction;-><init>(II)V

    return-object v0
.end method

.method public percentageValue()D
    .locals 4

    .prologue
    .line 604
    const-wide/high16 v0, 0x4059000000000000L    # 100.0

    invoke-virtual {p0}, Lorg/apache/commons/math3/fraction/Fraction;->doubleValue()D

    move-result-wide v2

    mul-double/2addr v0, v2

    return-wide v0
.end method

.method public bridge synthetic reciprocal()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathArithmeticException;
        }
    .end annotation

    .prologue
    .line 36
    invoke-virtual {p0}, Lorg/apache/commons/math3/fraction/Fraction;->reciprocal()Lorg/apache/commons/math3/fraction/Fraction;

    move-result-object v0

    return-object v0
.end method

.method public reciprocal()Lorg/apache/commons/math3/fraction/Fraction;
    .locals 3

    .prologue
    .line 424
    new-instance v0, Lorg/apache/commons/math3/fraction/Fraction;

    iget v1, p0, Lorg/apache/commons/math3/fraction/Fraction;->denominator:I

    iget v2, p0, Lorg/apache/commons/math3/fraction/Fraction;->numerator:I

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/fraction/Fraction;-><init>(II)V

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
    .line 36
    check-cast p1, Lorg/apache/commons/math3/fraction/Fraction;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/fraction/Fraction;->subtract(Lorg/apache/commons/math3/fraction/Fraction;)Lorg/apache/commons/math3/fraction/Fraction;

    move-result-object v0

    return-object v0
.end method

.method public subtract(I)Lorg/apache/commons/math3/fraction/Fraction;
    .locals 3
    .param p1, "i"    # I

    .prologue
    .line 470
    new-instance v0, Lorg/apache/commons/math3/fraction/Fraction;

    iget v1, p0, Lorg/apache/commons/math3/fraction/Fraction;->numerator:I

    iget v2, p0, Lorg/apache/commons/math3/fraction/Fraction;->denominator:I

    mul-int/2addr v2, p1

    sub-int/2addr v1, v2

    iget v2, p0, Lorg/apache/commons/math3/fraction/Fraction;->denominator:I

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/fraction/Fraction;-><init>(II)V

    return-object v0
.end method

.method public subtract(Lorg/apache/commons/math3/fraction/Fraction;)Lorg/apache/commons/math3/fraction/Fraction;
    .locals 1
    .param p1, "fraction"    # Lorg/apache/commons/math3/fraction/Fraction;

    .prologue
    .line 461
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/apache/commons/math3/fraction/Fraction;->addSub(Lorg/apache/commons/math3/fraction/Fraction;Z)Lorg/apache/commons/math3/fraction/Fraction;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 657
    const/4 v0, 0x0

    .line 658
    .local v0, "str":Ljava/lang/String;
    iget v1, p0, Lorg/apache/commons/math3/fraction/Fraction;->denominator:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 659
    iget v1, p0, Lorg/apache/commons/math3/fraction/Fraction;->numerator:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    .line 665
    :goto_0
    return-object v0

    .line 660
    :cond_0
    iget v1, p0, Lorg/apache/commons/math3/fraction/Fraction;->numerator:I

    if-nez v1, :cond_1

    .line 661
    const-string v0, "0"

    goto :goto_0

    .line 663
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lorg/apache/commons/math3/fraction/Fraction;->numerator:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " / "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lorg/apache/commons/math3/fraction/Fraction;->denominator:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
