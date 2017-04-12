.class public Lorg/apache/commons/math3/dfp/Dfp;
.super Ljava/lang/Object;
.source "Dfp.java"

# interfaces
.implements Lorg/apache/commons/math3/RealFieldElement;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/math3/dfp/Dfp$1;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/apache/commons/math3/RealFieldElement",
        "<",
        "Lorg/apache/commons/math3/dfp/Dfp;",
        ">;"
    }
.end annotation


# static fields
.field private static final ADD_TRAP:Ljava/lang/String; = "add"

.field private static final ALIGN_TRAP:Ljava/lang/String; = "align"

.field private static final DIVIDE_TRAP:Ljava/lang/String; = "divide"

.field public static final ERR_SCALE:I = 0x7ff8

.field public static final FINITE:B = 0x0t

.field private static final GREATER_THAN_TRAP:Ljava/lang/String; = "greaterThan"

.field public static final INFINITE:B = 0x1t

.field private static final LESS_THAN_TRAP:Ljava/lang/String; = "lessThan"

.field public static final MAX_EXP:I = 0x8000

.field public static final MIN_EXP:I = -0x7fff

.field private static final MULTIPLY_TRAP:Ljava/lang/String; = "multiply"

.field private static final NAN_STRING:Ljava/lang/String; = "NaN"

.field private static final NEG_INFINITY_STRING:Ljava/lang/String; = "-Infinity"

.field private static final NEW_INSTANCE_TRAP:Ljava/lang/String; = "newInstance"

.field private static final NEXT_AFTER_TRAP:Ljava/lang/String; = "nextAfter"

.field private static final POS_INFINITY_STRING:Ljava/lang/String; = "Infinity"

.field public static final QNAN:B = 0x3t

.field public static final RADIX:I = 0x2710

.field public static final SNAN:B = 0x2t

.field private static final SQRT_TRAP:Ljava/lang/String; = "sqrt"

.field private static final TRUNC_TRAP:Ljava/lang/String; = "trunc"


# instance fields
.field protected exp:I

.field private final field:Lorg/apache/commons/math3/dfp/DfpField;

