.class Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;
.super Ljava/lang/Object;
.source "PSquarePercentile.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Marker"
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x31a013708eff5b3fL


# instance fields
.field private desiredMarkerIncrement:D

.field private desiredMarkerPosition:D

.field private index:I

.field private intMarkerPosition:D

.field private transient linear:Lorg/apache/commons/math3/analysis/interpolation/UnivariateInterpolator;

.field private markerHeight:D

.field private transient next:Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;

.field private final nonLinear:Lorg/apache/commons/math3/analysis/interpolation/UnivariateInterpolator;

.field private transient previous:Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 659
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 647
    new-instance v0, Lorg/apache/commons/math3/analysis/interpolation/NevilleInterpolator;

    invoke-direct {v0}, Lorg/apache/commons/math3/analysis/interpolation/NevilleInterpolator;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;->nonLinear:Lorg/apache/commons/math3/analysis/interpolation/UnivariateInterpolator;

    .line 653
    new-instance v0, Lorg/apache/commons/math3/analysis/interpolation/LinearInterpolator;

    invoke-direct {v0}, Lorg/apache/commons/math3/analysis/interpolation/LinearInterpolator;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;->linear:Lorg/apache/commons/math3/analysis/interpolation/UnivariateInterpolator;

    .line 660
    iput-object p0, p0, Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;->previous:Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;

    iput-object p0, p0, Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;->next:Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;

    .line 661
    return-void
.end method

.method private constructor <init>(DDDD)V
    .locals 1
    .param p1, "heightOfMarker"    # D
    .param p3, "makerPositionDesired"    # D
    .param p5, "markerPositionIncrement"    # D
    .param p7, "markerPositionNumber"    # D

    .prologue
    .line 673
    invoke-direct {p0}, Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;-><init>()V

    .line 674
    iput-wide p1, p0, Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;->markerHeight:D

    .line 675
    iput-wide p3, p0, Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;->desiredMarkerPosition:D

    .line 676
    iput-wide p5, p0, Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;->desiredMarkerIncrement:D

    .line 677
    iput-wide p7, p0, Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;->intMarkerPosition:D

    .line 678
    return-void
.end method

.method synthetic constructor <init>(DDDDLorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$1;)V
    .locals 1
    .param p1, "x0"    # D
    .param p3, "x1"    # D
    .param p5, "x2"    # D
    .param p7, "x3"    # D
    .param p9, "x4"    # Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$1;

    .prologue
    .line 596
    invoke-direct/range {p0 .. p8}, Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;-><init>(DDDD)V

    return-void
.end method

.method synthetic constructor <init>(Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$1;

    .prologue
    .line 596
    invoke-direct {p0}, Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;)Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;
    .locals 1
    .param p0, "x0"    # Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;
    .param p1, "x1"    # Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;

    .prologue
    .line 596
    invoke-direct {p0, p1}, Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;->previous(Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;)Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;)Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;
    .locals 1
    .param p0, "x0"    # Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;
    .param p1, "x1"    # Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;

    .prologue
    .line 596
    invoke-direct {p0, p1}, Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;->next(Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;)Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;I)Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;
    .locals 1
    .param p0, "x0"    # Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;
    .param p1, "x1"    # I

    .prologue
    .line 596
    invoke-direct {p0, p1}, Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;->index(I)Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;)D
    .locals 2
    .param p0, "x0"    # Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;

    .prologue
    .line 596
    iget-wide v0, p0, Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;->markerHeight:D

    return-wide v0
.end method

.method static synthetic access$502(Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;D)D
    .locals 1
    .param p0, "x0"    # Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;
    .param p1, "x1"    # D

    .prologue
    .line 596
    iput-wide p1, p0, Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;->markerHeight:D

    return-wide p1
.end method

.method static synthetic access$600(Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;)D
    .locals 2
    .param p0, "x0"    # Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;

    .prologue
    .line 596
    invoke-direct {p0}, Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;->estimate()D

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$700(Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;I)V
    .locals 0
    .param p0, "x0"    # Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;
    .param p1, "x1"    # I

    .prologue
    .line 596
    invoke-direct {p0, p1}, Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;->incrementPosition(I)V

    return-void
.end method

