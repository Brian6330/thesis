.class public Lorg/apache/commons/math3/util/ResizableDoubleArray;
.super Ljava/lang/Object;
.source "ResizableDoubleArray.java"

# interfaces
.implements Lorg/apache/commons/math3/util/DoubleArray;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/math3/util/ResizableDoubleArray$1;,
        Lorg/apache/commons/math3/util/ResizableDoubleArray$ExpansionMode;
    }
.end annotation


# static fields
.field public static final ADDITIVE_MODE:I = 0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final DEFAULT_CONTRACTION_DELTA:D = 0.5

.field private static final DEFAULT_EXPANSION_FACTOR:D = 2.0

.field private static final DEFAULT_INITIAL_CAPACITY:I = 0x10

.field public static final MULTIPLICATIVE_MODE:I = 0x0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final serialVersionUID:J = -0x305f1707055087bbL


# instance fields
.field private contractionCriterion:D

.field private expansionFactor:D

.field private expansionMode:Lorg/apache/commons/math3/util/ResizableDoubleArray$ExpansionMode;

.field private internalArray:[D

.field private numElements:I

.field private startIndex:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 169
    const/16 v0, 0x10

    invoke-direct {p0, v0}, Lorg/apache/commons/math3/util/ResizableDoubleArray;-><init>(I)V

    .line 170
    return-void
.end method

.method public constructor <init>(I)V
    .locals 2
    .param p1, "initialCapacity"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathIllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 185
    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    invoke-direct {p0, p1, v0, v1}, Lorg/apache/commons/math3/util/ResizableDoubleArray;-><init>(ID)V

    .line 186
    return-void
.end method

.method public constructor <init>(ID)V
    .locals 6
    .param p1, "initialCapacity"    # I
    .param p2, "expansionFactor"    # D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathIllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 270
    const-wide/high16 v0, 0x3fe0000000000000L    # 0.5

    add-double v4, v0, p2

    move-object v0, p0

    move v1, p1

    move-wide v2, p2

    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/math3/util/ResizableDoubleArray;-><init>(IDD)V

    .line 273
    return-void
.end method

.method public constructor <init>(IDD)V
    .locals 8
    .param p1, "initialCapacity"    # I
    .param p2, "expansionFactor"    # D
    .param p4, "contractionCriterion"    # D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathIllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 330
    sget-object v6, Lorg/apache/commons/math3/util/ResizableDoubleArray$ExpansionMode;->MULTIPLICATIVE:Lorg/apache/commons/math3/util/ResizableDoubleArray$ExpansionMode;

    const/4 v7, 0x0

    move-object v0, p0

    move v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-direct/range {v0 .. v7}, Lorg/apache/commons/math3/util/ResizableDoubleArray;-><init>(IDDLorg/apache/commons/math3/util/ResizableDoubleArray$ExpansionMode;[D)V

    .line 335
    return-void
.end method

.method public varargs constructor <init>(IDDLorg/apache/commons/math3/util/ResizableDoubleArray$ExpansionMode;[D)V
    .locals 4
    .param p1, "initialCapacity"    # I
    .param p2, "expansionFactor"    # D
    .param p4, "contractionCriterion"    # D
    .param p6, "expansionMode"    # Lorg/apache/commons/math3/util/ResizableDoubleArray$ExpansionMode;
    .param p7, "data"    # [D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathIllegalArgumentException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 400
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 112
    const-wide/high16 v0, 0x4004000000000000L    # 2.5

    iput-wide v0, p0, Lorg/apache/commons/math3/util/ResizableDoubleArray;->contractionCriterion:D

    .line 122
    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    iput-wide v0, p0, Lorg/apache/commons/math3/util/ResizableDoubleArray;->expansionFactor:D

    .line 128
    sget-object v0, Lorg/apache/commons/math3/util/ResizableDoubleArray$ExpansionMode;->MULTIPLICATIVE:Lorg/apache/commons/math3/util/ResizableDoubleArray$ExpansionMode;

    iput-object v0, p0, Lorg/apache/commons/math3/util/ResizableDoubleArray;->expansionMode:Lorg/apache/commons/math3/util/ResizableDoubleArray$ExpansionMode;

    .line 139
    iput v2, p0, Lorg/apache/commons/math3/util/ResizableDoubleArray;->numElements:I

    .line 146
    iput v2, p0, Lorg/apache/commons/math3/util/ResizableDoubleArray;->startIndex:I

    .line 401
    if-gtz p1, :cond_0

    .line 402
    new-instance v0, Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;

    sget-object v1, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->INITIAL_CAPACITY_NOT_POSITIVE:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;Ljava/lang/Number;)V

    throw v0

    .line 405
    :cond_0
    invoke-virtual {p0, p4, p5, p2, p3}, Lorg/apache/commons/math3/util/ResizableDoubleArray;->checkContractExpand(DD)V

    .line 407
    iput-wide p2, p0, Lorg/apache/commons/math3/util/ResizableDoubleArray;->expansionFactor:D

    .line 408
    iput-wide p4, p0, Lorg/apache/commons/math3/util/ResizableDoubleArray;->contractionCriterion:D

    .line 409
    iput-object p6, p0, Lorg/apache/commons/math3/util/ResizableDoubleArray;->expansionMode:Lorg/apache/commons/math3/util/ResizableDoubleArray$ExpansionMode;

    .line 410
    new-array v0, p1, [D

    iput-object v0, p0, Lorg/apache/commons/math3/util/ResizableDoubleArray;->internalArray:[D

    .line 411
    iput v2, p0, Lorg/apache/commons/math3/util/ResizableDoubleArray;->numElements:I

    .line 412
    iput v2, p0, Lorg/apache/commons/math3/util/ResizableDoubleArray;->startIndex:I

    .line 414
    if-eqz p7, :cond_1

    array-length v0, p7

    const/4 v1, 0x1

    if-le v0, v1, :cond_1

    .line 415
    invoke-virtual {p0, p7}, Lorg/apache/commons/math3/util/ResizableDoubleArray;->addElements([D)V

    .line 417
    :cond_1
    return-void
.end method

.method public constructor <init>(IF)V
    .locals 2
    .param p1, "initialCapacity"    # I
    .param p2, "expansionFactor"    # F
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathIllegalArgumentException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 241
    float-to-double v0, p2

    invoke-direct {p0, p1, v0, v1}, Lorg/apache/commons/math3/util/ResizableDoubleArray;-><init>(ID)V

    .line 243
    return-void
.end method

.method public constructor <init>(IFF)V
    .locals 6
    .param p1, "initialCapacity"    # I
    .param p2, "expansionFactor"    # F
    .param p3, "contractionCriteria"    # F
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathIllegalArgumentException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 301
    float-to-double v2, p2

    float-to-double v4, p3

    move-object v0, p0

    move v1, p1

    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/math3/util/ResizableDoubleArray;-><init>(IDD)V

    .line 304
    return-void
.end method

.method public constructor <init>(IFFI)V
    .locals 8
    .param p1, "initialCapacity"    # I
    .param p2, "expansionFactor"    # F
    .param p3, "contractionCriteria"    # F
    .param p4, "expansionMode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathIllegalArgumentException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 364
    float-to-double v2, p2

    float-to-double v4, p3

    const/4 v0, 0x1

    if-ne p4, v0, :cond_0

    sget-object v6, Lorg/apache/commons/math3/util/ResizableDoubleArray$ExpansionMode;->ADDITIVE:Lorg/apache/commons/math3/util/ResizableDoubleArray$ExpansionMode;

    :goto_0
    const/4 v7, 0x0

    move-object v0, p0

    move v1, p1

    invoke-direct/range {v0 .. v7}, Lorg/apache/commons/math3/util/ResizableDoubleArray;-><init>(IDDLorg/apache/commons/math3/util/ResizableDoubleArray$ExpansionMode;[D)V

    .line 373
    invoke-virtual {p0, p4}, Lorg/apache/commons/math3/util/ResizableDoubleArray;->setExpansionMode(I)V

    .line 374
    return-void

    .line 364
    :cond_0
    sget-object v6, Lorg/apache/commons/math3/util/ResizableDoubleArray$ExpansionMode;->MULTIPLICATIVE:Lorg/apache/commons/math3/util/ResizableDoubleArray$ExpansionMode;

    goto :goto_0
.end method

.method public constructor <init>(Lorg/apache/commons/math3/util/ResizableDoubleArray;)V
    .locals 3
    .param p1, "original"    # Lorg/apache/commons/math3/util/ResizableDoubleArray;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 430
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 112
    const-wide/high16 v0, 0x4004000000000000L    # 2.5

    iput-wide v0, p0, Lorg/apache/commons/math3/util/ResizableDoubleArray;->contractionCriterion:D

    .line 122
    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    iput-wide v0, p0, Lorg/apache/commons/math3/util/ResizableDoubleArray;->expansionFactor:D

    .line 128
    sget-object v0, Lorg/apache/commons/math3/util/ResizableDoubleArray$ExpansionMode;->MULTIPLICATIVE:Lorg/apache/commons/math3/util/ResizableDoubleArray$ExpansionMode;

    iput-object v0, p0, Lorg/apache/commons/math3/util/ResizableDoubleArray;->expansionMode:Lorg/apache/commons/math3/util/ResizableDoubleArray$ExpansionMode;

    .line 139
    iput v2, p0, Lorg/apache/commons/math3/util/ResizableDoubleArray;->numElements:I

    .line 146
    iput v2, p0, Lorg/apache/commons/math3/util/ResizableDoubleArray;->startIndex:I

    .line 431
    invoke-static {p1}, Lorg/apache/commons/math3/util/MathUtils;->checkNotNull(Ljava/lang/Object;)V

    .line 432
    invoke-static {p1, p0}, Lorg/apache/commons/math3/util/ResizableDoubleArray;->copy(Lorg/apache/commons/math3/util/ResizableDoubleArray;Lorg/apache/commons/math3/util/ResizableDoubleArray;)V

    .line 433
    return-void
.end method

.method public constructor <init>([D)V
    .locals 8
    .param p1, "initialArray"    # [D

    .prologue
    .line 207
    const/16 v1, 0x10

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    const-wide/high16 v4, 0x4004000000000000L    # 2.5

    sget-object v6, Lorg/apache/commons/math3/util/ResizableDoubleArray$ExpansionMode;->MULTIPLICATIVE:Lorg/apache/commons/math3/util/ResizableDoubleArray$ExpansionMode;

    move-object v0, p0

    move-object v7, p1

    invoke-direct/range {v0 .. v7}, Lorg/apache/commons/math3/util/ResizableDoubleArray;-><init>(IDDLorg/apache/commons/math3/util/ResizableDoubleArray$ExpansionMode;[D)V

    .line 212
    return-void
.end method

.method public static copy(Lorg/apache/commons/math3/util/ResizableDoubleArray;Lorg/apache/commons/math3/util/ResizableDoubleArray;)V
    .locals 5
    .param p0, "source"    # Lorg/apache/commons/math3/util/ResizableDoubleArray;
    .param p1, "dest"    # Lorg/apache/commons/math3/util/ResizableDoubleArray;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;
        }
    .end annotation

    .prologue
    .line 1123
    invoke-static {p0}, Lorg/apache/commons/math3/util/MathUtils;->checkNotNull(Ljava/lang/Object;)V

    .line 1124
    invoke-static {p1}, Lorg/apache/commons/math3/util/MathUtils;->checkNotNull(Ljava/lang/Object;)V

    .line 1125
    monitor-enter p0

    .line 1126
    :try_start_0
    monitor-enter p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1127
    :try_start_1
    iget-wide v0, p0, Lorg/apache/commons/math3/util/ResizableDoubleArray;->contractionCriterion:D

    iput-wide v0, p1, Lorg/apache/commons/math3/util/ResizableDoubleArray;->contractionCriterion:D

    .line 1128
    iget-wide v0, p0, Lorg/apache/commons/math3/util/ResizableDoubleArray;->expansionFactor:D

    iput-wide v0, p1, Lorg/apache/commons/math3/util/ResizableDoubleArray;->expansionFactor:D

    .line 1129
    iget-object v0, p0, Lorg/apache/commons/math3/util/ResizableDoubleArray;->expansionMode:Lorg/apache/commons/math3/util/ResizableDoubleArray$ExpansionMode;

    iput-object v0, p1, Lorg/apache/commons/math3/util/ResizableDoubleArray;->expansionMode:Lorg/apache/commons/math3/util/ResizableDoubleArray$ExpansionMode;

    .line 1130
    iget-object v0, p0, Lorg/apache/commons/math3/util/ResizableDoubleArray;->internalArray:[D

    array-length v0, v0

    new-array v0, v0, [D

    iput-object v0, p1, Lorg/apache/commons/math3/util/ResizableDoubleArray;->internalArray:[D

    .line 1131
    iget-object v0, p0, Lorg/apache/commons/math3/util/ResizableDoubleArray;->internalArray:[D

    const/4 v1, 0x0

    iget-object v2, p1, Lorg/apache/commons/math3/util/ResizableDoubleArray;->internalArray:[D

    const/4 v3, 0x0

    iget-object v4, p1, Lorg/apache/commons/math3/util/ResizableDoubleArray;->internalArray:[D

    array-length v4, v4

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1133
    iget v0, p0, Lorg/apache/commons/math3/util/ResizableDoubleArray;->numElements:I

    iput v0, p1, Lorg/apache/commons/math3/util/ResizableDoubleArray;->numElements:I

    .line 1134
    iget v0, p0, Lorg/apache/commons/math3/util/ResizableDoubleArray;->startIndex:I

    iput v0, p1, Lorg/apache/commons/math3/util/ResizableDoubleArray;->startIndex:I

    .line 1135
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1136
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1137
    return-void

    .line 1135
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0

    .line 1136
    :catchall_1
    move-exception v0

    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0
.end method

.method private declared-synchronized discardExtremeElements(IZ)V
    .locals 5
    .param p1, "i"    # I
    .param p2, "front"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathIllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 656
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lorg/apache/commons/math3/util/ResizableDoubleArray;->numElements:I

    if-le p1, v0, :cond_0

    .line 657
    new-instance v0, Lorg/apache/commons/math3/exception/MathIllegalArgumentException;

    sget-object v1, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->TOO_MANY_ELEMENTS_TO_DISCARD_FROM_ARRAY:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget v4, p0, Lorg/apache/commons/math3/util/ResizableDoubleArray;->numElements:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/exception/MathIllegalArgumentException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 656
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 660
    :cond_0
    if-gez p1, :cond_1

    .line 661
    :try_start_1
    new-instance v0, Lorg/apache/commons/math3/exception/MathIllegalArgumentException;

    sget-object v1, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->CANNOT_DISCARD_NEGATIVE_NUMBER_OF_ELEMENTS:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/exception/MathIllegalArgumentException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v0

    .line 666
    :cond_1
    iget v0, p0, Lorg/apache/commons/math3/util/ResizableDoubleArray;->numElements:I

    sub-int/2addr v0, p1

    iput v0, p0, Lorg/apache/commons/math3/util/ResizableDoubleArray;->numElements:I

    .line 667
    if-eqz p2, :cond_2

    .line 668
    iget v0, p0, Lorg/apache/commons/math3/util/ResizableDoubleArray;->startIndex:I

    add-int/2addr v0, p1

    iput v0, p0, Lorg/apache/commons/math3/util/ResizableDoubleArray;->startIndex:I

    .line 671
    :cond_2
    invoke-direct {p0}, Lorg/apache/commons/math3/util/ResizableDoubleArray;->shouldContract()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 672
    invoke-virtual {p0}, Lorg/apache/commons/math3/util/ResizableDoubleArray;->contract()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 674
    :cond_3
    monitor-exit p0

    return-void
.end method

.method private declared-synchronized expandTo(I)V
    .locals 5
    .param p1, "size"    # I

    .prologue
    .line 710
    monitor-enter p0

    :try_start_0
    new-array v0, p1, [D

    .line 712
    .local v0, "tempArray":[D
    iget-object v1, p0, Lorg/apache/commons/math3/util/ResizableDoubleArray;->internalArray:[D

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget-object v4, p0, Lorg/apache/commons/math3/util/ResizableDoubleArray;->internalArray:[D

    array-length v4, v4

    invoke-static {v1, v2, v0, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 713
    iput-object v0, p0, Lorg/apache/commons/math3/util/ResizableDoubleArray;->internalArray:[D
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 714
    monitor-exit p0

    return-void

    .line 710
    .end local v0    # "tempArray":[D
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private declared-synchronized shouldContract()Z
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1081
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lorg/apache/commons/math3/util/ResizableDoubleArray;->expansionMode:Lorg/apache/commons/math3/util/ResizableDoubleArray$ExpansionMode;

    sget-object v3, Lorg/apache/commons/math3/util/ResizableDoubleArray$ExpansionMode;->MULTIPLICATIVE:Lorg/apache/commons/math3/util/ResizableDoubleArray$ExpansionMode;

    if-ne v2, v3, :cond_2

    .line 1082
    iget-object v2, p0, Lorg/apache/commons/math3/util/ResizableDoubleArray;->internalArray:[D

    array-length v2, v2

    int-to-float v2, v2

    iget v3, p0, Lorg/apache/commons/math3/util/ResizableDoubleArray;->numElements:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    float-to-double v2, v2

    iget-wide v4, p0, Lorg/apache/commons/math3/util/ResizableDoubleArray;->contractionCriterion:D
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    cmpl-double v2, v2, v4

    if-lez v2, :cond_1

    .line 1084
    :cond_0
    :goto_0
    monitor-exit p0

    return v0

    :cond_1
    move v0, v1

    .line 1082
    goto :goto_0

    .line 1084
    :cond_2
    :try_start_1
    iget-object v2, p0, Lorg/apache/commons/math3/util/ResizableDoubleArray;->internalArray:[D

    array-length v2, v2

    iget v3, p0, Lorg/apache/commons/math3/util/ResizableDoubleArray;->numElements:I

    sub-int/2addr v2, v3

    int-to-double v2, v2

    iget-wide v4, p0, Lorg/apache/commons/math3/util/ResizableDoubleArray;->contractionCriterion:D
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    cmpl-double v2, v2, v4

    if-gtz v2, :cond_0

    move v0, v1

    goto :goto_0

    .line 1081
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public declared-synchronized addElement(D)V
    .locals 5
    .param p1, "value"    # D

    .prologue
    .line 441
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/apache/commons/math3/util/ResizableDoubleArray;->internalArray:[D

    array-length v0, v0

    iget v1, p0, Lorg/apache/commons/math3/util/ResizableDoubleArray;->startIndex:I

    iget v2, p0, Lorg/apache/commons/math3/util/ResizableDoubleArray;->numElements:I

    add-int/2addr v1, v2

    if-gt v0, v1, :cond_0

    .line 442
    invoke-virtual {p0}, Lorg/apache/commons/math3/util/ResizableDoubleArray;->expand()V

    .line 444
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/math3/util/ResizableDoubleArray;->internalArray:[D

    iget v1, p0, Lorg/apache/commons/math3/util/ResizableDoubleArray;->startIndex:I

    iget v2, p0, Lorg/apache/commons/math3/util/ResizableDoubleArray;->numElements:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/apache/commons/math3/util/ResizableDoubleArray;->numElements:I

    add-int/2addr v1, v2

    aput-wide p1, v0, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 445
    monitor-exit p0

    return-void

    .line 441
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized addElementRolling(D)D
    .locals 5
    .param p1, "value"    # D

    .prologue
    .line 479
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lorg/apache/commons/math3/util/ResizableDoubleArray;->internalArray:[D

    iget v3, p0, Lorg/apache/commons/math3/util/ResizableDoubleArray;->startIndex:I

    aget-wide v0, v2, v3

    .line 481
    .local v0, "discarded":D
    iget v2, p0, Lorg/apache/commons/math3/util/ResizableDoubleArray;->startIndex:I

    iget v3, p0, Lorg/apache/commons/math3/util/ResizableDoubleArray;->numElements:I

    add-int/lit8 v3, v3, 0x1

    add-int/2addr v2, v3

    iget-object v3, p0, Lorg/apache/commons/math3/util/ResizableDoubleArray;->internalArray:[D

    array-length v3, v3

    if-le v2, v3, :cond_0

    .line 482
    invoke-virtual {p0}, Lorg/apache/commons/math3/util/ResizableDoubleArray;->expand()V

    .line 485
    :cond_0
    iget v2, p0, Lorg/apache/commons/math3/util/ResizableDoubleArray;->startIndex:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lorg/apache/commons/math3/util/ResizableDoubleArray;->startIndex:I

    .line 488
    iget-object v2, p0, Lorg/apache/commons/math3/util/ResizableDoubleArray;->internalArray:[D

    iget v3, p0, Lorg/apache/commons/math3/util/ResizableDoubleArray;->startIndex:I

    iget v4, p0, Lorg/apache/commons/math3/util/ResizableDoubleArray;->numElements:I

    add-int/lit8 v4, v4, -0x1

    add-int/2addr v3, v4

    aput-wide p1, v2, v3

    .line 491
    invoke-direct {p0}, Lorg/apache/commons/math3/util/ResizableDoubleArray;->shouldContract()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 492
    invoke-virtual {p0}, Lorg/apache/commons/math3/util/ResizableDoubleArray;->contract()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 494
    :cond_1
    monitor-exit p0

    return-wide v0

    .line 479
    .end local v0    # "discarded":D
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized addElements([D)V
    .locals 5
    .param p1, "values"    # [D

    .prologue
    .line 454
    monitor-enter p0

    :try_start_0
    iget v1, p0, Lorg/apache/commons/math3/util/ResizableDoubleArray;->numElements:I

    array-length v2, p1

    add-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x1

    new-array v0, v1, [D

    .line 455
    .local v0, "tempArray":[D
    iget-object v1, p0, Lorg/apache/commons/math3/util/ResizableDoubleArray;->internalArray:[D

    iget v2, p0, Lorg/apache/commons/math3/util/ResizableDoubleArray;->startIndex:I

    const/4 v3, 0x0

    iget v4, p0, Lorg/apache/commons/math3/util/ResizableDoubleArray;->numElements:I

    invoke-static {v1, v2, v0, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 456
    const/4 v1, 0x0

    iget v2, p0, Lorg/apache/commons/math3/util/ResizableDoubleArray;->numElements:I

    array-length v3, p1

    invoke-static {p1, v1, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 457
    iput-object v0, p0, Lorg/apache/commons/math3/util/ResizableDoubleArray;->internalArray:[D

    .line 458
    const/4 v1, 0x0

    iput v1, p0, Lorg/apache/commons/math3/util/ResizableDoubleArray;->startIndex:I

    .line 459
    iget v1, p0, Lorg/apache/commons/math3/util/ResizableDoubleArray;->numElements:I

    array-length v2, p1

    add-int/2addr v1, v2

    iput v1, p0, Lorg/apache/commons/math3/util/ResizableDoubleArray;->numElements:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 460
    monitor-exit p0

    return-void

    .line 454
    .end local v0    # "tempArray":[D
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method protected checkContractExpand(DD)V
    .locals 7
    .param p1, "contraction"    # D
    .param p3, "expansion"    # D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NumberIsTooSmallException;
        }
    .end annotation

    .prologue
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 556
    cmpg-double v1, p1, p3

    if-gez v1, :cond_0

    .line 557
    new-instance v0, Lorg/apache/commons/math3/exception/NumberIsTooSmallException;

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v1, v2, v5}, Lorg/apache/commons/math3/exception/NumberIsTooSmallException;-><init>(Ljava/lang/Number;Ljava/lang/Number;Z)V

    .line 558
    .local v0, "e":Lorg/apache/commons/math3/exception/NumberIsTooSmallException;
    invoke-virtual {v0}, Lorg/apache/commons/math3/exception/NumberIsTooSmallException;->getContext()Lorg/apache/commons/math3/exception/util/ExceptionContext;

    move-result-object v1

    sget-object v2, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->CONTRACTION_CRITERIA_SMALLER_THAN_EXPANSION_FACTOR:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {p3, p4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Lorg/apache/commons/math3/exception/util/ExceptionContext;->addMessage(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    .line 560
    throw v0

    .line 563
    .end local v0    # "e":Lorg/apache/commons/math3/exception/NumberIsTooSmallException;
    :cond_0
    cmpg-double v1, p1, v2

    if-gtz v1, :cond_1

    .line 564
    new-instance v0, Lorg/apache/commons/math3/exception/NumberIsTooSmallException;

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v1, v2, v6}, Lorg/apache/commons/math3/exception/NumberIsTooSmallException;-><init>(Ljava/lang/Number;Ljava/lang/Number;Z)V

    .line 565
    .restart local v0    # "e":Lorg/apache/commons/math3/exception/NumberIsTooSmallException;
    invoke-virtual {v0}, Lorg/apache/commons/math3/exception/NumberIsTooSmallException;->getContext()Lorg/apache/commons/math3/exception/util/ExceptionContext;

    move-result-object v1

    sget-object v2, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->CONTRACTION_CRITERIA_SMALLER_THAN_ONE:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-virtual {v1, v2, v3}, Lorg/apache/commons/math3/exception/util/ExceptionContext;->addMessage(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    .line 567
    throw v0

    .line 570
    .end local v0    # "e":Lorg/apache/commons/math3/exception/NumberIsTooSmallException;
    :cond_1
    cmpg-double v1, p3, v2

    if-gtz v1, :cond_2

    .line 571
    new-instance v0, Lorg/apache/commons/math3/exception/NumberIsTooSmallException;

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v1, v2, v6}, Lorg/apache/commons/math3/exception/NumberIsTooSmallException;-><init>(Ljava/lang/Number;Ljava/lang/Number;Z)V

    .line 572
    .restart local v0    # "e":Lorg/apache/commons/math3/exception/NumberIsTooSmallException;
    invoke-virtual {v0}, Lorg/apache/commons/math3/exception/NumberIsTooSmallException;->getContext()Lorg/apache/commons/math3/exception/util/ExceptionContext;

    move-result-object v1

    sget-object v2, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->EXPANSION_FACTOR_SMALLER_THAN_ONE:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {p3, p4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-virtual {v1, v2, v3}, Lorg/apache/commons/math3/exception/util/ExceptionContext;->addMessage(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    .line 574
    throw v0

    .line 576
    .end local v0    # "e":Lorg/apache/commons/math3/exception/NumberIsTooSmallException;
    :cond_2
    return-void
.end method

.method protected checkContractExpand(FF)V
    .locals 4
    .param p1, "contraction"    # F
    .param p2, "expansion"    # F
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathIllegalArgumentException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 537
    float-to-double v0, p1

    float-to-double v2, p2

    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/apache/commons/math3/util/ResizableDoubleArray;->checkContractExpand(DD)V

    .line 539
    return-void
.end method

.method public declared-synchronized clear()V
    .locals 1

    .prologue
    .line 582
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput v0, p0, Lorg/apache/commons/math3/util/ResizableDoubleArray;->numElements:I

    .line 583
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/commons/math3/util/ResizableDoubleArray;->startIndex:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 584
    monitor-exit p0

    return-void

    .line 582
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public compute(Lorg/apache/commons/math3/util/MathArrays$Function;)D
    .locals 6
    .param p1, "f"    # Lorg/apache/commons/math3/util/MathArrays$Function;

    .prologue
    .line 942
    monitor-enter p0

    .line 943
    :try_start_0
    iget-object v0, p0, Lorg/apache/commons/math3/util/ResizableDoubleArray;->internalArray:[D

    .line 944
    .local v0, "array":[D
    iget v2, p0, Lorg/apache/commons/math3/util/ResizableDoubleArray;->startIndex:I

    .line 945
    .local v2, "start":I
    iget v1, p0, Lorg/apache/commons/math3/util/ResizableDoubleArray;->numElements:I

    .line 946
    .local v1, "num":I
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 947
    invoke-interface {p1, v0, v2, v1}, Lorg/apache/commons/math3/util/MathArrays$Function;->evaluate([DII)D

    move-result-wide v4

    return-wide v4

    .line 946
    .end local v0    # "array":[D
    .end local v1    # "num":I
    .end local v2    # "start":I
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3
.end method

.method public declared-synchronized contract()V
    .locals 5

    .prologue
    .line 592
    monitor-enter p0

    :try_start_0
    iget v1, p0, Lorg/apache/commons/math3/util/ResizableDoubleArray;->numElements:I

    add-int/lit8 v1, v1, 0x1

    new-array v0, v1, [D

    .line 595
    .local v0, "tempArray":[D
    iget-object v1, p0, Lorg/apache/commons/math3/util/ResizableDoubleArray;->internalArray:[D

    iget v2, p0, Lorg/apache/commons/math3/util/ResizableDoubleArray;->startIndex:I

    const/4 v3, 0x0

    iget v4, p0, Lorg/apache/commons/math3/util/ResizableDoubleArray;->numElements:I

    invoke-static {v1, v2, v0, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 596
    iput-object v0, p0, Lorg/apache/commons/math3/util/ResizableDoubleArray;->internalArray:[D

    .line 599
    const/4 v1, 0x0

    iput v1, p0, Lorg/apache/commons/math3/util/ResizableDoubleArray;->startIndex:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 600
    monitor-exit p0

    return-void

    .line 592
    .end local v0    # "tempArray":[D
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized copy()Lorg/apache/commons/math3/util/ResizableDoubleArray;
    .locals 2

    .prologue
    .line 1148
    monitor-enter p0

    :try_start_0
    new-instance v0, Lorg/apache/commons/math3/util/ResizableDoubleArray;

    invoke-direct {v0}, Lorg/apache/commons/math3/util/ResizableDoubleArray;-><init>()V

    .line 1149
    .local v0, "result":Lorg/apache/commons/math3/util/ResizableDoubleArray;
    invoke-static {p0, v0}, Lorg/apache/commons/math3/util/ResizableDoubleArray;->copy(Lorg/apache/commons/math3/util/ResizableDoubleArray;Lorg/apache/commons/math3/util/ResizableDoubleArray;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1150
    monitor-exit p0

    return-object v0

    .line 1148
    .end local v0    # "result":Lorg/apache/commons/math3/util/ResizableDoubleArray;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized discardFrontElements(I)V
    .locals 1
    .param p1, "i"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathIllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 615
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    invoke-direct {p0, p1, v0}, Lorg/apache/commons/math3/util/ResizableDoubleArray;->discardExtremeElements(IZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 616
    monitor-exit p0

    return-void

    .line 615
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized discardMostRecentElements(I)V
    .locals 1
    .param p1, "i"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathIllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 631
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    invoke-direct {p0, p1, v0}, Lorg/apache/commons/math3/util/ResizableDoubleArray;->discardExtremeElements(IZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 632
    monitor-exit p0

    return-void

    .line 631
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 10
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 1164
    if-ne p1, p0, :cond_0

    .line 1182
    :goto_0
    return v4

    .line 1167
    :cond_0
    instance-of v6, p1, Lorg/apache/commons/math3/util/ResizableDoubleArray;

    if-nez v6, :cond_1

    move v4, v5

    .line 1168
    goto :goto_0

    .line 1170
    :cond_1
    monitor-enter p0

    .line 1171
    :try_start_0
    monitor-enter p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1172
    const/4 v3, 0x1

    .line 1173
    .local v3, "result":Z
    :try_start_1
    move-object v0, p1

    check-cast v0, Lorg/apache/commons/math3/util/ResizableDoubleArray;

    move-object v2, v0

    .line 1174
    .local v2, "other":Lorg/apache/commons/math3/util/ResizableDoubleArray;
    if-eqz v3, :cond_2

    iget-wide v6, v2, Lorg/apache/commons/math3/util/ResizableDoubleArray;->contractionCriterion:D

    iget-wide v8, p0, Lorg/apache/commons/math3/util/ResizableDoubleArray;->contractionCriterion:D

    cmpl-double v6, v6, v8

    if-nez v6, :cond_2

    move v3, v4

    .line 1175
    :goto_1
    if-eqz v3, :cond_3

    iget-wide v6, v2, Lorg/apache/commons/math3/util/ResizableDoubleArray;->expansionFactor:D

    iget-wide v8, p0, Lorg/apache/commons/math3/util/ResizableDoubleArray;->expansionFactor:D

    cmpl-double v6, v6, v8

    if-nez v6, :cond_3

    move v3, v4

    .line 1176
    :goto_2
    if-eqz v3, :cond_4

    iget-object v6, v2, Lorg/apache/commons/math3/util/ResizableDoubleArray;->expansionMode:Lorg/apache/commons/math3/util/ResizableDoubleArray$ExpansionMode;

    iget-object v7, p0, Lorg/apache/commons/math3/util/ResizableDoubleArray;->expansionMode:Lorg/apache/commons/math3/util/ResizableDoubleArray$ExpansionMode;

    if-ne v6, v7, :cond_4

    move v3, v4

    .line 1177
    :goto_3
    if-eqz v3, :cond_5

    iget v6, v2, Lorg/apache/commons/math3/util/ResizableDoubleArray;->numElements:I

    iget v7, p0, Lorg/apache/commons/math3/util/ResizableDoubleArray;->numElements:I

    if-ne v6, v7, :cond_5

    move v3, v4

    .line 1178
    :goto_4
    if-eqz v3, :cond_6

    iget v6, v2, Lorg/apache/commons/math3/util/ResizableDoubleArray;->startIndex:I

    iget v7, p0, Lorg/apache/commons/math3/util/ResizableDoubleArray;->startIndex:I

    if-ne v6, v7, :cond_6

    move v3, v4

    .line 1179
    :goto_5
    if-nez v3, :cond_7

    .line 1180
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move v4, v5

    goto :goto_0

    :cond_2
    move v3, v5

    .line 1174
    goto :goto_1

    :cond_3
    move v3, v5

    .line 1175
    goto :goto_2

    :cond_4
    move v3, v5

    .line 1176
    goto :goto_3

    :cond_5
    move v3, v5

    .line 1177
    goto :goto_4

    :cond_6
    move v3, v5

    .line 1178
    goto :goto_5

    .line 1182
    :cond_7
    :try_start_3
    iget-object v4, p0, Lorg/apache/commons/math3/util/ResizableDoubleArray;->internalArray:[D

    iget-object v5, v2, Lorg/apache/commons/math3/util/ResizableDoubleArray;->internalArray:[D

    invoke-static {v4, v5}, Ljava/util/Arrays;->equals([D[D)Z

    move-result v4

    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    monitor-exit p0

    goto :goto_0

    .line 1185
    .end local v2    # "other":Lorg/apache/commons/math3/util/ResizableDoubleArray;
    .end local v3    # "result":Z
    :catchall_0
    move-exception v4

    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v4

    .line 1184
    .restart local v3    # "result":Z
    :catchall_1
    move-exception v4

    :try_start_5
    monitor-exit p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    throw v4
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
.end method

.method protected declared-synchronized expand()V
    .locals 6

    .prologue
    .line 691
    monitor-enter p0

    const/4 v0, 0x0

    .line 692
    .local v0, "newSize":I
    :try_start_0
    iget-object v2, p0, Lorg/apache/commons/math3/util/ResizableDoubleArray;->expansionMode:Lorg/apache/commons/math3/util/ResizableDoubleArray$ExpansionMode;

    sget-object v3, Lorg/apache/commons/math3/util/ResizableDoubleArray$ExpansionMode;->MULTIPLICATIVE:Lorg/apache/commons/math3/util/ResizableDoubleArray$ExpansionMode;

    if-ne v2, v3, :cond_0

    .line 693
    iget-object v2, p0, Lorg/apache/commons/math3/util/ResizableDoubleArray;->internalArray:[D

    array-length v2, v2

    int-to-double v2, v2

    iget-wide v4, p0, Lorg/apache/commons/math3/util/ResizableDoubleArray;->expansionFactor:D

    mul-double/2addr v2, v4

    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/FastMath;->ceil(D)D

    move-result-wide v2

    double-to-int v0, v2

    .line 697
    :goto_0
    new-array v1, v0, [D

    .line 700
    .local v1, "tempArray":[D
    iget-object v2, p0, Lorg/apache/commons/math3/util/ResizableDoubleArray;->internalArray:[D

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget-object v5, p0, Lorg/apache/commons/math3/util/ResizableDoubleArray;->internalArray:[D

    array-length v5, v5

    invoke-static {v2, v3, v1, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 701
    iput-object v1, p0, Lorg/apache/commons/math3/util/ResizableDoubleArray;->internalArray:[D
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 702
    monitor-exit p0

    return-void

    .line 695
    .end local v1    # "tempArray":[D
    :cond_0
    :try_start_1
    iget-object v2, p0, Lorg/apache/commons/math3/util/ResizableDoubleArray;->internalArray:[D

    array-length v2, v2

    int-to-long v2, v2

    iget-wide v4, p0, Lorg/apache/commons/math3/util/ResizableDoubleArray;->expansionFactor:D

    invoke-static {v4, v5}, Lorg/apache/commons/math3/util/FastMath;->round(D)J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v4

    add-long/2addr v2, v4

    long-to-int v0, v2

    goto :goto_0

    .line 691
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method protected getArrayRef()[D
    .locals 1

    .prologue
    .line 896
    iget-object v0, p0, Lorg/apache/commons/math3/util/ResizableDoubleArray;->internalArray:[D

    return-object v0
.end method

.method public getCapacity()I
    .locals 1

    .prologue
    .line 845
    iget-object v0, p0, Lorg/apache/commons/math3/util/ResizableDoubleArray;->internalArray:[D

    array-length v0, v0

    return v0
.end method

.method public getContractionCriteria()F
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 732
    invoke-virtual {p0}, Lorg/apache/commons/math3/util/ResizableDoubleArray;->getContractionCriterion()D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method public getContractionCriterion()D
    .locals 2

    .prologue
    .line 749
    iget-wide v0, p0, Lorg/apache/commons/math3/util/ResizableDoubleArray;->contractionCriterion:D

    return-wide v0
.end method

.method public declared-synchronized getElement(I)D
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 761
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lorg/apache/commons/math3/util/ResizableDoubleArray;->numElements:I

    if-lt p1, v0, :cond_0

    .line 762
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(I)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 761
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 763
    :cond_0
    if-ltz p1, :cond_1

    .line 764
    :try_start_1
    iget-object v0, p0, Lorg/apache/commons/math3/util/ResizableDoubleArray;->internalArray:[D

    iget v1, p0, Lorg/apache/commons/math3/util/ResizableDoubleArray;->startIndex:I

    add-int/2addr v1, p1

    aget-wide v0, v0, v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-wide v0

    .line 766
    :cond_1
    :try_start_2
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(I)V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
.end method

.method public declared-synchronized getElements()[D
    .locals 5

    .prologue
    .line 778
    monitor-enter p0

    :try_start_0
    iget v1, p0, Lorg/apache/commons/math3/util/ResizableDoubleArray;->numElements:I

    new-array v0, v1, [D

    .line 779
    .local v0, "elementArray":[D
    iget-object v1, p0, Lorg/apache/commons/math3/util/ResizableDoubleArray;->internalArray:[D

    iget v2, p0, Lorg/apache/commons/math3/util/ResizableDoubleArray;->startIndex:I

    const/4 v3, 0x0

    iget v4, p0, Lorg/apache/commons/math3/util/ResizableDoubleArray;->numElements:I

    invoke-static {v1, v2, v0, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 780
    monitor-exit p0

    return-object v0

    .line 778
    .end local v0    # "elementArray":[D
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public getExpansionFactor()F
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 798
    iget-wide v0, p0, Lorg/apache/commons/math3/util/ResizableDoubleArray;->expansionFactor:D

    double-to-float v0, v0

    return v0
.end method

.method public getExpansionMode()I
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 811
    sget-object v0, Lorg/apache/commons/math3/util/ResizableDoubleArray$1;->$SwitchMap$org$apache$commons$math3$util$ResizableDoubleArray$ExpansionMode:[I

    iget-object v1, p0, Lorg/apache/commons/math3/util/ResizableDoubleArray;->expansionMode:Lorg/apache/commons/math3/util/ResizableDoubleArray$ExpansionMode;

    invoke-virtual {v1}, Lorg/apache/commons/math3/util/ResizableDoubleArray$ExpansionMode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 817
    new-instance v0, Lorg/apache/commons/math3/exception/MathInternalError;

    invoke-direct {v0}, Lorg/apache/commons/math3/exception/MathInternalError;-><init>()V

    throw v0

    .line 813
    :pswitch_0
    const/4 v0, 0x0

    .line 815
    :goto_0
    return v0

    :pswitch_1
    const/4 v0, 0x1

    goto :goto_0

    .line 811
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method declared-synchronized getInternalLength()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 832
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/apache/commons/math3/util/ResizableDoubleArray;->internalArray:[D

    array-length v0, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getInternalValues()[D
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 873
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/apache/commons/math3/util/ResizableDoubleArray;->internalArray:[D
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getNumElements()I
    .locals 1

    .prologue
    .line 855
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lorg/apache/commons/math3/util/ResizableDoubleArray;->numElements:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected getStartIndex()I
    .locals 1

    .prologue
    .line 911
    iget v0, p0, Lorg/apache/commons/math3/util/ResizableDoubleArray;->startIndex:I

    return v0
.end method

.method public declared-synchronized hashCode()I
    .locals 4

    .prologue
    .line 1196
    monitor-enter p0

    const/4 v1, 0x6

    :try_start_0
    new-array v0, v1, [I

    .line 1197
    .local v0, "hashData":[I
    const/4 v1, 0x0

    iget-wide v2, p0, Lorg/apache/commons/math3/util/ResizableDoubleArray;->expansionFactor:D

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Double;->hashCode()I

    move-result v2

    aput v2, v0, v1

    .line 1198
    const/4 v1, 0x1

    iget-wide v2, p0, Lorg/apache/commons/math3/util/ResizableDoubleArray;->contractionCriterion:D

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Double;->hashCode()I

    move-result v2

    aput v2, v0, v1

    .line 1199
    const/4 v1, 0x2

    iget-object v2, p0, Lorg/apache/commons/math3/util/ResizableDoubleArray;->expansionMode:Lorg/apache/commons/math3/util/ResizableDoubleArray$ExpansionMode;

    invoke-virtual {v2}, Lorg/apache/commons/math3/util/ResizableDoubleArray$ExpansionMode;->hashCode()I

    move-result v2

    aput v2, v0, v1

    .line 1200
    const/4 v1, 0x3

    iget-object v2, p0, Lorg/apache/commons/math3/util/ResizableDoubleArray;->internalArray:[D

    invoke-static {v2}, Ljava/util/Arrays;->hashCode([D)I

    move-result v2

    aput v2, v0, v1

    .line 1201
    const/4 v1, 0x4

    iget v2, p0, Lorg/apache/commons/math3/util/ResizableDoubleArray;->numElements:I

    aput v2, v0, v1

    .line 1202
    const/4 v1, 0x5

    iget v2, p0, Lorg/apache/commons/math3/util/ResizableDoubleArray;->startIndex:I

    aput v2, v0, v1

    .line 1203
    invoke-static {v0}, Ljava/util/Arrays;->hashCode([I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    monitor-exit p0

    return v1

    .line 1196
    .end local v0    # "hashData":[I
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public setContractionCriteria(F)V
    .locals 2
    .param p1, "contractionCriteria"    # F
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathIllegalArgumentException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 925
    invoke-virtual {p0}, Lorg/apache/commons/math3/util/ResizableDoubleArray;->getExpansionFactor()F

    move-result v0

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/math3/util/ResizableDoubleArray;->checkContractExpand(FF)V

    .line 926
    monitor-enter p0

    .line 927
    float-to-double v0, p1

    :try_start_0
    iput-wide v0, p0, Lorg/apache/commons/math3/util/ResizableDoubleArray;->contractionCriterion:D

    .line 928
    monitor-exit p0

    .line 929
    return-void

    .line 928
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public declared-synchronized setElement(ID)V
    .locals 2
    .param p1, "index"    # I
    .param p2, "value"    # D

    .prologue
    .line 962
    monitor-enter p0

    if-gez p1, :cond_0

    .line 963
    :try_start_0
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(I)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 962
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 965
    :cond_0
    add-int/lit8 v0, p1, 0x1

    :try_start_1
    iget v1, p0, Lorg/apache/commons/math3/util/ResizableDoubleArray;->numElements:I

    if-le v0, v1, :cond_1

    .line 966
    add-int/lit8 v0, p1, 0x1

    iput v0, p0, Lorg/apache/commons/math3/util/ResizableDoubleArray;->numElements:I

    .line 968
    :cond_1
    iget v0, p0, Lorg/apache/commons/math3/util/ResizableDoubleArray;->startIndex:I

    add-int/2addr v0, p1

    iget-object v1, p0, Lorg/apache/commons/math3/util/ResizableDoubleArray;->internalArray:[D

    array-length v1, v1

    if-lt v0, v1, :cond_2

    .line 969
    iget v0, p0, Lorg/apache/commons/math3/util/ResizableDoubleArray;->startIndex:I

    add-int/lit8 v1, p1, 0x1

    add-int/2addr v0, v1

    invoke-direct {p0, v0}, Lorg/apache/commons/math3/util/ResizableDoubleArray;->expandTo(I)V

    .line 971
    :cond_2
    iget-object v0, p0, Lorg/apache/commons/math3/util/ResizableDoubleArray;->internalArray:[D

    iget v1, p0, Lorg/apache/commons/math3/util/ResizableDoubleArray;->startIndex:I

    add-int/2addr v1, p1

    aput-wide p2, v0, v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 972
    monitor-exit p0

    return-void
.end method

.method public setExpansionFactor(F)V
    .locals 4
    .param p1, "expansionFactor"    # F
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathIllegalArgumentException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 988
    invoke-virtual {p0}, Lorg/apache/commons/math3/util/ResizableDoubleArray;->getContractionCriterion()D

    move-result-wide v0

    float-to-double v2, p1

    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/apache/commons/math3/util/ResizableDoubleArray;->checkContractExpand(DD)V

    .line 990
    monitor-enter p0

    .line 991
    float-to-double v0, p1

    :try_start_0
    iput-wide v0, p0, Lorg/apache/commons/math3/util/ResizableDoubleArray;->expansionFactor:D

    .line 992
    monitor-exit p0

    .line 993
    return-void

    .line 992
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setExpansionMode(I)V
    .locals 6
    .param p1, "expansionMode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathIllegalArgumentException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 1006
    if-eqz p1, :cond_0

    if-eq p1, v5, :cond_0

    .line 1008
    new-instance v0, Lorg/apache/commons/math3/exception/MathIllegalArgumentException;

    sget-object v1, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->UNSUPPORTED_EXPANSION_MODE:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    const/4 v3, 0x2

    const-string v4, "MULTIPLICATIVE_MODE"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x4

    const-string v4, "ADDITIVE_MODE"

    aput-object v4, v2, v3

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/exception/MathIllegalArgumentException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v0

    .line 1012
    :cond_0
    monitor-enter p0

    .line 1013
    if-nez p1, :cond_2

    .line 1014
    :try_start_0
    sget-object v0, Lorg/apache/commons/math3/util/ResizableDoubleArray$ExpansionMode;->MULTIPLICATIVE:Lorg/apache/commons/math3/util/ResizableDoubleArray$ExpansionMode;

    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/util/ResizableDoubleArray;->setExpansionMode(Lorg/apache/commons/math3/util/ResizableDoubleArray$ExpansionMode;)V

    .line 1018
    :cond_1
    :goto_0
    monitor-exit p0

    .line 1019
    return-void

    .line 1015
    :cond_2
    if-ne p1, v5, :cond_1

    .line 1016
    sget-object v0, Lorg/apache/commons/math3/util/ResizableDoubleArray$ExpansionMode;->ADDITIVE:Lorg/apache/commons/math3/util/ResizableDoubleArray$ExpansionMode;

    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/util/ResizableDoubleArray;->setExpansionMode(Lorg/apache/commons/math3/util/ResizableDoubleArray$ExpansionMode;)V

    goto :goto_0

    .line 1018
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setExpansionMode(Lorg/apache/commons/math3/util/ResizableDoubleArray$ExpansionMode;)V
    .locals 0
    .param p1, "expansionMode"    # Lorg/apache/commons/math3/util/ResizableDoubleArray$ExpansionMode;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1029
    iput-object p1, p0, Lorg/apache/commons/math3/util/ResizableDoubleArray;->expansionMode:Lorg/apache/commons/math3/util/ResizableDoubleArray$ExpansionMode;

    .line 1030
    return-void
.end method

.method protected setInitialCapacity(I)V
    .locals 0
    .param p1, "initialCapacity"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathIllegalArgumentException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1044
    return-void
.end method

.method public declared-synchronized setNumElements(I)V
    .locals 6
    .param p1, "i"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathIllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 1057
    monitor-enter p0

    if-gez p1, :cond_0

    .line 1058
    :try_start_0
    new-instance v1, Lorg/apache/commons/math3/exception/MathIllegalArgumentException;

    sget-object v2, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->INDEX_NOT_POSITIVE:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-direct {v1, v2, v3}, Lorg/apache/commons/math3/exception/MathIllegalArgumentException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1057
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 1065
    :cond_0
    :try_start_1
    iget v1, p0, Lorg/apache/commons/math3/util/ResizableDoubleArray;->startIndex:I

    add-int v0, v1, p1

    .line 1066
    .local v0, "newSize":I
    iget-object v1, p0, Lorg/apache/commons/math3/util/ResizableDoubleArray;->internalArray:[D

    array-length v1, v1

    if-le v0, v1, :cond_1

    .line 1067
    invoke-direct {p0, v0}, Lorg/apache/commons/math3/util/ResizableDoubleArray;->expandTo(I)V

    .line 1071
    :cond_1
    iput p1, p0, Lorg/apache/commons/math3/util/ResizableDoubleArray;->numElements:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1072
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized start()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1100
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lorg/apache/commons/math3/util/ResizableDoubleArray;->startIndex:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized substituteMostRecentElement(D)D
    .locals 7
    .param p1, "value"    # D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathIllegalStateException;
        }
    .end annotation

    .prologue
    .line 509
    monitor-enter p0

    :try_start_0
    iget v3, p0, Lorg/apache/commons/math3/util/ResizableDoubleArray;->numElements:I

    const/4 v4, 0x1

    if-ge v3, v4, :cond_0

    .line 510
    new-instance v3, Lorg/apache/commons/math3/exception/MathIllegalStateException;

    sget-object v4, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->CANNOT_SUBSTITUTE_ELEMENT_FROM_EMPTY_ARRAY:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-direct {v3, v4, v5}, Lorg/apache/commons/math3/exception/MathIllegalStateException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 509
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 514
    :cond_0
    :try_start_1
    iget v3, p0, Lorg/apache/commons/math3/util/ResizableDoubleArray;->startIndex:I

    iget v4, p0, Lorg/apache/commons/math3/util/ResizableDoubleArray;->numElements:I

    add-int/lit8 v4, v4, -0x1

    add-int v2, v3, v4

    .line 515
    .local v2, "substIndex":I
    iget-object v3, p0, Lorg/apache/commons/math3/util/ResizableDoubleArray;->internalArray:[D

    aget-wide v0, v3, v2

    .line 517
    .local v0, "discarded":D
    iget-object v3, p0, Lorg/apache/commons/math3/util/ResizableDoubleArray;->internalArray:[D

    aput-wide p1, v3, v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 519
    monitor-exit p0

    return-wide v0
.end method
