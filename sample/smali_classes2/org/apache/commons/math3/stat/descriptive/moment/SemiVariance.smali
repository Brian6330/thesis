.class public Lorg/apache/commons/math3/stat/descriptive/moment/SemiVariance;
.super Lorg/apache/commons/math3/stat/descriptive/AbstractUnivariateStatistic;
.source "SemiVariance.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/math3/stat/descriptive/moment/SemiVariance$Direction;
    }
.end annotation


# static fields
.field public static final DOWNSIDE_VARIANCE:Lorg/apache/commons/math3/stat/descriptive/moment/SemiVariance$Direction;

.field public static final UPSIDE_VARIANCE:Lorg/apache/commons/math3/stat/descriptive/moment/SemiVariance$Direction;

.field private static final serialVersionUID:J = -0x24d2e0dc3679d722L


# instance fields
.field private biasCorrected:Z

.field private varianceDirection:Lorg/apache/commons/math3/stat/descriptive/moment/SemiVariance$Direction;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 60
    sget-object v0, Lorg/apache/commons/math3/stat/descriptive/moment/SemiVariance$Direction;->UPSIDE:Lorg/apache/commons/math3/stat/descriptive/moment/SemiVariance$Direction;

    sput-object v0, Lorg/apache/commons/math3/stat/descriptive/moment/SemiVariance;->UPSIDE_VARIANCE:Lorg/apache/commons/math3/stat/descriptive/moment/SemiVariance$Direction;

    .line 66
    sget-object v0, Lorg/apache/commons/math3/stat/descriptive/moment/SemiVariance$Direction;->DOWNSIDE:Lorg/apache/commons/math3/stat/descriptive/moment/SemiVariance$Direction;

    sput-object v0, Lorg/apache/commons/math3/stat/descriptive/moment/SemiVariance;->DOWNSIDE_VARIANCE:Lorg/apache/commons/math3/stat/descriptive/moment/SemiVariance$Direction;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 86
    invoke-direct {p0}, Lorg/apache/commons/math3/stat/descriptive/AbstractUnivariateStatistic;-><init>()V

    .line 75
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/commons/math3/stat/descriptive/moment/SemiVariance;->biasCorrected:Z

    .line 80
    sget-object v0, Lorg/apache/commons/math3/stat/descriptive/moment/SemiVariance$Direction;->DOWNSIDE:Lorg/apache/commons/math3/stat/descriptive/moment/SemiVariance$Direction;

    iput-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/moment/SemiVariance;->varianceDirection:Lorg/apache/commons/math3/stat/descriptive/moment/SemiVariance$Direction;

    .line 87
    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/stat/descriptive/moment/SemiVariance$Direction;)V
    .locals 1
    .param p1, "direction"    # Lorg/apache/commons/math3/stat/descriptive/moment/SemiVariance$Direction;

    .prologue
    .line 109
    invoke-direct {p0}, Lorg/apache/commons/math3/stat/descriptive/AbstractUnivariateStatistic;-><init>()V

    .line 75
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/commons/math3/stat/descriptive/moment/SemiVariance;->biasCorrected:Z

    .line 80
    sget-object v0, Lorg/apache/commons/math3/stat/descriptive/moment/SemiVariance$Direction;->DOWNSIDE:Lorg/apache/commons/math3/stat/descriptive/moment/SemiVariance$Direction;

    iput-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/moment/SemiVariance;->varianceDirection:Lorg/apache/commons/math3/stat/descriptive/moment/SemiVariance$Direction;

    .line 110
    iput-object p1, p0, Lorg/apache/commons/math3/stat/descriptive/moment/SemiVariance;->varianceDirection:Lorg/apache/commons/math3/stat/descriptive/moment/SemiVariance$Direction;

    .line 111
    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/stat/descriptive/moment/SemiVariance;)V
    .locals 1
    .param p1, "original"    # Lorg/apache/commons/math3/stat/descriptive/moment/SemiVariance;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;
        }
    .end annotation

    .prologue
    .line 138
    invoke-direct {p0}, Lorg/apache/commons/math3/stat/descriptive/AbstractUnivariateStatistic;-><init>()V

    .line 75
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/commons/math3/stat/descriptive/moment/SemiVariance;->biasCorrected:Z

    .line 80
    sget-object v0, Lorg/apache/commons/math3/stat/descriptive/moment/SemiVariance$Direction;->DOWNSIDE:Lorg/apache/commons/math3/stat/descriptive/moment/SemiVariance$Direction;

    iput-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/moment/SemiVariance;->varianceDirection:Lorg/apache/commons/math3/stat/descriptive/moment/SemiVariance$Direction;

    .line 139
    invoke-static {p1, p0}, Lorg/apache/commons/math3/stat/descriptive/moment/SemiVariance;->copy(Lorg/apache/commons/math3/stat/descriptive/moment/SemiVariance;Lorg/apache/commons/math3/stat/descriptive/moment/SemiVariance;)V

    .line 140
    return-void
