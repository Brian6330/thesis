.class public abstract enum Lorg/apache/commons/math3/stat/descriptive/rank/Percentile$EstimationType;
.super Ljava/lang/Enum;
.source "Percentile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/math3/stat/descriptive/rank/Percentile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4409
    name = "EstimationType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/apache/commons/math3/stat/descriptive/rank/Percentile$EstimationType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/apache/commons/math3/stat/descriptive/rank/Percentile$EstimationType;

.field public static final enum LEGACY:Lorg/apache/commons/math3/stat/descriptive/rank/Percentile$EstimationType;

.field public static final enum R_1:Lorg/apache/commons/math3/stat/descriptive/rank/Percentile$EstimationType;

.field public static final enum R_2:Lorg/apache/commons/math3/stat/descriptive/rank/Percentile$EstimationType;

.field public static final enum R_3:Lorg/apache/commons/math3/stat/descriptive/rank/Percentile$EstimationType;

.field public static final enum R_4:Lorg/apache/commons/math3/stat/descriptive/rank/Percentile$EstimationType;

.field public static final enum R_5:Lorg/apache/commons/math3/stat/descriptive/rank/Percentile$EstimationType;

.field public static final enum R_6:Lorg/apache/commons/math3/stat/descriptive/rank/Percentile$EstimationType;

.field public static final enum R_7:Lorg/apache/commons/math3/stat/descriptive/rank/Percentile$EstimationType;

.field public static final enum R_8:Lorg/apache/commons/math3/stat/descriptive/rank/Percentile$EstimationType;

.field public static final enum R_9:Lorg/apache/commons/math3/stat/descriptive/rank/Percentile$EstimationType;