.field protected mant:[I

.field protected nans:B

.field protected sign:B


# direct methods
.method public constructor <init>(Lorg/apache/commons/math3/dfp/Dfp;)V
    .locals 1
    .param p1, "d"    # Lorg/apache/commons/math3/dfp/Dfp;

    .prologue
    .line 323
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 324
    iget-object v0, p1, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    invoke-virtual {v0}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    iput-object v0, p0, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    .line 325
    iget-byte v0, p1, Lorg/apache/commons/math3/dfp/Dfp;->sign:B

    iput-byte v0, p0, Lorg/apache/commons/math3/dfp/Dfp;->sign:B

    .line 326
    iget v0, p1, Lorg/apache/commons/math3/dfp/Dfp;->exp:I

    iput v0, p0, Lorg/apache/commons/math3/dfp/Dfp;->exp:I

    .line 327
    iget-byte v0, p1, Lorg/apache/commons/math3/dfp/Dfp;->nans:B

    iput-byte v0, p0, Lorg/apache/commons/math3/dfp/Dfp;->nans:B

    .line 328
    iget-object v0, p1, Lorg/apache/commons/math3/dfp/Dfp;->field:Lorg/apache/commons/math3/dfp/DfpField;

    iput-object v0, p0, Lorg/apache/commons/math3/dfp/Dfp;->field:Lorg/apache/commons/math3/dfp/DfpField;

    .line 329
    return-void
.end method

.method protected constructor <init>(Lorg/apache/commons/math3/dfp/DfpField;)V
    .locals 2
    .param p1, "field"    # Lorg/apache/commons/math3/dfp/DfpField;

    .prologue
    const/4 v1, 0x0

    .line 182
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 183
    invoke-virtual {p1}, Lorg/apache/commons/math3/dfp/DfpField;->getRadixDigits()I

    move-result v0

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    .line 184
    const/4 v0, 0x1

    iput-byte v0, p0, Lorg/apache/commons/math3/dfp/Dfp;->sign:B

    .line 185
    iput v1, p0, Lorg/apache/commons/math3/dfp/Dfp;->exp:I

    .line 186
    iput-byte v1, p0, Lorg/apache/commons/math3/dfp/Dfp;->nans:B

    .line 187
    iput-object p1, p0, Lorg/apache/commons/math3/dfp/Dfp;->field:Lorg/apache/commons/math3/dfp/DfpField;

    .line 188
    return-void
.end method

.method protected constructor <init>(Lorg/apache/commons/math3/dfp/DfpField;B)V
    .locals 2
    .param p1, "field"    # Lorg/apache/commons/math3/dfp/DfpField;
    .param p2, "x"    # B

    .prologue
    .line 195
    int-to-long v0, p2

    invoke-direct {p0, p1, v0, v1}, Lorg/apache/commons/math3/dfp/Dfp;-><init>(Lorg/apache/commons/math3/dfp/DfpField;J)V

    .line 196
    return-void
.end method

.method protected constructor <init>(Lorg/apache/commons/math3/dfp/DfpField;BB)V
    .locals 1
    .param p1, "field"    # Lorg/apache/commons/math3/dfp/DfpField;
    .param p2, "sign"    # B
    .param p3, "nans"    # B

    .prologue
    .line 542
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 543
    iput-object p1, p0, Lorg/apache/commons/math3/dfp/Dfp;->field:Lorg/apache/commons/math3/dfp/DfpField;

    .line 544
    invoke-virtual {p1}, Lorg/apache/commons/math3/dfp/DfpField;->getRadixDigits()I

    move-result v0

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    .line 545
    iput-byte p2, p0, Lorg/apache/commons/math3/dfp/Dfp;->sign:B

    .line 546
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/commons/math3/dfp/Dfp;->exp:I

    .line 547
    iput-byte p3, p0, Lorg/apache/commons/math3/dfp/Dfp;->nans:B

    .line 548
    return-void
.end method

.method protected constructor <init>(Lorg/apache/commons/math3/dfp/DfpField;D)V
    .locals 12
    .param p1, "field"    # Lorg/apache/commons/math3/dfp/DfpField;
    .param p2, "x"    # D

    .prologue
    .line 257
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 260
    invoke-virtual {p1}, Lorg/apache/commons/math3/dfp/DfpField;->getRadixDigits()I

    move-result v6

    new-array v6, v6, [I

    iput-object v6, p0, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    .line 261
    const/4 v6, 0x1

    iput-byte v6, p0, Lorg/apache/commons/math3/dfp/Dfp;->sign:B

    .line 262
    const/4 v6, 0x0

    iput v6, p0, Lorg/apache/commons/math3/dfp/Dfp;->exp:I

    .line 263
    const/4 v6, 0x0

    iput-byte v6, p0, Lorg/apache/commons/math3/dfp/Dfp;->nans:B

    .line 264
    iput-object p1, p0, Lorg/apache/commons/math3/dfp/Dfp;->field:Lorg/apache/commons/math3/dfp/DfpField;

    .line 266
    invoke-static {p2, p3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v0

    .line 267
    .local v0, "bits":J
    const-wide v6, 0xfffffffffffffL

    and-long v4, v0, v6

    .line 268
    .local v4, "mantissa":J
    const-wide/high16 v6, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    and-long/2addr v6, v0

    const/16 v8, 0x34

    shr-long/2addr v6, v8

    long-to-int v6, v6

    add-int/lit16 v2, v6, -0x3ff

    .line 270
    .local v2, "exponent":I
    const/16 v6, -0x3ff

    if-ne v2, v6, :cond_3

    .line 272
    const-wide/16 v6, 0x0

    cmpl-double v6, p2, v6

    if-nez v6, :cond_1

    .line 274
    const-wide/high16 v6, -0x8000000000000000L

    and-long/2addr v6, v0

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-eqz v6, :cond_0

    .line 275
    const/4 v6, -0x1

    iput-byte v6, p0, Lorg/apache/commons/math3/dfp/Dfp;->sign:B

    .line 318
    :cond_0
    :goto_0
    return-void

    .line 280
    :cond_1
    add-int/lit8 v2, v2, 0x1

    .line 283
    :goto_1
    const-wide/high16 v6, 0x10000000000000L

    and-long/2addr v6, v4

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-nez v6, :cond_2

    .line 284
    add-int/lit8 v2, v2, -0x1

    .line 285
    const/4 v6, 0x1

    shl-long/2addr v4, v6

    goto :goto_1

    .line 287
    :cond_2
    const-wide v6, 0xfffffffffffffL

    and-long/2addr v4, v6

    .line 290
    :cond_3
    const/16 v6, 0x400

    if-ne v2, v6, :cond_6

    .line 292
    cmpl-double v6, p2, p2

    if-eqz v6, :cond_4

    .line 293
    const/4 v6, 0x1

    iput-byte v6, p0, Lorg/apache/commons/math3/dfp/Dfp;->sign:B

    .line 294
    const/4 v6, 0x3

    iput-byte v6, p0, Lorg/apache/commons/math3/dfp/Dfp;->nans:B

    goto :goto_0

    .line 295
    :cond_4
    const-wide/16 v6, 0x0

    cmpg-double v6, p2, v6

    if-gez v6, :cond_5

    .line 296
    const/4 v6, -0x1

    iput-byte v6, p0, Lorg/apache/commons/math3/dfp/Dfp;->sign:B

    .line 297
    const/4 v6, 0x1

    iput-byte v6, p0, Lorg/apache/commons/math3/dfp/Dfp;->nans:B

    goto :goto_0

    .line 299
    :cond_5
    const/4 v6, 0x1

    iput-byte v6, p0, Lorg/apache/commons/math3/dfp/Dfp;->sign:B

    .line 300
    const/4 v6, 0x1

    iput-byte v6, p0, Lorg/apache/commons/math3/dfp/Dfp;->nans:B

    goto :goto_0

    .line 305
    :cond_6
    new-instance v3, Lorg/apache/commons/math3/dfp/Dfp;

    invoke-direct {v3, p1, v4, v5}, Lorg/apache/commons/math3/dfp/Dfp;-><init>(Lorg/apache/commons/math3/dfp/DfpField;J)V

    .line 306
    .local v3, "xdfp":Lorg/apache/commons/math3/dfp/Dfp;
    new-instance v6, Lorg/apache/commons/math3/dfp/Dfp;

    const-wide/high16 v8, 0x10000000000000L

    invoke-direct {v6, p1, v8, v9}, Lorg/apache/commons/math3/dfp/Dfp;-><init>(Lorg/apache/commons/math3/dfp/DfpField;J)V

    invoke-virtual {v3, v6}, Lorg/apache/commons/math3/dfp/Dfp;->divide(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v6

    invoke-virtual {p1}, Lorg/apache/commons/math3/dfp/DfpField;->getOne()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v7

    invoke-virtual {v6, v7}, Lorg/apache/commons/math3/dfp/Dfp;->add(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v3

    .line 307
    invoke-virtual {p1}, Lorg/apache/commons/math3/dfp/DfpField;->getTwo()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v6

    invoke-static {v6, v2}, Lorg/apache/commons/math3/dfp/DfpMath;->pow(Lorg/apache/commons/math3/dfp/Dfp;I)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v6

    invoke-virtual {v3, v6}, Lorg/apache/commons/math3/dfp/Dfp;->multiply(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v3

    .line 309
    const-wide/high16 v6, -0x8000000000000000L

    and-long/2addr v6, v0

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-eqz v6, :cond_7

    .line 310
    invoke-virtual {v3}, Lorg/apache/commons/math3/dfp/Dfp;->negate()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v3

    .line 313
    :cond_7
    iget-object v6, v3, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    const/4 v7, 0x0

    iget-object v8, p0, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    const/4 v9, 0x0

    iget-object v10, p0, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    array-length v10, v10

    invoke-static {v6, v7, v8, v9, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 314
    iget-byte v6, v3, Lorg/apache/commons/math3/dfp/Dfp;->sign:B

    iput-byte v6, p0, Lorg/apache/commons/math3/dfp/Dfp;->sign:B

    .line 315
    iget v6, v3, Lorg/apache/commons/math3/dfp/Dfp;->exp:I

    iput v6, p0, Lorg/apache/commons/math3/dfp/Dfp;->exp:I

    .line 316
    iget-byte v6, v3, Lorg/apache/commons/math3/dfp/Dfp;->nans:B

    iput-byte v6, p0, Lorg/apache/commons/math3/dfp/Dfp;->nans:B

    goto/16 :goto_0
.end method

.method protected constructor <init>(Lorg/apache/commons/math3/dfp/DfpField;I)V
    .locals 2
    .param p1, "field"    # Lorg/apache/commons/math3/dfp/DfpField;
    .param p2, "x"    # I

    .prologue
    .line 203
    int-to-long v0, p2

    invoke-direct {p0, p1, v0, v1}, Lorg/apache/commons/math3/dfp/Dfp;-><init>(Lorg/apache/commons/math3/dfp/DfpField;J)V

    .line 204
    return-void
.end method

.method protected constructor <init>(Lorg/apache/commons/math3/dfp/DfpField;J)V
    .locals 12
    .param p1, "field"    # Lorg/apache/commons/math3/dfp/DfpField;
    .param p2, "x"    # J

    .prologue
    const-wide/16 v10, 0x2710

    const-wide/16 v8, 0x0

    const/4 v4, 0x0

    .line 210
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 213
    invoke-virtual {p1}, Lorg/apache/commons/math3/dfp/DfpField;->getRadixDigits()I

    move-result v2

    new-array v2, v2, [I

    iput-object v2, p0, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    .line 214
    iput-byte v4, p0, Lorg/apache/commons/math3/dfp/Dfp;->nans:B

    .line 215
    iput-object p1, p0, Lorg/apache/commons/math3/dfp/Dfp;->field:Lorg/apache/commons/math3/dfp/DfpField;

    .line 217
    const/4 v1, 0x0

    .line 218
    .local v1, "isLongMin":Z
    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v2, p2, v2

    if-nez v2, :cond_0

    .line 221
    const/4 v1, 0x1

    .line 222
    const-wide/16 v2, 0x1

    add-long/2addr p2, v2

    .line 226
    :cond_0
    cmp-long v2, p2, v8

    if-gez v2, :cond_1

    .line 227
    const/4 v2, -0x1

    iput-byte v2, p0, Lorg/apache/commons/math3/dfp/Dfp;->sign:B

    .line 228
    neg-long p2, p2

    .line 233
    :goto_0
    iput v4, p0, Lorg/apache/commons/math3/dfp/Dfp;->exp:I

    .line 234
    :goto_1
    cmp-long v2, p2, v8

    if-eqz v2, :cond_2

    .line 235
    iget-object v2, p0, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    iget-object v3, p0, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    array-length v3, v3

    iget v4, p0, Lorg/apache/commons/math3/dfp/Dfp;->exp:I

    sub-int/2addr v3, v4

    iget-object v4, p0, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    iget-object v5, p0, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    array-length v5, v5

    add-int/lit8 v5, v5, -0x1

    iget v6, p0, Lorg/apache/commons/math3/dfp/Dfp;->exp:I

    sub-int/2addr v5, v6

    iget v6, p0, Lorg/apache/commons/math3/dfp/Dfp;->exp:I

    invoke-static {v2, v3, v4, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 236
    iget-object v2, p0, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    iget-object v3, p0, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    array-length v3, v3

    add-int/lit8 v3, v3, -0x1

    rem-long v4, p2, v10

    long-to-int v4, v4

    aput v4, v2, v3

    .line 237
    div-long/2addr p2, v10

    .line 238
    iget v2, p0, Lorg/apache/commons/math3/dfp/Dfp;->exp:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lorg/apache/commons/math3/dfp/Dfp;->exp:I

    goto :goto_1

    .line 230
    :cond_1
    const/4 v2, 0x1

    iput-byte v2, p0, Lorg/apache/commons/math3/dfp/Dfp;->sign:B

    goto :goto_0

    .line 241
    :cond_2
    if-eqz v1, :cond_3

    .line 244
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_2
    iget-object v2, p0, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    if-ge v0, v2, :cond_3

    .line 245
    iget-object v2, p0, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    aget v2, v2, v0

    if-eqz v2, :cond_4

    .line 246
    iget-object v2, p0, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    aget v3, v2, v0

    add-int/lit8 v3, v3, 0x1

    aput v3, v2, v0

    .line 251
    .end local v0    # "i":I
    :cond_3
    return-void

    .line 244
    .restart local v0    # "i":I
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method

.method protected constructor <init>(Lorg/apache/commons/math3/dfp/DfpField;Ljava/lang/String;)V
    .locals 18
    .param p1, "field"    # Lorg/apache/commons/math3/dfp/DfpField;
    .param p2, "s"    # Ljava/lang/String;

    .prologue
    .line 335
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 338
    invoke-virtual/range {p1 .. p1}, Lorg/apache/commons/math3/dfp/DfpField;->getRadixDigits()I

    move-result v15

    new-array v15, v15, [I

    move-object/from16 v0, p0

    iput-object v15, v0, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    .line 339
    const/4 v15, 0x1

    move-object/from16 v0, p0

    iput-byte v15, v0, Lorg/apache/commons/math3/dfp/Dfp;->sign:B

    .line 340
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput v15, v0, Lorg/apache/commons/math3/dfp/Dfp;->exp:I

    .line 341
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput-byte v15, v0, Lorg/apache/commons/math3/dfp/Dfp;->nans:B

    .line 342
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/apache/commons/math3/dfp/Dfp;->field:Lorg/apache/commons/math3/dfp/DfpField;

    .line 344
    const/4 v2, 0x0

    .line 345
    .local v2, "decimalFound":Z
    const/4 v11, 0x4

    .line 346
    .local v11, "rsize":I
    const/4 v8, 0x4

    .line 347
    .local v8, "offset":I
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/dfp/Dfp;->getRadixDigits()I

    move-result v15

    mul-int/lit8 v15, v15, 0x4

    add-int/lit8 v15, v15, 0x8

    new-array v14, v15, [C

    .line 350
    .local v14, "striped":[C
    const-string v15, "Infinity"

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_1

    .line 351
    const/4 v15, 0x1

    move-object/from16 v0, p0

    iput-byte v15, v0, Lorg/apache/commons/math3/dfp/Dfp;->sign:B

    .line 352
    const/4 v15, 0x1

    move-object/from16 v0, p0

    iput-byte v15, v0, Lorg/apache/commons/math3/dfp/Dfp;->nans:B

    .line 534
    :cond_0
    :goto_0
    return-void

    .line 356
    :cond_1
    const-string v15, "-Infinity"

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_2

    .line 357
    const/4 v15, -0x1

    move-object/from16 v0, p0

    iput-byte v15, v0, Lorg/apache/commons/math3/dfp/Dfp;->sign:B

    .line 358
    const/4 v15, 0x1

    move-object/from16 v0, p0

    iput-byte v15, v0, Lorg/apache/commons/math3/dfp/Dfp;->nans:B

    goto :goto_0

    .line 362
    :cond_2
    const-string v15, "NaN"

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_3

    .line 363
    const/4 v15, 0x1

    move-object/from16 v0, p0

    iput-byte v15, v0, Lorg/apache/commons/math3/dfp/Dfp;->sign:B

    .line 364
    const/4 v15, 0x3

    move-object/from16 v0, p0

    iput-byte v15, v0, Lorg/apache/commons/math3/dfp/Dfp;->nans:B

    goto :goto_0

    .line 369
    :cond_3
    const-string v15, "e"

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v9

    .line 370
    .local v9, "p":I
    const/4 v15, -0x1

    if-ne v9, v15, :cond_4

    .line 371
    const-string v15, "E"

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v9

    .line 375
    :cond_4
    const/4 v12, 0x0

    .line 376
    .local v12, "sciexp":I
    const/4 v15, -0x1

    if-eq v9, v15, :cond_11

    .line 378
    const/4 v15, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v15, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 379
    .local v4, "fpdecimal":Ljava/lang/String;
    add-int/lit8 v15, v9, 0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    .line 380
    .local v5, "fpexp":Ljava/lang/String;
    const/4 v7, 0x0

    .line 382
    .local v7, "negative":Z
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_1
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v15

    if-ge v6, v15, :cond_7

    .line 384
    invoke-virtual {v5, v6}, Ljava/lang/String;->charAt(I)C

    move-result v15

    const/16 v16, 0x2d

    move/from16 v0, v16

    if-ne v15, v0, :cond_6

    .line 386
    const/4 v7, 0x1

    .line 382
    :cond_5
    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 389
    :cond_6
    invoke-virtual {v5, v6}, Ljava/lang/String;->charAt(I)C

    move-result v15

    const/16 v16, 0x30

    move/from16 v0, v16

    if-lt v15, v0, :cond_5

    invoke-virtual {v5, v6}, Ljava/lang/String;->charAt(I)C

    move-result v15

    const/16 v16, 0x39

    move/from16 v0, v16

    if-gt v15, v0, :cond_5

    .line 390
    mul-int/lit8 v15, v12, 0xa

    invoke-virtual {v5, v6}, Ljava/lang/String;->charAt(I)C

    move-result v16

    add-int v15, v15, v16

    add-int/lit8 v12, v15, -0x30

    goto :goto_2

    .line 394
    :cond_7
    if-eqz v7, :cond_8

    .line 395
    neg-int v12, v12

    .line 403
    .end local v5    # "fpexp":Ljava/lang/String;
    .end local v6    # "i":I
    .end local v7    # "negative":Z
    :cond_8
    :goto_3
    const-string v15, "-"

    invoke-virtual {v4, v15}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v15

    const/16 v16, -0x1

    move/from16 v0, v16

    if-eq v15, v0, :cond_9

    .line 404
    const/4 v15, -0x1

    move-object/from16 v0, p0

    iput-byte v15, v0, Lorg/apache/commons/math3/dfp/Dfp;->sign:B

    .line 408
    :cond_9
    const/4 v9, 0x0

    .line 411
    const/4 v3, 0x0

    .line 413
    .local v3, "decimalPos":I
    :cond_a
    invoke-virtual {v4, v9}, Ljava/lang/String;->charAt(I)C

    move-result v15

    const/16 v16, 0x31

    move/from16 v0, v16

    if-lt v15, v0, :cond_12

    invoke-virtual {v4, v9}, Ljava/lang/String;->charAt(I)C

    move-result v15

    const/16 v16, 0x39

    move/from16 v0, v16

    if-gt v15, v0, :cond_12

    .line 433
    :goto_4
    const/4 v10, 0x4

    .line 434
    .local v10, "q":I
    const/4 v15, 0x0

    const/16 v16, 0x30

    aput-char v16, v14, v15

    .line 435
    const/4 v15, 0x1

    const/16 v16, 0x30

    aput-char v16, v14, v15

    .line 436
    const/4 v15, 0x2

    const/16 v16, 0x30

    aput-char v16, v14, v15

    .line 437
    const/4 v15, 0x3

    const/16 v16, 0x30

    aput-char v16, v14, v15

    .line 438
    const/4 v13, 0x0

    .line 440
    .local v13, "significantDigits":I
    :goto_5
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v15

    if-ne v9, v15, :cond_15

    .line 469
    :cond_b
    if-eqz v2, :cond_c

    const/4 v15, 0x4

    if-eq v10, v15, :cond_c

    .line 471
    :goto_6
    add-int/lit8 v10, v10, -0x1

    .line 472
    const/4 v15, 0x4

    if-ne v10, v15, :cond_19

    .line 484
    :cond_c
    if-eqz v2, :cond_d

    if-nez v13, :cond_d

    .line 485
    const/4 v3, 0x0

    .line 489
    :cond_d
    if-nez v2, :cond_e

    .line 490
    add-int/lit8 v3, v10, -0x4

    .line 494
    :cond_e
    const/4 v10, 0x4

    .line 495
    add-int/lit8 v15, v13, -0x1

    add-int/lit8 v9, v15, 0x4

    .line 497
    :goto_7
    if-le v9, v10, :cond_f

    .line 498
    aget-char v15, v14, v9

    const/16 v16, 0x30

    move/from16 v0, v16

    if-eq v15, v0, :cond_1a

    .line 505
    :cond_f
    rsub-int v15, v3, 0x190

    rem-int/lit8 v16, v12, 0x4

    sub-int v15, v15, v16

    rem-int/lit8 v6, v15, 0x4

    .line 506
    .restart local v6    # "i":I
    sub-int/2addr v10, v6

    .line 507
    add-int/2addr v3, v6

    .line 510
    :cond_10
    sub-int v15, v9, v10

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v16, v0

    mul-int/lit8 v16, v16, 0x4

    move/from16 v0, v16

    if-ge v15, v0, :cond_1b

    .line 511
    const/4 v6, 0x0

    :goto_8
    const/4 v15, 0x4

    if-ge v6, v15, :cond_10

    .line 512
    add-int/lit8 v9, v9, 0x1

    const/16 v15, 0x30

    aput-char v15, v14, v9

    .line 511
    add-int/lit8 v6, v6, 0x1

    goto :goto_8

    .line 399
    .end local v3    # "decimalPos":I
    .end local v4    # "fpdecimal":Ljava/lang/String;
    .end local v6    # "i":I
    .end local v10    # "q":I
    .end local v13    # "significantDigits":I
    :cond_11
    move-object/from16 v4, p2

    .restart local v4    # "fpdecimal":Ljava/lang/String;
    goto/16 :goto_3

    .line 417
    .restart local v3    # "decimalPos":I
    :cond_12
    if-eqz v2, :cond_13

    invoke-virtual {v4, v9}, Ljava/lang/String;->charAt(I)C

    move-result v15

    const/16 v16, 0x30

    move/from16 v0, v16

    if-ne v15, v0, :cond_13

    .line 418
    add-int/lit8 v3, v3, -0x1

    .line 421
    :cond_13
    invoke-virtual {v4, v9}, Ljava/lang/String;->charAt(I)C

    move-result v15

    const/16 v16, 0x2e

    move/from16 v0, v16

    if-ne v15, v0, :cond_14

    .line 422
    const/4 v2, 0x1

    .line 425
    :cond_14
    add-int/lit8 v9, v9, 0x1

    .line 427
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v15

    if-ne v9, v15, :cond_a

    goto/16 :goto_4

    .line 445
    .restart local v10    # "q":I
    .restart local v13    # "significantDigits":I
    :cond_15
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    array-length v15, v15

    mul-int/lit8 v15, v15, 0x4

    add-int/lit8 v15, v15, 0x4

    add-int/lit8 v15, v15, 0x1

    if-eq v10, v15, :cond_b

    .line 449
    invoke-virtual {v4, v9}, Ljava/lang/String;->charAt(I)C

    move-result v15

    const/16 v16, 0x2e

    move/from16 v0, v16

    if-ne v15, v0, :cond_16

    .line 450
    const/4 v2, 0x1

    .line 451
    move v3, v13

    .line 452
    add-int/lit8 v9, v9, 0x1

    .line 453
    goto/16 :goto_5

    .line 456
    :cond_16
    invoke-virtual {v4, v9}, Ljava/lang/String;->charAt(I)C

    move-result v15

    const/16 v16, 0x30

    move/from16 v0, v16

    if-lt v15, v0, :cond_17

    invoke-virtual {v4, v9}, Ljava/lang/String;->charAt(I)C

    move-result v15

    const/16 v16, 0x39

    move/from16 v0, v16

    if-le v15, v0, :cond_18

    .line 457
    :cond_17
    add-int/lit8 v9, v9, 0x1

    .line 458
    goto/16 :goto_5

    .line 461
    :cond_18
    invoke-virtual {v4, v9}, Ljava/lang/String;->charAt(I)C

    move-result v15

    aput-char v15, v14, v10

    .line 462
    add-int/lit8 v10, v10, 0x1

    .line 463
    add-int/lit8 v9, v9, 0x1

    .line 464
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_5

    .line 475
    :cond_19
    aget-char v15, v14, v10

    const/16 v16, 0x30

    move/from16 v0, v16

    if-ne v15, v0, :cond_c

    .line 476
    add-int/lit8 v13, v13, -0x1

    goto/16 :goto_6

    .line 501
    :cond_1a
    add-int/lit8 v9, v9, -0x1

    goto/16 :goto_7

    .line 518
    .restart local v6    # "i":I
    :cond_1b
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    array-length v15, v15

    add-int/lit8 v6, v15, -0x1

    :goto_9
    if-ltz v6, :cond_1c

    .line 519
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    aget-char v16, v14, v10

    add-int/lit8 v16, v16, -0x30

    move/from16 v0, v16

    mul-int/lit16 v0, v0, 0x3e8

    move/from16 v16, v0

    add-int/lit8 v17, v10, 0x1

    aget-char v17, v14, v17

    add-int/lit8 v17, v17, -0x30

    mul-int/lit8 v17, v17, 0x64

    add-int v16, v16, v17

    add-int/lit8 v17, v10, 0x2

    aget-char v17, v14, v17

    add-int/lit8 v17, v17, -0x30

    mul-int/lit8 v17, v17, 0xa

    add-int v16, v16, v17

    add-int/lit8 v17, v10, 0x3

    aget-char v17, v14, v17

    add-int/lit8 v17, v17, -0x30

    add-int v16, v16, v17

    aput v16, v15, v6

    .line 523
    add-int/lit8 v10, v10, 0x4

    .line 518
    add-int/lit8 v6, v6, -0x1

    goto :goto_9

    .line 527
    :cond_1c
    add-int v15, v3, v12

    div-int/lit8 v15, v15, 0x4

    move-object/from16 v0, p0

    iput v15, v0, Lorg/apache/commons/math3/dfp/Dfp;->exp:I

    .line 529
    array-length v15, v14

    if-ge v10, v15, :cond_0

    .line 531
    aget-char v15, v14, v10

    add-int/lit8 v15, v15, -0x30

    mul-int/lit16 v15, v15, 0x3e8

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lorg/apache/commons/math3/dfp/Dfp;->round(I)I

    goto/16 :goto_0
.end method

.method private static compare(Lorg/apache/commons/math3/dfp/Dfp;Lorg/apache/commons/math3/dfp/Dfp;)I
    .locals 6
    .param p0, "a"    # Lorg/apache/commons/math3/dfp/Dfp;
    .param p1, "b"    # Lorg/apache/commons/math3/dfp/Dfp;

    .prologue
    const/4 v2, -0x1

    const/4 v1, 0x0

    const/4 v3, 0x1

    .line 948
    iget-object v4, p0, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    iget-object v5, p0, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    array-length v5, v5

    add-int/lit8 v5, v5, -0x1

    aget v4, v4, v5

    if-nez v4, :cond_1

    iget-object v4, p1, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    iget-object v5, p1, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    array-length v5, v5

    add-int/lit8 v5, v5, -0x1

    aget v4, v4, v5

    if-nez v4, :cond_1

    iget-byte v4, p0, Lorg/apache/commons/math3/dfp/Dfp;->nans:B

    if-nez v4, :cond_1

    iget-byte v4, p1, Lorg/apache/commons/math3/dfp/Dfp;->nans:B

    if-nez v4, :cond_1

    .line 996
    :cond_0
    :goto_0
    return v1

    .line 953
    :cond_1
    iget-byte v4, p0, Lorg/apache/commons/math3/dfp/Dfp;->sign:B

    iget-byte v5, p1, Lorg/apache/commons/math3/dfp/Dfp;->sign:B

    if-eq v4, v5, :cond_3

    .line 954
    iget-byte v1, p0, Lorg/apache/commons/math3/dfp/Dfp;->sign:B

    if-ne v1, v2, :cond_2

    move v1, v2

    .line 955
    goto :goto_0

    :cond_2
    move v1, v3

    .line 957
    goto :goto_0

    .line 962
    :cond_3
    iget-byte v2, p0, Lorg/apache/commons/math3/dfp/Dfp;->nans:B

    if-ne v2, v3, :cond_4

    iget-byte v2, p1, Lorg/apache/commons/math3/dfp/Dfp;->nans:B

    if-nez v2, :cond_4

    .line 963
    iget-byte v1, p0, Lorg/apache/commons/math3/dfp/Dfp;->sign:B

    goto :goto_0

    .line 966
    :cond_4
    iget-byte v2, p0, Lorg/apache/commons/math3/dfp/Dfp;->nans:B

    if-nez v2, :cond_5

    iget-byte v2, p1, Lorg/apache/commons/math3/dfp/Dfp;->nans:B

    if-ne v2, v3, :cond_5

    .line 967
    iget-byte v1, p1, Lorg/apache/commons/math3/dfp/Dfp;->sign:B

    neg-int v1, v1

    goto :goto_0

    .line 970
    :cond_5
    iget-byte v2, p0, Lorg/apache/commons/math3/dfp/Dfp;->nans:B

    if-ne v2, v3, :cond_6

    iget-byte v2, p1, Lorg/apache/commons/math3/dfp/Dfp;->nans:B

    if-eq v2, v3, :cond_0

    .line 975
    :cond_6
    iget-object v2, p1, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    iget-object v3, p1, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    array-length v3, v3

    add-int/lit8 v3, v3, -0x1

    aget v2, v2, v3

    if-eqz v2, :cond_8

    iget-object v2, p0, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    iget-object v3, p1, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    array-length v3, v3

    add-int/lit8 v3, v3, -0x1

    aget v2, v2, v3

    if-eqz v2, :cond_8

    .line 976
    iget v2, p0, Lorg/apache/commons/math3/dfp/Dfp;->exp:I

    iget v3, p1, Lorg/apache/commons/math3/dfp/Dfp;->exp:I

    if-ge v2, v3, :cond_7

    .line 977
    iget-byte v1, p0, Lorg/apache/commons/math3/dfp/Dfp;->sign:B

    neg-int v1, v1

    goto :goto_0

    .line 980
    :cond_7
    iget v2, p0, Lorg/apache/commons/math3/dfp/Dfp;->exp:I

    iget v3, p1, Lorg/apache/commons/math3/dfp/Dfp;->exp:I

    if-le v2, v3, :cond_8

    .line 981
    iget-byte v1, p0, Lorg/apache/commons/math3/dfp/Dfp;->sign:B

    goto :goto_0

    .line 986
    :cond_8
    iget-object v2, p0, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    array-length v2, v2

    add-int/lit8 v0, v2, -0x1

    .local v0, "i":I
    :goto_1
    if-ltz v0, :cond_0

    .line 987
    iget-object v2, p0, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    aget v2, v2, v0

    iget-object v3, p1, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    aget v3, v3, v0

    if-le v2, v3, :cond_9

    .line 988
    iget-byte v1, p0, Lorg/apache/commons/math3/dfp/Dfp;->sign:B

    goto :goto_0

    .line 991
    :cond_9
    iget-object v2, p0, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    aget v2, v2, v0

    iget-object v3, p1, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    aget v3, v3, v0

    if-ge v2, v3, :cond_a

    .line 992
    iget-byte v1, p0, Lorg/apache/commons/math3/dfp/Dfp;->sign:B

    neg-int v1, v1

    goto :goto_0

    .line 986
    :cond_a
    add-int/lit8 v0, v0, -0x1

    goto :goto_1
.end method

.method public static copysign(Lorg/apache/commons/math3/dfp/Dfp;Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;
    .locals 2
    .param p0, "x"    # Lorg/apache/commons/math3/dfp/Dfp;
    .param p1, "y"    # Lorg/apache/commons/math3/dfp/Dfp;

    .prologue
    .line 2332
    invoke-virtual {p0, p0}, Lorg/apache/commons/math3/dfp/Dfp;->newInstance(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    .line 2333
    .local v0, "result":Lorg/apache/commons/math3/dfp/Dfp;
    iget-byte v1, p1, Lorg/apache/commons/math3/dfp/Dfp;->sign:B

    iput-byte v1, v0, Lorg/apache/commons/math3/dfp/Dfp;->sign:B

    .line 2334
    return-object v0
.end method

.method private multiplyFast(I)Lorg/apache/commons/math3/dfp/Dfp;
    .locals 10
    .param p1, "x"    # I

    .prologue
    const/4 v7, 0x3

    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 1623
    invoke-virtual {p0, p0}, Lorg/apache/commons/math3/dfp/Dfp;->newInstance(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v4

    .line 1626
    .local v4, "result":Lorg/apache/commons/math3/dfp/Dfp;
    iget-byte v6, p0, Lorg/apache/commons/math3/dfp/Dfp;->nans:B

    if-eqz v6, :cond_2

    .line 1627
    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->isNaN()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1677
    .end local p0    # "this":Lorg/apache/commons/math3/dfp/Dfp;
    :goto_0
    return-object p0

    .line 1631
    .restart local p0    # "this":Lorg/apache/commons/math3/dfp/Dfp;
    :cond_0
    iget-byte v6, p0, Lorg/apache/commons/math3/dfp/Dfp;->nans:B

    if-ne v6, v8, :cond_1

    if-eqz p1, :cond_1

    .line 1632
    invoke-virtual {p0, p0}, Lorg/apache/commons/math3/dfp/Dfp;->newInstance(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v4

    move-object p0, v4

    .line 1633
    goto :goto_0

    .line 1636
    :cond_1
    iget-byte v6, p0, Lorg/apache/commons/math3/dfp/Dfp;->nans:B

    if-ne v6, v8, :cond_2

    if-nez p1, :cond_2

    .line 1637
    iget-object v6, p0, Lorg/apache/commons/math3/dfp/Dfp;->field:Lorg/apache/commons/math3/dfp/DfpField;

    invoke-virtual {v6, v8}, Lorg/apache/commons/math3/dfp/DfpField;->setIEEEFlagsBits(I)V

    .line 1638
    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->getZero()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v6

    invoke-virtual {p0, v6}, Lorg/apache/commons/math3/dfp/Dfp;->newInstance(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v4

    .line 1639
    iput-byte v7, v4, Lorg/apache/commons/math3/dfp/Dfp;->nans:B

    .line 1640
    const-string v6, "multiply"

    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->getZero()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v7

    invoke-virtual {p0, v7}, Lorg/apache/commons/math3/dfp/Dfp;->newInstance(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v7

    invoke-virtual {p0, v8, v6, v7, v4}, Lorg/apache/commons/math3/dfp/Dfp;->dotrap(ILjava/lang/String;Lorg/apache/commons/math3/dfp/Dfp;Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v4

    move-object p0, v4

    .line 1641
    goto :goto_0

    .line 1646
    :cond_2
    if-ltz p1, :cond_3

    const/16 v6, 0x2710

    if-lt p1, v6, :cond_4

    .line 1647
    :cond_3
    iget-object v6, p0, Lorg/apache/commons/math3/dfp/Dfp;->field:Lorg/apache/commons/math3/dfp/DfpField;

    invoke-virtual {v6, v8}, Lorg/apache/commons/math3/dfp/DfpField;->setIEEEFlagsBits(I)V

    .line 1648
    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->getZero()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v6

    invoke-virtual {p0, v6}, Lorg/apache/commons/math3/dfp/Dfp;->newInstance(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v4

    .line 1649
    iput-byte v7, v4, Lorg/apache/commons/math3/dfp/Dfp;->nans:B

    .line 1650
    const-string v6, "multiply"

    invoke-virtual {p0, v8, v6, v4, v4}, Lorg/apache/commons/math3/dfp/Dfp;->dotrap(ILjava/lang/String;Lorg/apache/commons/math3/dfp/Dfp;Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v4

    move-object p0, v4

    .line 1651
    goto :goto_0

    .line 1654
    :cond_4
    const/4 v5, 0x0

    .line 1655
    .local v5, "rh":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget-object v6, p0, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    array-length v6, v6

    if-ge v1, v6, :cond_5

    .line 1656
    iget-object v6, p0, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    aget v6, v6, v1

    mul-int/2addr v6, p1

    add-int v3, v6, v5

    .line 1657
    .local v3, "r":I
    div-int/lit16 v5, v3, 0x2710

    .line 1658
    iget-object v6, v4, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    mul-int/lit16 v7, v5, 0x2710

    sub-int v7, v3, v7

    aput v7, v6, v1

    .line 1655
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1661
    .end local v3    # "r":I
    :cond_5
    const/4 v2, 0x0

    .line 1662
    .local v2, "lostdigit":I
    if-eqz v5, :cond_6

    .line 1663
    iget-object v6, v4, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    aget v2, v6, v9

    .line 1664
    invoke-virtual {v4}, Lorg/apache/commons/math3/dfp/Dfp;->shiftRight()V

    .line 1665
    iget-object v6, v4, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    iget-object v7, p0, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    array-length v7, v7

    add-int/lit8 v7, v7, -0x1

    aput v5, v6, v7

    .line 1668
    :cond_6
    iget-object v6, v4, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    iget-object v7, p0, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    array-length v7, v7

    add-int/lit8 v7, v7, -0x1

    aget v6, v6, v7

    if-nez v6, :cond_7

    .line 1669
    iput v9, v4, Lorg/apache/commons/math3/dfp/Dfp;->exp:I

    .line 1672
    :cond_7
    invoke-virtual {v4, v2}, Lorg/apache/commons/math3/dfp/Dfp;->round(I)I

    move-result v0

    .line 1673
    .local v0, "excp":I
    if-eqz v0, :cond_8

    .line 1674
    const-string v6, "multiply"

    invoke-virtual {p0, v0, v6, v4, v4}, Lorg/apache/commons/math3/dfp/Dfp;->dotrap(ILjava/lang/String;Lorg/apache/commons/math3/dfp/Dfp;Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v4

    :cond_8
    move-object p0, v4

    .line 1677
    goto/16 :goto_0
.end method


# virtual methods
.method public bridge synthetic abs()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 97
    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->abs()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    return-object v0
.end method

.method public abs()Lorg/apache/commons/math3/dfp/Dfp;
    .locals 2

    .prologue
    .line 865
    invoke-virtual {p0, p0}, Lorg/apache/commons/math3/dfp/Dfp;->newInstance(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    .line 866
    .local v0, "result":Lorg/apache/commons/math3/dfp/Dfp;
    const/4 v1, 0x1

    iput-byte v1, v0, Lorg/apache/commons/math3/dfp/Dfp;->sign:B

    .line 867
    return-object v0
.end method

.method public bridge synthetic acos()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 97
    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->acos()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    return-object v0
.end method

.method public acos()Lorg/apache/commons/math3/dfp/Dfp;
    .locals 1

    .prologue
    .line 2718
    invoke-static {p0}, Lorg/apache/commons/math3/dfp/DfpMath;->acos(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic acosh()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 97
    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->acosh()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    return-object v0
.end method

.method public acosh()Lorg/apache/commons/math3/dfp/Dfp;
    .locals 2

    .prologue
    .line 2787
    invoke-virtual {p0, p0}, Lorg/apache/commons/math3/dfp/Dfp;->multiply(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->getOne()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/dfp/Dfp;->subtract(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/math3/dfp/Dfp;->sqrt()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/apache/commons/math3/dfp/Dfp;->add(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/math3/dfp/Dfp;->log()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic add(D)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # D

    .prologue
    .line 97
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/math3/dfp/Dfp;->add(D)Lorg/apache/commons/math3/dfp/Dfp;

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
    .line 97
    check-cast p1, Lorg/apache/commons/math3/dfp/Dfp;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/dfp/Dfp;->add(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    return-object v0
.end method

.method public add(D)Lorg/apache/commons/math3/dfp/Dfp;
    .locals 1
    .param p1, "a"    # D

    .prologue
    .line 2525
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/math3/dfp/Dfp;->newInstance(D)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/dfp/Dfp;->add(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    return-object v0
.end method

.method public add(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;
    .locals 20
    .param p1, "x"    # Lorg/apache/commons/math3/dfp/Dfp;

    .prologue
    .line 1261
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/dfp/Dfp;->field:Lorg/apache/commons/math3/dfp/DfpField;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lorg/apache/commons/math3/dfp/DfpField;->getRadixDigits()I

    move-result v17

    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/apache/commons/math3/dfp/Dfp;->field:Lorg/apache/commons/math3/dfp/DfpField;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lorg/apache/commons/math3/dfp/DfpField;->getRadixDigits()I

    move-result v18

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_1

    .line 1262
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/dfp/Dfp;->field:Lorg/apache/commons/math3/dfp/DfpField;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    invoke-virtual/range {v17 .. v18}, Lorg/apache/commons/math3/dfp/DfpField;->setIEEEFlagsBits(I)V

    .line 1263
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/dfp/Dfp;->getZero()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/dfp/Dfp;->newInstance(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v14

    .line 1264
    .local v14, "result":Lorg/apache/commons/math3/dfp/Dfp;
    const/16 v17, 0x3

    move/from16 v0, v17

    iput-byte v0, v14, Lorg/apache/commons/math3/dfp/Dfp;->nans:B

    .line 1265
    const/16 v17, 0x1

    const-string v18, "add"

    move-object/from16 v0, p0

    move/from16 v1, v17

    move-object/from16 v2, v18

    move-object/from16 v3, p1

    invoke-virtual {v0, v1, v2, v3, v14}, Lorg/apache/commons/math3/dfp/Dfp;->dotrap(ILjava/lang/String;Lorg/apache/commons/math3/dfp/Dfp;Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object p1

    .line 1400
    .end local v14    # "result":Lorg/apache/commons/math3/dfp/Dfp;
    .end local p1    # "x":Lorg/apache/commons/math3/dfp/Dfp;
    :cond_0
    :goto_0
    return-object p1

    .line 1269
    .restart local p1    # "x":Lorg/apache/commons/math3/dfp/Dfp;
    :cond_1
    move-object/from16 v0, p0

    iget-byte v0, v0, Lorg/apache/commons/math3/dfp/Dfp;->nans:B

    move/from16 v17, v0

    if-nez v17, :cond_2

    move-object/from16 v0, p1

    iget-byte v0, v0, Lorg/apache/commons/math3/dfp/Dfp;->nans:B

    move/from16 v17, v0

    if-eqz v17, :cond_7

    .line 1270
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/dfp/Dfp;->isNaN()Z

    move-result v17

    if-eqz v17, :cond_3

    move-object/from16 p1, p0

    .line 1271
    goto :goto_0

    .line 1274
    :cond_3
    invoke-virtual/range {p1 .. p1}, Lorg/apache/commons/math3/dfp/Dfp;->isNaN()Z

    move-result v17

    if-nez v17, :cond_0

    .line 1278
    move-object/from16 v0, p0

    iget-byte v0, v0, Lorg/apache/commons/math3/dfp/Dfp;->nans:B

    move/from16 v17, v0

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_4

    move-object/from16 v0, p1

    iget-byte v0, v0, Lorg/apache/commons/math3/dfp/Dfp;->nans:B

    move/from16 v17, v0

    if-nez v17, :cond_4

    move-object/from16 p1, p0

    .line 1279
    goto :goto_0

    .line 1282
    :cond_4
    move-object/from16 v0, p1

    iget-byte v0, v0, Lorg/apache/commons/math3/dfp/Dfp;->nans:B

    move/from16 v17, v0

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_5

    move-object/from16 v0, p0

    iget-byte v0, v0, Lorg/apache/commons/math3/dfp/Dfp;->nans:B

    move/from16 v17, v0

    if-eqz v17, :cond_0

    .line 1286
    :cond_5
    move-object/from16 v0, p1

    iget-byte v0, v0, Lorg/apache/commons/math3/dfp/Dfp;->nans:B

    move/from16 v17, v0

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_6

    move-object/from16 v0, p0

    iget-byte v0, v0, Lorg/apache/commons/math3/dfp/Dfp;->nans:B

    move/from16 v17, v0

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_6

    move-object/from16 v0, p0

    iget-byte v0, v0, Lorg/apache/commons/math3/dfp/Dfp;->sign:B

    move/from16 v17, v0

    move-object/from16 v0, p1

    iget-byte v0, v0, Lorg/apache/commons/math3/dfp/Dfp;->sign:B

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_0

    .line 1290
    :cond_6
    move-object/from16 v0, p1

    iget-byte v0, v0, Lorg/apache/commons/math3/dfp/Dfp;->nans:B

    move/from16 v17, v0

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_7

    move-object/from16 v0, p0

    iget-byte v0, v0, Lorg/apache/commons/math3/dfp/Dfp;->nans:B

    move/from16 v17, v0

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_7

    move-object/from16 v0, p0

    iget-byte v0, v0, Lorg/apache/commons/math3/dfp/Dfp;->sign:B

    move/from16 v17, v0

    move-object/from16 v0, p1

    iget-byte v0, v0, Lorg/apache/commons/math3/dfp/Dfp;->sign:B

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_7

    .line 1291
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/dfp/Dfp;->field:Lorg/apache/commons/math3/dfp/DfpField;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    invoke-virtual/range {v17 .. v18}, Lorg/apache/commons/math3/dfp/DfpField;->setIEEEFlagsBits(I)V

    .line 1292
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/dfp/Dfp;->getZero()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/dfp/Dfp;->newInstance(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v14

    .line 1293
    .restart local v14    # "result":Lorg/apache/commons/math3/dfp/Dfp;
    const/16 v17, 0x3

    move/from16 v0, v17

    iput-byte v0, v14, Lorg/apache/commons/math3/dfp/Dfp;->nans:B

    .line 1294
    const/16 v17, 0x1

    const-string v18, "add"

    move-object/from16 v0, p0

    move/from16 v1, v17

    move-object/from16 v2, v18

    move-object/from16 v3, p1

    invoke-virtual {v0, v1, v2, v3, v14}, Lorg/apache/commons/math3/dfp/Dfp;->dotrap(ILjava/lang/String;Lorg/apache/commons/math3/dfp/Dfp;Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v14

    move-object/from16 p1, v14

    .line 1295
    goto/16 :goto_0

    .line 1300
    .end local v14    # "result":Lorg/apache/commons/math3/dfp/Dfp;
    :cond_7
    move-object/from16 v0, p0

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/dfp/Dfp;->newInstance(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v4

    .line 1301
    .local v4, "a":Lorg/apache/commons/math3/dfp/Dfp;
    invoke-virtual/range {p0 .. p1}, Lorg/apache/commons/math3/dfp/Dfp;->newInstance(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v7

    .line 1304
    .local v7, "b":Lorg/apache/commons/math3/dfp/Dfp;
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/dfp/Dfp;->getZero()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/dfp/Dfp;->newInstance(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v14

    .line 1307
    .restart local v14    # "result":Lorg/apache/commons/math3/dfp/Dfp;
    iget-byte v6, v4, Lorg/apache/commons/math3/dfp/Dfp;->sign:B

    .line 1308
    .local v6, "asign":B
    iget-byte v9, v7, Lorg/apache/commons/math3/dfp/Dfp;->sign:B

    .line 1310
    .local v9, "bsign":B
    const/16 v17, 0x1

    move/from16 v0, v17

    iput-byte v0, v4, Lorg/apache/commons/math3/dfp/Dfp;->sign:B

    .line 1311
    const/16 v17, 0x1

    move/from16 v0, v17

    iput-byte v0, v7, Lorg/apache/commons/math3/dfp/Dfp;->sign:B

    .line 1314
    move/from16 v16, v9

    .line 1315
    .local v16, "rsign":B
    invoke-static {v4, v7}, Lorg/apache/commons/math3/dfp/Dfp;->compare(Lorg/apache/commons/math3/dfp/Dfp;Lorg/apache/commons/math3/dfp/Dfp;)I

    move-result v17

    if-lez v17, :cond_8

    .line 1316
    move/from16 v16, v6

    .line 1322
    :cond_8
    iget-object v0, v7, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v18, v0

    add-int/lit8 v18, v18, -0x1

    aget v17, v17, v18

    if-nez v17, :cond_9

    .line 1323
    iget v0, v4, Lorg/apache/commons/math3/dfp/Dfp;->exp:I

    move/from16 v17, v0

    move/from16 v0, v17

    iput v0, v7, Lorg/apache/commons/math3/dfp/Dfp;->exp:I

    .line 1326
    :cond_9
    iget-object v0, v4, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v18, v0

    add-int/lit8 v18, v18, -0x1

    aget v17, v17, v18

    if-nez v17, :cond_a

    .line 1327
    iget v0, v7, Lorg/apache/commons/math3/dfp/Dfp;->exp:I

    move/from16 v17, v0

    move/from16 v0, v17

    iput v0, v4, Lorg/apache/commons/math3/dfp/Dfp;->exp:I

    .line 1331
    :cond_a
    const/4 v5, 0x0

    .line 1332
    .local v5, "aextradigit":I
    const/4 v8, 0x0

    .line 1333
    .local v8, "bextradigit":I
    iget v0, v4, Lorg/apache/commons/math3/dfp/Dfp;->exp:I

    move/from16 v17, v0

    iget v0, v7, Lorg/apache/commons/math3/dfp/Dfp;->exp:I

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    if-ge v0, v1, :cond_c

    .line 1334
    iget v0, v7, Lorg/apache/commons/math3/dfp/Dfp;->exp:I

    move/from16 v17, v0

    move/from16 v0, v17

    invoke-virtual {v4, v0}, Lorg/apache/commons/math3/dfp/Dfp;->align(I)I

    move-result v5

    .line 1340
    :goto_1
    if-eq v6, v9, :cond_b

    .line 1341
    move/from16 v0, v16

    if-ne v6, v0, :cond_d

    .line 1342
    invoke-virtual {v7, v8}, Lorg/apache/commons/math3/dfp/Dfp;->complement(I)I

    move-result v8

    .line 1349
    :cond_b
    :goto_2
    const/4 v15, 0x0

    .line 1350
    .local v15, "rh":I
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    if-ge v11, v0, :cond_e

    .line 1351
    iget-object v0, v4, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    move-object/from16 v17, v0

    aget v17, v17, v11

    iget-object v0, v7, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    move-object/from16 v18, v0

    aget v18, v18, v11

    add-int v17, v17, v18

    add-int v13, v17, v15

    .line 1352
    .local v13, "r":I
    div-int/lit16 v15, v13, 0x2710

    .line 1353
    iget-object v0, v14, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    move-object/from16 v17, v0

    mul-int/lit16 v0, v15, 0x2710

    move/from16 v18, v0

    sub-int v18, v13, v18

    aput v18, v17, v11

    .line 1350
    add-int/lit8 v11, v11, 0x1

    goto :goto_3

    .line 1336
    .end local v11    # "i":I
    .end local v13    # "r":I
    .end local v15    # "rh":I
    :cond_c
    iget v0, v4, Lorg/apache/commons/math3/dfp/Dfp;->exp:I

    move/from16 v17, v0

    move/from16 v0, v17

    invoke-virtual {v7, v0}, Lorg/apache/commons/math3/dfp/Dfp;->align(I)I

    move-result v8

    goto :goto_1

    .line 1344
    :cond_d
    invoke-virtual {v4, v5}, Lorg/apache/commons/math3/dfp/Dfp;->complement(I)I

    move-result v5

    goto :goto_2

    .line 1355
    .restart local v11    # "i":I
    .restart local v15    # "rh":I
    :cond_e
    iget v0, v4, Lorg/apache/commons/math3/dfp/Dfp;->exp:I

    move/from16 v17, v0

    move/from16 v0, v17

    iput v0, v14, Lorg/apache/commons/math3/dfp/Dfp;->exp:I

    .line 1356
    move/from16 v0, v16

    iput-byte v0, v14, Lorg/apache/commons/math3/dfp/Dfp;->sign:B

    .line 1361
    if-eqz v15, :cond_f

    if-ne v6, v9, :cond_f

    .line 1362
    iget-object v0, v14, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    move-object/from16 v17, v0

    const/16 v18, 0x0

    aget v12, v17, v18

    .line 1363
    .local v12, "lostdigit":I
    invoke-virtual {v14}, Lorg/apache/commons/math3/dfp/Dfp;->shiftRight()V

    .line 1364
    iget-object v0, v14, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v18, v0

    add-int/lit8 v18, v18, -0x1

    aput v15, v17, v18

    .line 1365
    invoke-virtual {v14, v12}, Lorg/apache/commons/math3/dfp/Dfp;->round(I)I

    move-result v10

    .line 1366
    .local v10, "excp":I
    if-eqz v10, :cond_f

    .line 1367
    const-string v17, "add"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, p1

    invoke-virtual {v0, v10, v1, v2, v14}, Lorg/apache/commons/math3/dfp/Dfp;->dotrap(ILjava/lang/String;Lorg/apache/commons/math3/dfp/Dfp;Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v14

    .line 1372
    .end local v10    # "excp":I
    .end local v12    # "lostdigit":I
    :cond_f
    const/4 v11, 0x0

    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    if-ge v11, v0, :cond_10

    .line 1373
    iget-object v0, v14, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v18, v0

    add-int/lit8 v18, v18, -0x1

    aget v17, v17, v18

    if-eqz v17, :cond_13

    .line 1385
    :cond_10
    iget-object v0, v14, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v18, v0

    add-int/lit8 v18, v18, -0x1

    aget v17, v17, v18

    if-nez v17, :cond_11

    .line 1386
    const/16 v17, 0x0

    move/from16 v0, v17

    iput v0, v14, Lorg/apache/commons/math3/dfp/Dfp;->exp:I

    .line 1388
    if-eq v6, v9, :cond_11

    .line 1390
    const/16 v17, 0x1

    move/from16 v0, v17

    iput-byte v0, v14, Lorg/apache/commons/math3/dfp/Dfp;->sign:B

    .line 1395
    :cond_11
    add-int v17, v5, v8

    move/from16 v0, v17

    invoke-virtual {v14, v0}, Lorg/apache/commons/math3/dfp/Dfp;->round(I)I

    move-result v10

    .line 1396
    .restart local v10    # "excp":I
    if-eqz v10, :cond_12

    .line 1397
    const-string v17, "add"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, p1

    invoke-virtual {v0, v10, v1, v2, v14}, Lorg/apache/commons/math3/dfp/Dfp;->dotrap(ILjava/lang/String;Lorg/apache/commons/math3/dfp/Dfp;Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v14

    :cond_12
    move-object/from16 p1, v14

    .line 1400
    goto/16 :goto_0

    .line 1376
    .end local v10    # "excp":I
    :cond_13
    invoke-virtual {v14}, Lorg/apache/commons/math3/dfp/Dfp;->shiftLeft()V

    .line 1377
    if-nez v11, :cond_14

    .line 1378
    iget-object v0, v14, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    move-object/from16 v17, v0

    const/16 v18, 0x0

    add-int v19, v5, v8

    aput v19, v17, v18

    .line 1379
    const/4 v5, 0x0

    .line 1380
    const/4 v8, 0x0

    .line 1372
    :cond_14
    add-int/lit8 v11, v11, 0x1

    goto :goto_4
.end method

.method protected align(I)I
    .locals 8
    .param p1, "e"    # I

    .prologue
    const/16 v7, 0x10

    const/4 v5, 0x0

    .line 698
    const/4 v4, 0x0

    .line 699
    .local v4, "lostdigit":I
    const/4 v3, 0x0

    .line 701
    .local v3, "inexact":Z
    iget v6, p0, Lorg/apache/commons/math3/dfp/Dfp;->exp:I

    sub-int v1, v6, p1

    .line 703
    .local v1, "diff":I
    move v0, v1

    .line 704
    .local v0, "adiff":I
    if-gez v0, :cond_0

    .line 705
    neg-int v0, v0

    .line 708
    :cond_0
    if-nez v1, :cond_1

    .line 746
    :goto_0
    return v5

    .line 712
    :cond_1
    iget-object v6, p0, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    array-length v6, v6

    add-int/lit8 v6, v6, 0x1

    if-le v0, v6, :cond_2

    .line 714
    iget-object v6, p0, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    invoke-static {v6, v5}, Ljava/util/Arrays;->fill([II)V

    .line 715
    iput p1, p0, Lorg/apache/commons/math3/dfp/Dfp;->exp:I

    .line 717
    iget-object v6, p0, Lorg/apache/commons/math3/dfp/Dfp;->field:Lorg/apache/commons/math3/dfp/DfpField;

    invoke-virtual {v6, v7}, Lorg/apache/commons/math3/dfp/DfpField;->setIEEEFlagsBits(I)V

    .line 718
    const-string v6, "align"

    invoke-virtual {p0, v7, v6, p0, p0}, Lorg/apache/commons/math3/dfp/Dfp;->dotrap(ILjava/lang/String;Lorg/apache/commons/math3/dfp/Dfp;Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    goto :goto_0

    .line 723
    :cond_2
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v0, :cond_5

    .line 724
    if-gez v1, :cond_4

    .line 729
    if-eqz v4, :cond_3

    .line 730
    const/4 v3, 0x1

    .line 733
    :cond_3
    iget-object v6, p0, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    aget v4, v6, v5

    .line 735
    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->shiftRight()V

    .line 723
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 737
    :cond_4
    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->shiftLeft()V

    goto :goto_2

    .line 741
    :cond_5
    if-eqz v3, :cond_6

    .line 742
    iget-object v5, p0, Lorg/apache/commons/math3/dfp/Dfp;->field:Lorg/apache/commons/math3/dfp/DfpField;

    invoke-virtual {v5, v7}, Lorg/apache/commons/math3/dfp/DfpField;->setIEEEFlagsBits(I)V

    .line 743
    const-string v5, "align"

    invoke-virtual {p0, v7, v5, p0, p0}, Lorg/apache/commons/math3/dfp/Dfp;->dotrap(ILjava/lang/String;Lorg/apache/commons/math3/dfp/Dfp;Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    :cond_6
    move v5, v4

    .line 746
    goto :goto_0
.end method

.method public bridge synthetic asin()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 97
    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->asin()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    return-object v0
.end method

.method public asin()Lorg/apache/commons/math3/dfp/Dfp;
    .locals 1

    .prologue
    .line 2725
    invoke-static {p0}, Lorg/apache/commons/math3/dfp/DfpMath;->asin(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic asinh()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 97
    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->asinh()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    return-object v0
.end method

.method public asinh()Lorg/apache/commons/math3/dfp/Dfp;
    .locals 2

    .prologue
    .line 2794
    invoke-virtual {p0, p0}, Lorg/apache/commons/math3/dfp/Dfp;->multiply(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->getOne()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/dfp/Dfp;->add(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/math3/dfp/Dfp;->sqrt()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/apache/commons/math3/dfp/Dfp;->add(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/math3/dfp/Dfp;->log()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic atan()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 97
    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->atan()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    return-object v0
.end method

.method public atan()Lorg/apache/commons/math3/dfp/Dfp;
    .locals 1

    .prologue
    .line 2732
    invoke-static {p0}, Lorg/apache/commons/math3/dfp/DfpMath;->atan(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

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
    .line 97
    check-cast p1, Lorg/apache/commons/math3/dfp/Dfp;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/dfp/Dfp;->atan2(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    return-object v0
.end method

.method public atan2(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;
    .locals 6
    .param p1, "x"    # Lorg/apache/commons/math3/dfp/Dfp;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    .prologue
    .line 2742
    invoke-virtual {p1, p1}, Lorg/apache/commons/math3/dfp/Dfp;->multiply(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v3

    invoke-virtual {p0, p0}, Lorg/apache/commons/math3/dfp/Dfp;->multiply(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/apache/commons/math3/dfp/Dfp;->add(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v3

    invoke-virtual {v3}, Lorg/apache/commons/math3/dfp/Dfp;->sqrt()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v1

    .line 2744
    .local v1, "r":Lorg/apache/commons/math3/dfp/Dfp;
    iget-byte v3, p1, Lorg/apache/commons/math3/dfp/Dfp;->sign:B

    if-ltz v3, :cond_0

    .line 2747
    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->getTwo()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v3

    invoke-virtual {v1, p1}, Lorg/apache/commons/math3/dfp/Dfp;->add(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v4

    invoke-virtual {p0, v4}, Lorg/apache/commons/math3/dfp/Dfp;->divide(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v4

    invoke-virtual {v4}, Lorg/apache/commons/math3/dfp/Dfp;->atan()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/apache/commons/math3/dfp/Dfp;->multiply(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v3

    .line 2754
    :goto_0
    return-object v3

    .line 2752
    :cond_0
    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->getTwo()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v3

    invoke-virtual {v1, p1}, Lorg/apache/commons/math3/dfp/Dfp;->subtract(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v4

    invoke-virtual {p0, v4}, Lorg/apache/commons/math3/dfp/Dfp;->divide(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v4

    invoke-virtual {v4}, Lorg/apache/commons/math3/dfp/Dfp;->atan()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/apache/commons/math3/dfp/Dfp;->multiply(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v2

    .line 2753
    .local v2, "tmp":Lorg/apache/commons/math3/dfp/Dfp;
    iget-byte v3, v2, Lorg/apache/commons/math3/dfp/Dfp;->sign:B

    if-gtz v3, :cond_1

    const-wide v4, -0x3ff6de04abbbd2e8L    # -3.141592653589793

    :goto_1
    invoke-virtual {p0, v4, v5}, Lorg/apache/commons/math3/dfp/Dfp;->newInstance(D)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    .line 2754
    .local v0, "pmPi":Lorg/apache/commons/math3/dfp/Dfp;
    invoke-virtual {v0, v2}, Lorg/apache/commons/math3/dfp/Dfp;->subtract(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v3

    goto :goto_0

    .line 2753
    .end local v0    # "pmPi":Lorg/apache/commons/math3/dfp/Dfp;
    :cond_1
    const-wide v4, 0x400921fb54442d18L    # Math.PI

    goto :goto_1
.end method

.method public bridge synthetic atanh()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 97
    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->atanh()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    return-object v0
.end method

.method public atanh()Lorg/apache/commons/math3/dfp/Dfp;
    .locals 2

    .prologue
    .line 2801
    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->getOne()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/apache/commons/math3/dfp/Dfp;->add(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->getOne()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v1

    invoke-virtual {v1, p0}, Lorg/apache/commons/math3/dfp/Dfp;->subtract(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/dfp/Dfp;->divide(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/math3/dfp/Dfp;->log()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/dfp/Dfp;->divide(I)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic cbrt()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 97
    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->cbrt()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    return-object v0
.end method

.method public cbrt()Lorg/apache/commons/math3/dfp/Dfp;
    .locals 1

    .prologue
    .line 2613
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/dfp/Dfp;->rootN(I)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic ceil()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 97
    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->ceil()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    return-object v0
.end method

.method public ceil()Lorg/apache/commons/math3/dfp/Dfp;
    .locals 1

    .prologue
    .line 1025
    sget-object v0, Lorg/apache/commons/math3/dfp/DfpField$RoundingMode;->ROUND_CEIL:Lorg/apache/commons/math3/dfp/DfpField$RoundingMode;

    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/dfp/Dfp;->trunc(Lorg/apache/commons/math3/dfp/DfpField$RoundingMode;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    return-object v0
.end method

.method public classify()I
    .locals 1

    .prologue
    .line 2322
    iget-byte v0, p0, Lorg/apache/commons/math3/dfp/Dfp;->nans:B

    return v0
.end method

.method protected complement(I)I
    .locals 5
    .param p1, "extra"    # I

    .prologue
    .line 1238
    rsub-int p1, p1, 0x2710

    .line 1239
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v3, p0, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    array-length v3, v3

    if-ge v0, v3, :cond_0

    .line 1240
    iget-object v3, p0, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    iget-object v4, p0, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    aget v4, v4, v0

    rsub-int v4, v4, 0x2710

    add-int/lit8 v4, v4, -0x1

    aput v4, v3, v0

    .line 1239
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1243
    :cond_0
    div-int/lit16 v2, p1, 0x2710

    .line 1244
    .local v2, "rh":I
    mul-int/lit16 v3, v2, 0x2710

    sub-int/2addr p1, v3

    .line 1245
    const/4 v0, 0x0

    :goto_1
    iget-object v3, p0, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    array-length v3, v3

    if-ge v0, v3, :cond_1

    .line 1246
    iget-object v3, p0, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    aget v3, v3, v0

    add-int v1, v3, v2

    .line 1247
    .local v1, "r":I
    div-int/lit16 v2, v1, 0x2710

    .line 1248
    iget-object v3, p0, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    mul-int/lit16 v4, v2, 0x2710

    sub-int v4, v1, v4

    aput v4, v3, v0

    .line 1245
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1251
    .end local v1    # "r":I
    :cond_1
    return p1
.end method

.method public bridge synthetic copySign(D)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # D

    .prologue
    .line 97
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/math3/dfp/Dfp;->copySign(D)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic copySign(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 97
    check-cast p1, Lorg/apache/commons/math3/dfp/Dfp;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/dfp/Dfp;->copySign(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    return-object v0
.end method

.method public copySign(D)Lorg/apache/commons/math3/dfp/Dfp;
    .locals 7
    .param p1, "s"    # D

    .prologue
    const-wide/16 v4, 0x0

    .line 2588
    invoke-static {p1, p2}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v0

    .line 2589
    .local v0, "sb":J
    iget-byte v2, p0, Lorg/apache/commons/math3/dfp/Dfp;->sign:B

    if-ltz v2, :cond_0

    cmp-long v2, v0, v4

    if-gez v2, :cond_1

    :cond_0
    iget-byte v2, p0, Lorg/apache/commons/math3/dfp/Dfp;->sign:B

    if-gez v2, :cond_2

    cmp-long v2, v0, v4

    if-gez v2, :cond_2

    .line 2592
    .end local p0    # "this":Lorg/apache/commons/math3/dfp/Dfp;
    :cond_1
    :goto_0
    return-object p0

    .restart local p0    # "this":Lorg/apache/commons/math3/dfp/Dfp;
    :cond_2
    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->negate()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object p0

    goto :goto_0
.end method

.method public copySign(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;
    .locals 1
    .param p1, "s"    # Lorg/apache/commons/math3/dfp/Dfp;

    .prologue
    .line 2578
    iget-byte v0, p0, Lorg/apache/commons/math3/dfp/Dfp;->sign:B

    if-ltz v0, :cond_0

    iget-byte v0, p1, Lorg/apache/commons/math3/dfp/Dfp;->sign:B

    if-gez v0, :cond_1

    :cond_0
    iget-byte v0, p0, Lorg/apache/commons/math3/dfp/Dfp;->sign:B

    if-gez v0, :cond_2

    iget-byte v0, p1, Lorg/apache/commons/math3/dfp/Dfp;->sign:B

    if-gez v0, :cond_2

    .line 2581
    .end local p0    # "this":Lorg/apache/commons/math3/dfp/Dfp;
    :cond_1
    :goto_0
    return-object p0

    .restart local p0    # "this":Lorg/apache/commons/math3/dfp/Dfp;
    :cond_2
    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->negate()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object p0

    goto :goto_0
.end method

.method public bridge synthetic cos()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 97
    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->cos()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    return-object v0
.end method

.method public cos()Lorg/apache/commons/math3/dfp/Dfp;
    .locals 1

    .prologue
    .line 2697
    invoke-static {p0}, Lorg/apache/commons/math3/dfp/DfpMath;->cos(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic cosh()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 97
    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->cosh()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    return-object v0
.end method

.method public cosh()Lorg/apache/commons/math3/dfp/Dfp;
    .locals 2

    .prologue
    .line 2764
    invoke-static {p0}, Lorg/apache/commons/math3/dfp/DfpMath;->exp(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->negate()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/commons/math3/dfp/DfpMath;->exp(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/dfp/Dfp;->add(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/dfp/Dfp;->divide(I)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    return-object v0
.end method

.method protected dfp2sci()Ljava/lang/String;
    .locals 13

    .prologue
    .line 2087
    iget-object v10, p0, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    array-length v10, v10

    mul-int/lit8 v10, v10, 0x4

    new-array v8, v10, [C

    .line 2088
    .local v8, "rawdigits":[C
    iget-object v10, p0, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    array-length v10, v10

    mul-int/lit8 v10, v10, 0x4

    add-int/lit8 v10, v10, 0x14

    new-array v3, v10, [C

    .line 2096
    .local v3, "outputbuffer":[C
    const/4 v4, 0x0

    .line 2097
    .local v4, "p":I
    iget-object v10, p0, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    array-length v10, v10

    add-int/lit8 v2, v10, -0x1

    .local v2, "i":I
    move v5, v4

    .end local v4    # "p":I
    .local v5, "p":I
    :goto_0
    if-ltz v2, :cond_0

    .line 2098
    add-int/lit8 v4, v5, 0x1

    .end local v5    # "p":I
    .restart local v4    # "p":I
    iget-object v10, p0, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    aget v10, v10, v2

    div-int/lit16 v10, v10, 0x3e8

    add-int/lit8 v10, v10, 0x30

    int-to-char v10, v10

    aput-char v10, v8, v5

    .line 2099
    add-int/lit8 v5, v4, 0x1

    .end local v4    # "p":I
    .restart local v5    # "p":I
    iget-object v10, p0, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    aget v10, v10, v2

    div-int/lit8 v10, v10, 0x64

    rem-int/lit8 v10, v10, 0xa

    add-int/lit8 v10, v10, 0x30

    int-to-char v10, v10

    aput-char v10, v8, v4

    .line 2100
    add-int/lit8 v4, v5, 0x1

    .end local v5    # "p":I
    .restart local v4    # "p":I
    iget-object v10, p0, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    aget v10, v10, v2

    div-int/lit8 v10, v10, 0xa

    rem-int/lit8 v10, v10, 0xa

    add-int/lit8 v10, v10, 0x30

    int-to-char v10, v10

    aput-char v10, v8, v5

    .line 2101
    add-int/lit8 v5, v4, 0x1

    .end local v4    # "p":I
    .restart local v5    # "p":I
    iget-object v10, p0, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    aget v10, v10, v2

    rem-int/lit8 v10, v10, 0xa

    add-int/lit8 v10, v10, 0x30

    int-to-char v10, v10

    aput-char v10, v8, v4

    .line 2097
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 2105
    :cond_0
    const/4 v4, 0x0

    .end local v5    # "p":I
    .restart local v4    # "p":I
    :goto_1
    array-length v10, v8

    if-ge v4, v10, :cond_1

    .line 2106
    aget-char v10, v8, v4

    const/16 v11, 0x30

    if-eq v10, v11, :cond_3

    .line 2110
    :cond_1
    move v9, v4

    .line 2113
    .local v9, "shf":I
    const/4 v6, 0x0

    .line 2114
    .local v6, "q":I
    iget-byte v10, p0, Lorg/apache/commons/math3/dfp/Dfp;->sign:B

    const/4 v11, -0x1

    if-ne v10, v11, :cond_2

    .line 2115
    add-int/lit8 v7, v6, 0x1

    .end local v6    # "q":I
    .local v7, "q":I
    const/16 v10, 0x2d

    aput-char v10, v3, v6

    move v6, v7

    .line 2118
    .end local v7    # "q":I
    .restart local v6    # "q":I
    :cond_2
    array-length v10, v8

    if-eq v4, v10, :cond_4

    .line 2120
    add-int/lit8 v7, v6, 0x1

    .end local v6    # "q":I
    .restart local v7    # "q":I
    add-int/lit8 v5, v4, 0x1

    .end local v4    # "p":I
    .restart local v5    # "p":I
    aget-char v10, v8, v4

    aput-char v10, v3, v6

    .line 2121
    add-int/lit8 v6, v7, 0x1

    .end local v7    # "q":I
    .restart local v6    # "q":I
    const/16 v10, 0x2e

    aput-char v10, v3, v7

    move v4, v5

    .line 2123
    .end local v5    # "p":I
    .restart local v4    # "p":I
    :goto_2
    array-length v10, v8

    if-ge v4, v10, :cond_5

    .line 2124
    add-int/lit8 v7, v6, 0x1

    .end local v6    # "q":I
    .restart local v7    # "q":I
    add-int/lit8 v5, v4, 0x1

    .end local v4    # "p":I
    .restart local v5    # "p":I
    aget-char v10, v8, v4

    aput-char v10, v3, v6

    move v6, v7

    .end local v7    # "q":I
    .restart local v6    # "q":I
    move v4, v5

    .end local v5    # "p":I
    .restart local v4    # "p":I
    goto :goto_2

    .line 2105
    .end local v6    # "q":I
    .end local v9    # "shf":I
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 2127
    .restart local v6    # "q":I
    .restart local v9    # "shf":I
    :cond_4
    add-int/lit8 v7, v6, 0x1

    .end local v6    # "q":I
    .restart local v7    # "q":I
    const/16 v10, 0x30

    aput-char v10, v3, v6

    .line 2128
    add-int/lit8 v6, v7, 0x1

    .end local v7    # "q":I
    .restart local v6    # "q":I
    const/16 v10, 0x2e

    aput-char v10, v3, v7

    .line 2129
    add-int/lit8 v7, v6, 0x1

    .end local v6    # "q":I
    .restart local v7    # "q":I
    const/16 v10, 0x30

    aput-char v10, v3, v6

    .line 2130
    add-int/lit8 v6, v7, 0x1

    .end local v7    # "q":I
    .restart local v6    # "q":I
    const/16 v10, 0x65

    aput-char v10, v3, v7

    .line 2131
    add-int/lit8 v7, v6, 0x1

    .end local v6    # "q":I
    .restart local v7    # "q":I
    const/16 v10, 0x30

    aput-char v10, v3, v6

    .line 2132
    new-instance v10, Ljava/lang/String;

    const/4 v11, 0x0

    const/4 v12, 0x5

    invoke-direct {v10, v3, v11, v12}, Ljava/lang/String;-><init>([CII)V

    move v6, v7

    .line 2160
    .end local v7    # "q":I
    .restart local v6    # "q":I
    :goto_3
    return-object v10

    .line 2135
    :cond_5
    add-int/lit8 v7, v6, 0x1

    .end local v6    # "q":I
    .restart local v7    # "q":I
    const/16 v10, 0x65

    aput-char v10, v3, v6

    .line 2139
    iget v10, p0, Lorg/apache/commons/math3/dfp/Dfp;->exp:I

    mul-int/lit8 v10, v10, 0x4

    sub-int/2addr v10, v9

    add-int/lit8 v1, v10, -0x1

    .line 2140
    .local v1, "e":I
    move v0, v1

    .line 2141
    .local v0, "ae":I
    if-gez v1, :cond_6

    .line 2142
    neg-int v0, v1

    .line 2146
    :cond_6
    const v4, 0x3b9aca00

    :goto_4
    if-le v4, v0, :cond_7

    div-int/lit8 v4, v4, 0xa

    goto :goto_4

    .line 2150
    :cond_7
    if-gez v1, :cond_8

    .line 2151
    add-int/lit8 v6, v7, 0x1

    .end local v7    # "q":I
    .restart local v6    # "q":I
    const/16 v10, 0x2d

    aput-char v10, v3, v7

    move v7, v6

    .line 2154
    .end local v6    # "q":I
    .restart local v7    # "q":I
    :cond_8
    :goto_5
    if-lez v4, :cond_9

    .line 2155
    add-int/lit8 v6, v7, 0x1

    .end local v7    # "q":I
    .restart local v6    # "q":I
    div-int v10, v0, v4

    add-int/lit8 v10, v10, 0x30

    int-to-char v10, v10

    aput-char v10, v3, v7

    .line 2156
    rem-int/2addr v0, v4

    .line 2157
    div-int/lit8 v4, v4, 0xa

    move v7, v6

    .end local v6    # "q":I
    .restart local v7    # "q":I
    goto :goto_5

    .line 2160
    :cond_9
    new-instance v10, Ljava/lang/String;

    const/4 v11, 0x0

    invoke-direct {v10, v3, v11, v7}, Ljava/lang/String;-><init>([CII)V

    move v6, v7

    .end local v7    # "q":I
    .restart local v6    # "q":I
    goto :goto_3
.end method

.method protected dfp2string()Ljava/lang/String;
    .locals 11

    .prologue
    const/16 v10, 0x2e

    const/16 v9, 0x30

    .line 2168
    iget-object v7, p0, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    array-length v7, v7

    mul-int/lit8 v7, v7, 0x4

    add-int/lit8 v7, v7, 0x14

    new-array v0, v7, [C

    .line 2169
    .local v0, "buffer":[C
    const/4 v3, 0x1

    .line 2171
    .local v3, "p":I
    iget v1, p0, Lorg/apache/commons/math3/dfp/Dfp;->exp:I

    .line 2172
    .local v1, "e":I
    const/4 v5, 0x0

    .line 2174
    .local v5, "pointInserted":Z
    const/4 v7, 0x0

    const/16 v8, 0x20

    aput-char v8, v0, v7

    .line 2176
    if-gtz v1, :cond_9

    .line 2177
    add-int/lit8 v4, v3, 0x1

    .end local v3    # "p":I
    .local v4, "p":I
    aput-char v9, v0, v3

    .line 2178
    add-int/lit8 v3, v4, 0x1

    .end local v4    # "p":I
    .restart local v3    # "p":I
    aput-char v10, v0, v4

    .line 2179
    const/4 v5, 0x1

    move v4, v3

    .line 2182
    .end local v3    # "p":I
    .restart local v4    # "p":I
    :goto_0
    if-gez v1, :cond_0

    .line 2183
    add-int/lit8 v3, v4, 0x1

    .end local v4    # "p":I
    .restart local v3    # "p":I
    aput-char v9, v0, v4

    .line 2184
    add-int/lit8 v4, v3, 0x1

    .end local v3    # "p":I
    .restart local v4    # "p":I
    aput-char v9, v0, v3

    .line 2185
    add-int/lit8 v3, v4, 0x1

    .end local v4    # "p":I
    .restart local v3    # "p":I
    aput-char v9, v0, v4

    .line 2186
    add-int/lit8 v4, v3, 0x1

    .end local v3    # "p":I
    .restart local v4    # "p":I
    aput-char v9, v0, v3

    .line 2187
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2190
    :cond_0
    iget-object v7, p0, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    array-length v7, v7

    add-int/lit8 v2, v7, -0x1

    .local v2, "i":I
    :goto_1
    if-ltz v2, :cond_1

    .line 2191
    add-int/lit8 v3, v4, 0x1

    .end local v4    # "p":I
    .restart local v3    # "p":I
    iget-object v7, p0, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    aget v7, v7, v2

    div-int/lit16 v7, v7, 0x3e8

    add-int/lit8 v7, v7, 0x30

    int-to-char v7, v7

    aput-char v7, v0, v4

    .line 2192
    add-int/lit8 v4, v3, 0x1

    .end local v3    # "p":I
    .restart local v4    # "p":I
    iget-object v7, p0, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    aget v7, v7, v2

    div-int/lit8 v7, v7, 0x64

    rem-int/lit8 v7, v7, 0xa

    add-int/lit8 v7, v7, 0x30

    int-to-char v7, v7

    aput-char v7, v0, v3

    .line 2193
    add-int/lit8 v3, v4, 0x1

    .end local v4    # "p":I
    .restart local v3    # "p":I
    iget-object v7, p0, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    aget v7, v7, v2

    div-int/lit8 v7, v7, 0xa

    rem-int/lit8 v7, v7, 0xa

    add-int/lit8 v7, v7, 0x30

    int-to-char v7, v7

    aput-char v7, v0, v4

    .line 2194
    add-int/lit8 v4, v3, 0x1

    .end local v3    # "p":I
    .restart local v4    # "p":I
    iget-object v7, p0, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    aget v7, v7, v2

    rem-int/lit8 v7, v7, 0xa

    add-int/lit8 v7, v7, 0x30

    int-to-char v7, v7

    aput-char v7, v0, v3

    .line 2195
    add-int/lit8 v1, v1, -0x1

    if-nez v1, :cond_8

    .line 2196
    add-int/lit8 v3, v4, 0x1

    .end local v4    # "p":I
    .restart local v3    # "p":I
    aput-char v10, v0, v4

    .line 2197
    const/4 v5, 0x1

    .line 2190
    :goto_2
    add-int/lit8 v2, v2, -0x1

    move v4, v3

    .end local v3    # "p":I
    .restart local v4    # "p":I
    goto :goto_1

    .line 2201
    :cond_1
    :goto_3
    if-lez v1, :cond_2

    .line 2202
    add-int/lit8 v3, v4, 0x1

    .end local v4    # "p":I
    .restart local v3    # "p":I
    aput-char v9, v0, v4

    .line 2203
    add-int/lit8 v4, v3, 0x1

    .end local v3    # "p":I
    .restart local v4    # "p":I
    aput-char v9, v0, v3

    .line 2204
    add-int/lit8 v3, v4, 0x1

    .end local v4    # "p":I
    .restart local v3    # "p":I
    aput-char v9, v0, v4

    .line 2205
    add-int/lit8 v4, v3, 0x1

    .end local v3    # "p":I
    .restart local v4    # "p":I
    aput-char v9, v0, v3

    .line 2206
    add-int/lit8 v1, v1, -0x1

    goto :goto_3

    .line 2209
    :cond_2
    if-nez v5, :cond_7

    .line 2211
    add-int/lit8 v3, v4, 0x1

    .end local v4    # "p":I
    .restart local v3    # "p":I
    aput-char v10, v0, v4

    .line 2215
    :goto_4
    const/4 v6, 0x1

    .line 2216
    .local v6, "q":I
    :goto_5
    aget-char v7, v0, v6

    if-ne v7, v9, :cond_3

    .line 2217
    add-int/lit8 v6, v6, 0x1

    goto :goto_5

    .line 2219
    :cond_3
    aget-char v7, v0, v6

    if-ne v7, v10, :cond_4

    .line 2220
    add-int/lit8 v6, v6, -0x1

    .line 2224
    :cond_4
    :goto_6
    add-int/lit8 v7, v3, -0x1

    aget-char v7, v0, v7

    if-ne v7, v9, :cond_5

    .line 2225
    add-int/lit8 v3, v3, -0x1

    goto :goto_6

    .line 2229
    :cond_5
    iget-byte v7, p0, Lorg/apache/commons/math3/dfp/Dfp;->sign:B

    if-gez v7, :cond_6

    .line 2230
    add-int/lit8 v6, v6, -0x1

    const/16 v7, 0x2d

    aput-char v7, v0, v6

    .line 2233
    :cond_6
    new-instance v7, Ljava/lang/String;

    sub-int v8, v3, v6

    invoke-direct {v7, v0, v6, v8}, Ljava/lang/String;-><init>([CII)V

    return-object v7

    .end local v3    # "p":I
    .end local v6    # "q":I
    .restart local v4    # "p":I
    :cond_7
    move v3, v4

    .end local v4    # "p":I
    .restart local v3    # "p":I
    goto :goto_4

    .end local v3    # "p":I
    .restart local v4    # "p":I
    :cond_8
    move v3, v4

    .end local v4    # "p":I
    .restart local v3    # "p":I
    goto :goto_2

    .end local v2    # "i":I
    :cond_9
    move v4, v3

    .end local v3    # "p":I
    .restart local v4    # "p":I
    goto/16 :goto_0
.end method

.method public bridge synthetic divide(D)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # D

    .prologue
    .line 97
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/math3/dfp/Dfp;->divide(D)Lorg/apache/commons/math3/dfp/Dfp;

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
    .line 97
    check-cast p1, Lorg/apache/commons/math3/dfp/Dfp;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/dfp/Dfp;->divide(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    return-object v0
.end method

.method public divide(D)Lorg/apache/commons/math3/dfp/Dfp;
    .locals 1
    .param p1, "a"    # D

    .prologue
    .line 2546
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/math3/dfp/Dfp;->newInstance(D)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/dfp/Dfp;->divide(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    return-object v0
.end method

.method public divide(I)Lorg/apache/commons/math3/dfp/Dfp;
    .locals 9
    .param p1, "divisor"    # I

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    .line 1902
    iget-byte v6, p0, Lorg/apache/commons/math3/dfp/Dfp;->nans:B

    if-eqz v6, :cond_2

    .line 1903
    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->isNaN()Z

    move-result v6

    if-eqz v6, :cond_1

    move-object v3, p0

    .line 1955
    :cond_0
    :goto_0
    return-object v3

    .line 1907
    :cond_1
    iget-byte v6, p0, Lorg/apache/commons/math3/dfp/Dfp;->nans:B

    if-ne v6, v7, :cond_2

    .line 1908
    invoke-virtual {p0, p0}, Lorg/apache/commons/math3/dfp/Dfp;->newInstance(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v3

    goto :goto_0

    .line 1913
    :cond_2
    if-nez p1, :cond_3

    .line 1914
    iget-object v6, p0, Lorg/apache/commons/math3/dfp/Dfp;->field:Lorg/apache/commons/math3/dfp/DfpField;

    invoke-virtual {v6, v8}, Lorg/apache/commons/math3/dfp/DfpField;->setIEEEFlagsBits(I)V

    .line 1915
    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->getZero()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v6

    invoke-virtual {p0, v6}, Lorg/apache/commons/math3/dfp/Dfp;->newInstance(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v3

    .line 1916
    .local v3, "result":Lorg/apache/commons/math3/dfp/Dfp;
    iget-byte v6, p0, Lorg/apache/commons/math3/dfp/Dfp;->sign:B

    iput-byte v6, v3, Lorg/apache/commons/math3/dfp/Dfp;->sign:B

    .line 1917
    iput-byte v7, v3, Lorg/apache/commons/math3/dfp/Dfp;->nans:B

    .line 1918
    const-string v6, "divide"

    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->getZero()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v7

    invoke-virtual {p0, v8, v6, v7, v3}, Lorg/apache/commons/math3/dfp/Dfp;->dotrap(ILjava/lang/String;Lorg/apache/commons/math3/dfp/Dfp;Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v3

    .line 1919
    goto :goto_0

    .line 1923
    .end local v3    # "result":Lorg/apache/commons/math3/dfp/Dfp;
    :cond_3
    if-ltz p1, :cond_4

    const/16 v6, 0x2710

    if-lt p1, v6, :cond_5

    .line 1924
    :cond_4
    iget-object v6, p0, Lorg/apache/commons/math3/dfp/Dfp;->field:Lorg/apache/commons/math3/dfp/DfpField;

    invoke-virtual {v6, v7}, Lorg/apache/commons/math3/dfp/DfpField;->setIEEEFlagsBits(I)V

    .line 1925
    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->getZero()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v6

    invoke-virtual {p0, v6}, Lorg/apache/commons/math3/dfp/Dfp;->newInstance(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v3

    .line 1926
    .restart local v3    # "result":Lorg/apache/commons/math3/dfp/Dfp;
    const/4 v6, 0x3

    iput-byte v6, v3, Lorg/apache/commons/math3/dfp/Dfp;->nans:B

    .line 1927
    const-string v6, "divide"

    invoke-virtual {p0, v7, v6, v3, v3}, Lorg/apache/commons/math3/dfp/Dfp;->dotrap(ILjava/lang/String;Lorg/apache/commons/math3/dfp/Dfp;Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v3

    .line 1928
    goto :goto_0

    .line 1931
    .end local v3    # "result":Lorg/apache/commons/math3/dfp/Dfp;
    :cond_5
    invoke-virtual {p0, p0}, Lorg/apache/commons/math3/dfp/Dfp;->newInstance(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v3

    .line 1933
    .restart local v3    # "result":Lorg/apache/commons/math3/dfp/Dfp;
    const/4 v5, 0x0

    .line 1934
    .local v5, "rl":I
    iget-object v6, p0, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    array-length v6, v6

    add-int/lit8 v1, v6, -0x1

    .local v1, "i":I
    :goto_1
    if-ltz v1, :cond_6

    .line 1935
    mul-int/lit16 v6, v5, 0x2710

    iget-object v7, v3, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    aget v7, v7, v1

    add-int v2, v6, v7

    .line 1936
    .local v2, "r":I
    div-int v4, v2, p1

    .line 1937
    .local v4, "rh":I
    mul-int v6, v4, p1

    sub-int v5, v2, v6

    .line 1938
    iget-object v6, v3, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    aput v4, v6, v1

    .line 1934
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 1941
    .end local v2    # "r":I
    .end local v4    # "rh":I
    :cond_6
    iget-object v6, v3, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    iget-object v7, p0, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    array-length v7, v7

    add-int/lit8 v7, v7, -0x1

    aget v6, v6, v7

    if-nez v6, :cond_7

    .line 1943
    invoke-virtual {v3}, Lorg/apache/commons/math3/dfp/Dfp;->shiftLeft()V

    .line 1944
    mul-int/lit16 v2, v5, 0x2710

    .line 1945
    .restart local v2    # "r":I
    div-int v4, v2, p1

    .line 1946
    .restart local v4    # "rh":I
    mul-int v6, v4, p1

    sub-int v5, v2, v6

    .line 1947
    iget-object v6, v3, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    const/4 v7, 0x0

    aput v4, v6, v7

    .line 1950
    .end local v2    # "r":I
    .end local v4    # "rh":I
    :cond_7
    mul-int/lit16 v6, v5, 0x2710

    div-int/2addr v6, p1

    invoke-virtual {v3, v6}, Lorg/apache/commons/math3/dfp/Dfp;->round(I)I

    move-result v0

    .line 1951
    .local v0, "excp":I
    if-eqz v0, :cond_0

    .line 1952
    const-string v6, "divide"

    invoke-virtual {p0, v0, v6, v3, v3}, Lorg/apache/commons/math3/dfp/Dfp;->dotrap(ILjava/lang/String;Lorg/apache/commons/math3/dfp/Dfp;Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v3

    goto/16 :goto_0
.end method

.method public divide(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;
    .locals 26
    .param p1, "divisor"    # Lorg/apache/commons/math3/dfp/Dfp;

    .prologue
    .line 1690
    const/16 v21, 0x0

    .line 1693
    .local v21, "trial":I
    const/4 v11, 0x0

    .line 1697
    .local v11, "md":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/dfp/Dfp;->field:Lorg/apache/commons/math3/dfp/DfpField;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lorg/apache/commons/math3/dfp/DfpField;->getRadixDigits()I

    move-result v23

    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/apache/commons/math3/dfp/Dfp;->field:Lorg/apache/commons/math3/dfp/DfpField;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lorg/apache/commons/math3/dfp/DfpField;->getRadixDigits()I

    move-result v24

    move/from16 v0, v23

    move/from16 v1, v24

    if-eq v0, v1, :cond_1

    .line 1698
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/dfp/Dfp;->field:Lorg/apache/commons/math3/dfp/DfpField;

    move-object/from16 v23, v0

    const/16 v24, 0x1

    invoke-virtual/range {v23 .. v24}, Lorg/apache/commons/math3/dfp/DfpField;->setIEEEFlagsBits(I)V

    .line 1699
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/dfp/Dfp;->getZero()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v23

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/dfp/Dfp;->newInstance(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v19

    .line 1700
    .local v19, "result":Lorg/apache/commons/math3/dfp/Dfp;
    const/16 v23, 0x3

    move/from16 v0, v23

    move-object/from16 v1, v19

    iput-byte v0, v1, Lorg/apache/commons/math3/dfp/Dfp;->nans:B

    .line 1701
    const/16 v23, 0x1

    const-string v24, "divide"

    move-object/from16 v0, p0

    move/from16 v1, v23

    move-object/from16 v2, v24

    move-object/from16 v3, p1

    move-object/from16 v4, v19

    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/apache/commons/math3/dfp/Dfp;->dotrap(ILjava/lang/String;Lorg/apache/commons/math3/dfp/Dfp;Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object p0

    .line 1891
    .end local p0    # "this":Lorg/apache/commons/math3/dfp/Dfp;
    :cond_0
    :goto_0
    return-object p0

    .line 1704
    .end local v19    # "result":Lorg/apache/commons/math3/dfp/Dfp;
    .restart local p0    # "this":Lorg/apache/commons/math3/dfp/Dfp;
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/dfp/Dfp;->getZero()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v23

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/dfp/Dfp;->newInstance(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v19

    .line 1707
    .restart local v19    # "result":Lorg/apache/commons/math3/dfp/Dfp;
    move-object/from16 v0, p0

    iget-byte v0, v0, Lorg/apache/commons/math3/dfp/Dfp;->nans:B

    move/from16 v23, v0

    if-nez v23, :cond_2

    move-object/from16 v0, p1

    iget-byte v0, v0, Lorg/apache/commons/math3/dfp/Dfp;->nans:B

    move/from16 v23, v0

    if-eqz v23, :cond_6

    .line 1708
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/dfp/Dfp;->isNaN()Z

    move-result v23

    if-nez v23, :cond_0

    .line 1712
    invoke-virtual/range {p1 .. p1}, Lorg/apache/commons/math3/dfp/Dfp;->isNaN()Z

    move-result v23

    if-eqz v23, :cond_3

    move-object/from16 p0, p1

    .line 1713
    goto :goto_0

    .line 1716
    :cond_3
    move-object/from16 v0, p0

    iget-byte v0, v0, Lorg/apache/commons/math3/dfp/Dfp;->nans:B

    move/from16 v23, v0

    const/16 v24, 0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_4

    move-object/from16 v0, p1

    iget-byte v0, v0, Lorg/apache/commons/math3/dfp/Dfp;->nans:B

    move/from16 v23, v0

    if-nez v23, :cond_4

    .line 1717
    move-object/from16 v0, p0

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/dfp/Dfp;->newInstance(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v19

    .line 1718
    move-object/from16 v0, p0

    iget-byte v0, v0, Lorg/apache/commons/math3/dfp/Dfp;->sign:B

    move/from16 v23, v0

    move-object/from16 v0, p1

    iget-byte v0, v0, Lorg/apache/commons/math3/dfp/Dfp;->sign:B

    move/from16 v24, v0

    mul-int v23, v23, v24

    move/from16 v0, v23

    int-to-byte v0, v0

    move/from16 v23, v0

    move/from16 v0, v23

    move-object/from16 v1, v19

    iput-byte v0, v1, Lorg/apache/commons/math3/dfp/Dfp;->sign:B

    move-object/from16 p0, v19

    .line 1719
    goto :goto_0

    .line 1722
    :cond_4
    move-object/from16 v0, p1

    iget-byte v0, v0, Lorg/apache/commons/math3/dfp/Dfp;->nans:B

    move/from16 v23, v0

    const/16 v24, 0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_5

    move-object/from16 v0, p0

    iget-byte v0, v0, Lorg/apache/commons/math3/dfp/Dfp;->nans:B

    move/from16 v23, v0

    if-nez v23, :cond_5

    .line 1723
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/dfp/Dfp;->getZero()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v23

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/dfp/Dfp;->newInstance(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v19

    .line 1724
    move-object/from16 v0, p0

    iget-byte v0, v0, Lorg/apache/commons/math3/dfp/Dfp;->sign:B

    move/from16 v23, v0

    move-object/from16 v0, p1

    iget-byte v0, v0, Lorg/apache/commons/math3/dfp/Dfp;->sign:B

    move/from16 v24, v0

    mul-int v23, v23, v24

    move/from16 v0, v23

    int-to-byte v0, v0

    move/from16 v23, v0

    move/from16 v0, v23

    move-object/from16 v1, v19

    iput-byte v0, v1, Lorg/apache/commons/math3/dfp/Dfp;->sign:B

    move-object/from16 p0, v19

    .line 1725
    goto/16 :goto_0

    .line 1728
    :cond_5
    move-object/from16 v0, p1

    iget-byte v0, v0, Lorg/apache/commons/math3/dfp/Dfp;->nans:B

    move/from16 v23, v0

    const/16 v24, 0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_6

    move-object/from16 v0, p0

    iget-byte v0, v0, Lorg/apache/commons/math3/dfp/Dfp;->nans:B

    move/from16 v23, v0

    const/16 v24, 0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_6

    .line 1729
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/dfp/Dfp;->field:Lorg/apache/commons/math3/dfp/DfpField;

    move-object/from16 v23, v0

    const/16 v24, 0x1

    invoke-virtual/range {v23 .. v24}, Lorg/apache/commons/math3/dfp/DfpField;->setIEEEFlagsBits(I)V

    .line 1730
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/dfp/Dfp;->getZero()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v23

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/dfp/Dfp;->newInstance(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v19

    .line 1731
    const/16 v23, 0x3

    move/from16 v0, v23

    move-object/from16 v1, v19

    iput-byte v0, v1, Lorg/apache/commons/math3/dfp/Dfp;->nans:B

    .line 1732
    const/16 v23, 0x1

    const-string v24, "divide"

    move-object/from16 v0, p0

    move/from16 v1, v23

    move-object/from16 v2, v24

    move-object/from16 v3, p1

    move-object/from16 v4, v19

    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/apache/commons/math3/dfp/Dfp;->dotrap(ILjava/lang/String;Lorg/apache/commons/math3/dfp/Dfp;Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v19

    move-object/from16 p0, v19

    .line 1733
    goto/16 :goto_0

    .line 1738
    :cond_6
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    array-length v0, v0

    move/from16 v24, v0

    add-int/lit8 v24, v24, -0x1

    aget v23, v23, v24

    if-nez v23, :cond_7

    .line 1739
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/dfp/Dfp;->field:Lorg/apache/commons/math3/dfp/DfpField;

    move-object/from16 v23, v0

    const/16 v24, 0x2

    invoke-virtual/range {v23 .. v24}, Lorg/apache/commons/math3/dfp/DfpField;->setIEEEFlagsBits(I)V

    .line 1740
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/dfp/Dfp;->getZero()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v23

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/dfp/Dfp;->newInstance(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v19

    .line 1741
    move-object/from16 v0, p0

    iget-byte v0, v0, Lorg/apache/commons/math3/dfp/Dfp;->sign:B

    move/from16 v23, v0

    move-object/from16 v0, p1

    iget-byte v0, v0, Lorg/apache/commons/math3/dfp/Dfp;->sign:B

    move/from16 v24, v0

    mul-int v23, v23, v24

    move/from16 v0, v23

    int-to-byte v0, v0

    move/from16 v23, v0

    move/from16 v0, v23

    move-object/from16 v1, v19

    iput-byte v0, v1, Lorg/apache/commons/math3/dfp/Dfp;->sign:B

    .line 1742
    const/16 v23, 0x1

    move/from16 v0, v23

    move-object/from16 v1, v19

    iput-byte v0, v1, Lorg/apache/commons/math3/dfp/Dfp;->nans:B

    .line 1743
    const/16 v23, 0x2

    const-string v24, "divide"

    move-object/from16 v0, p0

    move/from16 v1, v23

    move-object/from16 v2, v24

    move-object/from16 v3, p1

    move-object/from16 v4, v19

    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/apache/commons/math3/dfp/Dfp;->dotrap(ILjava/lang/String;Lorg/apache/commons/math3/dfp/Dfp;Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v19

    move-object/from16 p0, v19

    .line 1744
    goto/16 :goto_0

    .line 1747
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    array-length v0, v0

    move/from16 v23, v0

    add-int/lit8 v23, v23, 0x1

    move/from16 v0, v23

    new-array v6, v0, [I

    .line 1748
    .local v6, "dividend":[I
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    array-length v0, v0

    move/from16 v23, v0

    add-int/lit8 v23, v23, 0x2

    move/from16 v0, v23

    new-array v0, v0, [I

    move-object/from16 v16, v0

    .line 1749
    .local v16, "quotient":[I
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    array-length v0, v0

    move/from16 v23, v0

    add-int/lit8 v23, v23, 0x1

    move/from16 v0, v23

    new-array v0, v0, [I

    move-object/from16 v18, v0

    .line 1753
    .local v18, "remainder":[I
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    array-length v0, v0

    move/from16 v23, v0

    const/16 v24, 0x0

    aput v24, v6, v23

    .line 1754
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    array-length v0, v0

    move/from16 v23, v0

    const/16 v24, 0x0

    aput v24, v16, v23

    .line 1755
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    array-length v0, v0

    move/from16 v23, v0

    add-int/lit8 v23, v23, 0x1

    const/16 v24, 0x0

    aput v24, v16, v23

    .line 1756
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    array-length v0, v0

    move/from16 v23, v0

    const/16 v24, 0x0

    aput v24, v18, v23

    .line 1761
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    array-length v0, v0

    move/from16 v23, v0

    move/from16 v0, v23

    if-ge v9, v0, :cond_8

    .line 1762
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    move-object/from16 v23, v0

    aget v23, v23, v9

    aput v23, v6, v9

    .line 1763
    const/16 v23, 0x0

    aput v23, v16, v9

    .line 1764
    const/16 v23, 0x0

    aput v23, v18, v9

    .line 1761
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 1768
    :cond_8
    const/4 v14, 0x0

    .line 1769
    .local v14, "nsqd":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    array-length v0, v0

    move/from16 v23, v0

    add-int/lit8 v15, v23, 0x1

    .local v15, "qd":I
    :goto_2
    if-ltz v15, :cond_16

    .line 1773
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    array-length v0, v0

    move/from16 v23, v0

    aget v23, v6, v23

    move/from16 v0, v23

    mul-int/lit16 v0, v0, 0x2710

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    array-length v0, v0

    move/from16 v24, v0

    add-int/lit8 v24, v24, -0x1

    aget v24, v6, v24

    add-int v5, v23, v24

    .line 1774
    .local v5, "divMsb":I
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    array-length v0, v0

    move/from16 v24, v0

    add-int/lit8 v24, v24, -0x1

    aget v23, v23, v24

    add-int/lit8 v23, v23, 0x1

    div-int v12, v5, v23

    .line 1775
    .local v12, "min":I
    add-int/lit8 v23, v5, 0x1

    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    array-length v0, v0

    move/from16 v25, v0

    add-int/lit8 v25, v25, -0x1

    aget v24, v24, v25

    div-int v10, v23, v24

    .line 1777
    .local v10, "max":I
    const/16 v22, 0x0

    .line 1778
    .local v22, "trialgood":Z
    :cond_9
    :goto_3
    if-nez v22, :cond_13

    .line 1780
    add-int v23, v12, v10

    div-int/lit8 v21, v23, 0x2

    .line 1783
    const/16 v20, 0x0

    .line 1784
    .local v20, "rh":I
    const/4 v9, 0x0

    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    array-length v0, v0

    move/from16 v23, v0

    add-int/lit8 v23, v23, 0x1

    move/from16 v0, v23

    if-ge v9, v0, :cond_b

    .line 1785
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    array-length v0, v0

    move/from16 v23, v0

    move/from16 v0, v23

    if-ge v9, v0, :cond_a

    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    move-object/from16 v23, v0

    aget v7, v23, v9

    .line 1786
    .local v7, "dm":I
    :goto_5
    mul-int v23, v7, v21

    add-int v17, v23, v20

    .line 1787
    .local v17, "r":I
    move/from16 v0, v17

    div-int/lit16 v0, v0, 0x2710

    move/from16 v20, v0

    .line 1788
    move/from16 v0, v20

    mul-int/lit16 v0, v0, 0x2710

    move/from16 v23, v0

    sub-int v23, v17, v23

    aput v23, v18, v9

    .line 1784
    add-int/lit8 v9, v9, 0x1

    goto :goto_4

    .line 1785
    .end local v7    # "dm":I
    .end local v17    # "r":I
    :cond_a
    const/4 v7, 0x0

    goto :goto_5

    .line 1792
    :cond_b
    const/16 v20, 0x1

    .line 1793
    const/4 v9, 0x0

    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    array-length v0, v0

    move/from16 v23, v0

    add-int/lit8 v23, v23, 0x1

    move/from16 v0, v23

    if-ge v9, v0, :cond_c

    .line 1794
    aget v23, v18, v9

    move/from16 v0, v23

    rsub-int v0, v0, 0x270f

    move/from16 v23, v0

    aget v24, v6, v9

    add-int v23, v23, v24

    add-int v17, v23, v20

    .line 1795
    .restart local v17    # "r":I
    move/from16 v0, v17

    div-int/lit16 v0, v0, 0x2710

    move/from16 v20, v0

    .line 1796
    move/from16 v0, v20

    mul-int/lit16 v0, v0, 0x2710

    move/from16 v23, v0

    sub-int v23, v17, v23

    aput v23, v18, v9

    .line 1793
    add-int/lit8 v9, v9, 0x1

    goto :goto_6

    .line 1800
    .end local v17    # "r":I
    :cond_c
    if-nez v20, :cond_d

    .line 1802
    add-int/lit8 v10, v21, -0x1

    .line 1803
    goto/16 :goto_3

    .line 1807
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    array-length v0, v0

    move/from16 v23, v0

    aget v23, v18, v23

    move/from16 v0, v23

    mul-int/lit16 v0, v0, 0x2710

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    array-length v0, v0

    move/from16 v24, v0

    add-int/lit8 v24, v24, -0x1

    aget v24, v18, v24

    add-int v13, v23, v24

    .line 1808
    .local v13, "minadj":I
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    array-length v0, v0

    move/from16 v24, v0

    add-int/lit8 v24, v24, -0x1

    aget v23, v23, v24

    add-int/lit8 v23, v23, 0x1

    div-int v13, v13, v23

    .line 1810
    const/16 v23, 0x2

    move/from16 v0, v23

    if-lt v13, v0, :cond_e

    .line 1811
    add-int v12, v21, v13

    .line 1812
    goto/16 :goto_3

    .line 1817
    :cond_e
    const/16 v22, 0x0

    .line 1818
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    array-length v0, v0

    move/from16 v23, v0

    add-int/lit8 v9, v23, -0x1

    :goto_7
    if-ltz v9, :cond_10

    .line 1819
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    move-object/from16 v23, v0

    aget v23, v23, v9

    aget v24, v18, v9

    move/from16 v0, v23

    move/from16 v1, v24

    if-le v0, v1, :cond_f

    .line 1820
    const/16 v22, 0x1

    .line 1822
    :cond_f
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    move-object/from16 v23, v0

    aget v23, v23, v9

    aget v24, v18, v9

    move/from16 v0, v23

    move/from16 v1, v24

    if-ge v0, v1, :cond_12

    .line 1827
    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    array-length v0, v0

    move/from16 v23, v0

    aget v23, v18, v23

    if-eqz v23, :cond_11

    .line 1828
    const/16 v22, 0x0

    .line 1831
    :cond_11
    if-nez v22, :cond_9

    .line 1832
    add-int/lit8 v12, v21, 0x1

    goto/16 :goto_3

    .line 1818
    :cond_12
    add-int/lit8 v9, v9, -0x1

    goto :goto_7

    .line 1837
    .end local v13    # "minadj":I
    .end local v20    # "rh":I
    :cond_13
    aput v21, v16, v15

    .line 1838
    if-nez v21, :cond_14

    if-eqz v14, :cond_15

    .line 1839
    :cond_14
    add-int/lit8 v14, v14, 0x1

    .line 1842
    :cond_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/dfp/Dfp;->field:Lorg/apache/commons/math3/dfp/DfpField;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lorg/apache/commons/math3/dfp/DfpField;->getRoundingMode()Lorg/apache/commons/math3/dfp/DfpField$RoundingMode;

    move-result-object v23

    sget-object v24, Lorg/apache/commons/math3/dfp/DfpField$RoundingMode;->ROUND_DOWN:Lorg/apache/commons/math3/dfp/DfpField$RoundingMode;

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    if-ne v0, v1, :cond_18

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    array-length v0, v0

    move/from16 v23, v0

    move/from16 v0, v23

    if-ne v14, v0, :cond_18

    .line 1860
    .end local v5    # "divMsb":I
    .end local v10    # "max":I
    .end local v12    # "min":I
    .end local v22    # "trialgood":Z
    :cond_16
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    array-length v11, v0

    .line 1861
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    array-length v0, v0

    move/from16 v23, v0

    add-int/lit8 v9, v23, 0x1

    :goto_8
    if-ltz v9, :cond_17

    .line 1862
    aget v23, v16, v9

    if-eqz v23, :cond_1a

    .line 1863
    move v11, v9

    .line 1869
    :cond_17
    const/4 v9, 0x0

    :goto_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    array-length v0, v0

    move/from16 v23, v0

    move/from16 v0, v23

    if-ge v9, v0, :cond_1b

    .line 1870
    move-object/from16 v0, v19

    iget-object v0, v0, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    array-length v0, v0

    move/from16 v24, v0

    sub-int v24, v24, v9

    add-int/lit8 v24, v24, -0x1

    sub-int v25, v11, v9

    aget v25, v16, v25

    aput v25, v23, v24

    .line 1869
    add-int/lit8 v9, v9, 0x1

    goto :goto_9

    .line 1847
    .restart local v5    # "divMsb":I
    .restart local v10    # "max":I
    .restart local v12    # "min":I
    .restart local v22    # "trialgood":Z
    :cond_18
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    array-length v0, v0

    move/from16 v23, v0

    move/from16 v0, v23

    if-gt v14, v0, :cond_16

    .line 1853
    const/16 v23, 0x0

    const/16 v24, 0x0

    aput v24, v6, v23

    .line 1854
    const/4 v9, 0x0

    :goto_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    array-length v0, v0

    move/from16 v23, v0

    move/from16 v0, v23

    if-ge v9, v0, :cond_19

    .line 1855
    add-int/lit8 v23, v9, 0x1

    aget v24, v18, v9

    aput v24, v6, v23

    .line 1854
    add-int/lit8 v9, v9, 0x1

    goto :goto_a

    .line 1769
    :cond_19
    add-int/lit8 v15, v15, -0x1

    goto/16 :goto_2

    .line 1861
    .end local v5    # "divMsb":I
    .end local v10    # "max":I
    .end local v12    # "min":I
    .end local v22    # "trialgood":Z
    :cond_1a
    add-int/lit8 v9, v9, -0x1

    goto :goto_8

    .line 1874
    :cond_1b
    move-object/from16 v0, p0

    iget v0, v0, Lorg/apache/commons/math3/dfp/Dfp;->exp:I

    move/from16 v23, v0

    move-object/from16 v0, p1

    iget v0, v0, Lorg/apache/commons/math3/dfp/Dfp;->exp:I

    move/from16 v24, v0

    sub-int v23, v23, v24

    add-int v23, v23, v11

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    array-length v0, v0

    move/from16 v24, v0

    sub-int v23, v23, v24

    move/from16 v0, v23

    move-object/from16 v1, v19

    iput v0, v1, Lorg/apache/commons/math3/dfp/Dfp;->exp:I

    .line 1875
    move-object/from16 v0, p0

    iget-byte v0, v0, Lorg/apache/commons/math3/dfp/Dfp;->sign:B

    move/from16 v23, v0

    move-object/from16 v0, p1

    iget-byte v0, v0, Lorg/apache/commons/math3/dfp/Dfp;->sign:B

    move/from16 v24, v0

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_1e

    const/16 v23, 0x1

    :goto_b
    move/from16 v0, v23

    int-to-byte v0, v0

    move/from16 v23, v0

    move/from16 v0, v23

    move-object/from16 v1, v19

    iput-byte v0, v1, Lorg/apache/commons/math3/dfp/Dfp;->sign:B

    .line 1877
    move-object/from16 v0, v19

    iget-object v0, v0, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    array-length v0, v0

    move/from16 v24, v0

    add-int/lit8 v24, v24, -0x1

    aget v23, v23, v24

    if-nez v23, :cond_1c

    .line 1878
    const/16 v23, 0x0

    move/from16 v0, v23

    move-object/from16 v1, v19

    iput v0, v1, Lorg/apache/commons/math3/dfp/Dfp;->exp:I

    .line 1881
    :cond_1c
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    array-length v0, v0

    move/from16 v23, v0

    add-int/lit8 v23, v23, -0x1

    move/from16 v0, v23

    if-le v11, v0, :cond_1f

    .line 1882
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    array-length v0, v0

    move/from16 v23, v0

    sub-int v23, v11, v23

    aget v23, v16, v23

    move-object/from16 v0, v19

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/dfp/Dfp;->round(I)I

    move-result v8

    .line 1887
    .local v8, "excp":I
    :goto_c
    if-eqz v8, :cond_1d

    .line 1888
    const-string v23, "divide"

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move-object/from16 v2, p1

    move-object/from16 v3, v19

    invoke-virtual {v0, v8, v1, v2, v3}, Lorg/apache/commons/math3/dfp/Dfp;->dotrap(ILjava/lang/String;Lorg/apache/commons/math3/dfp/Dfp;Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v19

    :cond_1d
    move-object/from16 p0, v19

    .line 1891
    goto/16 :goto_0

    .line 1875
    .end local v8    # "excp":I
    :cond_1e
    const/16 v23, -0x1

    goto :goto_b

    .line 1884
    :cond_1f
    const/16 v23, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/dfp/Dfp;->round(I)I

    move-result v8

    .restart local v8    # "excp":I
    goto :goto_c
.end method

.method public dotrap(ILjava/lang/String;Lorg/apache/commons/math3/dfp/Dfp;Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;
    .locals 6
    .param p1, "type"    # I
    .param p2, "what"    # Ljava/lang/String;
    .param p3, "oper"    # Lorg/apache/commons/math3/dfp/Dfp;
    .param p4, "result"    # Lorg/apache/commons/math3/dfp/Dfp;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x3

    .line 2245
    move-object v4, p4

    .line 2247
    .local v4, "def":Lorg/apache/commons/math3/dfp/Dfp;
    packed-switch p1, :pswitch_data_0

    .line 2296
    :pswitch_0
    move-object v4, p4

    :cond_0
    :goto_0
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    .line 2299
    invoke-virtual/range {v0 .. v5}, Lorg/apache/commons/math3/dfp/Dfp;->trap(ILjava/lang/String;Lorg/apache/commons/math3/dfp/Dfp;Lorg/apache/commons/math3/dfp/Dfp;Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    return-object v0

    .line 2249
    :pswitch_1
    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->getZero()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/dfp/Dfp;->newInstance(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v4

    .line 2250
    iget-byte v0, p4, Lorg/apache/commons/math3/dfp/Dfp;->sign:B

    iput-byte v0, v4, Lorg/apache/commons/math3/dfp/Dfp;->sign:B

    .line 2251
    iput-byte v2, v4, Lorg/apache/commons/math3/dfp/Dfp;->nans:B

    goto :goto_0

    .line 2255
    :pswitch_2
    iget-byte v0, p0, Lorg/apache/commons/math3/dfp/Dfp;->nans:B

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    iget-object v1, p0, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    aget v0, v0, v1

    if-eqz v0, :cond_1

    .line 2257
    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->getZero()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/dfp/Dfp;->newInstance(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v4

    .line 2258
    iget-byte v0, p0, Lorg/apache/commons/math3/dfp/Dfp;->sign:B

    iget-byte v1, p3, Lorg/apache/commons/math3/dfp/Dfp;->sign:B

    mul-int/2addr v0, v1

    int-to-byte v0, v0

    iput-byte v0, v4, Lorg/apache/commons/math3/dfp/Dfp;->sign:B

    .line 2259
    iput-byte v3, v4, Lorg/apache/commons/math3/dfp/Dfp;->nans:B

    .line 2262
    :cond_1
    iget-byte v0, p0, Lorg/apache/commons/math3/dfp/Dfp;->nans:B

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    iget-object v1, p0, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    aget v0, v0, v1

    if-nez v0, :cond_2

    .line 2264
    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->getZero()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/dfp/Dfp;->newInstance(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v4

    .line 2265
    iput-byte v2, v4, Lorg/apache/commons/math3/dfp/Dfp;->nans:B

    .line 2268
    :cond_2
    iget-byte v0, p0, Lorg/apache/commons/math3/dfp/Dfp;->nans:B

    if-eq v0, v3, :cond_3

    iget-byte v0, p0, Lorg/apache/commons/math3/dfp/Dfp;->nans:B

    if-ne v0, v2, :cond_4

    .line 2269
    :cond_3
    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->getZero()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/dfp/Dfp;->newInstance(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v4

    .line 2270
    iput-byte v2, v4, Lorg/apache/commons/math3/dfp/Dfp;->nans:B

    .line 2273
    :cond_4
    iget-byte v0, p0, Lorg/apache/commons/math3/dfp/Dfp;->nans:B

    if-eq v0, v3, :cond_5

    iget-byte v0, p0, Lorg/apache/commons/math3/dfp/Dfp;->nans:B

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 2274
    :cond_5
    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->getZero()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/dfp/Dfp;->newInstance(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v4

    .line 2275
    iput-byte v2, v4, Lorg/apache/commons/math3/dfp/Dfp;->nans:B

    goto :goto_0

    .line 2280
    :pswitch_3
    iget v0, p4, Lorg/apache/commons/math3/dfp/Dfp;->exp:I

    iget-object v1, p0, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    array-length v1, v1

    add-int/2addr v0, v1

    const/16 v1, -0x7fff

    if-ge v0, v1, :cond_6

    .line 2281
    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->getZero()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/dfp/Dfp;->newInstance(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v4

    .line 2282
    iget-byte v0, p4, Lorg/apache/commons/math3/dfp/Dfp;->sign:B

    iput-byte v0, v4, Lorg/apache/commons/math3/dfp/Dfp;->sign:B

    .line 2286
    :goto_1
    iget v0, p4, Lorg/apache/commons/math3/dfp/Dfp;->exp:I

    add-int/lit16 v0, v0, 0x7ff8

    iput v0, p4, Lorg/apache/commons/math3/dfp/Dfp;->exp:I

    goto/16 :goto_0

    .line 2284
    :cond_6
    invoke-virtual {p0, p4}, Lorg/apache/commons/math3/dfp/Dfp;->newInstance(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v4

    goto :goto_1

    .line 2290
    :pswitch_4
    iget v0, p4, Lorg/apache/commons/math3/dfp/Dfp;->exp:I

    add-int/lit16 v0, v0, -0x7ff8

    iput v0, p4, Lorg/apache/commons/math3/dfp/Dfp;->exp:I

    .line 2291
    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->getZero()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/dfp/Dfp;->newInstance(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v4

    .line 2292
    iget-byte v0, p4, Lorg/apache/commons/math3/dfp/Dfp;->sign:B

    iput-byte v0, v4, Lorg/apache/commons/math3/dfp/Dfp;->sign:B

    .line 2293
    iput-byte v3, v4, Lorg/apache/commons/math3/dfp/Dfp;->nans:B

    goto/16 :goto_0

    .line 2247
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "other"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 906
    instance-of v2, p1, Lorg/apache/commons/math3/dfp/Dfp;

    if-eqz v2, :cond_0

    move-object v0, p1

    .line 907
    check-cast v0, Lorg/apache/commons/math3/dfp/Dfp;

    .line 908
    .local v0, "x":Lorg/apache/commons/math3/dfp/Dfp;
    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->isNaN()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v0}, Lorg/apache/commons/math3/dfp/Dfp;->isNaN()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lorg/apache/commons/math3/dfp/Dfp;->field:Lorg/apache/commons/math3/dfp/DfpField;

    invoke-virtual {v2}, Lorg/apache/commons/math3/dfp/DfpField;->getRadixDigits()I

    move-result v2

    iget-object v3, v0, Lorg/apache/commons/math3/dfp/Dfp;->field:Lorg/apache/commons/math3/dfp/DfpField;

    invoke-virtual {v3}, Lorg/apache/commons/math3/dfp/DfpField;->getRadixDigits()I

    move-result v3

    if-eq v2, v3, :cond_1

    .line 915
    .end local v0    # "x":Lorg/apache/commons/math3/dfp/Dfp;
    :cond_0
    :goto_0
    return v1

    .line 912
    .restart local v0    # "x":Lorg/apache/commons/math3/dfp/Dfp;
    :cond_1
    invoke-static {p0, v0}, Lorg/apache/commons/math3/dfp/Dfp;->compare(Lorg/apache/commons/math3/dfp/Dfp;Lorg/apache/commons/math3/dfp/Dfp;)I

    move-result v2

    if-nez v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public bridge synthetic exp()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 97
    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->exp()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    return-object v0
.end method

.method public exp()Lorg/apache/commons/math3/dfp/Dfp;
    .locals 1

    .prologue
    .line 2650
    invoke-static {p0}, Lorg/apache/commons/math3/dfp/DfpMath;->exp(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic expm1()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 97
    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->expm1()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    return-object v0
.end method

.method public expm1()Lorg/apache/commons/math3/dfp/Dfp;
    .locals 2

    .prologue
    .line 2657
    invoke-static {p0}, Lorg/apache/commons/math3/dfp/DfpMath;->exp(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->getOne()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/dfp/Dfp;->subtract(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic floor()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 97
    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->floor()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    return-object v0
.end method

.method public floor()Lorg/apache/commons/math3/dfp/Dfp;
    .locals 1

    .prologue
    .line 1016
    sget-object v0, Lorg/apache/commons/math3/dfp/DfpField$RoundingMode;->ROUND_FLOOR:Lorg/apache/commons/math3/dfp/DfpField$RoundingMode;

    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/dfp/Dfp;->trunc(Lorg/apache/commons/math3/dfp/DfpField$RoundingMode;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getField()Lorg/apache/commons/math3/Field;
    .locals 1

    .prologue
    .line 97
    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->getField()Lorg/apache/commons/math3/dfp/DfpField;

    move-result-object v0

    return-object v0
.end method

.method public getField()Lorg/apache/commons/math3/dfp/DfpField;
    .locals 1

    .prologue
    .line 636
    iget-object v0, p0, Lorg/apache/commons/math3/dfp/Dfp;->field:Lorg/apache/commons/math3/dfp/DfpField;

    return-object v0
.end method

.method public getOne()Lorg/apache/commons/math3/dfp/Dfp;
    .locals 1

    .prologue
    .line 657
    iget-object v0, p0, Lorg/apache/commons/math3/dfp/Dfp;->field:Lorg/apache/commons/math3/dfp/DfpField;

    invoke-virtual {v0}, Lorg/apache/commons/math3/dfp/DfpField;->getOne()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    return-object v0
.end method

.method public getRadixDigits()I
    .locals 1

    .prologue
    .line 643
    iget-object v0, p0, Lorg/apache/commons/math3/dfp/Dfp;->field:Lorg/apache/commons/math3/dfp/DfpField;

    invoke-virtual {v0}, Lorg/apache/commons/math3/dfp/DfpField;->getRadixDigits()I

    move-result v0

    return v0
.end method

.method public getReal()D
    .locals 2

    .prologue
    .line 2518
    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->toDouble()D

    move-result-wide v0

    return-wide v0
.end method

.method public getTwo()Lorg/apache/commons/math3/dfp/Dfp;
    .locals 1

    .prologue
    .line 664
    iget-object v0, p0, Lorg/apache/commons/math3/dfp/Dfp;->field:Lorg/apache/commons/math3/dfp/DfpField;

    invoke-virtual {v0}, Lorg/apache/commons/math3/dfp/DfpField;->getTwo()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    return-object v0
.end method

.method public getZero()Lorg/apache/commons/math3/dfp/Dfp;
    .locals 1

    .prologue
    .line 650
    iget-object v0, p0, Lorg/apache/commons/math3/dfp/Dfp;->field:Lorg/apache/commons/math3/dfp/DfpField;

    invoke-virtual {v0}, Lorg/apache/commons/math3/dfp/DfpField;->getZero()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    return-object v0
.end method

.method public greaterThan(Lorg/apache/commons/math3/dfp/Dfp;)Z
    .locals 5
    .param p1, "x"    # Lorg/apache/commons/math3/dfp/Dfp;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 782
    iget-object v3, p0, Lorg/apache/commons/math3/dfp/Dfp;->field:Lorg/apache/commons/math3/dfp/DfpField;

    invoke-virtual {v3}, Lorg/apache/commons/math3/dfp/DfpField;->getRadixDigits()I

    move-result v3

    iget-object v4, p1, Lorg/apache/commons/math3/dfp/Dfp;->field:Lorg/apache/commons/math3/dfp/DfpField;

    invoke-virtual {v4}, Lorg/apache/commons/math3/dfp/DfpField;->getRadixDigits()I

    move-result v4

    if-eq v3, v4, :cond_0

    .line 783
    iget-object v3, p0, Lorg/apache/commons/math3/dfp/Dfp;->field:Lorg/apache/commons/math3/dfp/DfpField;

    invoke-virtual {v3, v1}, Lorg/apache/commons/math3/dfp/DfpField;->setIEEEFlagsBits(I)V

    .line 784
    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->getZero()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v3

    invoke-virtual {p0, v3}, Lorg/apache/commons/math3/dfp/Dfp;->newInstance(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    .line 785
    .local v0, "result":Lorg/apache/commons/math3/dfp/Dfp;
    const/4 v3, 0x3

    iput-byte v3, v0, Lorg/apache/commons/math3/dfp/Dfp;->nans:B

    .line 786
    const-string v3, "greaterThan"

    invoke-virtual {p0, v1, v3, p1, v0}, Lorg/apache/commons/math3/dfp/Dfp;->dotrap(ILjava/lang/String;Lorg/apache/commons/math3/dfp/Dfp;Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    .line 797
    .end local v0    # "result":Lorg/apache/commons/math3/dfp/Dfp;
    :goto_0
    return v2

    .line 791
    :cond_0
    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->isNaN()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {p1}, Lorg/apache/commons/math3/dfp/Dfp;->isNaN()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 792
    :cond_1
    iget-object v3, p0, Lorg/apache/commons/math3/dfp/Dfp;->field:Lorg/apache/commons/math3/dfp/DfpField;

    invoke-virtual {v3, v1}, Lorg/apache/commons/math3/dfp/DfpField;->setIEEEFlagsBits(I)V

    .line 793
    const-string v3, "greaterThan"

    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->getZero()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v4

    invoke-virtual {p0, v4}, Lorg/apache/commons/math3/dfp/Dfp;->newInstance(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v4

    invoke-virtual {p0, v1, v3, p1, v4}, Lorg/apache/commons/math3/dfp/Dfp;->dotrap(ILjava/lang/String;Lorg/apache/commons/math3/dfp/Dfp;Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    goto :goto_0

    .line 797
    :cond_2
    invoke-static {p0, p1}, Lorg/apache/commons/math3/dfp/Dfp;->compare(Lorg/apache/commons/math3/dfp/Dfp;Lorg/apache/commons/math3/dfp/Dfp;)I

    move-result v3

    if-lez v3, :cond_3

    :goto_1
    move v2, v1

    goto :goto_0

    :cond_3
    move v1, v2

    goto :goto_1
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 925
    iget-byte v0, p0, Lorg/apache/commons/math3/dfp/Dfp;->sign:B

    shl-int/lit8 v0, v0, 0x8

    add-int/lit8 v0, v0, 0x11

    iget-byte v1, p0, Lorg/apache/commons/math3/dfp/Dfp;->nans:B

    shl-int/lit8 v1, v1, 0x10

    add-int/2addr v0, v1

    iget v1, p0, Lorg/apache/commons/math3/dfp/Dfp;->exp:I

    add-int/2addr v0, v1

    iget-object v1, p0, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([I)I

    move-result v1

    add-int/2addr v0, v1

    return v0
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
    .line 97
    check-cast p1, Lorg/apache/commons/math3/dfp/Dfp;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/dfp/Dfp;->hypot(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    return-object v0
.end method

.method public hypot(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;
    .locals 2
    .param p1, "y"    # Lorg/apache/commons/math3/dfp/Dfp;

    .prologue
    .line 2606
    invoke-virtual {p0, p0}, Lorg/apache/commons/math3/dfp/Dfp;->multiply(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    invoke-virtual {p1, p1}, Lorg/apache/commons/math3/dfp/Dfp;->multiply(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/dfp/Dfp;->add(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/math3/dfp/Dfp;->sqrt()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    return-object v0
.end method

.method public intLog10()I
    .locals 2

    .prologue
    .line 1189
    iget-object v0, p0, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    iget-object v1, p0, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    aget v0, v0, v1

    const/16 v1, 0x3e8

    if-le v0, v1, :cond_0

    .line 1190
    iget v0, p0, Lorg/apache/commons/math3/dfp/Dfp;->exp:I

    mul-int/lit8 v0, v0, 0x4

    add-int/lit8 v0, v0, -0x1

    .line 1198
    :goto_0
    return v0

    .line 1192
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    iget-object v1, p0, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    aget v0, v0, v1

    const/16 v1, 0x64

    if-le v0, v1, :cond_1

    .line 1193
    iget v0, p0, Lorg/apache/commons/math3/dfp/Dfp;->exp:I

    mul-int/lit8 v0, v0, 0x4

    add-int/lit8 v0, v0, -0x2

    goto :goto_0

    .line 1195
    :cond_1
    iget-object v0, p0, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    iget-object v1, p0, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    aget v0, v0, v1

    const/16 v1, 0xa

    if-le v0, v1, :cond_2

    .line 1196
    iget v0, p0, Lorg/apache/commons/math3/dfp/Dfp;->exp:I

    mul-int/lit8 v0, v0, 0x4

    add-int/lit8 v0, v0, -0x3

    goto :goto_0

    .line 1198
    :cond_2
    iget v0, p0, Lorg/apache/commons/math3/dfp/Dfp;->exp:I

    mul-int/lit8 v0, v0, 0x4

    add-int/lit8 v0, v0, -0x4

    goto :goto_0
.end method

.method public intValue()I
    .locals 6

    .prologue
    const v3, 0x7fffffff

    const/high16 v4, -0x80000000

    .line 1142
    const/4 v1, 0x0

    .line 1144
    .local v1, "result":I
    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->rint()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v2

    .line 1146
    .local v2, "rounded":Lorg/apache/commons/math3/dfp/Dfp;
    invoke-virtual {p0, v3}, Lorg/apache/commons/math3/dfp/Dfp;->newInstance(I)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v5

    invoke-virtual {v2, v5}, Lorg/apache/commons/math3/dfp/Dfp;->greaterThan(Lorg/apache/commons/math3/dfp/Dfp;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1162
    :goto_0
    return v3

    .line 1150
    :cond_0
    invoke-virtual {p0, v4}, Lorg/apache/commons/math3/dfp/Dfp;->newInstance(I)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/apache/commons/math3/dfp/Dfp;->lessThan(Lorg/apache/commons/math3/dfp/Dfp;)Z

    move-result v3

    if-eqz v3, :cond_1

    move v3, v4

    .line 1151
    goto :goto_0

    .line 1154
    :cond_1
    iget-object v3, p0, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    array-length v3, v3

    add-int/lit8 v0, v3, -0x1

    .local v0, "i":I
    :goto_1
    iget-object v3, p0, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    array-length v3, v3

    iget v4, v2, Lorg/apache/commons/math3/dfp/Dfp;->exp:I

    sub-int/2addr v3, v4

    if-lt v0, v3, :cond_2

    .line 1155
    mul-int/lit16 v3, v1, 0x2710

    iget-object v4, v2, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    aget v4, v4, v0

    add-int v1, v3, v4

    .line 1154
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 1158
    :cond_2
    iget-byte v3, v2, Lorg/apache/commons/math3/dfp/Dfp;->sign:B

    const/4 v4, -0x1

    if-ne v3, v4, :cond_3

    .line 1159
    neg-int v1, v1

    :cond_3
    move v3, v1

    .line 1162
    goto :goto_0
.end method

.method public isInfinite()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 874
    iget-byte v1, p0, Lorg/apache/commons/math3/dfp/Dfp;->nans:B

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isNaN()Z
    .locals 2

    .prologue
    .line 881
    iget-byte v0, p0, Lorg/apache/commons/math3/dfp/Dfp;->nans:B

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    iget-byte v0, p0, Lorg/apache/commons/math3/dfp/Dfp;->nans:B

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isZero()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 889
    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->isNaN()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 890
    iget-object v2, p0, Lorg/apache/commons/math3/dfp/Dfp;->field:Lorg/apache/commons/math3/dfp/DfpField;

    invoke-virtual {v2, v0}, Lorg/apache/commons/math3/dfp/DfpField;->setIEEEFlagsBits(I)V

    .line 891
    const-string v2, "lessThan"

    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->getZero()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v3

    invoke-virtual {p0, v3}, Lorg/apache/commons/math3/dfp/Dfp;->newInstance(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v3

    invoke-virtual {p0, v0, v2, p0, v3}, Lorg/apache/commons/math3/dfp/Dfp;->dotrap(ILjava/lang/String;Lorg/apache/commons/math3/dfp/Dfp;Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    .line 895
    :goto_0
    return v1

    :cond_0
    iget-object v2, p0, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    iget-object v3, p0, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    array-length v3, v3

    add-int/lit8 v3, v3, -0x1

    aget v2, v2, v3

    if-nez v2, :cond_1

    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->isInfinite()Z

    move-result v2

    if-nez v2, :cond_1

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method public lessThan(Lorg/apache/commons/math3/dfp/Dfp;)Z
    .locals 5
    .param p1, "x"    # Lorg/apache/commons/math3/dfp/Dfp;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 757
    iget-object v3, p0, Lorg/apache/commons/math3/dfp/Dfp;->field:Lorg/apache/commons/math3/dfp/DfpField;

    invoke-virtual {v3}, Lorg/apache/commons/math3/dfp/DfpField;->getRadixDigits()I

    move-result v3

    iget-object v4, p1, Lorg/apache/commons/math3/dfp/Dfp;->field:Lorg/apache/commons/math3/dfp/DfpField;

    invoke-virtual {v4}, Lorg/apache/commons/math3/dfp/DfpField;->getRadixDigits()I

    move-result v4

    if-eq v3, v4, :cond_0

    .line 758
    iget-object v3, p0, Lorg/apache/commons/math3/dfp/Dfp;->field:Lorg/apache/commons/math3/dfp/DfpField;

    invoke-virtual {v3, v1}, Lorg/apache/commons/math3/dfp/DfpField;->setIEEEFlagsBits(I)V

    .line 759
    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->getZero()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v3

    invoke-virtual {p0, v3}, Lorg/apache/commons/math3/dfp/Dfp;->newInstance(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    .line 760
    .local v0, "result":Lorg/apache/commons/math3/dfp/Dfp;
    const/4 v3, 0x3

    iput-byte v3, v0, Lorg/apache/commons/math3/dfp/Dfp;->nans:B

    .line 761
    const-string v3, "lessThan"

    invoke-virtual {p0, v1, v3, p1, v0}, Lorg/apache/commons/math3/dfp/Dfp;->dotrap(ILjava/lang/String;Lorg/apache/commons/math3/dfp/Dfp;Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    .line 772
    .end local v0    # "result":Lorg/apache/commons/math3/dfp/Dfp;
    :goto_0
    return v2

    .line 766
    :cond_0
    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->isNaN()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {p1}, Lorg/apache/commons/math3/dfp/Dfp;->isNaN()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 767
    :cond_1
    iget-object v3, p0, Lorg/apache/commons/math3/dfp/Dfp;->field:Lorg/apache/commons/math3/dfp/DfpField;

    invoke-virtual {v3, v1}, Lorg/apache/commons/math3/dfp/DfpField;->setIEEEFlagsBits(I)V

    .line 768
    const-string v3, "lessThan"

    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->getZero()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v4

    invoke-virtual {p0, v4}, Lorg/apache/commons/math3/dfp/Dfp;->newInstance(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v4

    invoke-virtual {p0, v1, v3, p1, v4}, Lorg/apache/commons/math3/dfp/Dfp;->dotrap(ILjava/lang/String;Lorg/apache/commons/math3/dfp/Dfp;Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    goto :goto_0

    .line 772
    :cond_2
    invoke-static {p0, p1}, Lorg/apache/commons/math3/dfp/Dfp;->compare(Lorg/apache/commons/math3/dfp/Dfp;Lorg/apache/commons/math3/dfp/Dfp;)I

    move-result v3

    if-gez v3, :cond_3

    :goto_1
    move v2, v1

    goto :goto_0

    :cond_3
    move v1, v2

    goto :goto_1
.end method

.method public bridge synthetic linearCombination(DLjava/lang/Object;DLjava/lang/Object;)Ljava/lang/Object;
    .locals 7
    .param p1, "x0"    # D
    .param p3, "x1"    # Ljava/lang/Object;
    .param p4, "x2"    # D
    .param p6, "x3"    # Ljava/lang/Object;

    .prologue
    .line 97
    move-object v3, p3

    check-cast v3, Lorg/apache/commons/math3/dfp/Dfp;

    move-object v6, p6

    check-cast v6, Lorg/apache/commons/math3/dfp/Dfp;

    move-object v0, p0

    move-wide v1, p1

    move-wide v4, p4

    invoke-virtual/range {v0 .. v6}, Lorg/apache/commons/math3/dfp/Dfp;->linearCombination(DLorg/apache/commons/math3/dfp/Dfp;DLorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

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
    .line 97
    move-object v4, p3

    check-cast v4, Lorg/apache/commons/math3/dfp/Dfp;

    move-object/from16 v7, p6

    check-cast v7, Lorg/apache/commons/math3/dfp/Dfp;

    move-object/from16 v10, p9

    check-cast v10, Lorg/apache/commons/math3/dfp/Dfp;

    move-object v1, p0

    move-wide v2, p1

    move-wide v5, p4

    move-wide/from16 v8, p7

    invoke-virtual/range {v1 .. v10}, Lorg/apache/commons/math3/dfp/Dfp;->linearCombination(DLorg/apache/commons/math3/dfp/Dfp;DLorg/apache/commons/math3/dfp/Dfp;DLorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

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
    .line 97
    move-object/from16 v3, p3

    check-cast v3, Lorg/apache/commons/math3/dfp/Dfp;

    move-object/from16 v6, p6

    check-cast v6, Lorg/apache/commons/math3/dfp/Dfp;

    move-object/from16 v9, p9

    check-cast v9, Lorg/apache/commons/math3/dfp/Dfp;

    move-object/from16 v12, p12

    check-cast v12, Lorg/apache/commons/math3/dfp/Dfp;

    move-object v0, p0

    move-wide v1, p1

    move-wide/from16 v4, p4

    move-wide/from16 v7, p7

    move-wide/from16 v10, p10

    invoke-virtual/range {v0 .. v12}, Lorg/apache/commons/math3/dfp/Dfp;->linearCombination(DLorg/apache/commons/math3/dfp/Dfp;DLorg/apache/commons/math3/dfp/Dfp;DLorg/apache/commons/math3/dfp/Dfp;DLorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

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
    .line 97
    check-cast p1, Lorg/apache/commons/math3/dfp/Dfp;

    .end local p1    # "x0":Ljava/lang/Object;
    check-cast p2, Lorg/apache/commons/math3/dfp/Dfp;

    .end local p2    # "x1":Ljava/lang/Object;
    check-cast p3, Lorg/apache/commons/math3/dfp/Dfp;

    .end local p3    # "x2":Ljava/lang/Object;
    check-cast p4, Lorg/apache/commons/math3/dfp/Dfp;

    .end local p4    # "x3":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/apache/commons/math3/dfp/Dfp;->linearCombination(Lorg/apache/commons/math3/dfp/Dfp;Lorg/apache/commons/math3/dfp/Dfp;Lorg/apache/commons/math3/dfp/Dfp;Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

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
    .line 97
    move-object v1, p1

    check-cast v1, Lorg/apache/commons/math3/dfp/Dfp;

    move-object v2, p2

    check-cast v2, Lorg/apache/commons/math3/dfp/Dfp;

    move-object v3, p3

    check-cast v3, Lorg/apache/commons/math3/dfp/Dfp;

    move-object v4, p4

    check-cast v4, Lorg/apache/commons/math3/dfp/Dfp;

    move-object v5, p5

    check-cast v5, Lorg/apache/commons/math3/dfp/Dfp;

    move-object v6, p6

    check-cast v6, Lorg/apache/commons/math3/dfp/Dfp;

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lorg/apache/commons/math3/dfp/Dfp;->linearCombination(Lorg/apache/commons/math3/dfp/Dfp;Lorg/apache/commons/math3/dfp/Dfp;Lorg/apache/commons/math3/dfp/Dfp;Lorg/apache/commons/math3/dfp/Dfp;Lorg/apache/commons/math3/dfp/Dfp;Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

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
    .line 97
    move-object v1, p1

    check-cast v1, Lorg/apache/commons/math3/dfp/Dfp;

    move-object v2, p2

    check-cast v2, Lorg/apache/commons/math3/dfp/Dfp;

    move-object v3, p3

    check-cast v3, Lorg/apache/commons/math3/dfp/Dfp;

    move-object v4, p4

    check-cast v4, Lorg/apache/commons/math3/dfp/Dfp;

    move-object v5, p5

    check-cast v5, Lorg/apache/commons/math3/dfp/Dfp;

    move-object v6, p6

    check-cast v6, Lorg/apache/commons/math3/dfp/Dfp;

    move-object/from16 v7, p7

    check-cast v7, Lorg/apache/commons/math3/dfp/Dfp;

    move-object/from16 v8, p8

    check-cast v8, Lorg/apache/commons/math3/dfp/Dfp;

    move-object v0, p0

    invoke-virtual/range {v0 .. v8}, Lorg/apache/commons/math3/dfp/Dfp;->linearCombination(Lorg/apache/commons/math3/dfp/Dfp;Lorg/apache/commons/math3/dfp/Dfp;Lorg/apache/commons/math3/dfp/Dfp;Lorg/apache/commons/math3/dfp/Dfp;Lorg/apache/commons/math3/dfp/Dfp;Lorg/apache/commons/math3/dfp/Dfp;Lorg/apache/commons/math3/dfp/Dfp;Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

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
    .line 97
    check-cast p2, [Lorg/apache/commons/math3/dfp/Dfp;

    .end local p2    # "x1":[Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/math3/dfp/Dfp;->linearCombination([D[Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

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
    .line 97
    check-cast p1, [Lorg/apache/commons/math3/dfp/Dfp;

    .end local p1    # "x0":[Ljava/lang/Object;
    check-cast p2, [Lorg/apache/commons/math3/dfp/Dfp;

    .end local p2    # "x1":[Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/math3/dfp/Dfp;->linearCombination([Lorg/apache/commons/math3/dfp/Dfp;[Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    return-object v0
.end method

.method public linearCombination(DLorg/apache/commons/math3/dfp/Dfp;DLorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;
    .locals 2
    .param p1, "a1"    # D
    .param p3, "b1"    # Lorg/apache/commons/math3/dfp/Dfp;
    .param p4, "a2"    # D
    .param p6, "b2"    # Lorg/apache/commons/math3/dfp/Dfp;

    .prologue
    .line 2845
    invoke-virtual {p3, p1, p2}, Lorg/apache/commons/math3/dfp/Dfp;->multiply(D)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    invoke-virtual {p6, p4, p5}, Lorg/apache/commons/math3/dfp/Dfp;->multiply(D)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/dfp/Dfp;->add(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    return-object v0
.end method

.method public linearCombination(DLorg/apache/commons/math3/dfp/Dfp;DLorg/apache/commons/math3/dfp/Dfp;DLorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;
    .locals 3
    .param p1, "a1"    # D
    .param p3, "b1"    # Lorg/apache/commons/math3/dfp/Dfp;
    .param p4, "a2"    # D
    .param p6, "b2"    # Lorg/apache/commons/math3/dfp/Dfp;
    .param p7, "a3"    # D
    .param p9, "b3"    # Lorg/apache/commons/math3/dfp/Dfp;

    .prologue
    .line 2863
    invoke-virtual {p3, p1, p2}, Lorg/apache/commons/math3/dfp/Dfp;->multiply(D)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    invoke-virtual {p6, p4, p5}, Lorg/apache/commons/math3/dfp/Dfp;->multiply(D)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/dfp/Dfp;->add(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    invoke-virtual {p9, p7, p8}, Lorg/apache/commons/math3/dfp/Dfp;->multiply(D)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/dfp/Dfp;->add(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    return-object v0
.end method

.method public linearCombination(DLorg/apache/commons/math3/dfp/Dfp;DLorg/apache/commons/math3/dfp/Dfp;DLorg/apache/commons/math3/dfp/Dfp;DLorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;
    .locals 2
    .param p1, "a1"    # D
    .param p3, "b1"    # Lorg/apache/commons/math3/dfp/Dfp;
    .param p4, "a2"    # D
    .param p6, "b2"    # Lorg/apache/commons/math3/dfp/Dfp;
    .param p7, "a3"    # D
    .param p9, "b3"    # Lorg/apache/commons/math3/dfp/Dfp;
    .param p10, "a4"    # D
    .param p12, "b4"    # Lorg/apache/commons/math3/dfp/Dfp;

    .prologue
    .line 2879
    invoke-virtual {p3, p1, p2}, Lorg/apache/commons/math3/dfp/Dfp;->multiply(D)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    invoke-virtual {p6, p4, p5}, Lorg/apache/commons/math3/dfp/Dfp;->multiply(D)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/dfp/Dfp;->add(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    invoke-virtual {p9, p7, p8}, Lorg/apache/commons/math3/dfp/Dfp;->multiply(D)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/dfp/Dfp;->add(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    invoke-virtual {p12, p10, p11}, Lorg/apache/commons/math3/dfp/Dfp;->multiply(D)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/dfp/Dfp;->add(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    return-object v0
.end method

.method public linearCombination(Lorg/apache/commons/math3/dfp/Dfp;Lorg/apache/commons/math3/dfp/Dfp;Lorg/apache/commons/math3/dfp/Dfp;Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;
    .locals 2
    .param p1, "a1"    # Lorg/apache/commons/math3/dfp/Dfp;
    .param p2, "b1"    # Lorg/apache/commons/math3/dfp/Dfp;
    .param p3, "a2"    # Lorg/apache/commons/math3/dfp/Dfp;
    .param p4, "b2"    # Lorg/apache/commons/math3/dfp/Dfp;

    .prologue
    .line 2838
    invoke-virtual {p1, p2}, Lorg/apache/commons/math3/dfp/Dfp;->multiply(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    invoke-virtual {p3, p4}, Lorg/apache/commons/math3/dfp/Dfp;->multiply(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/dfp/Dfp;->add(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    return-object v0
.end method

.method public linearCombination(Lorg/apache/commons/math3/dfp/Dfp;Lorg/apache/commons/math3/dfp/Dfp;Lorg/apache/commons/math3/dfp/Dfp;Lorg/apache/commons/math3/dfp/Dfp;Lorg/apache/commons/math3/dfp/Dfp;Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;
    .locals 2
    .param p1, "a1"    # Lorg/apache/commons/math3/dfp/Dfp;
    .param p2, "b1"    # Lorg/apache/commons/math3/dfp/Dfp;
    .param p3, "a2"    # Lorg/apache/commons/math3/dfp/Dfp;
    .param p4, "b2"    # Lorg/apache/commons/math3/dfp/Dfp;
    .param p5, "a3"    # Lorg/apache/commons/math3/dfp/Dfp;
    .param p6, "b3"    # Lorg/apache/commons/math3/dfp/Dfp;

    .prologue
    .line 2854
    invoke-virtual {p1, p2}, Lorg/apache/commons/math3/dfp/Dfp;->multiply(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    invoke-virtual {p3, p4}, Lorg/apache/commons/math3/dfp/Dfp;->multiply(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/dfp/Dfp;->add(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    invoke-virtual {p5, p6}, Lorg/apache/commons/math3/dfp/Dfp;->multiply(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/dfp/Dfp;->add(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    return-object v0
.end method

.method public linearCombination(Lorg/apache/commons/math3/dfp/Dfp;Lorg/apache/commons/math3/dfp/Dfp;Lorg/apache/commons/math3/dfp/Dfp;Lorg/apache/commons/math3/dfp/Dfp;Lorg/apache/commons/math3/dfp/Dfp;Lorg/apache/commons/math3/dfp/Dfp;Lorg/apache/commons/math3/dfp/Dfp;Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;
    .locals 2
    .param p1, "a1"    # Lorg/apache/commons/math3/dfp/Dfp;
    .param p2, "b1"    # Lorg/apache/commons/math3/dfp/Dfp;
    .param p3, "a2"    # Lorg/apache/commons/math3/dfp/Dfp;
    .param p4, "b2"    # Lorg/apache/commons/math3/dfp/Dfp;
    .param p5, "a3"    # Lorg/apache/commons/math3/dfp/Dfp;
    .param p6, "b3"    # Lorg/apache/commons/math3/dfp/Dfp;
    .param p7, "a4"    # Lorg/apache/commons/math3/dfp/Dfp;
    .param p8, "b4"    # Lorg/apache/commons/math3/dfp/Dfp;

    .prologue
    .line 2871
    invoke-virtual {p1, p2}, Lorg/apache/commons/math3/dfp/Dfp;->multiply(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    invoke-virtual {p3, p4}, Lorg/apache/commons/math3/dfp/Dfp;->multiply(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/dfp/Dfp;->add(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    invoke-virtual {p5, p6}, Lorg/apache/commons/math3/dfp/Dfp;->multiply(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/dfp/Dfp;->add(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    invoke-virtual {p7, p8}, Lorg/apache/commons/math3/dfp/Dfp;->multiply(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/dfp/Dfp;->add(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    return-object v0
.end method

.method public linearCombination([D[Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;
    .locals 6
    .param p1, "a"    # [D
    .param p2, "b"    # [Lorg/apache/commons/math3/dfp/Dfp;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    .prologue
    .line 2824
    array-length v2, p1

    array-length v3, p2

    if-eq v2, v3, :cond_0

    .line 2825
    new-instance v2, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    array-length v3, p1

    array-length v4, p2

    invoke-direct {v2, v3, v4}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v2

    .line 2827
    :cond_0
    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->getZero()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v1

    .line 2828
    .local v1, "r":Lorg/apache/commons/math3/dfp/Dfp;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, p1

    if-ge v0, v2, :cond_1

    .line 2829
    aget-object v2, p2, v0

    aget-wide v4, p1, v0

    invoke-virtual {v2, v4, v5}, Lorg/apache/commons/math3/dfp/Dfp;->multiply(D)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/commons/math3/dfp/Dfp;->add(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v1

    .line 2828
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2831
    :cond_1
    return-object v1
.end method

.method public linearCombination([Lorg/apache/commons/math3/dfp/Dfp;[Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;
    .locals 5
    .param p1, "a"    # [Lorg/apache/commons/math3/dfp/Dfp;
    .param p2, "b"    # [Lorg/apache/commons/math3/dfp/Dfp;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    .prologue
    .line 2809
    array-length v2, p1

    array-length v3, p2

    if-eq v2, v3, :cond_0

    .line 2810
    new-instance v2, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    array-length v3, p1

    array-length v4, p2

    invoke-direct {v2, v3, v4}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v2

    .line 2812
    :cond_0
    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->getZero()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v1

    .line 2813
    .local v1, "r":Lorg/apache/commons/math3/dfp/Dfp;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, p1

    if-ge v0, v2, :cond_1

    .line 2814
    aget-object v2, p1, v0

    aget-object v3, p2, v0

    invoke-virtual {v2, v3}, Lorg/apache/commons/math3/dfp/Dfp;->multiply(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/commons/math3/dfp/Dfp;->add(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v1

    .line 2813
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2816
    :cond_1
    return-object v1
.end method

.method public bridge synthetic log()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 97
    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->log()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    return-object v0
.end method

.method public log()Lorg/apache/commons/math3/dfp/Dfp;
    .locals 1

    .prologue
    .line 2664
    invoke-static {p0}, Lorg/apache/commons/math3/dfp/DfpMath;->log(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    return-object v0
.end method

.method public log10()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 2682
    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->intLog10()I

    move-result v0

    return v0
.end method

.method public log10K()I
    .locals 1

    .prologue
    .line 1171
    iget v0, p0, Lorg/apache/commons/math3/dfp/Dfp;->exp:I

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public bridge synthetic log1p()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 97
    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->log1p()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    return-object v0
.end method

.method public log1p()Lorg/apache/commons/math3/dfp/Dfp;
    .locals 1

    .prologue
    .line 2671
    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->getOne()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/dfp/Dfp;->add(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/math3/dfp/DfpMath;->log(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic multiply(D)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # D

    .prologue
    .line 97
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/math3/dfp/Dfp;->multiply(D)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic multiply(I)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 97
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/dfp/Dfp;->multiply(I)Lorg/apache/commons/math3/dfp/Dfp;

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
    .line 97
    check-cast p1, Lorg/apache/commons/math3/dfp/Dfp;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/dfp/Dfp;->multiply(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    return-object v0
.end method

.method public multiply(D)Lorg/apache/commons/math3/dfp/Dfp;
    .locals 1
    .param p1, "a"    # D

    .prologue
    .line 2539
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/math3/dfp/Dfp;->newInstance(D)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/dfp/Dfp;->multiply(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    return-object v0
.end method

.method public multiply(I)Lorg/apache/commons/math3/dfp/Dfp;
    .locals 1
    .param p1, "x"    # I

    .prologue
    .line 1610
    if-ltz p1, :cond_0

    const/16 v0, 0x2710

    if-ge p1, v0, :cond_0

    .line 1611
    invoke-direct {p0, p1}, Lorg/apache/commons/math3/dfp/Dfp;->multiplyFast(I)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    .line 1613
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/dfp/Dfp;->newInstance(I)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/dfp/Dfp;->multiply(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    goto :goto_0
.end method

.method public multiply(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;
    .locals 13
    .param p1, "x"    # Lorg/apache/commons/math3/dfp/Dfp;

    .prologue
    const/4 v11, 0x3

    const/4 v12, 0x0

    const/4 v8, 0x1

    .line 1506
    iget-object v9, p0, Lorg/apache/commons/math3/dfp/Dfp;->field:Lorg/apache/commons/math3/dfp/DfpField;

    invoke-virtual {v9}, Lorg/apache/commons/math3/dfp/DfpField;->getRadixDigits()I

    move-result v9

    iget-object v10, p1, Lorg/apache/commons/math3/dfp/Dfp;->field:Lorg/apache/commons/math3/dfp/DfpField;

    invoke-virtual {v10}, Lorg/apache/commons/math3/dfp/DfpField;->getRadixDigits()I

    move-result v10

    if-eq v9, v10, :cond_1

    .line 1507
    iget-object v9, p0, Lorg/apache/commons/math3/dfp/Dfp;->field:Lorg/apache/commons/math3/dfp/DfpField;

    invoke-virtual {v9, v8}, Lorg/apache/commons/math3/dfp/DfpField;->setIEEEFlagsBits(I)V

    .line 1508
    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->getZero()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v9

    invoke-virtual {p0, v9}, Lorg/apache/commons/math3/dfp/Dfp;->newInstance(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v6

    .line 1509
    .local v6, "result":Lorg/apache/commons/math3/dfp/Dfp;
    iput-byte v11, v6, Lorg/apache/commons/math3/dfp/Dfp;->nans:B

    .line 1510
    const-string v9, "multiply"

    invoke-virtual {p0, v8, v9, p1, v6}, Lorg/apache/commons/math3/dfp/Dfp;->dotrap(ILjava/lang/String;Lorg/apache/commons/math3/dfp/Dfp;Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object p0

    .line 1601
    .end local p0    # "this":Lorg/apache/commons/math3/dfp/Dfp;
    :cond_0
    :goto_0
    return-object p0

    .line 1513
    .end local v6    # "result":Lorg/apache/commons/math3/dfp/Dfp;
    .restart local p0    # "this":Lorg/apache/commons/math3/dfp/Dfp;
    :cond_1
    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->getZero()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v9

    invoke-virtual {p0, v9}, Lorg/apache/commons/math3/dfp/Dfp;->newInstance(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v6

    .line 1516
    .restart local v6    # "result":Lorg/apache/commons/math3/dfp/Dfp;
    iget-byte v9, p0, Lorg/apache/commons/math3/dfp/Dfp;->nans:B

    if-nez v9, :cond_2

    iget-byte v9, p1, Lorg/apache/commons/math3/dfp/Dfp;->nans:B

    if-eqz v9, :cond_9

    .line 1517
    :cond_2
    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->isNaN()Z

    move-result v9

    if-nez v9, :cond_0

    .line 1521
    invoke-virtual {p1}, Lorg/apache/commons/math3/dfp/Dfp;->isNaN()Z

    move-result v9

    if-eqz v9, :cond_3

    move-object p0, p1

    .line 1522
    goto :goto_0

    .line 1525
    :cond_3
    iget-byte v9, p0, Lorg/apache/commons/math3/dfp/Dfp;->nans:B

    if-ne v9, v8, :cond_4

    iget-byte v9, p1, Lorg/apache/commons/math3/dfp/Dfp;->nans:B

    if-nez v9, :cond_4

    iget-object v9, p1, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    iget-object v10, p0, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    array-length v10, v10

    add-int/lit8 v10, v10, -0x1

    aget v9, v9, v10

    if-eqz v9, :cond_4

    .line 1526
    invoke-virtual {p0, p0}, Lorg/apache/commons/math3/dfp/Dfp;->newInstance(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v6

    .line 1527
    iget-byte v8, p0, Lorg/apache/commons/math3/dfp/Dfp;->sign:B

    iget-byte v9, p1, Lorg/apache/commons/math3/dfp/Dfp;->sign:B

    mul-int/2addr v8, v9

    int-to-byte v8, v8

    iput-byte v8, v6, Lorg/apache/commons/math3/dfp/Dfp;->sign:B

    move-object p0, v6

    .line 1528
    goto :goto_0

    .line 1531
    :cond_4
    iget-byte v9, p1, Lorg/apache/commons/math3/dfp/Dfp;->nans:B

    if-ne v9, v8, :cond_5

    iget-byte v9, p0, Lorg/apache/commons/math3/dfp/Dfp;->nans:B

    if-nez v9, :cond_5

    iget-object v9, p0, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    iget-object v10, p0, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    array-length v10, v10

    add-int/lit8 v10, v10, -0x1

    aget v9, v9, v10

    if-eqz v9, :cond_5

    .line 1532
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/dfp/Dfp;->newInstance(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v6

    .line 1533
    iget-byte v8, p0, Lorg/apache/commons/math3/dfp/Dfp;->sign:B

    iget-byte v9, p1, Lorg/apache/commons/math3/dfp/Dfp;->sign:B

    mul-int/2addr v8, v9

    int-to-byte v8, v8

    iput-byte v8, v6, Lorg/apache/commons/math3/dfp/Dfp;->sign:B

    move-object p0, v6

    .line 1534
    goto :goto_0

    .line 1537
    :cond_5
    iget-byte v9, p1, Lorg/apache/commons/math3/dfp/Dfp;->nans:B

    if-ne v9, v8, :cond_6

    iget-byte v9, p0, Lorg/apache/commons/math3/dfp/Dfp;->nans:B

    if-ne v9, v8, :cond_6

    .line 1538
    invoke-virtual {p0, p0}, Lorg/apache/commons/math3/dfp/Dfp;->newInstance(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v6

    .line 1539
    iget-byte v8, p0, Lorg/apache/commons/math3/dfp/Dfp;->sign:B

    iget-byte v9, p1, Lorg/apache/commons/math3/dfp/Dfp;->sign:B

    mul-int/2addr v8, v9

    int-to-byte v8, v8

    iput-byte v8, v6, Lorg/apache/commons/math3/dfp/Dfp;->sign:B

    move-object p0, v6

    .line 1540
    goto :goto_0

    .line 1543
    :cond_6
    iget-byte v9, p1, Lorg/apache/commons/math3/dfp/Dfp;->nans:B

    if-ne v9, v8, :cond_7

    iget-byte v9, p0, Lorg/apache/commons/math3/dfp/Dfp;->nans:B

    if-nez v9, :cond_7

    iget-object v9, p0, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    iget-object v10, p0, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    array-length v10, v10

    add-int/lit8 v10, v10, -0x1

    aget v9, v9, v10

    if-eqz v9, :cond_8

    :cond_7
    iget-byte v9, p0, Lorg/apache/commons/math3/dfp/Dfp;->nans:B

    if-ne v9, v8, :cond_9

    iget-byte v9, p1, Lorg/apache/commons/math3/dfp/Dfp;->nans:B

    if-nez v9, :cond_9

    iget-object v9, p1, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    iget-object v10, p0, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    array-length v10, v10

    add-int/lit8 v10, v10, -0x1

    aget v9, v9, v10

    if-nez v9, :cond_9

    .line 1545
    :cond_8
    iget-object v9, p0, Lorg/apache/commons/math3/dfp/Dfp;->field:Lorg/apache/commons/math3/dfp/DfpField;

    invoke-virtual {v9, v8}, Lorg/apache/commons/math3/dfp/DfpField;->setIEEEFlagsBits(I)V

    .line 1546
    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->getZero()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v9

    invoke-virtual {p0, v9}, Lorg/apache/commons/math3/dfp/Dfp;->newInstance(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v6

    .line 1547
    iput-byte v11, v6, Lorg/apache/commons/math3/dfp/Dfp;->nans:B

    .line 1548
    const-string v9, "multiply"

    invoke-virtual {p0, v8, v9, p1, v6}, Lorg/apache/commons/math3/dfp/Dfp;->dotrap(ILjava/lang/String;Lorg/apache/commons/math3/dfp/Dfp;Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v6

    move-object p0, v6

    .line 1549
    goto/16 :goto_0

    .line 1553
    :cond_9
    iget-object v9, p0, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    array-length v9, v9

    mul-int/lit8 v9, v9, 0x2

    new-array v4, v9, [I

    .line 1555
    .local v4, "product":[I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget-object v9, p0, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    array-length v9, v9

    if-ge v1, v9, :cond_b

    .line 1556
    const/4 v7, 0x0

    .line 1557
    .local v7, "rh":I
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_2
    iget-object v9, p0, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    array-length v9, v9

    if-ge v2, v9, :cond_a

    .line 1558
    iget-object v9, p0, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    aget v9, v9, v1

    iget-object v10, p1, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    aget v10, v10, v2

    mul-int v5, v9, v10

    .line 1559
    .local v5, "r":I
    add-int v9, v1, v2

    aget v9, v4, v9

    add-int/2addr v9, v7

    add-int/2addr v5, v9

    .line 1561
    div-int/lit16 v7, v5, 0x2710

    .line 1562
    add-int v9, v1, v2

    mul-int/lit16 v10, v7, 0x2710

    sub-int v10, v5, v10

    aput v10, v4, v9

    .line 1557
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 1564
    .end local v5    # "r":I
    :cond_a
    iget-object v9, p0, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    array-length v9, v9

    add-int/2addr v9, v1

    aput v7, v4, v9

    .line 1555
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1568
    .end local v2    # "j":I
    .end local v7    # "rh":I
    :cond_b
    iget-object v9, p0, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    array-length v9, v9

    mul-int/lit8 v9, v9, 0x2

    add-int/lit8 v3, v9, -0x1

    .line 1569
    .local v3, "md":I
    iget-object v9, p0, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    array-length v9, v9

    mul-int/lit8 v9, v9, 0x2

    add-int/lit8 v1, v9, -0x1

    :goto_3
    if-ltz v1, :cond_c

    .line 1570
    aget v9, v4, v1

    if-eqz v9, :cond_d

    .line 1571
    move v3, v1

    .line 1577
    :cond_c
    const/4 v1, 0x0

    :goto_4
    iget-object v9, p0, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    array-length v9, v9

    if-ge v1, v9, :cond_e

    .line 1578
    iget-object v9, v6, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    iget-object v10, p0, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    array-length v10, v10

    sub-int/2addr v10, v1

    add-int/lit8 v10, v10, -0x1

    sub-int v11, v3, v1

    aget v11, v4, v11

    aput v11, v9, v10

    .line 1577
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 1569
    :cond_d
    add-int/lit8 v1, v1, -0x1

    goto :goto_3

    .line 1582
    :cond_e
    iget v9, p0, Lorg/apache/commons/math3/dfp/Dfp;->exp:I

    iget v10, p1, Lorg/apache/commons/math3/dfp/Dfp;->exp:I

    add-int/2addr v9, v10

    add-int/2addr v9, v3

    iget-object v10, p0, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    array-length v10, v10

    mul-int/lit8 v10, v10, 0x2

    sub-int/2addr v9, v10

    add-int/lit8 v9, v9, 0x1

    iput v9, v6, Lorg/apache/commons/math3/dfp/Dfp;->exp:I

    .line 1583
    iget-byte v9, p0, Lorg/apache/commons/math3/dfp/Dfp;->sign:B

    iget-byte v10, p1, Lorg/apache/commons/math3/dfp/Dfp;->sign:B

    if-ne v9, v10, :cond_11

    :goto_5
    int-to-byte v8, v8

    iput-byte v8, v6, Lorg/apache/commons/math3/dfp/Dfp;->sign:B

    .line 1585
    iget-object v8, v6, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    iget-object v9, p0, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    array-length v9, v9

    add-int/lit8 v9, v9, -0x1

    aget v8, v8, v9

    if-nez v8, :cond_f

    .line 1587
    iput v12, v6, Lorg/apache/commons/math3/dfp/Dfp;->exp:I

    .line 1591
    :cond_f
    iget-object v8, p0, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    array-length v8, v8

    add-int/lit8 v8, v8, -0x1

    if-le v3, v8, :cond_12

    .line 1592
    iget-object v8, p0, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    array-length v8, v8

    sub-int v8, v3, v8

    aget v8, v4, v8

    invoke-virtual {v6, v8}, Lorg/apache/commons/math3/dfp/Dfp;->round(I)I

    move-result v0

    .line 1597
    .local v0, "excp":I
    :goto_6
    if-eqz v0, :cond_10

    .line 1598
    const-string v8, "multiply"

    invoke-virtual {p0, v0, v8, p1, v6}, Lorg/apache/commons/math3/dfp/Dfp;->dotrap(ILjava/lang/String;Lorg/apache/commons/math3/dfp/Dfp;Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v6

    :cond_10
    move-object p0, v6

    .line 1601
    goto/16 :goto_0

    .line 1583
    .end local v0    # "excp":I
    :cond_11
    const/4 v8, -0x1

    goto :goto_5

    .line 1594
    :cond_12
    invoke-virtual {v6, v12}, Lorg/apache/commons/math3/dfp/Dfp;->round(I)I

    move-result v0

    .restart local v0    # "excp":I
    goto :goto_6
.end method

.method public bridge synthetic negate()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 97
    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->negate()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    return-object v0
.end method

.method public negate()Lorg/apache/commons/math3/dfp/Dfp;
    .locals 2

    .prologue
    .line 1407
    invoke-virtual {p0, p0}, Lorg/apache/commons/math3/dfp/Dfp;->newInstance(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    .line 1408
    .local v0, "result":Lorg/apache/commons/math3/dfp/Dfp;
    iget-byte v1, v0, Lorg/apache/commons/math3/dfp/Dfp;->sign:B

    neg-int v1, v1

    int-to-byte v1, v1

    iput-byte v1, v0, Lorg/apache/commons/math3/dfp/Dfp;->sign:B

    .line 1409
    return-object v0
.end method

.method public negativeOrNull()Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 805
    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->isNaN()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 806
    iget-object v2, p0, Lorg/apache/commons/math3/dfp/Dfp;->field:Lorg/apache/commons/math3/dfp/DfpField;

    invoke-virtual {v2, v1}, Lorg/apache/commons/math3/dfp/DfpField;->setIEEEFlagsBits(I)V

    .line 807
    const-string v2, "lessThan"

    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->getZero()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v3

    invoke-virtual {p0, v3}, Lorg/apache/commons/math3/dfp/Dfp;->newInstance(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v3

    invoke-virtual {p0, v1, v2, p0, v3}, Lorg/apache/commons/math3/dfp/Dfp;->dotrap(ILjava/lang/String;Lorg/apache/commons/math3/dfp/Dfp;Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    .line 811
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-byte v2, p0, Lorg/apache/commons/math3/dfp/Dfp;->sign:B

    if-ltz v2, :cond_2

    iget-object v2, p0, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    iget-object v3, p0, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    array-length v3, v3

    add-int/lit8 v3, v3, -0x1

    aget v2, v2, v3

    if-nez v2, :cond_0

    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->isInfinite()Z

    move-result v2

    if-nez v2, :cond_0

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method public newInstance()Lorg/apache/commons/math3/dfp/Dfp;
    .locals 2

    .prologue
    .line 555
    new-instance v0, Lorg/apache/commons/math3/dfp/Dfp;

    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->getField()Lorg/apache/commons/math3/dfp/DfpField;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/commons/math3/dfp/Dfp;-><init>(Lorg/apache/commons/math3/dfp/DfpField;)V

    return-object v0
.end method

.method public newInstance(B)Lorg/apache/commons/math3/dfp/Dfp;
    .locals 2
    .param p1, "x"    # B

    .prologue
    .line 563
    new-instance v0, Lorg/apache/commons/math3/dfp/Dfp;

    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->getField()Lorg/apache/commons/math3/dfp/DfpField;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lorg/apache/commons/math3/dfp/Dfp;-><init>(Lorg/apache/commons/math3/dfp/DfpField;B)V

    return-object v0
.end method

.method public newInstance(BB)Lorg/apache/commons/math3/dfp/Dfp;
    .locals 1
    .param p1, "sig"    # B
    .param p2, "code"    # B

    .prologue
    .line 625
    iget-object v0, p0, Lorg/apache/commons/math3/dfp/Dfp;->field:Lorg/apache/commons/math3/dfp/DfpField;

    invoke-virtual {v0, p1, p2}, Lorg/apache/commons/math3/dfp/DfpField;->newDfp(BB)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    return-object v0
.end method

.method public newInstance(D)Lorg/apache/commons/math3/dfp/Dfp;
    .locals 3
    .param p1, "x"    # D

    .prologue
    .line 587
    new-instance v0, Lorg/apache/commons/math3/dfp/Dfp;

    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->getField()Lorg/apache/commons/math3/dfp/DfpField;

    move-result-object v1

    invoke-direct {v0, v1, p1, p2}, Lorg/apache/commons/math3/dfp/Dfp;-><init>(Lorg/apache/commons/math3/dfp/DfpField;D)V

    return-object v0
.end method

.method public newInstance(I)Lorg/apache/commons/math3/dfp/Dfp;
    .locals 2
    .param p1, "x"    # I

    .prologue
    .line 571
    new-instance v0, Lorg/apache/commons/math3/dfp/Dfp;

    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->getField()Lorg/apache/commons/math3/dfp/DfpField;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lorg/apache/commons/math3/dfp/Dfp;-><init>(Lorg/apache/commons/math3/dfp/DfpField;I)V

    return-object v0
.end method

.method public newInstance(J)Lorg/apache/commons/math3/dfp/Dfp;
    .locals 3
    .param p1, "x"    # J

    .prologue
    .line 579
    new-instance v0, Lorg/apache/commons/math3/dfp/Dfp;

    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->getField()Lorg/apache/commons/math3/dfp/DfpField;

    move-result-object v1

    invoke-direct {v0, v1, p1, p2}, Lorg/apache/commons/math3/dfp/Dfp;-><init>(Lorg/apache/commons/math3/dfp/DfpField;J)V

    return-object v0
.end method

.method public newInstance(Ljava/lang/String;)Lorg/apache/commons/math3/dfp/Dfp;
    .locals 2
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 615
    new-instance v0, Lorg/apache/commons/math3/dfp/Dfp;

    iget-object v1, p0, Lorg/apache/commons/math3/dfp/Dfp;->field:Lorg/apache/commons/math3/dfp/DfpField;

    invoke-direct {v0, v1, p1}, Lorg/apache/commons/math3/dfp/Dfp;-><init>(Lorg/apache/commons/math3/dfp/DfpField;Ljava/lang/String;)V

    return-object v0
.end method

.method public newInstance(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;
    .locals 4
    .param p1, "d"    # Lorg/apache/commons/math3/dfp/Dfp;

    .prologue
    const/4 v3, 0x1

    .line 598
    iget-object v1, p0, Lorg/apache/commons/math3/dfp/Dfp;->field:Lorg/apache/commons/math3/dfp/DfpField;

    invoke-virtual {v1}, Lorg/apache/commons/math3/dfp/DfpField;->getRadixDigits()I

    move-result v1

    iget-object v2, p1, Lorg/apache/commons/math3/dfp/Dfp;->field:Lorg/apache/commons/math3/dfp/DfpField;

    invoke-virtual {v2}, Lorg/apache/commons/math3/dfp/DfpField;->getRadixDigits()I

    move-result v2

    if-eq v1, v2, :cond_0

    .line 599
    iget-object v1, p0, Lorg/apache/commons/math3/dfp/Dfp;->field:Lorg/apache/commons/math3/dfp/DfpField;

    invoke-virtual {v1, v3}, Lorg/apache/commons/math3/dfp/DfpField;->setIEEEFlagsBits(I)V

    .line 600
    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->getZero()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/apache/commons/math3/dfp/Dfp;->newInstance(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    .line 601
    .local v0, "result":Lorg/apache/commons/math3/dfp/Dfp;
    const/4 v1, 0x3

    iput-byte v1, v0, Lorg/apache/commons/math3/dfp/Dfp;->nans:B

    .line 602
    const-string v1, "newInstance"

    invoke-virtual {p0, v3, v1, p1, v0}, Lorg/apache/commons/math3/dfp/Dfp;->dotrap(ILjava/lang/String;Lorg/apache/commons/math3/dfp/Dfp;Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v1

    .line 605
    .end local v0    # "result":Lorg/apache/commons/math3/dfp/Dfp;
    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Lorg/apache/commons/math3/dfp/Dfp;

    invoke-direct {v1, p1}, Lorg/apache/commons/math3/dfp/Dfp;-><init>(Lorg/apache/commons/math3/dfp/Dfp;)V

    goto :goto_0
.end method

.method public nextAfter(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;
    .locals 7
    .param p1, "x"    # Lorg/apache/commons/math3/dfp/Dfp;

    .prologue
    const/16 v6, 0x10

    const/4 v3, 0x1

    .line 2345
    iget-object v4, p0, Lorg/apache/commons/math3/dfp/Dfp;->field:Lorg/apache/commons/math3/dfp/DfpField;

    invoke-virtual {v4}, Lorg/apache/commons/math3/dfp/DfpField;->getRadixDigits()I

    move-result v4

    iget-object v5, p1, Lorg/apache/commons/math3/dfp/Dfp;->field:Lorg/apache/commons/math3/dfp/DfpField;

    invoke-virtual {v5}, Lorg/apache/commons/math3/dfp/DfpField;->getRadixDigits()I

    move-result v5

    if-eq v4, v5, :cond_1

    .line 2346
    iget-object v4, p0, Lorg/apache/commons/math3/dfp/Dfp;->field:Lorg/apache/commons/math3/dfp/DfpField;

    invoke-virtual {v4, v3}, Lorg/apache/commons/math3/dfp/DfpField;->setIEEEFlagsBits(I)V

    .line 2347
    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->getZero()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v4

    invoke-virtual {p0, v4}, Lorg/apache/commons/math3/dfp/Dfp;->newInstance(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v1

    .line 2348
    .local v1, "result":Lorg/apache/commons/math3/dfp/Dfp;
    const/4 v4, 0x3

    iput-byte v4, v1, Lorg/apache/commons/math3/dfp/Dfp;->nans:B

    .line 2349
    const-string v4, "nextAfter"

    invoke-virtual {p0, v3, v4, p1, v1}, Lorg/apache/commons/math3/dfp/Dfp;->dotrap(ILjava/lang/String;Lorg/apache/commons/math3/dfp/Dfp;Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v1

    .line 2406
    .end local v1    # "result":Lorg/apache/commons/math3/dfp/Dfp;
    :cond_0
    :goto_0
    return-object v1

    .line 2353
    :cond_1
    const/4 v2, 0x0

    .line 2354
    .local v2, "up":Z
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/dfp/Dfp;->lessThan(Lorg/apache/commons/math3/dfp/Dfp;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 2355
    const/4 v2, 0x1

    .line 2358
    :cond_2
    invoke-static {p0, p1}, Lorg/apache/commons/math3/dfp/Dfp;->compare(Lorg/apache/commons/math3/dfp/Dfp;Lorg/apache/commons/math3/dfp/Dfp;)I

    move-result v4

    if-nez v4, :cond_3

    .line 2359
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/dfp/Dfp;->newInstance(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v1

    goto :goto_0

    .line 2362
    :cond_3
    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->getZero()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v4

    invoke-virtual {p0, v4}, Lorg/apache/commons/math3/dfp/Dfp;->lessThan(Lorg/apache/commons/math3/dfp/Dfp;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 2363
    if-nez v2, :cond_7

    move v2, v3

    .line 2368
    :cond_4
    :goto_1
    if-eqz v2, :cond_8

    .line 2369
    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->getOne()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v4

    invoke-virtual {p0, v4}, Lorg/apache/commons/math3/dfp/Dfp;->newInstance(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    .line 2370
    .local v0, "inc":Lorg/apache/commons/math3/dfp/Dfp;
    iget v4, p0, Lorg/apache/commons/math3/dfp/Dfp;->exp:I

    iget-object v5, p0, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    array-length v5, v5

    sub-int/2addr v4, v5

    add-int/lit8 v4, v4, 0x1

    iput v4, v0, Lorg/apache/commons/math3/dfp/Dfp;->exp:I

    .line 2371
    iget-byte v4, p0, Lorg/apache/commons/math3/dfp/Dfp;->sign:B

    iput-byte v4, v0, Lorg/apache/commons/math3/dfp/Dfp;->sign:B

    .line 2373
    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->getZero()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v4

    invoke-virtual {p0, v4}, Lorg/apache/commons/math3/dfp/Dfp;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 2374
    iget-object v4, p0, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    array-length v4, v4

    rsub-int v4, v4, -0x7fff

    iput v4, v0, Lorg/apache/commons/math3/dfp/Dfp;->exp:I

    .line 2377
    :cond_5
    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/dfp/Dfp;->add(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v1

    .line 2396
    .restart local v1    # "result":Lorg/apache/commons/math3/dfp/Dfp;
    :goto_2
    invoke-virtual {v1}, Lorg/apache/commons/math3/dfp/Dfp;->classify()I

    move-result v4

    if-ne v4, v3, :cond_6

    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->classify()I

    move-result v4

    if-eq v4, v3, :cond_6

    .line 2397
    iget-object v3, p0, Lorg/apache/commons/math3/dfp/Dfp;->field:Lorg/apache/commons/math3/dfp/DfpField;

    invoke-virtual {v3, v6}, Lorg/apache/commons/math3/dfp/DfpField;->setIEEEFlagsBits(I)V

    .line 2398
    const-string v3, "nextAfter"

    invoke-virtual {p0, v6, v3, p1, v1}, Lorg/apache/commons/math3/dfp/Dfp;->dotrap(ILjava/lang/String;Lorg/apache/commons/math3/dfp/Dfp;Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v1

    .line 2401
    :cond_6
    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->getZero()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/apache/commons/math3/dfp/Dfp;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->getZero()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v3

    invoke-virtual {p0, v3}, Lorg/apache/commons/math3/dfp/Dfp;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 2402
    iget-object v3, p0, Lorg/apache/commons/math3/dfp/Dfp;->field:Lorg/apache/commons/math3/dfp/DfpField;

    invoke-virtual {v3, v6}, Lorg/apache/commons/math3/dfp/DfpField;->setIEEEFlagsBits(I)V

    .line 2403
    const-string v3, "nextAfter"

    invoke-virtual {p0, v6, v3, p1, v1}, Lorg/apache/commons/math3/dfp/Dfp;->dotrap(ILjava/lang/String;Lorg/apache/commons/math3/dfp/Dfp;Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v1

    goto/16 :goto_0

    .line 2363
    .end local v0    # "inc":Lorg/apache/commons/math3/dfp/Dfp;
    .end local v1    # "result":Lorg/apache/commons/math3/dfp/Dfp;
    :cond_7
    const/4 v2, 0x0

    goto :goto_1

    .line 2379
    :cond_8
    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->getOne()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v4

    invoke-virtual {p0, v4}, Lorg/apache/commons/math3/dfp/Dfp;->newInstance(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    .line 2380
    .restart local v0    # "inc":Lorg/apache/commons/math3/dfp/Dfp;
    iget v4, p0, Lorg/apache/commons/math3/dfp/Dfp;->exp:I

    iput v4, v0, Lorg/apache/commons/math3/dfp/Dfp;->exp:I

    .line 2381
    iget-byte v4, p0, Lorg/apache/commons/math3/dfp/Dfp;->sign:B

    iput-byte v4, v0, Lorg/apache/commons/math3/dfp/Dfp;->sign:B

    .line 2383
    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/dfp/Dfp;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 2384
    iget v4, p0, Lorg/apache/commons/math3/dfp/Dfp;->exp:I

    iget-object v5, p0, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    array-length v5, v5

    sub-int/2addr v4, v5

    iput v4, v0, Lorg/apache/commons/math3/dfp/Dfp;->exp:I

    .line 2389
    :goto_3
    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->getZero()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v4

    invoke-virtual {p0, v4}, Lorg/apache/commons/math3/dfp/Dfp;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 2390
    iget-object v4, p0, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    array-length v4, v4

    rsub-int v4, v4, -0x7fff

    iput v4, v0, Lorg/apache/commons/math3/dfp/Dfp;->exp:I

    .line 2393
    :cond_9
    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/dfp/Dfp;->subtract(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v1

    .restart local v1    # "result":Lorg/apache/commons/math3/dfp/Dfp;
    goto :goto_2

    .line 2386
    .end local v1    # "result":Lorg/apache/commons/math3/dfp/Dfp;
    :cond_a
    iget v4, p0, Lorg/apache/commons/math3/dfp/Dfp;->exp:I

    iget-object v5, p0, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    array-length v5, v5

    sub-int/2addr v4, v5

    add-int/lit8 v4, v4, 0x1

    iput v4, v0, Lorg/apache/commons/math3/dfp/Dfp;->exp:I

    goto :goto_3
.end method

.method public positiveOrNull()Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 835
    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->isNaN()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 836
    iget-object v2, p0, Lorg/apache/commons/math3/dfp/Dfp;->field:Lorg/apache/commons/math3/dfp/DfpField;

    invoke-virtual {v2, v1}, Lorg/apache/commons/math3/dfp/DfpField;->setIEEEFlagsBits(I)V

    .line 837
    const-string v2, "lessThan"

    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->getZero()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v3

    invoke-virtual {p0, v3}, Lorg/apache/commons/math3/dfp/Dfp;->newInstance(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v3

    invoke-virtual {p0, v1, v2, p0, v3}, Lorg/apache/commons/math3/dfp/Dfp;->dotrap(ILjava/lang/String;Lorg/apache/commons/math3/dfp/Dfp;Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    .line 841
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-byte v2, p0, Lorg/apache/commons/math3/dfp/Dfp;->sign:B

    if-gtz v2, :cond_2

    iget-object v2, p0, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    iget-object v3, p0, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    array-length v3, v3

    add-int/lit8 v3, v3, -0x1

    aget v2, v2, v3

    if-nez v2, :cond_0

    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->isInfinite()Z

    move-result v2

    if-nez v2, :cond_0

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method public bridge synthetic pow(D)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # D

    .prologue
    .line 97
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/math3/dfp/Dfp;->pow(D)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic pow(I)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 97
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/dfp/Dfp;->pow(I)Lorg/apache/commons/math3/dfp/Dfp;

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
    .line 97
    check-cast p1, Lorg/apache/commons/math3/dfp/Dfp;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/dfp/Dfp;->pow(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    return-object v0
.end method

.method public pow(D)Lorg/apache/commons/math3/dfp/Dfp;
    .locals 1
    .param p1, "p"    # D

    .prologue
    .line 2629
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/math3/dfp/Dfp;->newInstance(D)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    invoke-static {p0, v0}, Lorg/apache/commons/math3/dfp/DfpMath;->pow(Lorg/apache/commons/math3/dfp/Dfp;Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    return-object v0
.end method

.method public pow(I)Lorg/apache/commons/math3/dfp/Dfp;
    .locals 1
    .param p1, "n"    # I

    .prologue
    .line 2636
    invoke-static {p0, p1}, Lorg/apache/commons/math3/dfp/DfpMath;->pow(Lorg/apache/commons/math3/dfp/Dfp;I)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    return-object v0
.end method

.method public pow(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;
    .locals 1
    .param p1, "e"    # Lorg/apache/commons/math3/dfp/Dfp;

    .prologue
    .line 2643
    invoke-static {p0, p1}, Lorg/apache/commons/math3/dfp/DfpMath;->pow(Lorg/apache/commons/math3/dfp/Dfp;Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    return-object v0
.end method

.method public power10(I)Lorg/apache/commons/math3/dfp/Dfp;
    .locals 2
    .param p1, "e"    # I

    .prologue
    .line 1206
    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->getOne()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/apache/commons/math3/dfp/Dfp;->newInstance(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    .line 1208
    .local v0, "d":Lorg/apache/commons/math3/dfp/Dfp;
    if-ltz p1, :cond_0

    .line 1209
    div-int/lit8 v1, p1, 0x4

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lorg/apache/commons/math3/dfp/Dfp;->exp:I

    .line 1214
    :goto_0
    rem-int/lit8 v1, p1, 0x4

    add-int/lit8 v1, v1, 0x4

    rem-int/lit8 v1, v1, 0x4

    packed-switch v1, :pswitch_data_0

    .line 1224
    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/dfp/Dfp;->multiply(I)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    .line 1227
    :goto_1
    :pswitch_0
    return-object v0

    .line 1211
    :cond_0
    add-int/lit8 v1, p1, 0x1

    div-int/lit8 v1, v1, 0x4

    iput v1, v0, Lorg/apache/commons/math3/dfp/Dfp;->exp:I

    goto :goto_0

    .line 1218
    :pswitch_1
    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/dfp/Dfp;->multiply(I)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    .line 1219
    goto :goto_1

    .line 1221
    :pswitch_2
    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/dfp/Dfp;->multiply(I)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    .line 1222
    goto :goto_1

    .line 1214
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public power10K(I)Lorg/apache/commons/math3/dfp/Dfp;
    .locals 2
    .param p1, "e"    # I

    .prologue
    .line 1179
    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->getOne()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/apache/commons/math3/dfp/Dfp;->newInstance(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    .line 1180
    .local v0, "d":Lorg/apache/commons/math3/dfp/Dfp;
    add-int/lit8 v1, p1, 0x1

    iput v1, v0, Lorg/apache/commons/math3/dfp/Dfp;->exp:I

    .line 1181
    return-object v0
.end method

.method public bridge synthetic reciprocal()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 97
    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->reciprocal()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    return-object v0
.end method

.method public reciprocal()Lorg/apache/commons/math3/dfp/Dfp;
    .locals 1

    .prologue
    .line 1961
    iget-object v0, p0, Lorg/apache/commons/math3/dfp/Dfp;->field:Lorg/apache/commons/math3/dfp/DfpField;

    invoke-virtual {v0}, Lorg/apache/commons/math3/dfp/DfpField;->getOne()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/apache/commons/math3/dfp/Dfp;->divide(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic remainder(D)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # D

    .prologue
    .line 97
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/math3/dfp/Dfp;->remainder(D)Lorg/apache/commons/math3/dfp/Dfp;

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
    .line 97
    check-cast p1, Lorg/apache/commons/math3/dfp/Dfp;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/dfp/Dfp;->remainder(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    return-object v0
.end method

.method public remainder(D)Lorg/apache/commons/math3/dfp/Dfp;
    .locals 1
    .param p1, "a"    # D

    .prologue
    .line 2553
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/math3/dfp/Dfp;->newInstance(D)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/dfp/Dfp;->remainder(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    return-object v0
.end method

.method public remainder(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;
    .locals 3
    .param p1, "d"    # Lorg/apache/commons/math3/dfp/Dfp;

    .prologue
    .line 1035
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/dfp/Dfp;->divide(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/commons/math3/dfp/Dfp;->rint()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v1

    invoke-virtual {v1, p1}, Lorg/apache/commons/math3/dfp/Dfp;->multiply(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/apache/commons/math3/dfp/Dfp;->subtract(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    .line 1038
    .local v0, "result":Lorg/apache/commons/math3/dfp/Dfp;
    iget-object v1, v0, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    iget-object v2, p0, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    aget v1, v1, v2

    if-nez v1, :cond_0

    .line 1039
    iget-byte v1, p0, Lorg/apache/commons/math3/dfp/Dfp;->sign:B

    iput-byte v1, v0, Lorg/apache/commons/math3/dfp/Dfp;->sign:B

    .line 1042
    :cond_0
    return-object v0
.end method

.method public bridge synthetic rint()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 97
    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->rint()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    return-object v0
.end method

.method public rint()Lorg/apache/commons/math3/dfp/Dfp;
    .locals 1

    .prologue
    .line 1007
    sget-object v0, Lorg/apache/commons/math3/dfp/DfpField$RoundingMode;->ROUND_HALF_EVEN:Lorg/apache/commons/math3/dfp/DfpField$RoundingMode;

    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/dfp/Dfp;->trunc(Lorg/apache/commons/math3/dfp/DfpField$RoundingMode;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic rootN(I)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 97
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/dfp/Dfp;->rootN(I)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    return-object v0
.end method

.method public rootN(I)Lorg/apache/commons/math3/dfp/Dfp;
    .locals 2
    .param p1, "n"    # I

    .prologue
    .line 2620
    iget-byte v0, p0, Lorg/apache/commons/math3/dfp/Dfp;->sign:B

    if-ltz v0, :cond_0

    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->getOne()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/commons/math3/dfp/Dfp;->divide(I)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    invoke-static {p0, v0}, Lorg/apache/commons/math3/dfp/DfpMath;->pow(Lorg/apache/commons/math3/dfp/Dfp;Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->negate()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->getOne()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v1

    invoke-virtual {v1, p1}, Lorg/apache/commons/math3/dfp/Dfp;->divide(I)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/apache/commons/math3/dfp/DfpMath;->pow(Lorg/apache/commons/math3/dfp/Dfp;Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/math3/dfp/Dfp;->negate()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    goto :goto_0
.end method

.method protected round(I)I
    .locals 11
    .param p1, "n"    # I

    .prologue
    const/16 v6, 0x8

    const/4 v7, 0x4

    const/16 v10, 0x1388

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 1425
    const/4 v1, 0x0

    .line 1426
    .local v1, "inc":Z
    sget-object v8, Lorg/apache/commons/math3/dfp/Dfp$1;->$SwitchMap$org$apache$commons$math3$dfp$DfpField$RoundingMode:[I

    iget-object v9, p0, Lorg/apache/commons/math3/dfp/Dfp;->field:Lorg/apache/commons/math3/dfp/DfpField;

    invoke-virtual {v9}, Lorg/apache/commons/math3/dfp/DfpField;->getRoundingMode()Lorg/apache/commons/math3/dfp/DfpField$RoundingMode;

    move-result-object v9

    invoke-virtual {v9}, Lorg/apache/commons/math3/dfp/DfpField$RoundingMode;->ordinal()I

    move-result v9

    aget v8, v8, v9

    packed-switch v8, :pswitch_data_0

    .line 1457
    iget-byte v8, p0, Lorg/apache/commons/math3/dfp/Dfp;->sign:B

    const/4 v9, -0x1

    if-ne v8, v9, :cond_8

    if-eqz p1, :cond_8

    move v1, v4

    .line 1461
    :goto_0
    if-eqz v1, :cond_a

    .line 1463
    const/4 v3, 0x1

    .line 1464
    .local v3, "rh":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v4, p0, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    array-length v4, v4

    if-ge v0, v4, :cond_9

    .line 1465
    iget-object v4, p0, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    aget v4, v4, v0

    add-int v2, v4, v3

    .line 1466
    .local v2, "r":I
    div-int/lit16 v3, v2, 0x2710

    .line 1467
    iget-object v4, p0, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    mul-int/lit16 v8, v3, 0x2710

    sub-int v8, v2, v8

    aput v8, v4, v0

    .line 1464
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1428
    .end local v0    # "i":I
    .end local v2    # "r":I
    .end local v3    # "rh":I
    :pswitch_0
    const/4 v1, 0x0

    .line 1429
    goto :goto_0

    .line 1432
    :pswitch_1
    if-eqz p1, :cond_0

    move v1, v4

    .line 1433
    :goto_2
    goto :goto_0

    :cond_0
    move v1, v5

    .line 1432
    goto :goto_2

    .line 1436
    :pswitch_2
    if-lt p1, v10, :cond_1

    move v1, v4

    .line 1437
    :goto_3
    goto :goto_0

    :cond_1
    move v1, v5

    .line 1436
    goto :goto_3

    .line 1440
    :pswitch_3
    if-le p1, v10, :cond_2

    move v1, v4

    .line 1441
    :goto_4
    goto :goto_0

    :cond_2
    move v1, v5

    .line 1440
    goto :goto_4

    .line 1444
    :pswitch_4
    if-gt p1, v10, :cond_3

    if-ne p1, v10, :cond_4

    iget-object v8, p0, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    aget v8, v8, v5

    and-int/lit8 v8, v8, 0x1

    if-ne v8, v4, :cond_4

    :cond_3
    move v1, v4

    .line 1445
    :goto_5
    goto :goto_0

    :cond_4
    move v1, v5

    .line 1444
    goto :goto_5

    .line 1448
    :pswitch_5
    if-gt p1, v10, :cond_5

    if-ne p1, v10, :cond_6

    iget-object v8, p0, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    aget v8, v8, v5

    and-int/lit8 v8, v8, 0x1

    if-nez v8, :cond_6

    :cond_5
    move v1, v4

    .line 1449
    :goto_6
    goto :goto_0

    :cond_6
    move v1, v5

    .line 1448
    goto :goto_6

    .line 1452
    :pswitch_6
    iget-byte v8, p0, Lorg/apache/commons/math3/dfp/Dfp;->sign:B

    if-ne v8, v4, :cond_7

    if-eqz p1, :cond_7

    move v1, v4

    .line 1453
    :goto_7
    goto :goto_0

    :cond_7
    move v1, v5

    .line 1452
    goto :goto_7

    :cond_8
    move v1, v5

    .line 1457
    goto :goto_0

    .line 1470
    .restart local v0    # "i":I
    .restart local v3    # "rh":I
    :cond_9
    if-eqz v3, :cond_a

    .line 1471
    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->shiftRight()V

    .line 1472
    iget-object v4, p0, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    iget-object v8, p0, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    array-length v8, v8

    add-int/lit8 v8, v8, -0x1

    aput v3, v4, v8

    .line 1477
    .end local v0    # "i":I
    .end local v3    # "rh":I
    :cond_a
    iget v4, p0, Lorg/apache/commons/math3/dfp/Dfp;->exp:I

    const/16 v8, -0x7fff

    if-ge v4, v8, :cond_c

    .line 1479
    iget-object v4, p0, Lorg/apache/commons/math3/dfp/Dfp;->field:Lorg/apache/commons/math3/dfp/DfpField;

    invoke-virtual {v4, v6}, Lorg/apache/commons/math3/dfp/DfpField;->setIEEEFlagsBits(I)V

    move v5, v6

    .line 1495
    :cond_b
    :goto_8
    return v5

    .line 1483
    :cond_c
    iget v4, p0, Lorg/apache/commons/math3/dfp/Dfp;->exp:I

    const v6, 0x8000

    if-le v4, v6, :cond_d

    .line 1485
    iget-object v4, p0, Lorg/apache/commons/math3/dfp/Dfp;->field:Lorg/apache/commons/math3/dfp/DfpField;

    invoke-virtual {v4, v7}, Lorg/apache/commons/math3/dfp/DfpField;->setIEEEFlagsBits(I)V

    move v5, v7

    .line 1486
    goto :goto_8

    .line 1489
    :cond_d
    if-eqz p1, :cond_b

    .line 1491
    iget-object v4, p0, Lorg/apache/commons/math3/dfp/Dfp;->field:Lorg/apache/commons/math3/dfp/DfpField;

    const/16 v5, 0x10

    invoke-virtual {v4, v5}, Lorg/apache/commons/math3/dfp/DfpField;->setIEEEFlagsBits(I)V

    .line 1492
    const/16 v5, 0x10

    goto :goto_8

    .line 1426
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_6
        :pswitch_4
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_5
    .end packed-switch
.end method

.method public round()J
    .locals 2

    .prologue
    .line 2560
    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->toDouble()D

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->round(D)J

    move-result-wide v0

    return-wide v0
.end method

.method public bridge synthetic scalb(I)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 97
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/dfp/Dfp;->scalb(I)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    return-object v0
.end method

.method public scalb(I)Lorg/apache/commons/math3/dfp/Dfp;
    .locals 1
    .param p1, "n"    # I

    .prologue
    .line 2599
    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->getTwo()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    invoke-static {v0, p1}, Lorg/apache/commons/math3/dfp/DfpMath;->pow(Lorg/apache/commons/math3/dfp/Dfp;I)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/dfp/Dfp;->multiply(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    return-object v0
.end method

.method protected shiftLeft()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 670
    iget-object v1, p0, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    array-length v1, v1

    add-int/lit8 v0, v1, -0x1

    .local v0, "i":I
    :goto_0
    if-lez v0, :cond_0

    .line 671
    iget-object v1, p0, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    iget-object v2, p0, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    add-int/lit8 v3, v0, -0x1

    aget v2, v2, v3

    aput v2, v1, v0

    .line 670
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 673
    :cond_0
    iget-object v1, p0, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    aput v4, v1, v4

    .line 674
    iget v1, p0, Lorg/apache/commons/math3/dfp/Dfp;->exp:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lorg/apache/commons/math3/dfp/Dfp;->exp:I

    .line 675
    return-void
.end method

.method protected shiftRight()V
    .locals 4

    .prologue
    .line 682
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_0

    .line 683
    iget-object v1, p0, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    iget-object v2, p0, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    add-int/lit8 v3, v0, 0x1

    aget v2, v2, v3

    aput v2, v1, v0

    .line 682
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 685
    :cond_0
    iget-object v1, p0, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    iget-object v2, p0, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    const/4 v3, 0x0

    aput v3, v1, v2

    .line 686
    iget v1, p0, Lorg/apache/commons/math3/dfp/Dfp;->exp:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/apache/commons/math3/dfp/Dfp;->exp:I

    .line 687
    return-void
.end method

.method public bridge synthetic signum()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 97
    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->signum()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    return-object v0
.end method

.method public signum()Lorg/apache/commons/math3/dfp/Dfp;
    .locals 1

    .prologue
    .line 2567
    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->isNaN()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->isZero()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2570
    .end local p0    # "this":Lorg/apache/commons/math3/dfp/Dfp;
    :cond_0
    :goto_0
    return-object p0

    .restart local p0    # "this":Lorg/apache/commons/math3/dfp/Dfp;
    :cond_1
    iget-byte v0, p0, Lorg/apache/commons/math3/dfp/Dfp;->sign:B

    if-lez v0, :cond_2

    const/4 v0, 0x1

    :goto_1
    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/dfp/Dfp;->newInstance(I)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object p0

    goto :goto_0

    :cond_2
    const/4 v0, -0x1

    goto :goto_1
.end method

.method public bridge synthetic sin()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 97
    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->sin()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    return-object v0
.end method

.method public sin()Lorg/apache/commons/math3/dfp/Dfp;
    .locals 1

    .prologue
    .line 2704
    invoke-static {p0}, Lorg/apache/commons/math3/dfp/DfpMath;->sin(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic sinh()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 97
    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->sinh()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    return-object v0
.end method

.method public sinh()Lorg/apache/commons/math3/dfp/Dfp;
    .locals 2

    .prologue
    .line 2771
    invoke-static {p0}, Lorg/apache/commons/math3/dfp/DfpMath;->exp(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->negate()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/commons/math3/dfp/DfpMath;->exp(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/dfp/Dfp;->subtract(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/dfp/Dfp;->divide(I)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic sqrt()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 97
    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->sqrt()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    return-object v0
.end method

.method public sqrt()Lorg/apache/commons/math3/dfp/Dfp;
    .locals 12

    .prologue
    const/4 v11, 0x0

    const/4 v8, 0x3

    const/4 v10, 0x2

    const/4 v9, -0x1

    const/4 v7, 0x1

    .line 1971
    iget-byte v5, p0, Lorg/apache/commons/math3/dfp/Dfp;->nans:B

    if-nez v5, :cond_0

    iget-object v5, p0, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    iget-object v6, p0, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    array-length v6, v6

    add-int/lit8 v6, v6, -0x1

    aget v5, v5, v6

    if-nez v5, :cond_0

    .line 1973
    invoke-virtual {p0, p0}, Lorg/apache/commons/math3/dfp/Dfp;->newInstance(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v3

    .line 2057
    :goto_0
    return-object v3

    .line 1976
    :cond_0
    iget-byte v5, p0, Lorg/apache/commons/math3/dfp/Dfp;->nans:B

    if-eqz v5, :cond_3

    .line 1977
    iget-byte v5, p0, Lorg/apache/commons/math3/dfp/Dfp;->nans:B

    if-ne v5, v7, :cond_1

    iget-byte v5, p0, Lorg/apache/commons/math3/dfp/Dfp;->sign:B

    if-ne v5, v7, :cond_1

    .line 1979
    invoke-virtual {p0, p0}, Lorg/apache/commons/math3/dfp/Dfp;->newInstance(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v3

    goto :goto_0

    .line 1982
    :cond_1
    iget-byte v5, p0, Lorg/apache/commons/math3/dfp/Dfp;->nans:B

    if-ne v5, v8, :cond_2

    .line 1983
    invoke-virtual {p0, p0}, Lorg/apache/commons/math3/dfp/Dfp;->newInstance(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v3

    goto :goto_0

    .line 1986
    :cond_2
    iget-byte v5, p0, Lorg/apache/commons/math3/dfp/Dfp;->nans:B

    if-ne v5, v10, :cond_3

    .line 1989
    iget-object v5, p0, Lorg/apache/commons/math3/dfp/Dfp;->field:Lorg/apache/commons/math3/dfp/DfpField;

    invoke-virtual {v5, v7}, Lorg/apache/commons/math3/dfp/DfpField;->setIEEEFlagsBits(I)V

    .line 1990
    invoke-virtual {p0, p0}, Lorg/apache/commons/math3/dfp/Dfp;->newInstance(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v3

    .line 1991
    .local v3, "result":Lorg/apache/commons/math3/dfp/Dfp;
    const-string v5, "sqrt"

    invoke-virtual {p0, v7, v5, v11, v3}, Lorg/apache/commons/math3/dfp/Dfp;->dotrap(ILjava/lang/String;Lorg/apache/commons/math3/dfp/Dfp;Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v3

    .line 1992
    goto :goto_0

    .line 1996
    .end local v3    # "result":Lorg/apache/commons/math3/dfp/Dfp;
    :cond_3
    iget-byte v5, p0, Lorg/apache/commons/math3/dfp/Dfp;->sign:B

    if-ne v5, v9, :cond_4

    .line 2000
    iget-object v5, p0, Lorg/apache/commons/math3/dfp/Dfp;->field:Lorg/apache/commons/math3/dfp/DfpField;

    invoke-virtual {v5, v7}, Lorg/apache/commons/math3/dfp/DfpField;->setIEEEFlagsBits(I)V

    .line 2001
    invoke-virtual {p0, p0}, Lorg/apache/commons/math3/dfp/Dfp;->newInstance(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v3

    .line 2002
    .restart local v3    # "result":Lorg/apache/commons/math3/dfp/Dfp;
    iput-byte v8, v3, Lorg/apache/commons/math3/dfp/Dfp;->nans:B

    .line 2003
    const-string v5, "sqrt"

    invoke-virtual {p0, v7, v5, v11, v3}, Lorg/apache/commons/math3/dfp/Dfp;->dotrap(ILjava/lang/String;Lorg/apache/commons/math3/dfp/Dfp;Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v3

    .line 2004
    goto :goto_0

    .line 2007
    .end local v3    # "result":Lorg/apache/commons/math3/dfp/Dfp;
    :cond_4
    invoke-virtual {p0, p0}, Lorg/apache/commons/math3/dfp/Dfp;->newInstance(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v4

    .line 2010
    .local v4, "x":Lorg/apache/commons/math3/dfp/Dfp;
    iget v5, v4, Lorg/apache/commons/math3/dfp/Dfp;->exp:I

    if-lt v5, v9, :cond_5

    iget v5, v4, Lorg/apache/commons/math3/dfp/Dfp;->exp:I

    if-le v5, v7, :cond_6

    .line 2011
    :cond_5
    iget v5, p0, Lorg/apache/commons/math3/dfp/Dfp;->exp:I

    div-int/lit8 v5, v5, 0x2

    iput v5, v4, Lorg/apache/commons/math3/dfp/Dfp;->exp:I

    .line 2015
    :cond_6
    iget-object v5, v4, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    iget-object v6, p0, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    array-length v6, v6

    add-int/lit8 v6, v6, -0x1

    aget v5, v5, v6

    div-int/lit16 v5, v5, 0x7d0

    packed-switch v5, :pswitch_data_0

    .line 2026
    :pswitch_0
    iget-object v5, v4, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    iget-object v6, p0, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    array-length v6, v6

    add-int/lit8 v6, v6, -0x1

    const/16 v7, 0xbb8

    aput v7, v5, v6

    .line 2029
    :goto_1
    invoke-virtual {p0, v4}, Lorg/apache/commons/math3/dfp/Dfp;->newInstance(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    .line 2034
    .local v0, "dx":Lorg/apache/commons/math3/dfp/Dfp;
    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->getZero()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v2

    .line 2035
    .local v2, "px":Lorg/apache/commons/math3/dfp/Dfp;
    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->getZero()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v1

    .line 2036
    .local v1, "ppx":Lorg/apache/commons/math3/dfp/Dfp;
    :cond_7
    invoke-virtual {v4, v2}, Lorg/apache/commons/math3/dfp/Dfp;->unequal(Lorg/apache/commons/math3/dfp/Dfp;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 2037
    invoke-virtual {p0, v4}, Lorg/apache/commons/math3/dfp/Dfp;->newInstance(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    .line 2038
    iput-byte v9, v0, Lorg/apache/commons/math3/dfp/Dfp;->sign:B

    .line 2039
    invoke-virtual {p0, v4}, Lorg/apache/commons/math3/dfp/Dfp;->divide(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v5

    invoke-virtual {v0, v5}, Lorg/apache/commons/math3/dfp/Dfp;->add(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    .line 2040
    invoke-virtual {v0, v10}, Lorg/apache/commons/math3/dfp/Dfp;->divide(I)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    .line 2041
    move-object v1, v2

    .line 2042
    move-object v2, v4

    .line 2043
    invoke-virtual {v4, v0}, Lorg/apache/commons/math3/dfp/Dfp;->add(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v4

    .line 2045
    invoke-virtual {v4, v1}, Lorg/apache/commons/math3/dfp/Dfp;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    :cond_8
    :goto_2
    move-object v3, v4

    .line 2057
    goto/16 :goto_0

    .line 2017
    .end local v0    # "dx":Lorg/apache/commons/math3/dfp/Dfp;
    .end local v1    # "ppx":Lorg/apache/commons/math3/dfp/Dfp;
    .end local v2    # "px":Lorg/apache/commons/math3/dfp/Dfp;
    :pswitch_1
    iget-object v5, v4, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    iget-object v6, p0, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    array-length v6, v6

    add-int/lit8 v6, v6, -0x1

    iget-object v7, v4, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    iget-object v8, p0, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    array-length v8, v8

    add-int/lit8 v8, v8, -0x1

    aget v7, v7, v8

    div-int/lit8 v7, v7, 0x2

    add-int/lit8 v7, v7, 0x1

    aput v7, v5, v6

    goto :goto_1

    .line 2020
    :pswitch_2
    iget-object v5, v4, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    iget-object v6, p0, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    array-length v6, v6

    add-int/lit8 v6, v6, -0x1

    const/16 v7, 0x5dc

    aput v7, v5, v6

    goto :goto_1

    .line 2023
    :pswitch_3
    iget-object v5, v4, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    iget-object v6, p0, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    array-length v6, v6

    add-int/lit8 v6, v6, -0x1

    const/16 v7, 0x898

    aput v7, v5, v6

    goto :goto_1

    .line 2052
    .restart local v0    # "dx":Lorg/apache/commons/math3/dfp/Dfp;
    .restart local v1    # "ppx":Lorg/apache/commons/math3/dfp/Dfp;
    .restart local v2    # "px":Lorg/apache/commons/math3/dfp/Dfp;
    :cond_9
    iget-object v5, v0, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    iget-object v6, p0, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    array-length v6, v6

    add-int/lit8 v6, v6, -0x1

    aget v5, v5, v6

    if-nez v5, :cond_7

    goto :goto_2

    .line 2015
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public strictlyNegative()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 820
    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->isNaN()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 821
    iget-object v2, p0, Lorg/apache/commons/math3/dfp/Dfp;->field:Lorg/apache/commons/math3/dfp/DfpField;

    invoke-virtual {v2, v0}, Lorg/apache/commons/math3/dfp/DfpField;->setIEEEFlagsBits(I)V

    .line 822
    const-string v2, "lessThan"

    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->getZero()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v3

    invoke-virtual {p0, v3}, Lorg/apache/commons/math3/dfp/Dfp;->newInstance(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v3

    invoke-virtual {p0, v0, v2, p0, v3}, Lorg/apache/commons/math3/dfp/Dfp;->dotrap(ILjava/lang/String;Lorg/apache/commons/math3/dfp/Dfp;Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    .line 826
    :goto_0
    return v1

    :cond_0
    iget-byte v2, p0, Lorg/apache/commons/math3/dfp/Dfp;->sign:B

    if-gez v2, :cond_2

    iget-object v2, p0, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    iget-object v3, p0, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    array-length v3, v3

    add-int/lit8 v3, v3, -0x1

    aget v2, v2, v3

    if-nez v2, :cond_1

    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->isInfinite()Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    :goto_1
    move v1, v0

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_1
.end method

.method public strictlyPositive()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 850
    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->isNaN()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 851
    iget-object v2, p0, Lorg/apache/commons/math3/dfp/Dfp;->field:Lorg/apache/commons/math3/dfp/DfpField;

    invoke-virtual {v2, v0}, Lorg/apache/commons/math3/dfp/DfpField;->setIEEEFlagsBits(I)V

    .line 852
    const-string v2, "lessThan"

    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->getZero()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v3

    invoke-virtual {p0, v3}, Lorg/apache/commons/math3/dfp/Dfp;->newInstance(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v3

    invoke-virtual {p0, v0, v2, p0, v3}, Lorg/apache/commons/math3/dfp/Dfp;->dotrap(ILjava/lang/String;Lorg/apache/commons/math3/dfp/Dfp;Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    .line 856
    :goto_0
    return v1

    :cond_0
    iget-byte v2, p0, Lorg/apache/commons/math3/dfp/Dfp;->sign:B

    if-lez v2, :cond_2

    iget-object v2, p0, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    iget-object v3, p0, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    array-length v3, v3

    add-int/lit8 v3, v3, -0x1

    aget v2, v2, v3

    if-nez v2, :cond_1

    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->isInfinite()Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    :goto_1
    move v1, v0

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_1
.end method

.method public bridge synthetic subtract(D)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # D

    .prologue
    .line 97
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/math3/dfp/Dfp;->subtract(D)Lorg/apache/commons/math3/dfp/Dfp;

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
    .line 97
    check-cast p1, Lorg/apache/commons/math3/dfp/Dfp;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/dfp/Dfp;->subtract(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    return-object v0
.end method

.method public subtract(D)Lorg/apache/commons/math3/dfp/Dfp;
    .locals 1
    .param p1, "a"    # D

    .prologue
    .line 2532
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/math3/dfp/Dfp;->newInstance(D)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/dfp/Dfp;->subtract(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    return-object v0
.end method

.method public subtract(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;
    .locals 1
    .param p1, "x"    # Lorg/apache/commons/math3/dfp/Dfp;

    .prologue
    .line 1417
    invoke-virtual {p1}, Lorg/apache/commons/math3/dfp/Dfp;->negate()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/dfp/Dfp;->add(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic tan()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 97
    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->tan()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    return-object v0
.end method

.method public tan()Lorg/apache/commons/math3/dfp/Dfp;
    .locals 1

    .prologue
    .line 2711
    invoke-static {p0}, Lorg/apache/commons/math3/dfp/DfpMath;->tan(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic tanh()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 97
    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->tanh()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    return-object v0
.end method

.method public tanh()Lorg/apache/commons/math3/dfp/Dfp;
    .locals 4

    .prologue
    .line 2778
    invoke-static {p0}, Lorg/apache/commons/math3/dfp/DfpMath;->exp(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v1

    .line 2779
    .local v1, "ePlus":Lorg/apache/commons/math3/dfp/Dfp;
    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->negate()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v2

    invoke-static {v2}, Lorg/apache/commons/math3/dfp/DfpMath;->exp(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    .line 2780
    .local v0, "eMinus":Lorg/apache/commons/math3/dfp/Dfp;
    invoke-virtual {v1, v0}, Lorg/apache/commons/math3/dfp/Dfp;->subtract(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v2

    invoke-virtual {v1, v0}, Lorg/apache/commons/math3/dfp/Dfp;->add(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/apache/commons/math3/dfp/Dfp;->divide(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v2

    return-object v2
.end method

.method public toDouble()D
    .locals 18

    .prologue
    .line 2416
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/dfp/Dfp;->isInfinite()Z

    move-result v14

    if-eqz v14, :cond_1

    .line 2417
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/dfp/Dfp;->getZero()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lorg/apache/commons/math3/dfp/Dfp;->lessThan(Lorg/apache/commons/math3/dfp/Dfp;)Z

    move-result v14

    if-eqz v14, :cond_0

    .line 2418
    const-wide/high16 v14, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    .line 2496
    :goto_0
    return-wide v14

    .line 2420
    :cond_0
    const-wide/high16 v14, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    goto :goto_0

    .line 2424
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/dfp/Dfp;->isNaN()Z

    move-result v14

    if-eqz v14, :cond_2

    .line 2425
    const-wide/high16 v14, 0x7ff8000000000000L    # NaN

    goto :goto_0

    .line 2428
    :cond_2
    move-object/from16 v11, p0

    .line 2429
    .local v11, "y":Lorg/apache/commons/math3/dfp/Dfp;
    const/4 v8, 0x0

    .line 2430
    .local v8, "negate":Z
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/dfp/Dfp;->getZero()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-static {v0, v14}, Lorg/apache/commons/math3/dfp/Dfp;->compare(Lorg/apache/commons/math3/dfp/Dfp;Lorg/apache/commons/math3/dfp/Dfp;)I

    move-result v4

    .line 2431
    .local v4, "cmp0":I
    if-nez v4, :cond_4

    .line 2432
    move-object/from16 v0, p0

    iget-byte v14, v0, Lorg/apache/commons/math3/dfp/Dfp;->sign:B

    if-gez v14, :cond_3

    const-wide/high16 v14, -0x8000000000000000L

    goto :goto_0

    :cond_3
    const-wide/16 v14, 0x0

    goto :goto_0

    .line 2433
    :cond_4
    if-gez v4, :cond_5

    .line 2434
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/dfp/Dfp;->negate()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v11

    .line 2435
    const/4 v8, 0x1

    .line 2440
    :cond_5
    invoke-virtual {v11}, Lorg/apache/commons/math3/dfp/Dfp;->intLog10()I

    move-result v14

    int-to-double v14, v14

    const-wide v16, 0x400a8f5c28f5c28fL    # 3.32

    mul-double v14, v14, v16

    double-to-int v5, v14

    .line 2441
    .local v5, "exponent":I
    if-gez v5, :cond_6

    .line 2442
    add-int/lit8 v5, v5, -0x1

    .line 2445
    :cond_6
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/dfp/Dfp;->getTwo()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v14

    invoke-static {v14, v5}, Lorg/apache/commons/math3/dfp/DfpMath;->pow(Lorg/apache/commons/math3/dfp/Dfp;I)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v10

    .line 2446
    .local v10, "tempDfp":Lorg/apache/commons/math3/dfp/Dfp;
    :goto_1
    invoke-virtual {v10, v11}, Lorg/apache/commons/math3/dfp/Dfp;->lessThan(Lorg/apache/commons/math3/dfp/Dfp;)Z

    move-result v14

    if-nez v14, :cond_7

    invoke-virtual {v10, v11}, Lorg/apache/commons/math3/dfp/Dfp;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_8

    .line 2447
    :cond_7
    const/4 v14, 0x2

    invoke-virtual {v10, v14}, Lorg/apache/commons/math3/dfp/Dfp;->multiply(I)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v10

    .line 2448
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 2450
    :cond_8
    add-int/lit8 v5, v5, -0x1

    .line 2454
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/dfp/Dfp;->getTwo()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v14

    invoke-static {v14, v5}, Lorg/apache/commons/math3/dfp/DfpMath;->pow(Lorg/apache/commons/math3/dfp/Dfp;I)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v14

    invoke-virtual {v11, v14}, Lorg/apache/commons/math3/dfp/Dfp;->divide(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v11

    .line 2455
    const/16 v14, -0x3ff

    if-le v5, v14, :cond_9

    .line 2456
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/dfp/Dfp;->getOne()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v14

    invoke-virtual {v11, v14}, Lorg/apache/commons/math3/dfp/Dfp;->subtract(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v11

    .line 2459
    :cond_9
    const/16 v14, -0x432

    if-ge v5, v14, :cond_a

    .line 2460
    const-wide/16 v14, 0x0

    goto :goto_0

    .line 2463
    :cond_a
    const/16 v14, 0x3ff

    if-le v5, v14, :cond_c

    .line 2464
    if-eqz v8, :cond_b

    const-wide/high16 v14, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    goto/16 :goto_0

    :cond_b
    const-wide/high16 v14, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    goto/16 :goto_0

    .line 2468
    :cond_c
    const-wide/high16 v14, 0x10000000000000L

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v15}, Lorg/apache/commons/math3/dfp/Dfp;->newInstance(J)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v14

    invoke-virtual {v11, v14}, Lorg/apache/commons/math3/dfp/Dfp;->multiply(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v14

    invoke-virtual {v14}, Lorg/apache/commons/math3/dfp/Dfp;->rint()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v11

    .line 2469
    invoke-virtual {v11}, Lorg/apache/commons/math3/dfp/Dfp;->toString()Ljava/lang/String;

    move-result-object v9

    .line 2470
    .local v9, "str":Ljava/lang/String;
    const/4 v14, 0x0

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v15

    add-int/lit8 v15, v15, -0x1

    invoke-virtual {v9, v14, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    .line 2471
    invoke-static {v9}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    .line 2473
    .local v6, "mantissa":J
    const-wide/high16 v14, 0x10000000000000L

    cmp-long v14, v6, v14

    if-nez v14, :cond_d

    .line 2475
    const-wide/16 v6, 0x0

    .line 2476
    add-int/lit8 v5, v5, 0x1

    .line 2480
    :cond_d
    const/16 v14, -0x3ff

    if-gt v5, v14, :cond_e

    .line 2481
    add-int/lit8 v5, v5, -0x1

    .line 2484
    :cond_e
    :goto_2
    const/16 v14, -0x3ff

    if-ge v5, v14, :cond_f

    .line 2485
    add-int/lit8 v5, v5, 0x1

    .line 2486
    const/4 v14, 0x1

    ushr-long/2addr v6, v14

    goto :goto_2

    .line 2489
    :cond_f
    int-to-long v14, v5

    const-wide/16 v16, 0x3ff

    add-long v14, v14, v16

    const/16 v16, 0x34

    shl-long v14, v14, v16

    or-long v2, v6, v14

    .line 2490
    .local v2, "bits":J
    invoke-static {v2, v3}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v12

    .line 2492
    .local v12, "x":D
    if-eqz v8, :cond_10

    .line 2493
    neg-double v12, v12

    :cond_10
    move-wide v14, v12

    .line 2496
    goto/16 :goto_0
.end method

.method public toSplitDouble()[D
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 2505
    const/4 v3, 0x2

    new-array v2, v3, [D

    .line 2506
    .local v2, "split":[D
    const-wide/32 v0, -0x40000000

    .line 2508
    .local v0, "mask":J
    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->toDouble()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v4

    and-long/2addr v4, v0

    invoke-static {v4, v5}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v4

    aput-wide v4, v2, v6

    .line 2509
    const/4 v3, 0x1

    aget-wide v4, v2, v6

    invoke-virtual {p0, v4, v5}, Lorg/apache/commons/math3/dfp/Dfp;->newInstance(D)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v4

    invoke-virtual {p0, v4}, Lorg/apache/commons/math3/dfp/Dfp;->subtract(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v4

    invoke-virtual {v4}, Lorg/apache/commons/math3/dfp/Dfp;->toDouble()D

    move-result-wide v4

    aput-wide v4, v2, v3

    .line 2511
    return-object v2
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 2066
    iget-byte v0, p0, Lorg/apache/commons/math3/dfp/Dfp;->nans:B

    if-eqz v0, :cond_2

    .line 2068
    iget-byte v0, p0, Lorg/apache/commons/math3/dfp/Dfp;->nans:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 2069
    iget-byte v0, p0, Lorg/apache/commons/math3/dfp/Dfp;->sign:B

    if-gez v0, :cond_0

    const-string v0, "-Infinity"

    .line 2079
    :goto_0
    return-object v0

    .line 2069
    :cond_0
    const-string v0, "Infinity"

    goto :goto_0

    .line 2071
    :cond_1
    const-string v0, "NaN"

    goto :goto_0

    .line 2075
    :cond_2
    iget v0, p0, Lorg/apache/commons/math3/dfp/Dfp;->exp:I

    iget-object v1, p0, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    array-length v1, v1

    if-gt v0, v1, :cond_3

    iget v0, p0, Lorg/apache/commons/math3/dfp/Dfp;->exp:I

    const/4 v1, -0x1

    if-ge v0, v1, :cond_4

    .line 2076
    :cond_3
    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->dfp2sci()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 2079
    :cond_4
    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->dfp2string()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method protected trap(ILjava/lang/String;Lorg/apache/commons/math3/dfp/Dfp;Lorg/apache/commons/math3/dfp/Dfp;Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;
    .locals 0
    .param p1, "type"    # I
    .param p2, "what"    # Ljava/lang/String;
    .param p3, "oper"    # Lorg/apache/commons/math3/dfp/Dfp;
    .param p4, "def"    # Lorg/apache/commons/math3/dfp/Dfp;
    .param p5, "result"    # Lorg/apache/commons/math3/dfp/Dfp;

    .prologue
    .line 2315
    return-object p4
.end method

.method protected trunc(Lorg/apache/commons/math3/dfp/DfpField$RoundingMode;)Lorg/apache/commons/math3/dfp/Dfp;
    .locals 11
    .param p1, "rmode"    # Lorg/apache/commons/math3/dfp/DfpField$RoundingMode;

    .prologue
    const/4 v7, 0x0

    const/4 v10, -0x1

    const/16 v9, 0x10

    const/4 v6, 0x1

    .line 1051
    const/4 v1, 0x0

    .line 1053
    .local v1, "changed":Z
    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->isNaN()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1054
    invoke-virtual {p0, p0}, Lorg/apache/commons/math3/dfp/Dfp;->newInstance(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v4

    .line 1133
    :cond_0
    :goto_0
    return-object v4

    .line 1057
    :cond_1
    iget-byte v5, p0, Lorg/apache/commons/math3/dfp/Dfp;->nans:B

    if-ne v5, v6, :cond_2

    .line 1058
    invoke-virtual {p0, p0}, Lorg/apache/commons/math3/dfp/Dfp;->newInstance(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v4

    goto :goto_0

    .line 1061
    :cond_2
    iget-object v5, p0, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    iget-object v8, p0, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    array-length v8, v8

    add-int/lit8 v8, v8, -0x1

    aget v5, v5, v8

    if-nez v5, :cond_3

    .line 1063
    invoke-virtual {p0, p0}, Lorg/apache/commons/math3/dfp/Dfp;->newInstance(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v4

    goto :goto_0

    .line 1068
    :cond_3
    iget v5, p0, Lorg/apache/commons/math3/dfp/Dfp;->exp:I

    if-gez v5, :cond_4

    .line 1069
    iget-object v5, p0, Lorg/apache/commons/math3/dfp/Dfp;->field:Lorg/apache/commons/math3/dfp/DfpField;

    invoke-virtual {v5, v9}, Lorg/apache/commons/math3/dfp/DfpField;->setIEEEFlagsBits(I)V

    .line 1070
    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->getZero()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v5

    invoke-virtual {p0, v5}, Lorg/apache/commons/math3/dfp/Dfp;->newInstance(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v4

    .line 1071
    .local v4, "result":Lorg/apache/commons/math3/dfp/Dfp;
    const-string v5, "trunc"

    invoke-virtual {p0, v9, v5, p0, v4}, Lorg/apache/commons/math3/dfp/Dfp;->dotrap(ILjava/lang/String;Lorg/apache/commons/math3/dfp/Dfp;Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v4

    .line 1072
    goto :goto_0

    .line 1079
    .end local v4    # "result":Lorg/apache/commons/math3/dfp/Dfp;
    :cond_4
    iget v5, p0, Lorg/apache/commons/math3/dfp/Dfp;->exp:I

    iget-object v8, p0, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    array-length v8, v8

    if-lt v5, v8, :cond_5

    .line 1080
    invoke-virtual {p0, p0}, Lorg/apache/commons/math3/dfp/Dfp;->newInstance(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v4

    goto :goto_0

    .line 1086
    :cond_5
    invoke-virtual {p0, p0}, Lorg/apache/commons/math3/dfp/Dfp;->newInstance(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v4

    .line 1087
    .restart local v4    # "result":Lorg/apache/commons/math3/dfp/Dfp;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    iget-object v5, p0, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    array-length v5, v5

    iget v8, v4, Lorg/apache/commons/math3/dfp/Dfp;->exp:I

    sub-int/2addr v5, v8

    if-ge v3, v5, :cond_7

    .line 1088
    iget-object v5, v4, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    aget v5, v5, v3

    if-eqz v5, :cond_6

    move v5, v6

    :goto_2
    or-int/2addr v1, v5

    .line 1089
    iget-object v5, v4, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    aput v7, v5, v3

    .line 1087
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_6
    move v5, v7

    .line 1088
    goto :goto_2

    .line 1092
    :cond_7
    if-eqz v1, :cond_0

    .line 1093
    sget-object v5, Lorg/apache/commons/math3/dfp/Dfp$1;->$SwitchMap$org$apache$commons$math3$dfp$DfpField$RoundingMode:[I

    invoke-virtual {p1}, Lorg/apache/commons/math3/dfp/DfpField$RoundingMode;->ordinal()I

    move-result v7

    aget v5, v5, v7

    packed-switch v5, :pswitch_data_0

    .line 1110
    const-string v5, "0.5"

    invoke-virtual {p0, v5}, Lorg/apache/commons/math3/dfp/Dfp;->newInstance(Ljava/lang/String;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v2

    .line 1111
    .local v2, "half":Lorg/apache/commons/math3/dfp/Dfp;
    invoke-virtual {p0, v4}, Lorg/apache/commons/math3/dfp/Dfp;->subtract(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    .line 1112
    .local v0, "a":Lorg/apache/commons/math3/dfp/Dfp;
    iput-byte v6, v0, Lorg/apache/commons/math3/dfp/Dfp;->sign:B

    .line 1113
    invoke-virtual {v0, v2}, Lorg/apache/commons/math3/dfp/Dfp;->greaterThan(Lorg/apache/commons/math3/dfp/Dfp;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 1114
    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->getOne()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v5

    invoke-virtual {p0, v5}, Lorg/apache/commons/math3/dfp/Dfp;->newInstance(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    .line 1115
    iget-byte v5, p0, Lorg/apache/commons/math3/dfp/Dfp;->sign:B

    iput-byte v5, v0, Lorg/apache/commons/math3/dfp/Dfp;->sign:B

    .line 1116
    invoke-virtual {v4, v0}, Lorg/apache/commons/math3/dfp/Dfp;->add(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v4

    .line 1120
    :cond_8
    invoke-virtual {v0, v2}, Lorg/apache/commons/math3/dfp/Dfp;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    iget v5, v4, Lorg/apache/commons/math3/dfp/Dfp;->exp:I

    if-lez v5, :cond_9

    iget-object v5, v4, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    iget-object v6, p0, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    array-length v6, v6

    iget v7, v4, Lorg/apache/commons/math3/dfp/Dfp;->exp:I

    sub-int/2addr v6, v7

    aget v5, v5, v6

    and-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_9

    .line 1121
    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->getOne()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v5

    invoke-virtual {p0, v5}, Lorg/apache/commons/math3/dfp/Dfp;->newInstance(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    .line 1122
    iget-byte v5, p0, Lorg/apache/commons/math3/dfp/Dfp;->sign:B

    iput-byte v5, v0, Lorg/apache/commons/math3/dfp/Dfp;->sign:B

    .line 1123
    invoke-virtual {v4, v0}, Lorg/apache/commons/math3/dfp/Dfp;->add(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v4

    .line 1128
    .end local v0    # "a":Lorg/apache/commons/math3/dfp/Dfp;
    .end local v2    # "half":Lorg/apache/commons/math3/dfp/Dfp;
    :cond_9
    :goto_3
    iget-object v5, p0, Lorg/apache/commons/math3/dfp/Dfp;->field:Lorg/apache/commons/math3/dfp/DfpField;

    invoke-virtual {v5, v9}, Lorg/apache/commons/math3/dfp/DfpField;->setIEEEFlagsBits(I)V

    .line 1129
    const-string v5, "trunc"

    invoke-virtual {p0, v9, v5, p0, v4}, Lorg/apache/commons/math3/dfp/Dfp;->dotrap(ILjava/lang/String;Lorg/apache/commons/math3/dfp/Dfp;Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v4

    .line 1130
    goto/16 :goto_0

    .line 1095
    :pswitch_0
    iget-byte v5, v4, Lorg/apache/commons/math3/dfp/Dfp;->sign:B

    if-ne v5, v10, :cond_9

    .line 1097
    invoke-virtual {p0, v10}, Lorg/apache/commons/math3/dfp/Dfp;->newInstance(I)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/apache/commons/math3/dfp/Dfp;->add(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v4

    goto :goto_3

    .line 1102
    :pswitch_1
    iget-byte v5, v4, Lorg/apache/commons/math3/dfp/Dfp;->sign:B

    if-ne v5, v6, :cond_9

    .line 1104
    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->getOne()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/apache/commons/math3/dfp/Dfp;->add(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v4

    goto :goto_3

    .line 1093
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public unequal(Lorg/apache/commons/math3/dfp/Dfp;)Z
    .locals 3
    .param p1, "x"    # Lorg/apache/commons/math3/dfp/Dfp;

    .prologue
    const/4 v0, 0x0

    .line 933
    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->isNaN()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p1}, Lorg/apache/commons/math3/dfp/Dfp;->isNaN()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lorg/apache/commons/math3/dfp/Dfp;->field:Lorg/apache/commons/math3/dfp/DfpField;

    invoke-virtual {v1}, Lorg/apache/commons/math3/dfp/DfpField;->getRadixDigits()I

    move-result v1

    iget-object v2, p1, Lorg/apache/commons/math3/dfp/Dfp;->field:Lorg/apache/commons/math3/dfp/DfpField;

    invoke-virtual {v2}, Lorg/apache/commons/math3/dfp/DfpField;->getRadixDigits()I

    move-result v2

    if-eq v1, v2, :cond_1

    .line 937
    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/dfp/Dfp;->greaterThan(Lorg/apache/commons/math3/dfp/Dfp;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/dfp/Dfp;->lessThan(Lorg/apache/commons/math3/dfp/Dfp;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method
