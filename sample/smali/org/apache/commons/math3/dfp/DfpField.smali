.class public Lorg/apache/commons/math3/dfp/DfpField;
.super Ljava/lang/Object;
.source "DfpField.java"

# interfaces
.implements Lorg/apache/commons/math3/Field;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/math3/dfp/DfpField$RoundingMode;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/apache/commons/math3/Field",
        "<",
        "Lorg/apache/commons/math3/dfp/Dfp;",
        ">;"
    }
.end annotation


# static fields
.field public static final FLAG_DIV_ZERO:I = 0x2

.field public static final FLAG_INEXACT:I = 0x10

.field public static final FLAG_INVALID:I = 0x1

.field public static final FLAG_OVERFLOW:I = 0x4

.field public static final FLAG_UNDERFLOW:I = 0x8

.field private static eString:Ljava/lang/String;

.field private static ln10String:Ljava/lang/String;

.field private static ln2String:Ljava/lang/String;

.field private static ln5String:Ljava/lang/String;

.field private static piString:Ljava/lang/String;

.field private static sqr2ReciprocalString:Ljava/lang/String;

.field private static sqr2String:Ljava/lang/String;

.field private static sqr3ReciprocalString:Ljava/lang/String;

.field private static sqr3String:Ljava/lang/String;


# instance fields
.field private final e:Lorg/apache/commons/math3/dfp/Dfp;