# instance fields
.field private final name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 724
    new-instance v0, Lorg/apache/commons/math3/stat/descriptive/rank/Percentile$EstimationType$1;

    const-string v1, "LEGACY"

    const-string v2, "Legacy Apache Commons Math"

    invoke-direct {v0, v1, v4, v2}, Lorg/apache/commons/math3/stat/descriptive/rank/Percentile$EstimationType$1;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/apache/commons/math3/stat/descriptive/rank/Percentile$EstimationType;->LEGACY:Lorg/apache/commons/math3/stat/descriptive/rank/Percentile$EstimationType;

    .line 746
    new-instance v0, Lorg/apache/commons/math3/stat/descriptive/rank/Percentile$EstimationType$2;

    const-string v1, "R_1"

    const-string v2, "R-1"

    invoke-direct {v0, v1, v5, v2}, Lorg/apache/commons/math3/stat/descriptive/rank/Percentile$EstimationType$2;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/apache/commons/math3/stat/descriptive/rank/Percentile$EstimationType;->R_1:Lorg/apache/commons/math3/stat/descriptive/rank/Percentile$EstimationType;

    .line 775
    new-instance v0, Lorg/apache/commons/math3/stat/descriptive/rank/Percentile$EstimationType$3;

    const-string v1, "R_2"

    const-string v2, "R-2"

    invoke-direct {v0, v1, v6, v2}, Lorg/apache/commons/math3/stat/descriptive/rank/Percentile$EstimationType$3;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/apache/commons/math3/stat/descriptive/rank/Percentile$EstimationType;->R_2:Lorg/apache/commons/math3/stat/descriptive/rank/Percentile$EstimationType;

    .line 809
    new-instance v0, Lorg/apache/commons/math3/stat/descriptive/rank/Percentile$EstimationType$4;

    const-string v1, "R_3"

    const-string v2, "R-3"

    invoke-direct {v0, v1, v7, v2}, Lorg/apache/commons/math3/stat/descriptive/rank/Percentile$EstimationType$4;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/apache/commons/math3/stat/descriptive/rank/Percentile$EstimationType;->R_3:Lorg/apache/commons/math3/stat/descriptive/rank/Percentile$EstimationType;

    .line 829
    new-instance v0, Lorg/apache/commons/math3/stat/descriptive/rank/Percentile$EstimationType$5;

    const-string v1, "R_4"

    const-string v2, "R-4"

    invoke-direct {v0, v1, v8, v2}, Lorg/apache/commons/math3/stat/descriptive/rank/Percentile$EstimationType$5;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/apache/commons/math3/stat/descriptive/rank/Percentile$EstimationType;->R_4:Lorg/apache/commons/math3/stat/descriptive/rank/Percentile$EstimationType;

    .line 850
    new-instance v0, Lorg/apache/commons/math3/stat/descriptive/rank/Percentile$EstimationType$6;

    const-string v1, "R_5"

    const/4 v2, 0x5

    const-string v3, "R-5"

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/commons/math3/stat/descriptive/rank/Percentile$EstimationType$6;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/apache/commons/math3/stat/descriptive/rank/Percentile$EstimationType;->R_5:Lorg/apache/commons/math3/stat/descriptive/rank/Percentile$EstimationType;

    .line 878
    new-instance v0, Lorg/apache/commons/math3/stat/descriptive/rank/Percentile$EstimationType$7;

    const-string v1, "R_6"

    const/4 v2, 0x6

    const-string v3, "R-6"

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/commons/math3/stat/descriptive/rank/Percentile$EstimationType$7;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/apache/commons/math3/stat/descriptive/rank/Percentile$EstimationType;->R_6:Lorg/apache/commons/math3/stat/descriptive/rank/Percentile$EstimationType;

    .line 902
    new-instance v0, Lorg/apache/commons/math3/stat/descriptive/rank/Percentile$EstimationType$8;

    const-string v1, "R_7"

    const/4 v2, 0x7

    const-string v3, "R-7"

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/commons/math3/stat/descriptive/rank/Percentile$EstimationType$8;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/apache/commons/math3/stat/descriptive/rank/Percentile$EstimationType;->R_7:Lorg/apache/commons/math3/stat/descriptive/rank/Percentile$EstimationType;

    .line 928
    new-instance v0, Lorg/apache/commons/math3/stat/descriptive/rank/Percentile$EstimationType$9;

    const-string v1, "R_8"

    const/16 v2, 0x8

    const-string v3, "R-8"

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/commons/math3/stat/descriptive/rank/Percentile$EstimationType$9;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/apache/commons/math3/stat/descriptive/rank/Percentile$EstimationType;->R_8:Lorg/apache/commons/math3/stat/descriptive/rank/Percentile$EstimationType;

    .line 951
    new-instance v0, Lorg/apache/commons/math3/stat/descriptive/rank/Percentile$EstimationType$10;

    const-string v1, "R_9"

    const/16 v2, 0x9

    const-string v3, "R-9"

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/commons/math3/stat/descriptive/rank/Percentile$EstimationType$10;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/apache/commons/math3/stat/descriptive/rank/Percentile$EstimationType;->R_9:Lorg/apache/commons/math3/stat/descriptive/rank/Percentile$EstimationType;

    .line 713
    const/16 v0, 0xa

    new-array v0, v0, [Lorg/apache/commons/math3/stat/descriptive/rank/Percentile$EstimationType;

    sget-object v1, Lorg/apache/commons/math3/stat/descriptive/rank/Percentile$EstimationType;->LEGACY:Lorg/apache/commons/math3/stat/descriptive/rank/Percentile$EstimationType;

    aput-object v1, v0, v4

    sget-object v1, Lorg/apache/commons/math3/stat/descriptive/rank/Percentile$EstimationType;->R_1:Lorg/apache/commons/math3/stat/descriptive/rank/Percentile$EstimationType;

    aput-object v1, v0, v5

    sget-object v1, Lorg/apache/commons/math3/stat/descriptive/rank/Percentile$EstimationType;->R_2:Lorg/apache/commons/math3/stat/descriptive/rank/Percentile$EstimationType;

    aput-object v1, v0, v6

    sget-object v1, Lorg/apache/commons/math3/stat/descriptive/rank/Percentile$EstimationType;->R_3:Lorg/apache/commons/math3/stat/descriptive/rank/Percentile$EstimationType;

    aput-object v1, v0, v7

    sget-object v1, Lorg/apache/commons/math3/stat/descriptive/rank/Percentile$EstimationType;->R_4:Lorg/apache/commons/math3/stat/descriptive/rank/Percentile$EstimationType;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lorg/apache/commons/math3/stat/descriptive/rank/Percentile$EstimationType;->R_5:Lorg/apache/commons/math3/stat/descriptive/rank/Percentile$EstimationType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lorg/apache/commons/math3/stat/descriptive/rank/Percentile$EstimationType;->R_6:Lorg/apache/commons/math3/stat/descriptive/rank/Percentile$EstimationType;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lorg/apache/commons/math3/stat/descriptive/rank/Percentile$EstimationType;->R_7:Lorg/apache/commons/math3/stat/descriptive/rank/Percentile$EstimationType;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lorg/apache/commons/math3/stat/descriptive/rank/Percentile$EstimationType;->R_8:Lorg/apache/commons/math3/stat/descriptive/rank/Percentile$EstimationType;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lorg/apache/commons/math3/stat/descriptive/rank/Percentile$EstimationType;->R_9:Lorg/apache/commons/math3/stat/descriptive/rank/Percentile$EstimationType;

    aput-object v2, v0, v1

    sput-object v0, Lorg/apache/commons/math3/stat/descriptive/rank/Percentile$EstimationType;->$VALUES:[Lorg/apache/commons/math3/stat/descriptive/rank/Percentile$EstimationType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p3, "type"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 972
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 973
    iput-object p3, p0, Lorg/apache/commons/math3/stat/descriptive/rank/Percentile$EstimationType;->name:Ljava/lang/String;

    .line 974
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILjava/lang/String;Lorg/apache/commons/math3/stat/descriptive/rank/Percentile$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # I
    .param p3, "x2"    # Ljava/lang/String;
    .param p4, "x3"    # Lorg/apache/commons/math3/stat/descriptive/rank/Percentile$1;

    .prologue
    .line 713
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/commons/math3/stat/descriptive/rank/Percentile$EstimationType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/apache/commons/math3/stat/descriptive/rank/Percentile$EstimationType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 713
    const-class v0, Lorg/apache/commons/math3/stat/descriptive/rank/Percentile$EstimationType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/stat/descriptive/rank/Percentile$EstimationType;

    return-object v0
.end method

.method public static values()[Lorg/apache/commons/math3/stat/descriptive/rank/Percentile$EstimationType;
    .locals 1

    .prologue
    .line 713
    sget-object v0, Lorg/apache/commons/math3/stat/descriptive/rank/Percentile$EstimationType;->$VALUES:[Lorg/apache/commons/math3/stat/descriptive/rank/Percentile$EstimationType;

    invoke-virtual {v0}, [Lorg/apache/commons/math3/stat/descriptive/rank/Percentile$EstimationType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/commons/math3/stat/descriptive/rank/Percentile$EstimationType;

    return-object v0
.end method


# virtual methods
.method protected estimate([D[IDILorg/apache/commons/math3/util/KthSelector;)D
    .locals 17
    .param p1, "work"    # [D
    .param p2, "pivotsHeap"    # [I
    .param p3, "pos"    # D
    .param p5, "length"    # I
    .param p6, "kthSelector"    # Lorg/apache/commons/math3/util/KthSelector;

    .prologue
    .line 1004
    invoke-static/range {p3 .. p4}, Lorg/apache/commons/math3/util/FastMath;->floor(D)D

    move-result-wide v6

    .line 1005
    .local v6, "fpos":D
    double-to-int v8, v6

    .line 1006
    .local v8, "intPos":I
    sub-double v4, p3, v6

    .line 1008
    .local v4, "dif":D
    const-wide/high16 v14, 0x3ff0000000000000L    # 1.0

    cmpg-double v9, p3, v14

    if-gez v9, :cond_0

    .line 1009
    const/4 v9, 0x0

    move-object/from16 v0, p6

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2, v9}, Lorg/apache/commons/math3/util/KthSelector;->select([D[II)D

    move-result-wide v14

    .line 1017
    :goto_0
    return-wide v14

    .line 1011
    :cond_0
    move/from16 v0, p5

    int-to-double v14, v0

    cmpl-double v9, p3, v14

    if-ltz v9, :cond_1

    .line 1012
    add-int/lit8 v9, p5, -0x1

    move-object/from16 v0, p6

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2, v9}, Lorg/apache/commons/math3/util/KthSelector;->select([D[II)D

    move-result-wide v14

    goto :goto_0

    .line 1015
    :cond_1
    add-int/lit8 v9, v8, -0x1

    move-object/from16 v0, p6

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2, v9}, Lorg/apache/commons/math3/util/KthSelector;->select([D[II)D

    move-result-wide v10

    .line 1016
    .local v10, "lower":D
    move-object/from16 v0, p6

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2, v8}, Lorg/apache/commons/math3/util/KthSelector;->select([D[II)D

    move-result-wide v12

    .line 1017
    .local v12, "upper":D
    sub-double v14, v12, v10

    mul-double/2addr v14, v4

    add-double/2addr v14, v10

    goto :goto_0
.end method

.method public evaluate([DDLorg/apache/commons/math3/util/KthSelector;)D
    .locals 8
    .param p1, "work"    # [D
    .param p2, "p"    # D
    .param p4, "kthSelector"    # Lorg/apache/commons/math3/util/KthSelector;

    .prologue
    .line 1060
    const/4 v3, 0x0

    move-object v1, p0

    move-object v2, p1

    move-wide v4, p2

    move-object v6, p4

    invoke-virtual/range {v1 .. v6}, Lorg/apache/commons/math3/stat/descriptive/rank/Percentile$EstimationType;->evaluate([D[IDLorg/apache/commons/math3/util/KthSelector;)D

    move-result-wide v0

    return-wide v0
.end method

.method protected evaluate([D[IDLorg/apache/commons/math3/util/KthSelector;)D
    .locals 9
    .param p1, "work"    # [D
    .param p2, "pivotsHeap"    # [I
    .param p3, "p"    # D
    .param p5, "kthSelector"    # Lorg/apache/commons/math3/util/KthSelector;

    .prologue
    const-wide/high16 v2, 0x4059000000000000L    # 100.0

    .line 1037
    invoke-static {p1}, Lorg/apache/commons/math3/util/MathUtils;->checkNotNull(Ljava/lang/Object;)V

    .line 1038
    cmpl-double v0, p3, v2

    if-gtz v0, :cond_0

    const-wide/16 v0, 0x0

    cmpg-double v0, p3, v0

    if-gtz v0, :cond_1

    .line 1039
    :cond_0
    new-instance v0, Lorg/apache/commons/math3/exception/OutOfRangeException;

    sget-object v1, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->OUT_OF_BOUNDS_QUANTILE_VALUE:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-static {p3, p4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/16 v4, 0x64

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/apache/commons/math3/exception/OutOfRangeException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;)V

    throw v0

    .line 1042
    :cond_1
    div-double v0, p3, v2

    array-length v2, p1

    invoke-virtual {p0, v0, v1, v2}, Lorg/apache/commons/math3/stat/descriptive/rank/Percentile$EstimationType;->index(DI)D

    move-result-wide v4

    array-length v6, p1

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v7, p5

    invoke-virtual/range {v1 .. v7}, Lorg/apache/commons/math3/stat/descriptive/rank/Percentile$EstimationType;->estimate([D[IDILorg/apache/commons/math3/util/KthSelector;)D

    move-result-wide v0

    return-wide v0
.end method

.method getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1069
    iget-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/rank/Percentile$EstimationType;->name:Ljava/lang/String;

    return-object v0
.end method

.method protected abstract index(DI)D
.end method
