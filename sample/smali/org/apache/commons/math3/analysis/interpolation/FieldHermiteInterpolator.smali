.class public Lorg/apache/commons/math3/analysis/interpolation/FieldHermiteInterpolator;
.super Ljava/lang/Object;
.source "FieldHermiteInterpolator.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lorg/apache/commons/math3/FieldElement",
        "<TT;>;>",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final abscissae:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final bottomDiagonal:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<[TT;>;"
        }
    .end annotation
.end field

.field private final topDiagonal:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<[TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 63
    .local p0, "this":Lorg/apache/commons/math3/analysis/interpolation/FieldHermiteInterpolator;, "Lorg/apache/commons/math3/analysis/interpolation/FieldHermiteInterpolator<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/math3/analysis/interpolation/FieldHermiteInterpolator;->abscissae:Ljava/util/List;

    .line 65
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/math3/analysis/interpolation/FieldHermiteInterpolator;->topDiagonal:Ljava/util/List;

    .line 66
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/math3/analysis/interpolation/FieldHermiteInterpolator;->bottomDiagonal:Ljava/util/List;

    .line 67
    return-void
.end method


# virtual methods
.method public varargs addSamplePoint(Lorg/apache/commons/math3/FieldElement;[[Lorg/apache/commons/math3/FieldElement;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;[[TT;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/ZeroException;,
            Lorg/apache/commons/math3/exception/MathArithmeticException;,
            Lorg/apache/commons/math3/exception/DimensionMismatchException;,
            Lorg/apache/commons/math3/exception/NullArgumentException;
        }
    .end annotation

    .prologue
    .local p0, "this":Lorg/apache/commons/math3/analysis/interpolation/FieldHermiteInterpolator;, "Lorg/apache/commons/math3/analysis/interpolation/FieldHermiteInterpolator<TT;>;"
    .local p1, "x":Lorg/apache/commons/math3/FieldElement;, "TT;"
    .local p2, "value":[[Lorg/apache/commons/math3/FieldElement;, "[[TT;"
    const/4 v11, 0x1

    .line 94
    invoke-static {p1}, Lorg/apache/commons/math3/util/MathUtils;->checkNotNull(Ljava/lang/Object;)V

    .line 95
    invoke-interface {p1}, Lorg/apache/commons/math3/FieldElement;->getField()Lorg/apache/commons/math3/Field;

    move-result-object v9

    invoke-interface {v9}, Lorg/apache/commons/math3/Field;->getOne()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/math3/FieldElement;

    .line 96
    .local v2, "factorial":Lorg/apache/commons/math3/FieldElement;, "TT;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v9, p2

    if-ge v3, v9, :cond_4

    .line 98
    aget-object v9, p2, v3

    invoke-virtual {v9}, [Lorg/apache/commons/math3/FieldElement;->clone()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Lorg/apache/commons/math3/FieldElement;

    .line 99
    .local v8, "y":[Lorg/apache/commons/math3/FieldElement;, "[TT;"
    if-le v3, v11, :cond_0

    .line 100
    invoke-interface {v2, v3}, Lorg/apache/commons/math3/FieldElement;->multiply(I)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "factorial":Lorg/apache/commons/math3/FieldElement;, "TT;"
    check-cast v2, Lorg/apache/commons/math3/FieldElement;

    .line 101
    .restart local v2    # "factorial":Lorg/apache/commons/math3/FieldElement;, "TT;"
    invoke-interface {v2}, Lorg/apache/commons/math3/FieldElement;->reciprocal()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/commons/math3/FieldElement;

    .line 102
    .local v4, "inv":Lorg/apache/commons/math3/FieldElement;, "TT;"
    const/4 v5, 0x0

    .local v5, "j":I
    :goto_1
    array-length v9, v8

    if-ge v5, v9, :cond_0

    .line 103
    aget-object v9, v8, v5

    invoke-interface {v9, v4}, Lorg/apache/commons/math3/FieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/apache/commons/math3/FieldElement;

    aput-object v9, v8, v5

    .line 102
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 108
    .end local v4    # "inv":Lorg/apache/commons/math3/FieldElement;, "TT;"
    .end local v5    # "j":I
    :cond_0
    iget-object v9, p0, Lorg/apache/commons/math3/analysis/interpolation/FieldHermiteInterpolator;->abscissae:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v7

    .line 109
    .local v7, "n":I
    iget-object v9, p0, Lorg/apache/commons/math3/analysis/interpolation/FieldHermiteInterpolator;->bottomDiagonal:Ljava/util/List;

    sub-int v10, v7, v3

    invoke-interface {v9, v10, v8}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 110
    move-object v0, v8

    .line 111
    .local v0, "bottom0":[Lorg/apache/commons/math3/FieldElement;, "[TT;"
    move v5, v3

    .restart local v5    # "j":I
    :goto_2
    if-ge v5, v7, :cond_3

    .line 112
    iget-object v9, p0, Lorg/apache/commons/math3/analysis/interpolation/FieldHermiteInterpolator;->bottomDiagonal:Ljava/util/List;

    add-int/lit8 v10, v5, 0x1

    sub-int v10, v7, v10

    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lorg/apache/commons/math3/FieldElement;

    .line 113
    .local v1, "bottom1":[Lorg/apache/commons/math3/FieldElement;, "[TT;"
    iget-object v9, p0, Lorg/apache/commons/math3/analysis/interpolation/FieldHermiteInterpolator;->abscissae:Ljava/util/List;

    add-int/lit8 v10, v5, 0x1

    sub-int v10, v7, v10

    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {p1, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 114
    new-instance v9, Lorg/apache/commons/math3/exception/ZeroException;

    sget-object v10, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->DUPLICATED_ABSCISSA_DIVISION_BY_ZERO:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    aput-object p1, v11, v12

    invoke-direct {v9, v10, v11}, Lorg/apache/commons/math3/exception/ZeroException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v9

    .line 116
    :cond_1
    iget-object v9, p0, Lorg/apache/commons/math3/analysis/interpolation/FieldHermiteInterpolator;->abscissae:Ljava/util/List;

    add-int/lit8 v10, v5, 0x1

    sub-int v10, v7, v10

    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    invoke-interface {p1, v9}, Lorg/apache/commons/math3/FieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/apache/commons/math3/FieldElement;

    invoke-interface {v9}, Lorg/apache/commons/math3/FieldElement;->reciprocal()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/commons/math3/FieldElement;

    .line 117
    .restart local v4    # "inv":Lorg/apache/commons/math3/FieldElement;, "TT;"
    const/4 v6, 0x0

    .local v6, "k":I
    :goto_3
    array-length v9, v8

    if-ge v6, v9, :cond_2

    .line 118
    aget-object v9, v0, v6

    aget-object v10, v1, v6

    invoke-interface {v9, v10}, Lorg/apache/commons/math3/FieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    invoke-interface {v4, v9}, Lorg/apache/commons/math3/FieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/apache/commons/math3/FieldElement;

    aput-object v9, v1, v6

    .line 117
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 120
    :cond_2
    move-object v0, v1

    .line 111
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 124
    .end local v1    # "bottom1":[Lorg/apache/commons/math3/FieldElement;, "[TT;"
    .end local v4    # "inv":Lorg/apache/commons/math3/FieldElement;, "TT;"
    .end local v6    # "k":I
    :cond_3
    iget-object v9, p0, Lorg/apache/commons/math3/analysis/interpolation/FieldHermiteInterpolator;->topDiagonal:Ljava/util/List;

    invoke-virtual {v0}, [Lorg/apache/commons/math3/FieldElement;->clone()Ljava/lang/Object;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 127
    iget-object v9, p0, Lorg/apache/commons/math3/analysis/interpolation/FieldHermiteInterpolator;->abscissae:Ljava/util/List;

    invoke-interface {v9, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 96
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 131
    .end local v0    # "bottom0":[Lorg/apache/commons/math3/FieldElement;, "[TT;"
    .end local v5    # "j":I
    .end local v7    # "n":I
    .end local v8    # "y":[Lorg/apache/commons/math3/FieldElement;, "[TT;"
    :cond_4
    return-void
.end method

.method public derivatives(Lorg/apache/commons/math3/FieldElement;I)[[Lorg/apache/commons/math3/FieldElement;
    .locals 15
    .param p2, "order"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;I)[[TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NoDataException;,
            Lorg/apache/commons/math3/exception/NullArgumentException;
        }
    .end annotation

    .prologue
    .line 173
    .local p0, "this":Lorg/apache/commons/math3/analysis/interpolation/FieldHermiteInterpolator;, "Lorg/apache/commons/math3/analysis/interpolation/FieldHermiteInterpolator<TT;>;"
    .local p1, "x":Lorg/apache/commons/math3/FieldElement;, "TT;"
    invoke-static/range {p1 .. p1}, Lorg/apache/commons/math3/util/MathUtils;->checkNotNull(Ljava/lang/Object;)V

    .line 174
    iget-object v11, p0, Lorg/apache/commons/math3/analysis/interpolation/FieldHermiteInterpolator;->abscissae:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->isEmpty()Z

    move-result v11

    if-eqz v11, :cond_0

    .line 175
    new-instance v11, Lorg/apache/commons/math3/exception/NoDataException;

    sget-object v12, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->EMPTY_INTERPOLATION_SAMPLE:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-direct {v11, v12}, Lorg/apache/commons/math3/exception/NoDataException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;)V

    throw v11

    .line 178
    :cond_0
    invoke-interface/range {p1 .. p1}, Lorg/apache/commons/math3/FieldElement;->getField()Lorg/apache/commons/math3/Field;

    move-result-object v11

    invoke-interface {v11}, Lorg/apache/commons/math3/Field;->getZero()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/apache/commons/math3/FieldElement;

    .line 179
    .local v10, "zero":Lorg/apache/commons/math3/FieldElement;, "TT;"
    invoke-interface/range {p1 .. p1}, Lorg/apache/commons/math3/FieldElement;->getField()Lorg/apache/commons/math3/Field;

    move-result-object v11

    invoke-interface {v11}, Lorg/apache/commons/math3/Field;->getOne()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/apache/commons/math3/FieldElement;

    .line 180
    .local v7, "one":Lorg/apache/commons/math3/FieldElement;, "TT;"
    invoke-interface/range {p1 .. p1}, Lorg/apache/commons/math3/FieldElement;->getField()Lorg/apache/commons/math3/Field;

    move-result-object v11

    add-int/lit8 v12, p2, 0x1

    invoke-static {v11, v12}, Lorg/apache/commons/math3/util/MathArrays;->buildArray(Lorg/apache/commons/math3/Field;I)[Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Lorg/apache/commons/math3/FieldElement;

    .line 181
    .local v8, "tj":[Lorg/apache/commons/math3/FieldElement;, "[TT;"
    const/4 v11, 0x0

    aput-object v10, v8, v11

    .line 182
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    move/from16 v0, p2

    if-ge v4, v0, :cond_1

    .line 183
    add-int/lit8 v12, v4, 0x1

    aget-object v11, v8, v4

    invoke-interface {v11, v7}, Lorg/apache/commons/math3/FieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lorg/apache/commons/math3/FieldElement;

    aput-object v11, v8, v12

    .line 182
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 186
    :cond_1
    invoke-interface/range {p1 .. p1}, Lorg/apache/commons/math3/FieldElement;->getField()Lorg/apache/commons/math3/Field;

    move-result-object v12

    add-int/lit8 v13, p2, 0x1

    iget-object v11, p0, Lorg/apache/commons/math3/analysis/interpolation/FieldHermiteInterpolator;->topDiagonal:Ljava/util/List;

    const/4 v14, 0x0

    invoke-interface {v11, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [Lorg/apache/commons/math3/FieldElement;

    array-length v11, v11

    invoke-static {v12, v13, v11}, Lorg/apache/commons/math3/util/MathArrays;->buildArray(Lorg/apache/commons/math3/Field;II)[[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [[Lorg/apache/commons/math3/FieldElement;

    .line 188
    .local v2, "derivatives":[[Lorg/apache/commons/math3/FieldElement;, "[[TT;"
    invoke-interface/range {p1 .. p1}, Lorg/apache/commons/math3/FieldElement;->getField()Lorg/apache/commons/math3/Field;

    move-result-object v11

    add-int/lit8 v12, p2, 0x1

    invoke-static {v11, v12}, Lorg/apache/commons/math3/util/MathArrays;->buildArray(Lorg/apache/commons/math3/Field;I)[Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [Lorg/apache/commons/math3/FieldElement;

    .line 189
    .local v9, "valueCoeff":[Lorg/apache/commons/math3/FieldElement;, "[TT;"
    const/4 v12, 0x0

    invoke-interface/range {p1 .. p1}, Lorg/apache/commons/math3/FieldElement;->getField()Lorg/apache/commons/math3/Field;

    move-result-object v11

    invoke-interface {v11}, Lorg/apache/commons/math3/Field;->getOne()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lorg/apache/commons/math3/FieldElement;

    aput-object v11, v9, v12

    .line 190
    const/4 v4, 0x0

    :goto_1
    iget-object v11, p0, Lorg/apache/commons/math3/analysis/interpolation/FieldHermiteInterpolator;->topDiagonal:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v11

    if-ge v4, v11, :cond_5

    .line 191
    iget-object v11, p0, Lorg/apache/commons/math3/analysis/interpolation/FieldHermiteInterpolator;->topDiagonal:Ljava/util/List;

    invoke-interface {v11, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Lorg/apache/commons/math3/FieldElement;

    .line 192
    .local v3, "dividedDifference":[Lorg/apache/commons/math3/FieldElement;, "[TT;"
    iget-object v11, p0, Lorg/apache/commons/math3/analysis/interpolation/FieldHermiteInterpolator;->abscissae:Ljava/util/List;

    invoke-interface {v11, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Lorg/apache/commons/math3/FieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/math3/FieldElement;

    .line 193
    .local v1, "deltaX":Lorg/apache/commons/math3/FieldElement;, "TT;"
    move/from16 v5, p2

    .local v5, "j":I
    :goto_2
    if-ltz v5, :cond_4

    .line 194
    const/4 v6, 0x0

    .local v6, "k":I
    :goto_3
    aget-object v11, v2, v5

    array-length v11, v11

    if-ge v6, v11, :cond_2

    .line 195
    aget-object v12, v2, v5

    aget-object v11, v2, v5

    aget-object v11, v11, v6

    aget-object v13, v3, v6

    aget-object v14, v9, v5

    invoke-interface {v13, v14}, Lorg/apache/commons/math3/FieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    invoke-interface {v11, v13}, Lorg/apache/commons/math3/FieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lorg/apache/commons/math3/FieldElement;

    aput-object v11, v12, v6

    .line 194
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 198
    :cond_2
    aget-object v11, v9, v5

    invoke-interface {v11, v1}, Lorg/apache/commons/math3/FieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lorg/apache/commons/math3/FieldElement;

    aput-object v11, v9, v5

    .line 199
    if-lez v5, :cond_3

    .line 200
    aget-object v11, v9, v5

    aget-object v12, v8, v5

    add-int/lit8 v13, v5, -0x1

    aget-object v13, v9, v13

    invoke-interface {v12, v13}, Lorg/apache/commons/math3/FieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    invoke-interface {v11, v12}, Lorg/apache/commons/math3/FieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lorg/apache/commons/math3/FieldElement;

    aput-object v11, v9, v5

    .line 193
    :cond_3
    add-int/lit8 v5, v5, -0x1

    goto :goto_2

    .line 190
    .end local v6    # "k":I
    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 205
    .end local v1    # "deltaX":Lorg/apache/commons/math3/FieldElement;, "TT;"
    .end local v3    # "dividedDifference":[Lorg/apache/commons/math3/FieldElement;, "[TT;"
    .end local v5    # "j":I
    :cond_5
    return-object v2
.end method

.method public value(Lorg/apache/commons/math3/FieldElement;)[Lorg/apache/commons/math3/FieldElement;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)[TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NoDataException;,
            Lorg/apache/commons/math3/exception/NullArgumentException;
        }
    .end annotation

    .prologue
    .line 142
    .local p0, "this":Lorg/apache/commons/math3/analysis/interpolation/FieldHermiteInterpolator;, "Lorg/apache/commons/math3/analysis/interpolation/FieldHermiteInterpolator<TT;>;"
    .local p1, "x":Lorg/apache/commons/math3/FieldElement;, "TT;"
    invoke-static {p1}, Lorg/apache/commons/math3/util/MathUtils;->checkNotNull(Ljava/lang/Object;)V

    .line 143
    iget-object v6, p0, Lorg/apache/commons/math3/analysis/interpolation/FieldHermiteInterpolator;->abscissae:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 144
    new-instance v6, Lorg/apache/commons/math3/exception/NoDataException;

    sget-object v7, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->EMPTY_INTERPOLATION_SAMPLE:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-direct {v6, v7}, Lorg/apache/commons/math3/exception/NoDataException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;)V

    throw v6

    .line 147
    :cond_0
    invoke-interface {p1}, Lorg/apache/commons/math3/FieldElement;->getField()Lorg/apache/commons/math3/Field;

    move-result-object v7

    iget-object v6, p0, Lorg/apache/commons/math3/analysis/interpolation/FieldHermiteInterpolator;->topDiagonal:Ljava/util/List;

    const/4 v8, 0x0

    invoke-interface {v6, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Lorg/apache/commons/math3/FieldElement;

    array-length v6, v6

    invoke-static {v7, v6}, Lorg/apache/commons/math3/util/MathArrays;->buildArray(Lorg/apache/commons/math3/Field;I)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Lorg/apache/commons/math3/FieldElement;

    .line 148
    .local v4, "value":[Lorg/apache/commons/math3/FieldElement;, "[TT;"
    invoke-interface {p1}, Lorg/apache/commons/math3/FieldElement;->getField()Lorg/apache/commons/math3/Field;

    move-result-object v6

    invoke-interface {v6}, Lorg/apache/commons/math3/Field;->getOne()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/commons/math3/FieldElement;

    .line 149
    .local v5, "valueCoeff":Lorg/apache/commons/math3/FieldElement;, "TT;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v6, p0, Lorg/apache/commons/math3/analysis/interpolation/FieldHermiteInterpolator;->topDiagonal:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v2, v6, :cond_2

    .line 150
    iget-object v6, p0, Lorg/apache/commons/math3/analysis/interpolation/FieldHermiteInterpolator;->topDiagonal:Ljava/util/List;

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lorg/apache/commons/math3/FieldElement;

    .line 151
    .local v1, "dividedDifference":[Lorg/apache/commons/math3/FieldElement;, "[TT;"
    const/4 v3, 0x0

    .local v3, "k":I
    :goto_1
    array-length v6, v4

    if-ge v3, v6, :cond_1

    .line 152
    aget-object v6, v4, v3

    aget-object v7, v1, v3

    invoke-interface {v7, v5}, Lorg/apache/commons/math3/FieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v6, v7}, Lorg/apache/commons/math3/FieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/commons/math3/FieldElement;

    aput-object v6, v4, v3

    .line 151
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 154
    :cond_1
    iget-object v6, p0, Lorg/apache/commons/math3/analysis/interpolation/FieldHermiteInterpolator;->abscissae:Ljava/util/List;

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-interface {p1, v6}, Lorg/apache/commons/math3/FieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/FieldElement;

    .line 155
    .local v0, "deltaX":Lorg/apache/commons/math3/FieldElement;, "TT;"
    invoke-interface {v5, v0}, Lorg/apache/commons/math3/FieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .end local v5    # "valueCoeff":Lorg/apache/commons/math3/FieldElement;, "TT;"
    check-cast v5, Lorg/apache/commons/math3/FieldElement;

    .line 149
    .restart local v5    # "valueCoeff":Lorg/apache/commons/math3/FieldElement;, "TT;"
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 158
    .end local v0    # "deltaX":Lorg/apache/commons/math3/FieldElement;, "TT;"
    .end local v1    # "dividedDifference":[Lorg/apache/commons/math3/FieldElement;, "[TT;"
    .end local v3    # "k":I
    :cond_2
    return-object v4
.end method
