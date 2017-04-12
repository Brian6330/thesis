.class public Lorg/apache/commons/math3/linear/RealMatrixFormat;
.super Ljava/lang/Object;
.source "RealMatrixFormat.java"


# static fields
.field private static final DEFAULT_COLUMN_SEPARATOR:Ljava/lang/String; = ","

.field private static final DEFAULT_PREFIX:Ljava/lang/String; = "{"

.field private static final DEFAULT_ROW_PREFIX:Ljava/lang/String; = "{"

.field private static final DEFAULT_ROW_SEPARATOR:Ljava/lang/String; = ","

.field private static final DEFAULT_ROW_SUFFIX:Ljava/lang/String; = "}"

.field private static final DEFAULT_SUFFIX:Ljava/lang/String; = "}"


# instance fields
.field private final columnSeparator:Ljava/lang/String;

.field private final format:Ljava/text/NumberFormat;

.field private final prefix:Ljava/lang/String;

.field private final rowPrefix:Ljava/lang/String;

.field private final rowSeparator:Ljava/lang/String;

.field private final rowSuffix:Ljava/lang/String;

.field private final suffix:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 8

    .prologue
    .line 89
    const-string v1, "{"

    const-string v2, "}"

    const-string v3, "{"

    const-string v4, "}"

    const-string v5, ","

    const-string v6, ","

    invoke-static {}, Lorg/apache/commons/math3/util/CompositeFormat;->getDefaultNumberFormat()Ljava/text/NumberFormat;

    move-result-object v7

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lorg/apache/commons/math3/linear/RealMatrixFormat;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/text/NumberFormat;)V

    .line 91
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "suffix"    # Ljava/lang/String;
    .param p3, "rowPrefix"    # Ljava/lang/String;
    .param p4, "rowSuffix"    # Ljava/lang/String;
    .param p5, "rowSeparator"    # Ljava/lang/String;
    .param p6, "columnSeparator"    # Ljava/lang/String;

    .prologue
    .line 114
    invoke-static {}, Lorg/apache/commons/math3/util/CompositeFormat;->getDefaultNumberFormat()Ljava/text/NumberFormat;

    move-result-object v7

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v7}, Lorg/apache/commons/math3/linear/RealMatrixFormat;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/text/NumberFormat;)V

    .line 116
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/text/NumberFormat;)V
    .locals 2
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "suffix"    # Ljava/lang/String;
    .param p3, "rowPrefix"    # Ljava/lang/String;
    .param p4, "rowSuffix"    # Ljava/lang/String;
    .param p5, "rowSeparator"    # Ljava/lang/String;
    .param p6, "columnSeparator"    # Ljava/lang/String;
    .param p7, "format"    # Ljava/text/NumberFormat;

    .prologue
    .line 132
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 133
    iput-object p1, p0, Lorg/apache/commons/math3/linear/RealMatrixFormat;->prefix:Ljava/lang/String;

    .line 134
    iput-object p2, p0, Lorg/apache/commons/math3/linear/RealMatrixFormat;->suffix:Ljava/lang/String;

    .line 135
    iput-object p3, p0, Lorg/apache/commons/math3/linear/RealMatrixFormat;->rowPrefix:Ljava/lang/String;

    .line 136
    iput-object p4, p0, Lorg/apache/commons/math3/linear/RealMatrixFormat;->rowSuffix:Ljava/lang/String;

    .line 137
    iput-object p5, p0, Lorg/apache/commons/math3/linear/RealMatrixFormat;->rowSeparator:Ljava/lang/String;

    .line 138
    iput-object p6, p0, Lorg/apache/commons/math3/linear/RealMatrixFormat;->columnSeparator:Ljava/lang/String;

    .line 139
    iput-object p7, p0, Lorg/apache/commons/math3/linear/RealMatrixFormat;->format:Ljava/text/NumberFormat;

    .line 141
    iget-object v0, p0, Lorg/apache/commons/math3/linear/RealMatrixFormat;->format:Ljava/text/NumberFormat;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/text/NumberFormat;->setGroupingUsed(Z)V

    .line 142
    return-void
.end method