.field private final eSplit:[Lorg/apache/commons/math3/dfp/Dfp;

.field private ieeeFlags:I

.field private final ln10:Lorg/apache/commons/math3/dfp/Dfp;

.field private final ln2:Lorg/apache/commons/math3/dfp/Dfp;

.field private final ln2Split:[Lorg/apache/commons/math3/dfp/Dfp;

.field private final ln5:Lorg/apache/commons/math3/dfp/Dfp;

.field private final ln5Split:[Lorg/apache/commons/math3/dfp/Dfp;

.field private final one:Lorg/apache/commons/math3/dfp/Dfp;

.field private final pi:Lorg/apache/commons/math3/dfp/Dfp;

.field private final piSplit:[Lorg/apache/commons/math3/dfp/Dfp;

.field private rMode:Lorg/apache/commons/math3/dfp/DfpField$RoundingMode;

.field private final radixDigits:I

.field private final sqr2:Lorg/apache/commons/math3/dfp/Dfp;

.field private final sqr2Reciprocal:Lorg/apache/commons/math3/dfp/Dfp;

.field private final sqr2Split:[Lorg/apache/commons/math3/dfp/Dfp;

.field private final sqr3:Lorg/apache/commons/math3/dfp/Dfp;

.field private final sqr3Reciprocal:Lorg/apache/commons/math3/dfp/Dfp;

.field private final two:Lorg/apache/commons/math3/dfp/Dfp;

.field private final zero:Lorg/apache/commons/math3/dfp/Dfp;


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .param p1, "decimalDigits"    # I

    .prologue
    .line 176
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lorg/apache/commons/math3/dfp/DfpField;-><init>(IZ)V

    .line 177
    return-void
.end method

.method private constructor <init>(IZ)V
    .locals 3
    .param p1, "decimalDigits"    # I
    .param p2, "computeConstants"    # Z

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 190
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 192
    const/16 v0, 0xd

    if-ge p1, v0, :cond_0

    const/4 v0, 0x4

    :goto_0
    iput v0, p0, Lorg/apache/commons/math3/dfp/DfpField;->radixDigits:I

    .line 193
    sget-object v0, Lorg/apache/commons/math3/dfp/DfpField$RoundingMode;->ROUND_HALF_EVEN:Lorg/apache/commons/math3/dfp/DfpField$RoundingMode;

    iput-object v0, p0, Lorg/apache/commons/math3/dfp/DfpField;->rMode:Lorg/apache/commons/math3/dfp/DfpField$RoundingMode;

    .line 194
    iput v1, p0, Lorg/apache/commons/math3/dfp/DfpField;->ieeeFlags:I

    .line 195
    new-instance v0, Lorg/apache/commons/math3/dfp/Dfp;

    invoke-direct {v0, p0, v1}, Lorg/apache/commons/math3/dfp/Dfp;-><init>(Lorg/apache/commons/math3/dfp/DfpField;I)V

    iput-object v0, p0, Lorg/apache/commons/math3/dfp/DfpField;->zero:Lorg/apache/commons/math3/dfp/Dfp;

    .line 196
    new-instance v0, Lorg/apache/commons/math3/dfp/Dfp;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lorg/apache/commons/math3/dfp/Dfp;-><init>(Lorg/apache/commons/math3/dfp/DfpField;I)V

    iput-object v0, p0, Lorg/apache/commons/math3/dfp/DfpField;->one:Lorg/apache/commons/math3/dfp/Dfp;

    .line 197
    new-instance v0, Lorg/apache/commons/math3/dfp/Dfp;

    const/4 v1, 0x2

    invoke-direct {v0, p0, v1}, Lorg/apache/commons/math3/dfp/Dfp;-><init>(Lorg/apache/commons/math3/dfp/DfpField;I)V

    iput-object v0, p0, Lorg/apache/commons/math3/dfp/DfpField;->two:Lorg/apache/commons/math3/dfp/Dfp;

    .line 199
    if-eqz p2, :cond_2

    .line 201
    const-class v1, Lorg/apache/commons/math3/dfp/DfpField;

    monitor-enter v1

    .line 207
    const/16 v0, 0x43

    if-ge p1, v0, :cond_1

    const/16 v0, 0xc8

    :goto_1
    :try_start_0
    invoke-static {v0}, Lorg/apache/commons/math3/dfp/DfpField;->computeStringConstants(I)V

    .line 210
    new-instance v0, Lorg/apache/commons/math3/dfp/Dfp;

    sget-object v2, Lorg/apache/commons/math3/dfp/DfpField;->sqr2String:Ljava/lang/String;

    invoke-direct {v0, p0, v2}, Lorg/apache/commons/math3/dfp/Dfp;-><init>(Lorg/apache/commons/math3/dfp/DfpField;Ljava/lang/String;)V

    iput-object v0, p0, Lorg/apache/commons/math3/dfp/DfpField;->sqr2:Lorg/apache/commons/math3/dfp/Dfp;

    .line 211
    sget-object v0, Lorg/apache/commons/math3/dfp/DfpField;->sqr2String:Ljava/lang/String;

    invoke-direct {p0, v0}, Lorg/apache/commons/math3/dfp/DfpField;->split(Ljava/lang/String;)[Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/math3/dfp/DfpField;->sqr2Split:[Lorg/apache/commons/math3/dfp/Dfp;

    .line 212
    new-instance v0, Lorg/apache/commons/math3/dfp/Dfp;

    sget-object v2, Lorg/apache/commons/math3/dfp/DfpField;->sqr2ReciprocalString:Ljava/lang/String;

    invoke-direct {v0, p0, v2}, Lorg/apache/commons/math3/dfp/Dfp;-><init>(Lorg/apache/commons/math3/dfp/DfpField;Ljava/lang/String;)V

    iput-object v0, p0, Lorg/apache/commons/math3/dfp/DfpField;->sqr2Reciprocal:Lorg/apache/commons/math3/dfp/Dfp;

    .line 213
    new-instance v0, Lorg/apache/commons/math3/dfp/Dfp;

    sget-object v2, Lorg/apache/commons/math3/dfp/DfpField;->sqr3String:Ljava/lang/String;

    invoke-direct {v0, p0, v2}, Lorg/apache/commons/math3/dfp/Dfp;-><init>(Lorg/apache/commons/math3/dfp/DfpField;Ljava/lang/String;)V

    iput-object v0, p0, Lorg/apache/commons/math3/dfp/DfpField;->sqr3:Lorg/apache/commons/math3/dfp/Dfp;

    .line 214
    new-instance v0, Lorg/apache/commons/math3/dfp/Dfp;

    sget-object v2, Lorg/apache/commons/math3/dfp/DfpField;->sqr3ReciprocalString:Ljava/lang/String;

    invoke-direct {v0, p0, v2}, Lorg/apache/commons/math3/dfp/Dfp;-><init>(Lorg/apache/commons/math3/dfp/DfpField;Ljava/lang/String;)V

    iput-object v0, p0, Lorg/apache/commons/math3/dfp/DfpField;->sqr3Reciprocal:Lorg/apache/commons/math3/dfp/Dfp;

    .line 215
    new-instance v0, Lorg/apache/commons/math3/dfp/Dfp;

    sget-object v2, Lorg/apache/commons/math3/dfp/DfpField;->piString:Ljava/lang/String;

    invoke-direct {v0, p0, v2}, Lorg/apache/commons/math3/dfp/Dfp;-><init>(Lorg/apache/commons/math3/dfp/DfpField;Ljava/lang/String;)V

    iput-object v0, p0, Lorg/apache/commons/math3/dfp/DfpField;->pi:Lorg/apache/commons/math3/dfp/Dfp;

    .line 216
    sget-object v0, Lorg/apache/commons/math3/dfp/DfpField;->piString:Ljava/lang/String;

    invoke-direct {p0, v0}, Lorg/apache/commons/math3/dfp/DfpField;->split(Ljava/lang/String;)[Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/math3/dfp/DfpField;->piSplit:[Lorg/apache/commons/math3/dfp/Dfp;

    .line 217
    new-instance v0, Lorg/apache/commons/math3/dfp/Dfp;

    sget-object v2, Lorg/apache/commons/math3/dfp/DfpField;->eString:Ljava/lang/String;

    invoke-direct {v0, p0, v2}, Lorg/apache/commons/math3/dfp/Dfp;-><init>(Lorg/apache/commons/math3/dfp/DfpField;Ljava/lang/String;)V

    iput-object v0, p0, Lorg/apache/commons/math3/dfp/DfpField;->e:Lorg/apache/commons/math3/dfp/Dfp;

    .line 218
    sget-object v0, Lorg/apache/commons/math3/dfp/DfpField;->eString:Ljava/lang/String;

    invoke-direct {p0, v0}, Lorg/apache/commons/math3/dfp/DfpField;->split(Ljava/lang/String;)[Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/math3/dfp/DfpField;->eSplit:[Lorg/apache/commons/math3/dfp/Dfp;

    .line 219
    new-instance v0, Lorg/apache/commons/math3/dfp/Dfp;

    sget-object v2, Lorg/apache/commons/math3/dfp/DfpField;->ln2String:Ljava/lang/String;

    invoke-direct {v0, p0, v2}, Lorg/apache/commons/math3/dfp/Dfp;-><init>(Lorg/apache/commons/math3/dfp/DfpField;Ljava/lang/String;)V

    iput-object v0, p0, Lorg/apache/commons/math3/dfp/DfpField;->ln2:Lorg/apache/commons/math3/dfp/Dfp;

    .line 220
    sget-object v0, Lorg/apache/commons/math3/dfp/DfpField;->ln2String:Ljava/lang/String;

    invoke-direct {p0, v0}, Lorg/apache/commons/math3/dfp/DfpField;->split(Ljava/lang/String;)[Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/math3/dfp/DfpField;->ln2Split:[Lorg/apache/commons/math3/dfp/Dfp;

    .line 221
    new-instance v0, Lorg/apache/commons/math3/dfp/Dfp;

    sget-object v2, Lorg/apache/commons/math3/dfp/DfpField;->ln5String:Ljava/lang/String;

    invoke-direct {v0, p0, v2}, Lorg/apache/commons/math3/dfp/Dfp;-><init>(Lorg/apache/commons/math3/dfp/DfpField;Ljava/lang/String;)V

    iput-object v0, p0, Lorg/apache/commons/math3/dfp/DfpField;->ln5:Lorg/apache/commons/math3/dfp/Dfp;

    .line 222
    sget-object v0, Lorg/apache/commons/math3/dfp/DfpField;->ln5String:Ljava/lang/String;

    invoke-direct {p0, v0}, Lorg/apache/commons/math3/dfp/DfpField;->split(Ljava/lang/String;)[Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/math3/dfp/DfpField;->ln5Split:[Lorg/apache/commons/math3/dfp/Dfp;

    .line 223
    new-instance v0, Lorg/apache/commons/math3/dfp/Dfp;

    sget-object v2, Lorg/apache/commons/math3/dfp/DfpField;->ln10String:Ljava/lang/String;

    invoke-direct {v0, p0, v2}, Lorg/apache/commons/math3/dfp/Dfp;-><init>(Lorg/apache/commons/math3/dfp/DfpField;Ljava/lang/String;)V

    iput-object v0, p0, Lorg/apache/commons/math3/dfp/DfpField;->ln10:Lorg/apache/commons/math3/dfp/Dfp;

    .line 225
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 244
    :goto_2
    return-void

    .line 192
    :cond_0
    add-int/lit8 v0, p1, 0x3

    div-int/lit8 v0, v0, 0x4

    goto/16 :goto_0

    .line 207
    :cond_1
    mul-int/lit8 v0, p1, 0x3

    goto/16 :goto_1

    .line 225
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 228
    :cond_2
    iput-object v2, p0, Lorg/apache/commons/math3/dfp/DfpField;->sqr2:Lorg/apache/commons/math3/dfp/Dfp;

    .line 229
    iput-object v2, p0, Lorg/apache/commons/math3/dfp/DfpField;->sqr2Split:[Lorg/apache/commons/math3/dfp/Dfp;

    .line 230
    iput-object v2, p0, Lorg/apache/commons/math3/dfp/DfpField;->sqr2Reciprocal:Lorg/apache/commons/math3/dfp/Dfp;

    .line 231
    iput-object v2, p0, Lorg/apache/commons/math3/dfp/DfpField;->sqr3:Lorg/apache/commons/math3/dfp/Dfp;

    .line 232
    iput-object v2, p0, Lorg/apache/commons/math3/dfp/DfpField;->sqr3Reciprocal:Lorg/apache/commons/math3/dfp/Dfp;

    .line 233
    iput-object v2, p0, Lorg/apache/commons/math3/dfp/DfpField;->pi:Lorg/apache/commons/math3/dfp/Dfp;

    .line 234
    iput-object v2, p0, Lorg/apache/commons/math3/dfp/DfpField;->piSplit:[Lorg/apache/commons/math3/dfp/Dfp;

    .line 235
    iput-object v2, p0, Lorg/apache/commons/math3/dfp/DfpField;->e:Lorg/apache/commons/math3/dfp/Dfp;

    .line 236
    iput-object v2, p0, Lorg/apache/commons/math3/dfp/DfpField;->eSplit:[Lorg/apache/commons/math3/dfp/Dfp;

    .line 237
    iput-object v2, p0, Lorg/apache/commons/math3/dfp/DfpField;->ln2:Lorg/apache/commons/math3/dfp/Dfp;

    .line 238
    iput-object v2, p0, Lorg/apache/commons/math3/dfp/DfpField;->ln2Split:[Lorg/apache/commons/math3/dfp/Dfp;

    .line 239
    iput-object v2, p0, Lorg/apache/commons/math3/dfp/DfpField;->ln5:Lorg/apache/commons/math3/dfp/Dfp;

    .line 240
    iput-object v2, p0, Lorg/apache/commons/math3/dfp/DfpField;->ln5Split:[Lorg/apache/commons/math3/dfp/Dfp;

    .line 241
    iput-object v2, p0, Lorg/apache/commons/math3/dfp/DfpField;->ln10:Lorg/apache/commons/math3/dfp/Dfp;

    goto :goto_2
.end method

.method public static computeExp(Lorg/apache/commons/math3/dfp/Dfp;Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;
    .locals 7
    .param p0, "a"    # Lorg/apache/commons/math3/dfp/Dfp;
    .param p1, "one"    # Lorg/apache/commons/math3/dfp/Dfp;

    .prologue
    .line 652
    new-instance v5, Lorg/apache/commons/math3/dfp/Dfp;

    invoke-direct {v5, p1}, Lorg/apache/commons/math3/dfp/Dfp;-><init>(Lorg/apache/commons/math3/dfp/Dfp;)V

    .line 653
    .local v5, "y":Lorg/apache/commons/math3/dfp/Dfp;
    new-instance v3, Lorg/apache/commons/math3/dfp/Dfp;

    invoke-direct {v3, p1}, Lorg/apache/commons/math3/dfp/Dfp;-><init>(Lorg/apache/commons/math3/dfp/Dfp;)V

    .line 654
    .local v3, "py":Lorg/apache/commons/math3/dfp/Dfp;
    new-instance v0, Lorg/apache/commons/math3/dfp/Dfp;

    invoke-direct {v0, p1}, Lorg/apache/commons/math3/dfp/Dfp;-><init>(Lorg/apache/commons/math3/dfp/Dfp;)V

    .line 655
    .local v0, "f":Lorg/apache/commons/math3/dfp/Dfp;
    new-instance v1, Lorg/apache/commons/math3/dfp/Dfp;

    invoke-direct {v1, p1}, Lorg/apache/commons/math3/dfp/Dfp;-><init>(Lorg/apache/commons/math3/dfp/Dfp;)V

    .line 656
    .local v1, "fi":Lorg/apache/commons/math3/dfp/Dfp;
    new-instance v4, Lorg/apache/commons/math3/dfp/Dfp;

    invoke-direct {v4, p1}, Lorg/apache/commons/math3/dfp/Dfp;-><init>(Lorg/apache/commons/math3/dfp/Dfp;)V

    .line 658
    .local v4, "x":Lorg/apache/commons/math3/dfp/Dfp;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    const/16 v6, 0x2710

    if-ge v2, v6, :cond_0

    .line 659
    invoke-virtual {v4, p0}, Lorg/apache/commons/math3/dfp/Dfp;->multiply(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v4

    .line 660
    invoke-virtual {v4, v0}, Lorg/apache/commons/math3/dfp/Dfp;->divide(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/apache/commons/math3/dfp/Dfp;->add(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v5

    .line 661
    invoke-virtual {v1, p1}, Lorg/apache/commons/math3/dfp/Dfp;->add(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v1

    .line 662
    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/dfp/Dfp;->multiply(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    .line 663
    invoke-virtual {v5, v3}, Lorg/apache/commons/math3/dfp/Dfp;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 669
    :cond_0
    return-object v5

    .line 666
    :cond_1
    new-instance v3, Lorg/apache/commons/math3/dfp/Dfp;

    .end local v3    # "py":Lorg/apache/commons/math3/dfp/Dfp;
    invoke-direct {v3, v5}, Lorg/apache/commons/math3/dfp/Dfp;-><init>(Lorg/apache/commons/math3/dfp/Dfp;)V

    .line 658
    .restart local v3    # "py":Lorg/apache/commons/math3/dfp/Dfp;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public static computeLn(Lorg/apache/commons/math3/dfp/Dfp;Lorg/apache/commons/math3/dfp/Dfp;Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;
    .locals 10
    .param p0, "a"    # Lorg/apache/commons/math3/dfp/Dfp;
    .param p1, "one"    # Lorg/apache/commons/math3/dfp/Dfp;
    .param p2, "two"    # Lorg/apache/commons/math3/dfp/Dfp;

    .prologue
    .line 735
    const/4 v0, 0x1

    .line 736
    .local v0, "den":I
    new-instance v7, Lorg/apache/commons/math3/dfp/Dfp;

    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->getField()Lorg/apache/commons/math3/dfp/DfpField;

    move-result-object v8

    const/4 v9, -0x1

    invoke-direct {v7, v8, v9}, Lorg/apache/commons/math3/dfp/Dfp;-><init>(Lorg/apache/commons/math3/dfp/DfpField;I)V

    invoke-virtual {p0, v7}, Lorg/apache/commons/math3/dfp/Dfp;->add(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v7

    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/dfp/Dfp;->add(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v8

    invoke-virtual {v7, v8}, Lorg/apache/commons/math3/dfp/Dfp;->divide(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v5

    .line 738
    .local v5, "x":Lorg/apache/commons/math3/dfp/Dfp;
    new-instance v6, Lorg/apache/commons/math3/dfp/Dfp;

    invoke-direct {v6, v5}, Lorg/apache/commons/math3/dfp/Dfp;-><init>(Lorg/apache/commons/math3/dfp/Dfp;)V

    .line 739
    .local v6, "y":Lorg/apache/commons/math3/dfp/Dfp;
    new-instance v2, Lorg/apache/commons/math3/dfp/Dfp;

    invoke-direct {v2, v5}, Lorg/apache/commons/math3/dfp/Dfp;-><init>(Lorg/apache/commons/math3/dfp/Dfp;)V

    .line 740
    .local v2, "num":Lorg/apache/commons/math3/dfp/Dfp;
    new-instance v3, Lorg/apache/commons/math3/dfp/Dfp;

    invoke-direct {v3, v6}, Lorg/apache/commons/math3/dfp/Dfp;-><init>(Lorg/apache/commons/math3/dfp/Dfp;)V

    .line 741
    .local v3, "py":Lorg/apache/commons/math3/dfp/Dfp;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/16 v7, 0x2710

    if-ge v1, v7, :cond_0

    .line 742
    invoke-virtual {v2, v5}, Lorg/apache/commons/math3/dfp/Dfp;->multiply(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v2

    .line 743
    invoke-virtual {v2, v5}, Lorg/apache/commons/math3/dfp/Dfp;->multiply(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v2

    .line 744
    add-int/lit8 v0, v0, 0x2

    .line 745
    invoke-virtual {v2, v0}, Lorg/apache/commons/math3/dfp/Dfp;->divide(I)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v4

    .line 746
    .local v4, "t":Lorg/apache/commons/math3/dfp/Dfp;
    invoke-virtual {v6, v4}, Lorg/apache/commons/math3/dfp/Dfp;->add(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v6

    .line 747
    invoke-virtual {v6, v3}, Lorg/apache/commons/math3/dfp/Dfp;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 753
    .end local v4    # "t":Lorg/apache/commons/math3/dfp/Dfp;
    :cond_0
    invoke-virtual {v6, p2}, Lorg/apache/commons/math3/dfp/Dfp;->multiply(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v7

    return-object v7

    .line 750
    .restart local v4    # "t":Lorg/apache/commons/math3/dfp/Dfp;
    :cond_1
    new-instance v3, Lorg/apache/commons/math3/dfp/Dfp;

    .end local v3    # "py":Lorg/apache/commons/math3/dfp/Dfp;
    invoke-direct {v3, v6}, Lorg/apache/commons/math3/dfp/Dfp;-><init>(Lorg/apache/commons/math3/dfp/Dfp;)V

    .line 741
    .restart local v3    # "py":Lorg/apache/commons/math3/dfp/Dfp;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private static computePi(Lorg/apache/commons/math3/dfp/Dfp;Lorg/apache/commons/math3/dfp/Dfp;Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;
    .locals 18
    .param p0, "one"    # Lorg/apache/commons/math3/dfp/Dfp;
    .param p1, "two"    # Lorg/apache/commons/math3/dfp/Dfp;
    .param p2, "three"    # Lorg/apache/commons/math3/dfp/Dfp;

    .prologue
    .line 610
    invoke-virtual/range {p1 .. p1}, Lorg/apache/commons/math3/dfp/Dfp;->sqrt()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v9

    .line 611
    .local v9, "sqrt2":Lorg/apache/commons/math3/dfp/Dfp;
    move-object/from16 v0, p0

    invoke-virtual {v9, v0}, Lorg/apache/commons/math3/dfp/Dfp;->subtract(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v12

    .line 612
    .local v12, "yk":Lorg/apache/commons/math3/dfp/Dfp;
    move-object/from16 v0, p1

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/dfp/Dfp;->add(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v3

    .line 613
    .local v3, "four":Lorg/apache/commons/math3/dfp/Dfp;
    move-object/from16 v10, p1

    .line 614
    .local v10, "two2kp3":Lorg/apache/commons/math3/dfp/Dfp;
    move-object/from16 v0, p1

    invoke-virtual {v0, v9}, Lorg/apache/commons/math3/dfp/Dfp;->multiply(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v14

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Lorg/apache/commons/math3/dfp/Dfp;->subtract(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v14

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Lorg/apache/commons/math3/dfp/Dfp;->multiply(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v2

    .line 622
    .local v2, "ak":Lorg/apache/commons/math3/dfp/Dfp;
    const/4 v4, 0x1

    .local v4, "i":I
    :goto_0
    const/16 v14, 0x14

    if-ge v4, v14, :cond_0

    .line 623
    move-object v13, v12

    .line 625
    .local v13, "ykM1":Lorg/apache/commons/math3/dfp/Dfp;
    invoke-virtual {v12, v12}, Lorg/apache/commons/math3/dfp/Dfp;->multiply(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v11

    .line 626
    .local v11, "y2":Lorg/apache/commons/math3/dfp/Dfp;
    invoke-virtual {v11, v11}, Lorg/apache/commons/math3/dfp/Dfp;->multiply(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lorg/apache/commons/math3/dfp/Dfp;->subtract(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v5

    .line 627
    .local v5, "oneMinusY4":Lorg/apache/commons/math3/dfp/Dfp;
    invoke-virtual {v5}, Lorg/apache/commons/math3/dfp/Dfp;->sqrt()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v14

    invoke-virtual {v14}, Lorg/apache/commons/math3/dfp/Dfp;->sqrt()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v8

    .line 628
    .local v8, "s":Lorg/apache/commons/math3/dfp/Dfp;
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lorg/apache/commons/math3/dfp/Dfp;->subtract(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lorg/apache/commons/math3/dfp/Dfp;->add(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v15

    invoke-virtual {v14, v15}, Lorg/apache/commons/math3/dfp/Dfp;->divide(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v12

    .line 630
    invoke-virtual {v10, v3}, Lorg/apache/commons/math3/dfp/Dfp;->multiply(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v10

    .line 632
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lorg/apache/commons/math3/dfp/Dfp;->add(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v6

    .line 633
    .local v6, "p":Lorg/apache/commons/math3/dfp/Dfp;
    invoke-virtual {v6, v6}, Lorg/apache/commons/math3/dfp/Dfp;->multiply(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v7

    .line 634
    .local v7, "p2":Lorg/apache/commons/math3/dfp/Dfp;
    invoke-virtual {v7, v7}, Lorg/apache/commons/math3/dfp/Dfp;->multiply(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v14

    invoke-virtual {v2, v14}, Lorg/apache/commons/math3/dfp/Dfp;->multiply(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v14

    invoke-virtual {v10, v12}, Lorg/apache/commons/math3/dfp/Dfp;->multiply(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lorg/apache/commons/math3/dfp/Dfp;->add(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v16

    invoke-virtual {v12, v12}, Lorg/apache/commons/math3/dfp/Dfp;->multiply(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Lorg/apache/commons/math3/dfp/Dfp;->add(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Lorg/apache/commons/math3/dfp/Dfp;->multiply(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v15

    invoke-virtual {v14, v15}, Lorg/apache/commons/math3/dfp/Dfp;->subtract(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v2

    .line 636
    invoke-virtual {v12, v13}, Lorg/apache/commons/math3/dfp/Dfp;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_1

    .line 641
    .end local v5    # "oneMinusY4":Lorg/apache/commons/math3/dfp/Dfp;
    .end local v6    # "p":Lorg/apache/commons/math3/dfp/Dfp;
    .end local v7    # "p2":Lorg/apache/commons/math3/dfp/Dfp;
    .end local v8    # "s":Lorg/apache/commons/math3/dfp/Dfp;
    .end local v11    # "y2":Lorg/apache/commons/math3/dfp/Dfp;
    .end local v13    # "ykM1":Lorg/apache/commons/math3/dfp/Dfp;
    :cond_0
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lorg/apache/commons/math3/dfp/Dfp;->divide(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v14

    return-object v14

    .line 622
    .restart local v5    # "oneMinusY4":Lorg/apache/commons/math3/dfp/Dfp;
    .restart local v6    # "p":Lorg/apache/commons/math3/dfp/Dfp;
    .restart local v7    # "p2":Lorg/apache/commons/math3/dfp/Dfp;
    .restart local v8    # "s":Lorg/apache/commons/math3/dfp/Dfp;
    .restart local v11    # "y2":Lorg/apache/commons/math3/dfp/Dfp;
    .restart local v13    # "ykM1":Lorg/apache/commons/math3/dfp/Dfp;
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0
.end method

.method private static computeStringConstants(I)V
    .locals 8
    .param p0, "highPrecisionDecimalDigits"    # I

    .prologue
    .line 577
    sget-object v6, Lorg/apache/commons/math3/dfp/DfpField;->sqr2String:Ljava/lang/String;

    if-eqz v6, :cond_0

    sget-object v6, Lorg/apache/commons/math3/dfp/DfpField;->sqr2String:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v7, p0, -0x3

    if-ge v6, v7, :cond_1

    .line 580
    :cond_0
    new-instance v0, Lorg/apache/commons/math3/dfp/DfpField;

    const/4 v6, 0x0

    invoke-direct {v0, p0, v6}, Lorg/apache/commons/math3/dfp/DfpField;-><init>(IZ)V

    .line 581
    .local v0, "highPrecisionField":Lorg/apache/commons/math3/dfp/DfpField;
    new-instance v1, Lorg/apache/commons/math3/dfp/Dfp;

    const/4 v6, 0x1

    invoke-direct {v1, v0, v6}, Lorg/apache/commons/math3/dfp/Dfp;-><init>(Lorg/apache/commons/math3/dfp/DfpField;I)V

    .line 582
    .local v1, "highPrecisionOne":Lorg/apache/commons/math3/dfp/Dfp;
    new-instance v5, Lorg/apache/commons/math3/dfp/Dfp;

    const/4 v6, 0x2

    invoke-direct {v5, v0, v6}, Lorg/apache/commons/math3/dfp/Dfp;-><init>(Lorg/apache/commons/math3/dfp/DfpField;I)V

    .line 583
    .local v5, "highPrecisionTwo":Lorg/apache/commons/math3/dfp/Dfp;
    new-instance v4, Lorg/apache/commons/math3/dfp/Dfp;

    const/4 v6, 0x3

    invoke-direct {v4, v0, v6}, Lorg/apache/commons/math3/dfp/Dfp;-><init>(Lorg/apache/commons/math3/dfp/DfpField;I)V

    .line 585
    .local v4, "highPrecisionThree":Lorg/apache/commons/math3/dfp/Dfp;
    invoke-virtual {v5}, Lorg/apache/commons/math3/dfp/Dfp;->sqrt()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v2

    .line 586
    .local v2, "highPrecisionSqr2":Lorg/apache/commons/math3/dfp/Dfp;
    invoke-virtual {v2}, Lorg/apache/commons/math3/dfp/Dfp;->toString()Ljava/lang/String;

    move-result-object v6

    sput-object v6, Lorg/apache/commons/math3/dfp/DfpField;->sqr2String:Ljava/lang/String;

    .line 587
    invoke-virtual {v1, v2}, Lorg/apache/commons/math3/dfp/Dfp;->divide(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v6

    invoke-virtual {v6}, Lorg/apache/commons/math3/dfp/Dfp;->toString()Ljava/lang/String;

    move-result-object v6

    sput-object v6, Lorg/apache/commons/math3/dfp/DfpField;->sqr2ReciprocalString:Ljava/lang/String;

    .line 589
    invoke-virtual {v4}, Lorg/apache/commons/math3/dfp/Dfp;->sqrt()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v3

    .line 590
    .local v3, "highPrecisionSqr3":Lorg/apache/commons/math3/dfp/Dfp;
    invoke-virtual {v3}, Lorg/apache/commons/math3/dfp/Dfp;->toString()Ljava/lang/String;

    move-result-object v6

    sput-object v6, Lorg/apache/commons/math3/dfp/DfpField;->sqr3String:Ljava/lang/String;

    .line 591
    invoke-virtual {v1, v3}, Lorg/apache/commons/math3/dfp/Dfp;->divide(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v6

    invoke-virtual {v6}, Lorg/apache/commons/math3/dfp/Dfp;->toString()Ljava/lang/String;

    move-result-object v6

    sput-object v6, Lorg/apache/commons/math3/dfp/DfpField;->sqr3ReciprocalString:Ljava/lang/String;

    .line 593
    invoke-static {v1, v5, v4}, Lorg/apache/commons/math3/dfp/DfpField;->computePi(Lorg/apache/commons/math3/dfp/Dfp;Lorg/apache/commons/math3/dfp/Dfp;Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v6

    invoke-virtual {v6}, Lorg/apache/commons/math3/dfp/Dfp;->toString()Ljava/lang/String;

    move-result-object v6

    sput-object v6, Lorg/apache/commons/math3/dfp/DfpField;->piString:Ljava/lang/String;

    .line 594
    invoke-static {v1, v1}, Lorg/apache/commons/math3/dfp/DfpField;->computeExp(Lorg/apache/commons/math3/dfp/Dfp;Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v6

    invoke-virtual {v6}, Lorg/apache/commons/math3/dfp/Dfp;->toString()Ljava/lang/String;

    move-result-object v6

    sput-object v6, Lorg/apache/commons/math3/dfp/DfpField;->eString:Ljava/lang/String;

    .line 595
    invoke-static {v5, v1, v5}, Lorg/apache/commons/math3/dfp/DfpField;->computeLn(Lorg/apache/commons/math3/dfp/Dfp;Lorg/apache/commons/math3/dfp/Dfp;Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v6

    invoke-virtual {v6}, Lorg/apache/commons/math3/dfp/Dfp;->toString()Ljava/lang/String;

    move-result-object v6

    sput-object v6, Lorg/apache/commons/math3/dfp/DfpField;->ln2String:Ljava/lang/String;

    .line 596
    new-instance v6, Lorg/apache/commons/math3/dfp/Dfp;

    const/4 v7, 0x5

    invoke-direct {v6, v0, v7}, Lorg/apache/commons/math3/dfp/Dfp;-><init>(Lorg/apache/commons/math3/dfp/DfpField;I)V

    invoke-static {v6, v1, v5}, Lorg/apache/commons/math3/dfp/DfpField;->computeLn(Lorg/apache/commons/math3/dfp/Dfp;Lorg/apache/commons/math3/dfp/Dfp;Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v6

    invoke-virtual {v6}, Lorg/apache/commons/math3/dfp/Dfp;->toString()Ljava/lang/String;

    move-result-object v6

    sput-object v6, Lorg/apache/commons/math3/dfp/DfpField;->ln5String:Ljava/lang/String;

    .line 597
    new-instance v6, Lorg/apache/commons/math3/dfp/Dfp;

    const/16 v7, 0xa

    invoke-direct {v6, v0, v7}, Lorg/apache/commons/math3/dfp/Dfp;-><init>(Lorg/apache/commons/math3/dfp/DfpField;I)V

    invoke-static {v6, v1, v5}, Lorg/apache/commons/math3/dfp/DfpField;->computeLn(Lorg/apache/commons/math3/dfp/Dfp;Lorg/apache/commons/math3/dfp/Dfp;Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v6

    invoke-virtual {v6}, Lorg/apache/commons/math3/dfp/Dfp;->toString()Ljava/lang/String;

    move-result-object v6

    sput-object v6, Lorg/apache/commons/math3/dfp/DfpField;->ln10String:Ljava/lang/String;

    .line 600
    .end local v0    # "highPrecisionField":Lorg/apache/commons/math3/dfp/DfpField;
    .end local v1    # "highPrecisionOne":Lorg/apache/commons/math3/dfp/Dfp;
    .end local v2    # "highPrecisionSqr2":Lorg/apache/commons/math3/dfp/Dfp;
    .end local v3    # "highPrecisionSqr3":Lorg/apache/commons/math3/dfp/Dfp;
    .end local v4    # "highPrecisionThree":Lorg/apache/commons/math3/dfp/Dfp;
    .end local v5    # "highPrecisionTwo":Lorg/apache/commons/math3/dfp/Dfp;
    :cond_1
    return-void
.end method

.method private split(Ljava/lang/String;)[Lorg/apache/commons/math3/dfp/Dfp;
    .locals 11
    .param p1, "a"    # Ljava/lang/String;

    .prologue
    const/4 v10, 0x0

    const/16 v9, 0x39

    const/16 v8, 0x30

    .line 529
    const/4 v6, 0x2

    new-array v3, v6, [Lorg/apache/commons/math3/dfp/Dfp;

    .line 530
    .local v3, "result":[Lorg/apache/commons/math3/dfp/Dfp;
    const/4 v2, 0x1

    .line 531
    .local v2, "leading":Z
    const/4 v5, 0x0

    .line 532
    .local v5, "sp":I
    const/4 v4, 0x0

    .line 534
    .local v4, "sig":I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    new-array v0, v6, [C

    .line 536
    .local v0, "buf":[C
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v6, v0

    if-ge v1, v6, :cond_2

    .line 537
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v6

    aput-char v6, v0, v1

    .line 539
    aget-char v6, v0, v1

    const/16 v7, 0x31

    if-lt v6, v7, :cond_0

    aget-char v6, v0, v1

    if-gt v6, v9, :cond_0

    .line 540
    const/4 v2, 0x0

    .line 543
    :cond_0
    aget-char v6, v0, v1

    const/16 v7, 0x2e

    if-ne v6, v7, :cond_1

    .line 544
    rsub-int v6, v4, 0x190

    rem-int/lit8 v6, v6, 0x4

    add-int/2addr v4, v6

    .line 545
    const/4 v2, 0x0

    .line 548
    :cond_1
    iget v6, p0, Lorg/apache/commons/math3/dfp/DfpField;->radixDigits:I

    div-int/lit8 v6, v6, 0x2

    mul-int/lit8 v6, v6, 0x4

    if-ne v4, v6, :cond_4

    .line 549
    move v5, v1

    .line 558
    :cond_2
    new-instance v6, Lorg/apache/commons/math3/dfp/Dfp;

    new-instance v7, Ljava/lang/String;

    invoke-direct {v7, v0, v10, v5}, Ljava/lang/String;-><init>([CII)V

    invoke-direct {v6, p0, v7}, Lorg/apache/commons/math3/dfp/Dfp;-><init>(Lorg/apache/commons/math3/dfp/DfpField;Ljava/lang/String;)V

    aput-object v6, v3, v10

    .line 560
    const/4 v1, 0x0

    :goto_1
    array-length v6, v0

    if-ge v1, v6, :cond_6

    .line 561
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v6

    aput-char v6, v0, v1

    .line 562
    aget-char v6, v0, v1

    if-lt v6, v8, :cond_3

    aget-char v6, v0, v1

    if-gt v6, v9, :cond_3

    if-ge v1, v5, :cond_3

    .line 563
    aput-char v8, v0, v1

    .line 560
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 553
    :cond_4
    aget-char v6, v0, v1

    if-lt v6, v8, :cond_5

    aget-char v6, v0, v1

    if-gt v6, v9, :cond_5

    if-nez v2, :cond_5

    .line 554
    add-int/lit8 v4, v4, 0x1

    .line 536
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 567
    :cond_6
    const/4 v6, 0x1

    new-instance v7, Lorg/apache/commons/math3/dfp/Dfp;

    new-instance v8, Ljava/lang/String;

    invoke-direct {v8, v0}, Ljava/lang/String;-><init>([C)V

    invoke-direct {v7, p0, v8}, Lorg/apache/commons/math3/dfp/Dfp;-><init>(Lorg/apache/commons/math3/dfp/DfpField;Ljava/lang/String;)V

    aput-object v7, v3, v6

    .line 569
    return-object v3
.end method


# virtual methods
.method public clearIEEEFlags()V
    .locals 1

    .prologue
    .line 297
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/commons/math3/dfp/DfpField;->ieeeFlags:I

    .line 298
    return-void
.end method

.method public getE()Lorg/apache/commons/math3/dfp/Dfp;
    .locals 1

    .prologue
    .line 477
    iget-object v0, p0, Lorg/apache/commons/math3/dfp/DfpField;->e:Lorg/apache/commons/math3/dfp/Dfp;

    return-object v0
.end method

.method public getESplit()[Lorg/apache/commons/math3/dfp/Dfp;
    .locals 1

    .prologue
    .line 484
    iget-object v0, p0, Lorg/apache/commons/math3/dfp/DfpField;->eSplit:[Lorg/apache/commons/math3/dfp/Dfp;

    invoke-virtual {v0}, [Lorg/apache/commons/math3/dfp/Dfp;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/commons/math3/dfp/Dfp;

    return-object v0
.end method

.method public getIEEEFlags()I
    .locals 1

    .prologue
    .line 283
    iget v0, p0, Lorg/apache/commons/math3/dfp/DfpField;->ieeeFlags:I

    return v0
.end method

.method public getLn10()Lorg/apache/commons/math3/dfp/Dfp;
    .locals 1

    .prologue
    .line 519
    iget-object v0, p0, Lorg/apache/commons/math3/dfp/DfpField;->ln10:Lorg/apache/commons/math3/dfp/Dfp;

    return-object v0
.end method

.method public getLn2()Lorg/apache/commons/math3/dfp/Dfp;
    .locals 1

    .prologue
    .line 491
    iget-object v0, p0, Lorg/apache/commons/math3/dfp/DfpField;->ln2:Lorg/apache/commons/math3/dfp/Dfp;

    return-object v0
.end method

.method public getLn2Split()[Lorg/apache/commons/math3/dfp/Dfp;
    .locals 1

    .prologue
    .line 498
    iget-object v0, p0, Lorg/apache/commons/math3/dfp/DfpField;->ln2Split:[Lorg/apache/commons/math3/dfp/Dfp;

    invoke-virtual {v0}, [Lorg/apache/commons/math3/dfp/Dfp;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/commons/math3/dfp/Dfp;

    return-object v0
.end method

.method public getLn5()Lorg/apache/commons/math3/dfp/Dfp;
    .locals 1

    .prologue
    .line 505
    iget-object v0, p0, Lorg/apache/commons/math3/dfp/DfpField;->ln5:Lorg/apache/commons/math3/dfp/Dfp;

    return-object v0
.end method

.method public getLn5Split()[Lorg/apache/commons/math3/dfp/Dfp;
    .locals 1

    .prologue
    .line 512
    iget-object v0, p0, Lorg/apache/commons/math3/dfp/DfpField;->ln5Split:[Lorg/apache/commons/math3/dfp/Dfp;

    invoke-virtual {v0}, [Lorg/apache/commons/math3/dfp/Dfp;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/commons/math3/dfp/Dfp;

    return-object v0
.end method

.method public bridge synthetic getOne()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 26
    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/DfpField;->getOne()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    return-object v0
.end method

.method public getOne()Lorg/apache/commons/math3/dfp/Dfp;
    .locals 1

    .prologue
    .line 409
    iget-object v0, p0, Lorg/apache/commons/math3/dfp/DfpField;->one:Lorg/apache/commons/math3/dfp/Dfp;

    return-object v0
.end method

.method public getPi()Lorg/apache/commons/math3/dfp/Dfp;
    .locals 1

    .prologue
    .line 463
    iget-object v0, p0, Lorg/apache/commons/math3/dfp/DfpField;->pi:Lorg/apache/commons/math3/dfp/Dfp;

    return-object v0
.end method

.method public getPiSplit()[Lorg/apache/commons/math3/dfp/Dfp;
    .locals 1

    .prologue
    .line 470
    iget-object v0, p0, Lorg/apache/commons/math3/dfp/DfpField;->piSplit:[Lorg/apache/commons/math3/dfp/Dfp;

    invoke-virtual {v0}, [Lorg/apache/commons/math3/dfp/Dfp;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/commons/math3/dfp/Dfp;

    return-object v0
.end method

.method public getRadixDigits()I
    .locals 1

    .prologue
    .line 250
    iget v0, p0, Lorg/apache/commons/math3/dfp/DfpField;->radixDigits:I

    return v0
.end method

.method public getRoundingMode()Lorg/apache/commons/math3/dfp/DfpField$RoundingMode;
    .locals 1

    .prologue
    .line 268
    iget-object v0, p0, Lorg/apache/commons/math3/dfp/DfpField;->rMode:Lorg/apache/commons/math3/dfp/DfpField$RoundingMode;

    return-object v0
.end method

.method public getRuntimeClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<+",
            "Lorg/apache/commons/math3/FieldElement",
            "<",
            "Lorg/apache/commons/math3/dfp/Dfp;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 414
    const-class v0, Lorg/apache/commons/math3/dfp/Dfp;

    return-object v0
.end method

.method public getSqr2()Lorg/apache/commons/math3/dfp/Dfp;
    .locals 1

    .prologue
    .line 428
    iget-object v0, p0, Lorg/apache/commons/math3/dfp/DfpField;->sqr2:Lorg/apache/commons/math3/dfp/Dfp;

    return-object v0
.end method

.method public getSqr2Reciprocal()Lorg/apache/commons/math3/dfp/Dfp;
    .locals 1

    .prologue
    .line 442
    iget-object v0, p0, Lorg/apache/commons/math3/dfp/DfpField;->sqr2Reciprocal:Lorg/apache/commons/math3/dfp/Dfp;

    return-object v0
.end method

.method public getSqr2Split()[Lorg/apache/commons/math3/dfp/Dfp;
    .locals 1

    .prologue
    .line 435
    iget-object v0, p0, Lorg/apache/commons/math3/dfp/DfpField;->sqr2Split:[Lorg/apache/commons/math3/dfp/Dfp;

    invoke-virtual {v0}, [Lorg/apache/commons/math3/dfp/Dfp;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/commons/math3/dfp/Dfp;

    return-object v0
.end method

.method public getSqr3()Lorg/apache/commons/math3/dfp/Dfp;
    .locals 1

    .prologue
    .line 449
    iget-object v0, p0, Lorg/apache/commons/math3/dfp/DfpField;->sqr3:Lorg/apache/commons/math3/dfp/Dfp;

    return-object v0
.end method

.method public getSqr3Reciprocal()Lorg/apache/commons/math3/dfp/Dfp;
    .locals 1

    .prologue
    .line 456
    iget-object v0, p0, Lorg/apache/commons/math3/dfp/DfpField;->sqr3Reciprocal:Lorg/apache/commons/math3/dfp/Dfp;

    return-object v0
.end method

.method public getTwo()Lorg/apache/commons/math3/dfp/Dfp;
    .locals 1

    .prologue
    .line 421
    iget-object v0, p0, Lorg/apache/commons/math3/dfp/DfpField;->two:Lorg/apache/commons/math3/dfp/Dfp;

    return-object v0
.end method

.method public bridge synthetic getZero()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 26
    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/DfpField;->getZero()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    return-object v0
.end method

.method public getZero()Lorg/apache/commons/math3/dfp/Dfp;
    .locals 1

    .prologue
    .line 402
    iget-object v0, p0, Lorg/apache/commons/math3/dfp/DfpField;->zero:Lorg/apache/commons/math3/dfp/Dfp;

    return-object v0
.end method

.method public newDfp()Lorg/apache/commons/math3/dfp/Dfp;
    .locals 1

    .prologue
    .line 337
    new-instance v0, Lorg/apache/commons/math3/dfp/Dfp;

    invoke-direct {v0, p0}, Lorg/apache/commons/math3/dfp/Dfp;-><init>(Lorg/apache/commons/math3/dfp/DfpField;)V

    return-object v0
.end method

.method public newDfp(B)Lorg/apache/commons/math3/dfp/Dfp;
    .locals 1
    .param p1, "x"    # B

    .prologue
    .line 345
    new-instance v0, Lorg/apache/commons/math3/dfp/Dfp;

    invoke-direct {v0, p0, p1}, Lorg/apache/commons/math3/dfp/Dfp;-><init>(Lorg/apache/commons/math3/dfp/DfpField;B)V

    return-object v0
.end method

.method public newDfp(BB)Lorg/apache/commons/math3/dfp/Dfp;
    .locals 1
    .param p1, "sign"    # B
    .param p2, "nans"    # B

    .prologue
    .line 395
    new-instance v0, Lorg/apache/commons/math3/dfp/Dfp;

    invoke-direct {v0, p0, p1, p2}, Lorg/apache/commons/math3/dfp/Dfp;-><init>(Lorg/apache/commons/math3/dfp/DfpField;BB)V

    return-object v0
.end method

.method public newDfp(D)Lorg/apache/commons/math3/dfp/Dfp;
    .locals 1
    .param p1, "x"    # D

    .prologue
    .line 369
    new-instance v0, Lorg/apache/commons/math3/dfp/Dfp;

    invoke-direct {v0, p0, p1, p2}, Lorg/apache/commons/math3/dfp/Dfp;-><init>(Lorg/apache/commons/math3/dfp/DfpField;D)V

    return-object v0
.end method

.method public newDfp(I)Lorg/apache/commons/math3/dfp/Dfp;
    .locals 1
    .param p1, "x"    # I

    .prologue
    .line 353
    new-instance v0, Lorg/apache/commons/math3/dfp/Dfp;

    invoke-direct {v0, p0, p1}, Lorg/apache/commons/math3/dfp/Dfp;-><init>(Lorg/apache/commons/math3/dfp/DfpField;I)V

    return-object v0
.end method

.method public newDfp(J)Lorg/apache/commons/math3/dfp/Dfp;
    .locals 1
    .param p1, "x"    # J

    .prologue
    .line 361
    new-instance v0, Lorg/apache/commons/math3/dfp/Dfp;

    invoke-direct {v0, p0, p1, p2}, Lorg/apache/commons/math3/dfp/Dfp;-><init>(Lorg/apache/commons/math3/dfp/DfpField;J)V

    return-object v0
.end method

.method public newDfp(Ljava/lang/String;)Lorg/apache/commons/math3/dfp/Dfp;
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 385
    new-instance v0, Lorg/apache/commons/math3/dfp/Dfp;

    invoke-direct {v0, p0, p1}, Lorg/apache/commons/math3/dfp/Dfp;-><init>(Lorg/apache/commons/math3/dfp/DfpField;Ljava/lang/String;)V

    return-object v0
.end method

.method public newDfp(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;
    .locals 1
    .param p1, "d"    # Lorg/apache/commons/math3/dfp/Dfp;

    .prologue
    .line 377
    new-instance v0, Lorg/apache/commons/math3/dfp/Dfp;

    invoke-direct {v0, p1}, Lorg/apache/commons/math3/dfp/Dfp;-><init>(Lorg/apache/commons/math3/dfp/Dfp;)V

    return-object v0
.end method

.method public setIEEEFlags(I)V
    .locals 1
    .param p1, "flags"    # I

    .prologue
    .line 312
    and-int/lit8 v0, p1, 0x1f

    iput v0, p0, Lorg/apache/commons/math3/dfp/DfpField;->ieeeFlags:I

    .line 313
    return-void
.end method

.method public setIEEEFlagsBits(I)V
    .locals 2
    .param p1, "bits"    # I

    .prologue
    .line 330
    iget v0, p0, Lorg/apache/commons/math3/dfp/DfpField;->ieeeFlags:I

    and-int/lit8 v1, p1, 0x1f

    or-int/2addr v0, v1

    iput v0, p0, Lorg/apache/commons/math3/dfp/DfpField;->ieeeFlags:I

    .line 331
    return-void
.end method

.method public setRoundingMode(Lorg/apache/commons/math3/dfp/DfpField$RoundingMode;)V
    .locals 0
    .param p1, "mode"    # Lorg/apache/commons/math3/dfp/DfpField$RoundingMode;

    .prologue
    .line 261
    iput-object p1, p0, Lorg/apache/commons/math3/dfp/DfpField;->rMode:Lorg/apache/commons/math3/dfp/DfpField$RoundingMode;

    .line 262
    return-void
.end method