.method static synthetic access$800(Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;)V
    .locals 0
    .param p0, "x0"    # Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;

    .prologue
    .line 596
    invoke-direct {p0}, Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;->updateDesiredPosition()V

    return-void
.end method

.method private difference()D
    .locals 4

    .prologue
    .line 739
    iget-wide v0, p0, Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;->desiredMarkerPosition:D

    iget-wide v2, p0, Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;->intMarkerPosition:D

    sub-double/2addr v0, v2

    return-wide v0
.end method

.method private estimate()D
    .locals 22

    .prologue
    .line 748
    invoke-direct/range {p0 .. p0}, Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;->difference()D

    move-result-wide v6

    .line 749
    .local v6, "di":D
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;->next:Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-wide v0, v0, Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;->intMarkerPosition:D

    move-wide/from16 v18, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;->intMarkerPosition:D

    move-wide/from16 v20, v0

    sub-double v18, v18, v20

    const-wide/high16 v20, 0x3ff0000000000000L    # 1.0

    cmpl-double v17, v18, v20

    if-lez v17, :cond_4

    const/4 v8, 0x1

    .line 751
    .local v8, "isNextHigher":Z
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;->previous:Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-wide v0, v0, Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;->intMarkerPosition:D

    move-wide/from16 v18, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;->intMarkerPosition:D

    move-wide/from16 v20, v0

    sub-double v18, v18, v20

    const-wide/high16 v20, -0x4010000000000000L    # -1.0

    cmpg-double v17, v18, v20

    if-gez v17, :cond_5

    const/4 v9, 0x1

    .line 754
    .local v9, "isPreviousLower":Z
    :goto_1
    const-wide/high16 v18, 0x3ff0000000000000L    # 1.0

    cmpl-double v17, v6, v18

    if-ltz v17, :cond_0

    if-nez v8, :cond_1

    :cond_0
    const-wide/high16 v18, -0x4010000000000000L    # -1.0

    cmpg-double v17, v6, v18

    if-gtz v17, :cond_3

    if-eqz v9, :cond_3

    .line 755
    :cond_1
    const-wide/16 v18, 0x0

    cmpl-double v17, v6, v18

    if-ltz v17, :cond_6

    const/4 v4, 0x1

    .line 756
    .local v4, "d":I
    :goto_2
    const/16 v17, 0x3

    move/from16 v0, v17

    new-array v14, v0, [D

    const/16 v17, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;->previous:Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-wide v0, v0, Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;->intMarkerPosition:D

    move-wide/from16 v18, v0

    aput-wide v18, v14, v17

    const/16 v17, 0x1

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;->intMarkerPosition:D

    move-wide/from16 v18, v0

    aput-wide v18, v14, v17

    const/16 v17, 0x2

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;->next:Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-wide v0, v0, Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;->intMarkerPosition:D

    move-wide/from16 v18, v0

    aput-wide v18, v14, v17

    .line 759
    .local v14, "xval":[D
    const/16 v17, 0x3

    move/from16 v0, v17

    new-array v0, v0, [D

    move-object/from16 v16, v0

    const/16 v17, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;->previous:Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-wide v0, v0, Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;->markerHeight:D

    move-wide/from16 v18, v0

    aput-wide v18, v16, v17

    const/16 v17, 0x1

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;->markerHeight:D

    move-wide/from16 v18, v0

    aput-wide v18, v16, v17

    const/16 v17, 0x2

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;->next:Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-wide v0, v0, Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;->markerHeight:D

    move-wide/from16 v18, v0

    aput-wide v18, v16, v17

    .line 762
    .local v16, "yval":[D
    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;->intMarkerPosition:D

    move-wide/from16 v18, v0

    int-to-double v0, v4

    move-wide/from16 v20, v0

    add-double v12, v18, v20

    .line 764
    .local v12, "xD":D
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;->nonLinear:Lorg/apache/commons/math3/analysis/interpolation/UnivariateInterpolator;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-interface {v0, v14, v1}, Lorg/apache/commons/math3/analysis/interpolation/UnivariateInterpolator;->interpolate([D[D)Lorg/apache/commons/math3/analysis/UnivariateFunction;

    move-result-object v10

    .line 766
    .local v10, "univariateFunction":Lorg/apache/commons/math3/analysis/UnivariateFunction;
    invoke-interface {v10, v12, v13}, Lorg/apache/commons/math3/analysis/UnivariateFunction;->value(D)D

    move-result-wide v18

    move-wide/from16 v0, v18

    move-object/from16 v2, p0

    iput-wide v0, v2, Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;->markerHeight:D

    .line 769
    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;->markerHeight:D

    move-wide/from16 v18, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move-wide/from16 v2, v18

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;->isEstimateBad([DD)Z

    move-result v17

    if-eqz v17, :cond_2

    .line 770
    const/16 v17, 0x1

    aget-wide v18, v14, v17

    sub-double v18, v12, v18

    const-wide/16 v20, 0x0

    cmpl-double v17, v18, v20

    if-lez v17, :cond_7

    const/4 v5, 0x1

    .line 771
    .local v5, "delta":I
    :goto_3
    const/16 v17, 0x2

    move/from16 v0, v17

    new-array v11, v0, [D

    const/16 v17, 0x0

    const/16 v18, 0x1

    aget-wide v18, v14, v18

    aput-wide v18, v11, v17

    const/16 v17, 0x1

    add-int/lit8 v18, v5, 0x1

    aget-wide v18, v14, v18

    aput-wide v18, v11, v17

    .line 773
    .local v11, "xBad":[D
    const/16 v17, 0x2

    move/from16 v0, v17

    new-array v15, v0, [D

    const/16 v17, 0x0

    const/16 v18, 0x1

    aget-wide v18, v16, v18

    aput-wide v18, v15, v17

    const/16 v17, 0x1

    add-int/lit8 v18, v5, 0x1

    aget-wide v18, v16, v18

    aput-wide v18, v15, v17

    .line 775
    .local v15, "yBad":[D
    const/16 v17, 0x1

    move/from16 v0, v17

    new-array v0, v0, [[D

    move-object/from16 v17, v0

    const/16 v18, 0x0

    aput-object v15, v17, v18

    move-object/from16 v0, v17

    invoke-static {v11, v0}, Lorg/apache/commons/math3/util/MathArrays;->sortInPlace([D[[D)V

    .line 776
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;->linear:Lorg/apache/commons/math3/analysis/interpolation/UnivariateInterpolator;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-interface {v0, v11, v15}, Lorg/apache/commons/math3/analysis/interpolation/UnivariateInterpolator;->interpolate([D[D)Lorg/apache/commons/math3/analysis/UnivariateFunction;

    move-result-object v10

    .line 777
    invoke-interface {v10, v12, v13}, Lorg/apache/commons/math3/analysis/UnivariateFunction;->value(D)D

    move-result-wide v18

    move-wide/from16 v0, v18

    move-object/from16 v2, p0

    iput-wide v0, v2, Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;->markerHeight:D

    .line 779
    .end local v5    # "delta":I
    .end local v11    # "xBad":[D
    .end local v15    # "yBad":[D
    :cond_2
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;->incrementPosition(I)V

    .line 781
    .end local v4    # "d":I
    .end local v10    # "univariateFunction":Lorg/apache/commons/math3/analysis/UnivariateFunction;
    .end local v12    # "xD":D
    .end local v14    # "xval":[D
    .end local v16    # "yval":[D
    :cond_3
    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;->markerHeight:D

    move-wide/from16 v18, v0

    return-wide v18

    .line 749
    .end local v8    # "isNextHigher":Z
    .end local v9    # "isPreviousLower":Z
    :cond_4
    const/4 v8, 0x0

    goto/16 :goto_0

    .line 751
    .restart local v8    # "isNextHigher":Z
    :cond_5
    const/4 v9, 0x0

    goto/16 :goto_1

    .line 755
    .restart local v9    # "isPreviousLower":Z
    :cond_6
    const/4 v4, -0x1

    goto/16 :goto_2

    .line 770
    .restart local v4    # "d":I
    .restart local v10    # "univariateFunction":Lorg/apache/commons/math3/analysis/UnivariateFunction;
    .restart local v12    # "xD":D
    .restart local v14    # "xval":[D
    .restart local v16    # "yval":[D
    :cond_7
    const/4 v5, -0x1

    goto :goto_3
.end method

.method private incrementPosition(I)V
    .locals 4
    .param p1, "d"    # I

    .prologue
    .line 730
    iget-wide v0, p0, Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;->intMarkerPosition:D

    int-to-double v2, p1

    add-double/2addr v0, v2

    iput-wide v0, p0, Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;->intMarkerPosition:D

    .line 731
    return-void
.end method

.method private index(I)Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;
    .locals 0
    .param p1, "indexOfMarker"    # I

    .prologue
    .line 713
    iput p1, p0, Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;->index:I

    .line 714
    return-object p0
.end method

.method private isEstimateBad([DD)Z
    .locals 4
    .param p1, "y"    # [D
    .param p2, "yD"    # D

    .prologue
    const/4 v0, 0x0

    .line 793
    aget-wide v2, p1, v0

    cmpg-double v1, p2, v2

    if-lez v1, :cond_0

    const/4 v1, 0x2

    aget-wide v2, p1, v1

    cmpl-double v1, p2, v2

    if-ltz v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method private next(Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;)Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;
    .locals 0
    .param p1, "nextMarker"    # Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;

    .prologue
    .line 701
    invoke-static {p1}, Lorg/apache/commons/math3/util/MathUtils;->checkNotNull(Ljava/lang/Object;)V

    .line 702
    iput-object p1, p0, Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;->next:Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;

    .line 703
    return-object p0
.end method

.method private previous(Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;)Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;
    .locals 0
    .param p1, "previousMarker"    # Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;

    .prologue
    .line 688
    invoke-static {p1}, Lorg/apache/commons/math3/util/MathUtils;->checkNotNull(Ljava/lang/Object;)V

    .line 689
    iput-object p1, p0, Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;->previous:Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;

    .line 690
    return-object p0
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 1
    .param p1, "anInstream"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 847
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 848
    iput-object p0, p0, Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;->next:Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;

    iput-object p0, p0, Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;->previous:Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;

    .line 849
    new-instance v0, Lorg/apache/commons/math3/analysis/interpolation/LinearInterpolator;

    invoke-direct {v0}, Lorg/apache/commons/math3/analysis/interpolation/LinearInterpolator;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;->linear:Lorg/apache/commons/math3/analysis/interpolation/UnivariateInterpolator;

    .line 850
    return-void
.end method

.method private updateDesiredPosition()V
    .locals 4

    .prologue
    .line 721
    iget-wide v0, p0, Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;->desiredMarkerPosition:D

    iget-wide v2, p0, Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;->desiredMarkerIncrement:D

    add-double/2addr v0, v2

    iput-wide v0, p0, Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;->desiredMarkerPosition:D

    .line 722
    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 10

    .prologue
    .line 859
    new-instance v1, Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;

    iget-wide v2, p0, Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;->markerHeight:D

    iget-wide v4, p0, Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;->desiredMarkerPosition:D

    iget-wide v6, p0, Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;->desiredMarkerIncrement:D

    iget-wide v8, p0, Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;->intMarkerPosition:D

    invoke-direct/range {v1 .. v9}, Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;-><init>(DDDD)V

    return-object v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 8
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 806
    const/4 v0, 0x0

    .line 807
    .local v0, "result":Z
    if-ne p0, p1, :cond_1

    .line 808
    const/4 v0, 0x1

    .line 829
    :cond_0
    :goto_0
    return v0

    .line 809
    :cond_1
    if-eqz p1, :cond_0

    instance-of v4, p1, Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;

    if-eqz v4, :cond_0

    move-object v1, p1

    .line 810
    check-cast v1, Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;

    .line 812
    .local v1, "that":Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;
    iget-wide v4, p0, Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;->markerHeight:D

    iget-wide v6, v1, Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;->markerHeight:D

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Double;->compare(DD)I

    move-result v4

    if-nez v4, :cond_2

    move v0, v2

    .line 813
    :goto_1
    if-eqz v0, :cond_3

    iget-wide v4, p0, Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;->intMarkerPosition:D

    iget-wide v6, v1, Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;->intMarkerPosition:D

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Double;->compare(DD)I

    move-result v4

    if-nez v4, :cond_3

    move v0, v2

    .line 817
    :goto_2
    if-eqz v0, :cond_4

    iget-wide v4, p0, Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;->desiredMarkerPosition:D

    iget-wide v6, v1, Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;->desiredMarkerPosition:D

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Double;->compare(DD)I

    move-result v4

    if-nez v4, :cond_4

    move v0, v2

    .line 821
    :goto_3
    if-eqz v0, :cond_5

    iget-wide v4, p0, Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;->desiredMarkerIncrement:D

    iget-wide v6, v1, Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;->desiredMarkerIncrement:D

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Double;->compare(DD)I

    move-result v4

    if-nez v4, :cond_5

    move v0, v2

    .line 826
    :goto_4
    if-eqz v0, :cond_6

    iget-object v4, p0, Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;->next:Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;

    iget v4, v4, Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;->index:I

    iget-object v5, v1, Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;->next:Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;

    iget v5, v5, Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;->index:I

    if-ne v4, v5, :cond_6

    move v0, v2

    .line 827
    :goto_5
    if-eqz v0, :cond_7

    iget-object v4, p0, Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;->previous:Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;

    iget v4, v4, Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;->index:I

    iget-object v5, v1, Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;->previous:Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;

    iget v5, v5, Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;->index:I

    if-ne v4, v5, :cond_7

    move v0, v2

    :goto_6
    goto :goto_0

    :cond_2
    move v0, v3

    .line 812
    goto :goto_1

    :cond_3
    move v0, v3

    .line 813
    goto :goto_2

    :cond_4
    move v0, v3

    .line 817
    goto :goto_3

    :cond_5
    move v0, v3

    .line 821
    goto :goto_4

    :cond_6
    move v0, v3

    .line 826
    goto :goto_5

    :cond_7
    move v0, v3

    .line 827
    goto :goto_6
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 834
    const/4 v0, 0x6

    new-array v0, v0, [D

    const/4 v1, 0x0

    iget-wide v2, p0, Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;->markerHeight:D

    aput-wide v2, v0, v1

    const/4 v1, 0x1

    iget-wide v2, p0, Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;->intMarkerPosition:D

    aput-wide v2, v0, v1

    const/4 v1, 0x2

    iget-wide v2, p0, Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;->desiredMarkerIncrement:D

    aput-wide v2, v0, v1

    const/4 v1, 0x3

    iget-wide v2, p0, Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;->desiredMarkerPosition:D

    aput-wide v2, v0, v1

    const/4 v1, 0x4

    iget-object v2, p0, Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;->previous:Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;

    iget v2, v2, Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;->index:I

    int-to-double v2, v2

    aput-wide v2, v0, v1

    const/4 v1, 0x5

    iget-object v2, p0, Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;->next:Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;

    iget v2, v2, Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;->index:I

    int-to-double v2, v2

    aput-wide v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([D)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x2

    .line 868
    const-string v0, "index=%.0f,n=%.0f,np=%.2f,q=%.2f,dn=%.2f,prev=%d,next=%d"

    const/4 v1, 0x7

    new-array v1, v1, [Ljava/lang/Object;

    iget v2, p0, Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;->index:I

    int-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    aput-object v2, v1, v7

    const/4 v2, 0x1

    iget-wide v4, p0, Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;->intMarkerPosition:D

    invoke-static {v4, v5, v7}, Lorg/apache/commons/math3/util/Precision;->round(DI)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    aput-object v3, v1, v2

    iget-wide v2, p0, Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;->desiredMarkerPosition:D

    invoke-static {v2, v3, v6}, Lorg/apache/commons/math3/util/Precision;->round(DI)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    aput-object v2, v1, v6

    const/4 v2, 0x3

    iget-wide v4, p0, Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;->markerHeight:D

    invoke-static {v4, v5, v6}, Lorg/apache/commons/math3/util/Precision;->round(DI)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x4

    iget-wide v4, p0, Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;->desiredMarkerIncrement:D

    invoke-static {v4, v5, v6}, Lorg/apache/commons/math3/util/Precision;->round(DI)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x5

    iget-object v3, p0, Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;->previous:Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;

    iget v3, v3, Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;->index:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x6

    iget-object v3, p0, Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;->next:Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;

    iget v3, v3, Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;->index:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