.method public constructor <init>(Ljava/text/NumberFormat;)V
    .locals 8
    .param p1, "format"    # Ljava/text/NumberFormat;

    .prologue
    .line 98
    const-string v1, "{"

    const-string v2, "}"

    const-string v3, "{"

    const-string v4, "}"

    const-string v5, ","

    const-string v6, ","

    move-object v0, p0

    move-object v7, p1

    invoke-direct/range {v0 .. v7}, Lorg/apache/commons/math3/linear/RealMatrixFormat;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/text/NumberFormat;)V

    .line 100
    return-void
.end method

.method public static getAvailableLocales()[Ljava/util/Locale;
    .locals 1

    .prologue
    .line 150
    invoke-static {}, Ljava/text/NumberFormat;->getAvailableLocales()[Ljava/util/Locale;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance()Lorg/apache/commons/math3/linear/RealMatrixFormat;
    .locals 1

    .prologue
    .line 214
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/math3/linear/RealMatrixFormat;->getInstance(Ljava/util/Locale;)Lorg/apache/commons/math3/linear/RealMatrixFormat;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance(Ljava/util/Locale;)Lorg/apache/commons/math3/linear/RealMatrixFormat;
    .locals 2
    .param p0, "locale"    # Ljava/util/Locale;

    .prologue
    .line 223
    new-instance v0, Lorg/apache/commons/math3/linear/RealMatrixFormat;

    invoke-static {p0}, Lorg/apache/commons/math3/util/CompositeFormat;->getDefaultNumberFormat(Ljava/util/Locale;)Ljava/text/NumberFormat;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/commons/math3/linear/RealMatrixFormat;-><init>(Ljava/text/NumberFormat;)V

    return-object v0
.end method


# virtual methods
.method public format(Lorg/apache/commons/math3/linear/RealMatrix;)Ljava/lang/String;
    .locals 3
    .param p1, "m"    # Lorg/apache/commons/math3/linear/RealMatrix;

    .prologue
    .line 233
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v1, Ljava/text/FieldPosition;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/text/FieldPosition;-><init>(I)V

    invoke-virtual {p0, p1, v0, v1}, Lorg/apache/commons/math3/linear/RealMatrixFormat;->format(Lorg/apache/commons/math3/linear/RealMatrix;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public format(Lorg/apache/commons/math3/linear/RealMatrix;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;
    .locals 6
    .param p1, "matrix"    # Lorg/apache/commons/math3/linear/RealMatrix;
    .param p2, "toAppendTo"    # Ljava/lang/StringBuffer;
    .param p3, "pos"    # Ljava/text/FieldPosition;

    .prologue
    const/4 v3, 0x0

    .line 247
    invoke-virtual {p3, v3}, Ljava/text/FieldPosition;->setBeginIndex(I)V

    .line 248
    invoke-virtual {p3, v3}, Ljava/text/FieldPosition;->setEndIndex(I)V

    .line 251
    iget-object v3, p0, Lorg/apache/commons/math3/linear/RealMatrixFormat;->prefix:Ljava/lang/String;

    invoke-virtual {p2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 254
    invoke-interface {p1}, Lorg/apache/commons/math3/linear/RealMatrix;->getRowDimension()I

    move-result v2

    .line 255
    .local v2, "rows":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_3

    .line 256
    iget-object v3, p0, Lorg/apache/commons/math3/linear/RealMatrixFormat;->rowPrefix:Ljava/lang/String;

    invoke-virtual {p2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 257
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_1
    invoke-interface {p1}, Lorg/apache/commons/math3/linear/RealMatrix;->getColumnDimension()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 258
    if-lez v1, :cond_0

    .line 259
    iget-object v3, p0, Lorg/apache/commons/math3/linear/RealMatrixFormat;->columnSeparator:Ljava/lang/String;

    invoke-virtual {p2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 261
    :cond_0
    invoke-interface {p1, v0, v1}, Lorg/apache/commons/math3/linear/RealMatrix;->getEntry(II)D

    move-result-wide v4

    iget-object v3, p0, Lorg/apache/commons/math3/linear/RealMatrixFormat;->format:Ljava/text/NumberFormat;

    invoke-static {v4, v5, v3, p2, p3}, Lorg/apache/commons/math3/util/CompositeFormat;->formatDouble(DLjava/text/NumberFormat;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    .line 257
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 263
    :cond_1
    iget-object v3, p0, Lorg/apache/commons/math3/linear/RealMatrixFormat;->rowSuffix:Ljava/lang/String;

    invoke-virtual {p2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 264
    add-int/lit8 v3, v2, -0x1

    if-ge v0, v3, :cond_2

    .line 265
    iget-object v3, p0, Lorg/apache/commons/math3/linear/RealMatrixFormat;->rowSeparator:Ljava/lang/String;

    invoke-virtual {p2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 255
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 270
    .end local v1    # "j":I
    :cond_3
    iget-object v3, p0, Lorg/apache/commons/math3/linear/RealMatrixFormat;->suffix:Ljava/lang/String;

    invoke-virtual {p2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 272
    return-object p2
.end method

.method public getColumnSeparator()Ljava/lang/String;
    .locals 1

    .prologue
    .line 198
    iget-object v0, p0, Lorg/apache/commons/math3/linear/RealMatrixFormat;->columnSeparator:Ljava/lang/String;

    return-object v0
.end method

.method public getFormat()Ljava/text/NumberFormat;
    .locals 1

    .prologue
    .line 206
    iget-object v0, p0, Lorg/apache/commons/math3/linear/RealMatrixFormat;->format:Ljava/text/NumberFormat;

    return-object v0
.end method

.method public getPrefix()Ljava/lang/String;
    .locals 1

    .prologue
    .line 158
    iget-object v0, p0, Lorg/apache/commons/math3/linear/RealMatrixFormat;->prefix:Ljava/lang/String;

    return-object v0
.end method

.method public getRowPrefix()Ljava/lang/String;
    .locals 1

    .prologue
    .line 174
    iget-object v0, p0, Lorg/apache/commons/math3/linear/RealMatrixFormat;->rowPrefix:Ljava/lang/String;

    return-object v0
.end method

.method public getRowSeparator()Ljava/lang/String;
    .locals 1

    .prologue
    .line 190
    iget-object v0, p0, Lorg/apache/commons/math3/linear/RealMatrixFormat;->rowSeparator:Ljava/lang/String;

    return-object v0
.end method

.method public getRowSuffix()Ljava/lang/String;
    .locals 1

    .prologue
    .line 182
    iget-object v0, p0, Lorg/apache/commons/math3/linear/RealMatrixFormat;->rowSuffix:Ljava/lang/String;

    return-object v0
.end method

.method public getSuffix()Ljava/lang/String;
    .locals 1

    .prologue
    .line 166
    iget-object v0, p0, Lorg/apache/commons/math3/linear/RealMatrixFormat;->suffix:Ljava/lang/String;

    return-object v0
.end method

.method public parse(Ljava/lang/String;)Lorg/apache/commons/math3/linear/RealMatrix;
    .locals 5
    .param p1, "source"    # Ljava/lang/String;

    .prologue
    .line 284
    new-instance v0, Ljava/text/ParsePosition;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Ljava/text/ParsePosition;-><init>(I)V

    .line 285
    .local v0, "parsePosition":Ljava/text/ParsePosition;
    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/math3/linear/RealMatrixFormat;->parse(Ljava/lang/String;Ljava/text/ParsePosition;)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v1

    .line 286
    .local v1, "result":Lorg/apache/commons/math3/linear/RealMatrix;
    invoke-virtual {v0}, Ljava/text/ParsePosition;->getIndex()I

    move-result v2

    if-nez v2, :cond_0

    .line 287
    new-instance v2, Lorg/apache/commons/math3/exception/MathParseException;

    invoke-virtual {v0}, Ljava/text/ParsePosition;->getErrorIndex()I

    move-result v3

    const-class v4, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    invoke-direct {v2, p1, v3, v4}, Lorg/apache/commons/math3/exception/MathParseException;-><init>(Ljava/lang/String;ILjava/lang/Class;)V

    throw v2

    .line 291
    :cond_0
    return-object v1
.end method

.method public parse(Ljava/lang/String;Ljava/text/ParsePosition;)Lorg/apache/commons/math3/linear/RealMatrix;
    .locals 24
    .param p1, "source"    # Ljava/lang/String;
    .param p2, "pos"    # Ljava/text/ParsePosition;

    .prologue
    .line 302
    invoke-virtual/range {p2 .. p2}, Ljava/text/ParsePosition;->getIndex()I

    move-result v8

    .line 304
    .local v8, "initialIndex":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/linear/RealMatrixFormat;->prefix:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v15

    .line 305
    .local v15, "trimmedPrefix":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/linear/RealMatrixFormat;->suffix:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v19

    .line 306
    .local v19, "trimmedSuffix":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/linear/RealMatrixFormat;->rowPrefix:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v16

    .line 307
    .local v16, "trimmedRowPrefix":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/linear/RealMatrixFormat;->rowSuffix:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v18

    .line 308
    .local v18, "trimmedRowSuffix":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/linear/RealMatrixFormat;->columnSeparator:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v14

    .line 309
    .local v14, "trimmedColumnSeparator":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/linear/RealMatrixFormat;->rowSeparator:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v17

    .line 312
    .local v17, "trimmedRowSeparator":Ljava/lang/String;
    invoke-static/range {p1 .. p2}, Lorg/apache/commons/math3/util/CompositeFormat;->parseAndIgnoreWhitespace(Ljava/lang/String;Ljava/text/ParsePosition;)V

    .line 313
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-static {v0, v15, v1}, Lorg/apache/commons/math3/util/CompositeFormat;->parseFixedstring(Ljava/lang/String;Ljava/lang/String;Ljava/text/ParsePosition;)Z

    move-result v20

    if-nez v20, :cond_0

    .line 314
    const/16 v20, 0x0

    .line 392
    :goto_0
    return-object v20

    .line 318
    :cond_0
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 319
    .local v10, "matrix":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<Ljava/lang/Number;>;>;"
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 320
    .local v12, "rowComponents":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Number;>;"
    const/4 v9, 0x1

    .local v9, "loop":Z
    :cond_1
    :goto_1
    if-eqz v9, :cond_8

    .line 322
    invoke-interface {v12}, Ljava/util/List;->isEmpty()Z

    move-result v20

    if-nez v20, :cond_5

    .line 323
    invoke-static/range {p1 .. p2}, Lorg/apache/commons/math3/util/CompositeFormat;->parseAndIgnoreWhitespace(Ljava/lang/String;Ljava/text/ParsePosition;)V

    .line 324
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-static {v0, v14, v1}, Lorg/apache/commons/math3/util/CompositeFormat;->parseFixedstring(Ljava/lang/String;Ljava/lang/String;Ljava/text/ParsePosition;)Z

    move-result v20

    if-nez v20, :cond_4

    .line 325
    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v20

    if-eqz v20, :cond_2

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    move-object/from16 v2, p2

    invoke-static {v0, v1, v2}, Lorg/apache/commons/math3/util/CompositeFormat;->parseFixedstring(Ljava/lang/String;Ljava/lang/String;Ljava/text/ParsePosition;)Z

    move-result v20

    if-nez v20, :cond_2

    .line 327
    const/16 v20, 0x0

    goto :goto_0

    .line 329
    :cond_2
    invoke-static/range {p1 .. p2}, Lorg/apache/commons/math3/util/CompositeFormat;->parseAndIgnoreWhitespace(Ljava/lang/String;Ljava/text/ParsePosition;)V

    .line 330
    move-object/from16 v0, p1

    move-object/from16 v1, v17

    move-object/from16 v2, p2

    invoke-static {v0, v1, v2}, Lorg/apache/commons/math3/util/CompositeFormat;->parseFixedstring(Ljava/lang/String;Ljava/lang/String;Ljava/text/ParsePosition;)Z

    move-result v20

    if-eqz v20, :cond_3

    .line 331
    invoke-interface {v10, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 332
    new-instance v12, Ljava/util/ArrayList;

    .end local v12    # "rowComponents":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Number;>;"
    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 333
    .restart local v12    # "rowComponents":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Number;>;"
    goto :goto_1

    .line 335
    :cond_3
    const/4 v9, 0x0

    .line 347
    :cond_4
    if-eqz v9, :cond_1

    .line 348
    invoke-static/range {p1 .. p2}, Lorg/apache/commons/math3/util/CompositeFormat;->parseAndIgnoreWhitespace(Ljava/lang/String;Ljava/text/ParsePosition;)V

    .line 349
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/linear/RealMatrixFormat;->format:Ljava/text/NumberFormat;

    move-object/from16 v20, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    move-object/from16 v2, p2

    invoke-static {v0, v1, v2}, Lorg/apache/commons/math3/util/CompositeFormat;->parseNumber(Ljava/lang/String;Ljava/text/NumberFormat;Ljava/text/ParsePosition;)Ljava/lang/Number;

    move-result-object v4

    .line 350
    .local v4, "component":Ljava/lang/Number;
    if-eqz v4, :cond_6

    .line 351
    invoke-interface {v12, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 340
    .end local v4    # "component":Ljava/lang/Number;
    :cond_5
    invoke-static/range {p1 .. p2}, Lorg/apache/commons/math3/util/CompositeFormat;->parseAndIgnoreWhitespace(Ljava/lang/String;Ljava/text/ParsePosition;)V

    .line 341
    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->length()I

    move-result v20

    if-eqz v20, :cond_4

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    move-object/from16 v2, p2

    invoke-static {v0, v1, v2}, Lorg/apache/commons/math3/util/CompositeFormat;->parseFixedstring(Ljava/lang/String;Ljava/lang/String;Ljava/text/ParsePosition;)Z

    move-result v20

    if-nez v20, :cond_4

    .line 343
    const/16 v20, 0x0

    goto/16 :goto_0

    .line 353
    .restart local v4    # "component":Ljava/lang/Number;
    :cond_6
    invoke-interface {v12}, Ljava/util/List;->isEmpty()Z

    move-result v20

    if-eqz v20, :cond_7

    .line 354
    const/4 v9, 0x0

    goto :goto_1

    .line 358
    :cond_7
    move-object/from16 v0, p2

    invoke-virtual {v0, v8}, Ljava/text/ParsePosition;->setIndex(I)V

    .line 359
    const/16 v20, 0x0

    goto/16 :goto_0

    .line 366
    .end local v4    # "component":Ljava/lang/Number;
    :cond_8
    invoke-interface {v12}, Ljava/util/List;->isEmpty()Z

    move-result v20

    if-nez v20, :cond_9

    .line 367
    invoke-interface {v10, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 371
    :cond_9
    invoke-static/range {p1 .. p2}, Lorg/apache/commons/math3/util/CompositeFormat;->parseAndIgnoreWhitespace(Ljava/lang/String;Ljava/text/ParsePosition;)V

    .line 372
    move-object/from16 v0, p1

    move-object/from16 v1, v19

    move-object/from16 v2, p2

    invoke-static {v0, v1, v2}, Lorg/apache/commons/math3/util/CompositeFormat;->parseFixedstring(Ljava/lang/String;Ljava/lang/String;Ljava/text/ParsePosition;)Z

    move-result v20

    if-nez v20, :cond_a

    .line 373
    const/16 v20, 0x0

    goto/16 :goto_0

    .line 377
    :cond_a
    invoke-interface {v10}, Ljava/util/List;->isEmpty()Z

    move-result v20

    if-eqz v20, :cond_b

    .line 378
    move-object/from16 v0, p2

    invoke-virtual {v0, v8}, Ljava/text/ParsePosition;->setIndex(I)V

    .line 379
    const/16 v20, 0x0

    goto/16 :goto_0

    .line 383
    :cond_b
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v20

    move/from16 v0, v20

    new-array v5, v0, [[D

    .line 384
    .local v5, "data":[[D
    const/4 v11, 0x0

    .line 385
    .local v11, "row":I
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_d

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/List;

    .line 386
    .local v13, "rowList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Number;>;"
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v20

    move/from16 v0, v20

    new-array v0, v0, [D

    move-object/from16 v20, v0

    aput-object v20, v5, v11

    .line 387
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_3
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v20

    move/from16 v0, v20

    if-ge v6, v0, :cond_c

    .line 388
    aget-object v21, v5, v11

    invoke-interface {v13, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/Number;

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v22

    aput-wide v22, v21, v6

    .line 387
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 390
    :cond_c
    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    .line 392
    .end local v6    # "i":I
    .end local v13    # "rowList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Number;>;"
    :cond_d
    invoke-static {v5}, Lorg/apache/commons/math3/linear/MatrixUtils;->createRealMatrix([[D)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v20

    goto/16 :goto_0
.end method