.end method

.method public constructor <init>(Z)V
    .locals 1
    .param p1, "biasCorrected"    # Z

    .prologue
    .line 97
    invoke-direct {p0}, Lorg/apache/commons/math3/stat/descriptive/AbstractUnivariateStatistic;-><init>()V

    .line 75
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/commons/math3/stat/descriptive/moment/SemiVariance;->biasCorrected:Z

    .line 80
    sget-object v0, Lorg/apache/commons/math3/stat/descriptive/moment/SemiVariance$Direction;->DOWNSIDE:Lorg/apache/commons/math3/stat/descriptive/moment/SemiVariance$Direction;

    iput-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/moment/SemiVariance;->varianceDirection:Lorg/apache/commons/math3/stat/descriptive/moment/SemiVariance$Direction;

    .line 98
    iput-boolean p1, p0, Lorg/apache/commons/math3/stat/descriptive/moment/SemiVariance;->biasCorrected:Z

    .line 99
    return-void
.end method

.method public constructor <init>(ZLorg/apache/commons/math3/stat/descriptive/moment/SemiVariance$Direction;)V
    .locals 1
    .param p1, "corrected"    # Z
    .param p2, "direction"    # Lorg/apache/commons/math3/stat/descriptive/moment/SemiVariance$Direction;

    .prologue
    .line 125
    invoke-direct {p0}, Lorg/apache/commons/math3/stat/descriptive/AbstractUnivariateStatistic;-><init>()V

    .line 75
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/commons/math3/stat/descriptive/moment/SemiVariance;->biasCorrected:Z

    .line 80
    sget-object v0, Lorg/apache/commons/math3/stat/descriptive/moment/SemiVariance$Direction;->DOWNSIDE:Lorg/apache/commons/math3/stat/descriptive/moment/SemiVariance$Direction;

    iput-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/moment/SemiVariance;->varianceDirection:Lorg/apache/commons/math3/stat/descriptive/moment/SemiVariance$Direction;

    .line 126
    iput-boolean p1, p0, Lorg/apache/commons/math3/stat/descriptive/moment/SemiVariance;->biasCorrected:Z

    .line 127
    iput-object p2, p0, Lorg/apache/commons/math3/stat/descriptive/moment/SemiVariance;->varianceDirection:Lorg/apache/commons/math3/stat/descriptive/moment/SemiVariance$Direction;

    .line 128
    return-void
.end method

.method public static copy(Lorg/apache/commons/math3/stat/descriptive/moment/SemiVariance;Lorg/apache/commons/math3/stat/descriptive/moment/SemiVariance;)V
    .locals 1
    .param p0, "source"    # Lorg/apache/commons/math3/stat/descriptive/moment/SemiVariance;
    .param p1, "dest"    # Lorg/apache/commons/math3/stat/descriptive/moment/SemiVariance;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;
        }
    .end annotation

    .prologue
    .line 165
    invoke-static {p0}, Lorg/apache/commons/math3/util/MathUtils;->checkNotNull(Ljava/lang/Object;)V

    .line 166
    invoke-static {p1}, Lorg/apache/commons/math3/util/MathUtils;->checkNotNull(Ljava/lang/Object;)V

    .line 167
    invoke-virtual {p0}, Lorg/apache/commons/math3/stat/descriptive/moment/SemiVariance;->getDataRef()[D

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/apache/commons/math3/stat/descriptive/moment/SemiVariance;->setData([D)V

    .line 168
    iget-boolean v0, p0, Lorg/apache/commons/math3/stat/descriptive/moment/SemiVariance;->biasCorrected:Z

    iput-boolean v0, p1, Lorg/apache/commons/math3/stat/descriptive/moment/SemiVariance;->biasCorrected:Z

    .line 169
    iget-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/moment/SemiVariance;->varianceDirection:Lorg/apache/commons/math3/stat/descriptive/moment/SemiVariance$Direction;

    iput-object v0, p1, Lorg/apache/commons/math3/stat/descriptive/moment/SemiVariance;->varianceDirection:Lorg/apache/commons/math3/stat/descriptive/moment/SemiVariance$Direction;

    .line 170
    return-void
.end method


# virtual methods
.method public bridge synthetic copy()Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;
    .locals 1

    .prologue
    .line 54
    invoke-virtual {p0}, Lorg/apache/commons/math3/stat/descriptive/moment/SemiVariance;->copy()Lorg/apache/commons/math3/stat/descriptive/moment/SemiVariance;

    move-result-object v0

    return-object v0
.end method

.method public copy()Lorg/apache/commons/math3/stat/descriptive/moment/SemiVariance;
    .locals 1

    .prologue
    .line 148
    new-instance v0, Lorg/apache/commons/math3/stat/descriptive/moment/SemiVariance;

    invoke-direct {v0}, Lorg/apache/commons/math3/stat/descriptive/moment/SemiVariance;-><init>()V

    .line 150
    .local v0, "result":Lorg/apache/commons/math3/stat/descriptive/moment/SemiVariance;
    invoke-static {p0, v0}, Lorg/apache/commons/math3/stat/descriptive/moment/SemiVariance;->copy(Lorg/apache/commons/math3/stat/descriptive/moment/SemiVariance;Lorg/apache/commons/math3/stat/descriptive/moment/SemiVariance;)V

    .line 151
    return-object v0
.end method

.method public evaluate([DD)D
    .locals 8
    .param p1, "values"    # [D
    .param p2, "cutoff"    # D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathIllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 224
    iget-object v4, p0, Lorg/apache/commons/math3/stat/descriptive/moment/SemiVariance;->varianceDirection:Lorg/apache/commons/math3/stat/descriptive/moment/SemiVariance$Direction;

    iget-boolean v5, p0, Lorg/apache/commons/math3/stat/descriptive/moment/SemiVariance;->biasCorrected:Z

    const/4 v6, 0x0

    array-length v7, p1

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    invoke-virtual/range {v0 .. v7}, Lorg/apache/commons/math3/stat/descriptive/moment/SemiVariance;->evaluate([DDLorg/apache/commons/math3/stat/descriptive/moment/SemiVariance$Direction;ZII)D

    move-result-wide v0

    return-wide v0
.end method

.method public evaluate([DDLorg/apache/commons/math3/stat/descriptive/moment/SemiVariance$Direction;)D
    .locals 8
    .param p1, "values"    # [D
    .param p2, "cutoff"    # D
    .param p4, "direction"    # Lorg/apache/commons/math3/stat/descriptive/moment/SemiVariance$Direction;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathIllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 242
    iget-boolean v5, p0, Lorg/apache/commons/math3/stat/descriptive/moment/SemiVariance;->biasCorrected:Z

    const/4 v6, 0x0

    array-length v7, p1

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-object v4, p4

    invoke-virtual/range {v0 .. v7}, Lorg/apache/commons/math3/stat/descriptive/moment/SemiVariance;->evaluate([DDLorg/apache/commons/math3/stat/descriptive/moment/SemiVariance$Direction;ZII)D

    move-result-wide v0

    return-wide v0
.end method

.method public evaluate([DDLorg/apache/commons/math3/stat/descriptive/moment/SemiVariance$Direction;ZII)D
    .locals 12
    .param p1, "values"    # [D
    .param p2, "cutoff"    # D
    .param p4, "direction"    # Lorg/apache/commons/math3/stat/descriptive/moment/SemiVariance$Direction;
    .param p5, "corrected"    # Z
    .param p6, "start"    # I
    .param p7, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathIllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 266
    move/from16 v0, p6

    move/from16 v1, p7

    invoke-virtual {p0, p1, v0, v1}, Lorg/apache/commons/math3/stat/descriptive/moment/SemiVariance;->test([DII)Z

    .line 267
    array-length v8, p1

    if-nez v8, :cond_0

    .line 268
    const-wide/high16 v8, 0x7ff8000000000000L    # NaN

    .line 287
    :goto_0
    return-wide v8

    .line 270
    :cond_0
    array-length v8, p1

    const/4 v9, 0x1

    if-ne v8, v9, :cond_1

    .line 271
    const-wide/16 v8, 0x0

    goto :goto_0

    .line 273
    :cond_1
    invoke-virtual/range {p4 .. p4}, Lorg/apache/commons/math3/stat/descriptive/moment/SemiVariance$Direction;->getDirection()Z

    move-result v2

    .line 275
    .local v2, "booleanDirection":Z
    const-wide/16 v4, 0x0

    .line 276
    .local v4, "dev":D
    const-wide/16 v6, 0x0

    .line 277
    .local v6, "sumsq":D
    move/from16 v3, p6

    .local v3, "i":I
    :goto_1
    move/from16 v0, p7

    if-ge v3, v0, :cond_4

    .line 278
    aget-wide v8, p1, v3

    cmpl-double v8, v8, p2

    if-lez v8, :cond_3

    const/4 v8, 0x1

    :goto_2
    if-ne v8, v2, :cond_2

    .line 279
    aget-wide v8, p1, v3

    sub-double v4, v8, p2

    .line 280
    mul-double v8, v4, v4

    add-double/2addr v6, v8

    .line 277
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 278
    :cond_3
    const/4 v8, 0x0

    goto :goto_2

    .line 284
    :cond_4
    if-eqz p5, :cond_5

    .line 285
    move/from16 v0, p7

    int-to-double v8, v0

    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v8, v10

    div-double v8, v6, v8

    goto :goto_0

    .line 287
    :cond_5
    move/from16 v0, p7

    int-to-double v8, v0

    div-double v8, v6, v8

    goto :goto_0
.end method

.method public evaluate([DII)D
    .locals 8
    .param p1, "values"    # [D
    .param p2, "start"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathIllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 189
    new-instance v0, Lorg/apache/commons/math3/stat/descriptive/moment/Mean;

    invoke-direct {v0}, Lorg/apache/commons/math3/stat/descriptive/moment/Mean;-><init>()V

    invoke-virtual {v0, p1, p2, p3}, Lorg/apache/commons/math3/stat/descriptive/moment/Mean;->evaluate([DII)D

    move-result-wide v2

    .line 190
    .local v2, "m":D
    iget-object v4, p0, Lorg/apache/commons/math3/stat/descriptive/moment/SemiVariance;->varianceDirection:Lorg/apache/commons/math3/stat/descriptive/moment/SemiVariance$Direction;

    iget-boolean v5, p0, Lorg/apache/commons/math3/stat/descriptive/moment/SemiVariance;->biasCorrected:Z

    const/4 v6, 0x0

    array-length v7, p1

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v7}, Lorg/apache/commons/math3/stat/descriptive/moment/SemiVariance;->evaluate([DDLorg/apache/commons/math3/stat/descriptive/moment/SemiVariance$Direction;ZII)D

    move-result-wide v0

    return-wide v0
.end method

.method public evaluate([DLorg/apache/commons/math3/stat/descriptive/moment/SemiVariance$Direction;)D
    .locals 8
    .param p1, "values"    # [D
    .param p2, "direction"    # Lorg/apache/commons/math3/stat/descriptive/moment/SemiVariance$Direction;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathIllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 206
    new-instance v0, Lorg/apache/commons/math3/stat/descriptive/moment/Mean;

    invoke-direct {v0}, Lorg/apache/commons/math3/stat/descriptive/moment/Mean;-><init>()V

    invoke-virtual {v0, p1}, Lorg/apache/commons/math3/stat/descriptive/moment/Mean;->evaluate([D)D

    move-result-wide v2

    .line 207
    .local v2, "m":D
    iget-boolean v5, p0, Lorg/apache/commons/math3/stat/descriptive/moment/SemiVariance;->biasCorrected:Z

    const/4 v6, 0x0

    array-length v7, p1

    move-object v0, p0

    move-object v1, p1

    move-object v4, p2

    invoke-virtual/range {v0 .. v7}, Lorg/apache/commons/math3/stat/descriptive/moment/SemiVariance;->evaluate([DDLorg/apache/commons/math3/stat/descriptive/moment/SemiVariance$Direction;ZII)D

    move-result-wide v0

    return-wide v0
.end method

.method public getVarianceDirection()Lorg/apache/commons/math3/stat/descriptive/moment/SemiVariance$Direction;
    .locals 1

    .prologue
    .line 317
    iget-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/moment/SemiVariance;->varianceDirection:Lorg/apache/commons/math3/stat/descriptive/moment/SemiVariance$Direction;

    return-object v0
.end method

.method public isBiasCorrected()Z
    .locals 1

    .prologue
    .line 299
    iget-boolean v0, p0, Lorg/apache/commons/math3/stat/descriptive/moment/SemiVariance;->biasCorrected:Z

    return v0
.end method

.method public setBiasCorrected(Z)V
    .locals 0
    .param p1, "biasCorrected"    # Z

    .prologue
    .line 308
    iput-boolean p1, p0, Lorg/apache/commons/math3/stat/descriptive/moment/SemiVariance;->biasCorrected:Z

    .line 309
    return-void
.end method

.method public setVarianceDirection(Lorg/apache/commons/math3/stat/descriptive/moment/SemiVariance$Direction;)V
    .locals 0
    .param p1, "varianceDirection"    # Lorg/apache/commons/math3/stat/descriptive/moment/SemiVariance$Direction;

    .prologue
    .line 326
    iput-object p1, p0, Lorg/apache/commons/math3/stat/descriptive/moment/SemiVariance;->varianceDirection:Lorg/apache/commons/math3/stat/descriptive/moment/SemiVariance$Direction;

    .line 327
    return-void
.end method
