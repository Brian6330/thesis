.class public Lorg/apache/commons/math3/random/SobolSequenceGenerator;
.super Ljava/lang/Object;
.source "SobolSequenceGenerator.java"

# interfaces
.implements Lorg/apache/commons/math3/random/RandomVectorGenerator;


# static fields
.field private static final BITS:I = 0x34

.field private static final FILE_CHARSET:Ljava/lang/String; = "US-ASCII"

.field private static final MAX_DIMENSION:I = 0x3e8

.field private static final RESOURCE_NAME:Ljava/lang/String; = "/assets/org/apache/commons/math3/random/new-joe-kuo-6.1000"

.field private static final SCALE:D


# instance fields
.field private count:I

.field private final dimension:I

.field private final direction:[[J

.field private final x:[J


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 62
    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    const/16 v2, 0x34

    invoke-static {v0, v1, v2}, Lorg/apache/commons/math3/util/FastMath;->pow(DI)D

    move-result-wide v0

    sput-wide v0, Lorg/apache/commons/math3/random/SobolSequenceGenerator;->SCALE:D

    return-void
.end method

.method public constructor <init>(I)V
    .locals 6
    .param p1, "dimension"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/OutOfRangeException;
        }
    .end annotation

    .prologue
    const/16 v5, 0x3e8

    const/4 v4, 0x1

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    const/4 v2, 0x0

    iput v2, p0, Lorg/apache/commons/math3/random/SobolSequenceGenerator;->count:I

    .line 92
    if-lt p1, v4, :cond_0

    if-le p1, v5, :cond_1

    .line 93
    :cond_0
    new-instance v2, Lorg/apache/commons/math3/exception/OutOfRangeException;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-direct {v2, v3, v4, v5}, Lorg/apache/commons/math3/exception/OutOfRangeException;-><init>(Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;)V

    throw v2

    .line 97
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "/assets/org/apache/commons/math3/random/new-joe-kuo-6.1000"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    .line 98
    .local v1, "is":Ljava/io/InputStream;
    if-nez v1, :cond_2

    .line 99
    new-instance v2, Lorg/apache/commons/math3/exception/MathInternalError;

    invoke-direct {v2}, Lorg/apache/commons/math3/exception/MathInternalError;-><init>()V

    throw v2

    .line 102
    :cond_2
    iput p1, p0, Lorg/apache/commons/math3/random/SobolSequenceGenerator;->dimension:I

    .line 105
    const/16 v2, 0x35

    filled-new-array {p1, v2}, [I

    move-result-object v2

    sget-object v3, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-static {v3, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [[J

    iput-object v2, p0, Lorg/apache/commons/math3/random/SobolSequenceGenerator;->direction:[[J

    .line 106
    new-array v2, p1, [J

    iput-object v2, p0, Lorg/apache/commons/math3/random/SobolSequenceGenerator;->x:[J

    .line 109
    :try_start_0
    invoke-direct {p0, v1}, Lorg/apache/commons/math3/random/SobolSequenceGenerator;->initFromStream(Ljava/io/InputStream;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/apache/commons/math3/exception/MathParseException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 118
    :try_start_1
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 123
    :goto_0
    return-void

    .line 110
    :catch_0
    move-exception v0

    .line 112
    .local v0, "e":Ljava/io/IOException;
    :try_start_2
    new-instance v2, Lorg/apache/commons/math3/exception/MathInternalError;

    invoke-direct {v2}, Lorg/apache/commons/math3/exception/MathInternalError;-><init>()V

    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 117
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v2

    .line 118
    :try_start_3
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    .line 121
    :goto_1
    throw v2

    .line 113
    :catch_1
    move-exception v0

    .line 115
    .local v0, "e":Lorg/apache/commons/math3/exception/MathParseException;
    :try_start_4
    new-instance v2, Lorg/apache/commons/math3/exception/MathInternalError;

    invoke-direct {v2}, Lorg/apache/commons/math3/exception/MathInternalError;-><init>()V

    throw v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 119
    .end local v0    # "e":Lorg/apache/commons/math3/exception/MathParseException;
    :catch_2
    move-exception v2

    goto :goto_0

    :catch_3
    move-exception v3

    goto :goto_1
.end method

.method public constructor <init>(ILjava/io/InputStream;)V
    .locals 5
    .param p1, "dimension"    # I
    .param p2, "is"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;,
            Lorg/apache/commons/math3/exception/MathParseException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    .line 157
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    const/4 v1, 0x0

    iput v1, p0, Lorg/apache/commons/math3/random/SobolSequenceGenerator;->count:I

    .line 159
    if-ge p1, v3, :cond_0

    .line 160
    new-instance v1, Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;-><init>(Ljava/lang/Number;)V

    throw v1

    .line 163
    :cond_0
    iput p1, p0, Lorg/apache/commons/math3/random/SobolSequenceGenerator;->dimension:I

    .line 166
    const/16 v1, 0x35

    filled-new-array {p1, v1}, [I

    move-result-object v1

    sget-object v2, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-static {v2, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[J

    iput-object v1, p0, Lorg/apache/commons/math3/random/SobolSequenceGenerator;->direction:[[J

    .line 167
    new-array v1, p1, [J

    iput-object v1, p0, Lorg/apache/commons/math3/random/SobolSequenceGenerator;->x:[J

    .line 170
    invoke-direct {p0, p2}, Lorg/apache/commons/math3/random/SobolSequenceGenerator;->initFromStream(Ljava/io/InputStream;)I

    move-result v0

    .line 171
    .local v0, "lastDimension":I
    if-ge v0, p1, :cond_1

    .line 172
    new-instance v1, Lorg/apache/commons/math3/exception/OutOfRangeException;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lorg/apache/commons/math3/exception/OutOfRangeException;-><init>(Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;)V

    throw v1

    .line 174
    :cond_1
    return-void
.end method

.method private initDirectionVector(II[I)V
    .locals 10
    .param p1, "d"    # I
    .param p2, "a"    # I
    .param p3, "m"    # [I

    .prologue
    .line 244
    array-length v3, p3

    add-int/lit8 v2, v3, -0x1

    .line 245
    .local v2, "s":I
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_0
    if-gt v0, v2, :cond_0

    .line 246
    iget-object v3, p0, Lorg/apache/commons/math3/random/SobolSequenceGenerator;->direction:[[J

    aget-object v3, v3, p1

    aget v4, p3, v0

    int-to-long v4, v4

    rsub-int/lit8 v6, v0, 0x34

    shl-long/2addr v4, v6

    aput-wide v4, v3, v0

    .line 245
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 248
    :cond_0
    add-int/lit8 v0, v2, 0x1

    :goto_1
    const/16 v3, 0x34

    if-gt v0, v3, :cond_2

    .line 249
    iget-object v3, p0, Lorg/apache/commons/math3/random/SobolSequenceGenerator;->direction:[[J

    aget-object v3, v3, p1

    iget-object v4, p0, Lorg/apache/commons/math3/random/SobolSequenceGenerator;->direction:[[J

    aget-object v4, v4, p1

    sub-int v5, v0, v2

    aget-wide v4, v4, v5

    iget-object v6, p0, Lorg/apache/commons/math3/random/SobolSequenceGenerator;->direction:[[J

    aget-object v6, v6, p1

    sub-int v7, v0, v2

    aget-wide v6, v6, v7

    shr-long/2addr v6, v2

    xor-long/2addr v4, v6

    aput-wide v4, v3, v0

    .line 250
    const/4 v1, 0x1

    .local v1, "k":I
    :goto_2
    add-int/lit8 v3, v2, -0x1

    if-gt v1, v3, :cond_1

    .line 251
    iget-object v3, p0, Lorg/apache/commons/math3/random/SobolSequenceGenerator;->direction:[[J

    aget-object v3, v3, p1

    aget-wide v4, v3, v0

    add-int/lit8 v6, v2, -0x1

    sub-int/2addr v6, v1

    shr-int v6, p2, v6

    and-int/lit8 v6, v6, 0x1

    int-to-long v6, v6

    iget-object v8, p0, Lorg/apache/commons/math3/random/SobolSequenceGenerator;->direction:[[J

    aget-object v8, v8, p1

    sub-int v9, v0, v1

    aget-wide v8, v8, v9

    mul-long/2addr v6, v8

    xor-long/2addr v4, v6

    aput-wide v4, v3, v0

    .line 250
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 248
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 254
    .end local v1    # "k":I
    :cond_2
    return-void
.end method

.method private initFromStream(Ljava/io/InputStream;)I
    .locals 20
    .param p1, "is"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathParseException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 190
    const/4 v7, 0x1

    .local v7, "i":I
    :goto_0
    const/16 v16, 0x34

    move/from16 v0, v16

    if-gt v7, v0, :cond_0

    .line 191
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/random/SobolSequenceGenerator;->direction:[[J

    move-object/from16 v16, v0

    const/16 v17, 0x0

    aget-object v16, v16, v17

    const-wide/16 v18, 0x1

    rsub-int/lit8 v17, v7, 0x34

    shl-long v18, v18, v17

    aput-wide v18, v16, v7

    .line 190
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 194
    :cond_0
    const-string v16, "US-ASCII"

    invoke-static/range {v16 .. v16}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v3

    .line 195
    .local v3, "charset":Ljava/nio/charset/Charset;
    new-instance v13, Ljava/io/BufferedReader;

    new-instance v16, Ljava/io/InputStreamReader;

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    move-object/from16 v0, v16

    invoke-direct {v13, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 196
    .local v13, "reader":Ljava/io/BufferedReader;
    const/4 v4, -0x1

    .line 200
    .local v4, "dim":I
    :try_start_0
    invoke-virtual {v13}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 202
    const/4 v11, 0x2

    .line 203
    .local v11, "lineNumber":I
    const/4 v8, 0x1

    .line 204
    .local v8, "index":I
    const/4 v10, 0x0

    .local v10, "line":Ljava/lang/String;
    move v9, v8

    .line 205
    .end local v8    # "index":I
    .local v9, "index":I
    :goto_1
    invoke-virtual {v13}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_3

    .line 206
    new-instance v15, Ljava/util/StringTokenizer;

    const-string v16, " "

    move-object/from16 v0, v16

    invoke-direct {v15, v10, v0}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 208
    .local v15, "st":Ljava/util/StringTokenizer;
    :try_start_1
    invoke-virtual {v15}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 209
    const/16 v16, 0x2

    move/from16 v0, v16

    if-lt v4, v0, :cond_4

    move-object/from16 v0, p0

    iget v0, v0, Lorg/apache/commons/math3/random/SobolSequenceGenerator;->dimension:I

    move/from16 v16, v0

    move/from16 v0, v16

    if-gt v4, v0, :cond_4

    .line 210
    invoke-virtual {v15}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v14

    .line 211
    .local v14, "s":I
    invoke-virtual {v15}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 212
    .local v2, "a":I
    add-int/lit8 v16, v14, 0x1

    move/from16 v0, v16

    new-array v12, v0, [I

    .line 213
    .local v12, "m":[I
    const/4 v7, 0x1

    :goto_2
    if-gt v7, v14, :cond_1

    .line 214
    invoke-virtual {v15}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v16

    aput v16, v12, v7
    :try_end_1
    .catch Ljava/util/NoSuchElementException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 213
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 216
    :cond_1
    add-int/lit8 v8, v9, 0x1

    .end local v9    # "index":I
    .restart local v8    # "index":I
    :try_start_2
    move-object/from16 v0, p0

    invoke-direct {v0, v9, v2, v12}, Lorg/apache/commons/math3/random/SobolSequenceGenerator;->initDirectionVector(II[I)V

    .line 219
    .end local v2    # "a":I
    .end local v12    # "m":[I
    .end local v14    # "s":I
    :goto_3
    move-object/from16 v0, p0

    iget v0, v0, Lorg/apache/commons/math3/random/SobolSequenceGenerator;->dimension:I

    move/from16 v16, v0
    :try_end_2
    .catch Ljava/util/NoSuchElementException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move/from16 v0, v16

    if-le v4, v0, :cond_2

    .line 230
    invoke-virtual {v13}, Ljava/io/BufferedReader;->close()V

    move v5, v4

    .line 233
    .end local v4    # "dim":I
    .end local v15    # "st":Ljava/util/StringTokenizer;
    .local v5, "dim":I
    :goto_4
    return v5

    .line 222
    .end local v5    # "dim":I
    .end local v8    # "index":I
    .restart local v4    # "dim":I
    .restart local v9    # "index":I
    .restart local v15    # "st":Ljava/util/StringTokenizer;
    :catch_0
    move-exception v6

    move v8, v9

    .line 223
    .end local v9    # "index":I
    .local v6, "e":Ljava/util/NoSuchElementException;
    .restart local v8    # "index":I
    :goto_5
    :try_start_3
    new-instance v16, Lorg/apache/commons/math3/exception/MathParseException;

    move-object/from16 v0, v16

    invoke-direct {v0, v10, v11}, Lorg/apache/commons/math3/exception/MathParseException;-><init>(Ljava/lang/String;I)V

    throw v16
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 230
    .end local v6    # "e":Ljava/util/NoSuchElementException;
    .end local v8    # "index":I
    .end local v10    # "line":Ljava/lang/String;
    .end local v11    # "lineNumber":I
    .end local v15    # "st":Ljava/util/StringTokenizer;
    :catchall_0
    move-exception v16

    invoke-virtual {v13}, Ljava/io/BufferedReader;->close()V

    throw v16

    .line 224
    .restart local v9    # "index":I
    .restart local v10    # "line":Ljava/lang/String;
    .restart local v11    # "lineNumber":I
    .restart local v15    # "st":Ljava/util/StringTokenizer;
    :catch_1
    move-exception v6

    move v8, v9

    .line 225
    .end local v9    # "index":I
    .local v6, "e":Ljava/lang/NumberFormatException;
    .restart local v8    # "index":I
    :goto_6
    :try_start_4
    new-instance v16, Lorg/apache/commons/math3/exception/MathParseException;

    move-object/from16 v0, v16

    invoke-direct {v0, v10, v11}, Lorg/apache/commons/math3/exception/MathParseException;-><init>(Ljava/lang/String;I)V

    throw v16
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 227
    .end local v6    # "e":Ljava/lang/NumberFormatException;
    :cond_2
    add-int/lit8 v11, v11, 0x1

    move v9, v8

    .line 228
    .end local v8    # "index":I
    .restart local v9    # "index":I
    goto :goto_1

    .line 230
    .end local v15    # "st":Ljava/util/StringTokenizer;
    :cond_3
    invoke-virtual {v13}, Ljava/io/BufferedReader;->close()V

    move v8, v9

    .end local v9    # "index":I
    .restart local v8    # "index":I
    move v5, v4

    .line 233
    .end local v4    # "dim":I
    .restart local v5    # "dim":I
    goto :goto_4

    .line 224
    .end local v5    # "dim":I
    .restart local v4    # "dim":I
    .restart local v15    # "st":Ljava/util/StringTokenizer;
    :catch_2
    move-exception v6

    goto :goto_6

    .line 222
    :catch_3
    move-exception v6

    goto :goto_5

    .end local v8    # "index":I
    .restart local v9    # "index":I
    :cond_4
    move v8, v9

    .end local v9    # "index":I
    .restart local v8    # "index":I
    goto :goto_3
.end method


# virtual methods
.method public getNextIndex()I
    .locals 1

    .prologue
    .line 322
    iget v0, p0, Lorg/apache/commons/math3/random/SobolSequenceGenerator;->count:I

    return v0
.end method

.method public nextVector()[D
    .locals 10

    .prologue
    .line 258
    iget v4, p0, Lorg/apache/commons/math3/random/SobolSequenceGenerator;->dimension:I

    new-array v2, v4, [D

    .line 259
    .local v2, "v":[D
    iget v4, p0, Lorg/apache/commons/math3/random/SobolSequenceGenerator;->count:I

    if-nez v4, :cond_0

    .line 260
    iget v4, p0, Lorg/apache/commons/math3/random/SobolSequenceGenerator;->count:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lorg/apache/commons/math3/random/SobolSequenceGenerator;->count:I

    .line 277
    :goto_0
    return-object v2

    .line 265
    :cond_0
    const/4 v0, 0x1

    .line 266
    .local v0, "c":I
    iget v4, p0, Lorg/apache/commons/math3/random/SobolSequenceGenerator;->count:I

    add-int/lit8 v3, v4, -0x1

    .line 267
    .local v3, "value":I
    :goto_1
    and-int/lit8 v4, v3, 0x1

    const/4 v5, 0x1

    if-ne v4, v5, :cond_1

    .line 268
    shr-int/lit8 v3, v3, 0x1

    .line 269
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 272
    :cond_1
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    iget v4, p0, Lorg/apache/commons/math3/random/SobolSequenceGenerator;->dimension:I

    if-ge v1, v4, :cond_2

    .line 273
    iget-object v4, p0, Lorg/apache/commons/math3/random/SobolSequenceGenerator;->x:[J

    aget-wide v6, v4, v1

    iget-object v5, p0, Lorg/apache/commons/math3/random/SobolSequenceGenerator;->direction:[[J

    aget-object v5, v5, v1

    aget-wide v8, v5, v0

    xor-long/2addr v6, v8

    aput-wide v6, v4, v1

    .line 274
    iget-object v4, p0, Lorg/apache/commons/math3/random/SobolSequenceGenerator;->x:[J

    aget-wide v4, v4, v1

    long-to-double v4, v4

    sget-wide v6, Lorg/apache/commons/math3/random/SobolSequenceGenerator;->SCALE:D

    div-double/2addr v4, v6

    aput-wide v4, v2, v1

    .line 272
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 276
    :cond_2
    iget v4, p0, Lorg/apache/commons/math3/random/SobolSequenceGenerator;->count:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lorg/apache/commons/math3/random/SobolSequenceGenerator;->count:I

    goto :goto_0
.end method

.method public skipTo(I)[D
    .locals 14
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NotPositiveException;
        }
    .end annotation

    .prologue
    .line 290
    if-nez p1, :cond_1

    .line 292
    iget-object v7, p0, Lorg/apache/commons/math3/random/SobolSequenceGenerator;->x:[J

    const-wide/16 v12, 0x0

    invoke-static {v7, v12, v13}, Ljava/util/Arrays;->fill([JJ)V

    .line 311
    :cond_0
    iput p1, p0, Lorg/apache/commons/math3/random/SobolSequenceGenerator;->count:I

    .line 312
    invoke-virtual {p0}, Lorg/apache/commons/math3/random/SobolSequenceGenerator;->nextVector()[D

    move-result-object v7

    return-object v7

    .line 294
    :cond_1
    add-int/lit8 v2, p1, -0x1

    .line 295
    .local v2, "i":I
    shr-int/lit8 v7, v2, 0x1

    xor-int/2addr v7, v2

    int-to-long v0, v7

    .line 296
    .local v0, "grayCode":J
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_0
    iget v7, p0, Lorg/apache/commons/math3/random/SobolSequenceGenerator;->dimension:I

    if-ge v3, v7, :cond_0

    .line 297
    const-wide/16 v8, 0x0

    .line 298
    .local v8, "result":J
    const/4 v6, 0x1

    .local v6, "k":I
    :goto_1
    const/16 v7, 0x34

    if-gt v6, v7, :cond_2

    .line 299
    add-int/lit8 v7, v6, -0x1

    shr-long v10, v0, v7

    .line 300
    .local v10, "shift":J
    const-wide/16 v12, 0x0

    cmp-long v7, v10, v12

    if-nez v7, :cond_3

    .line 308
    .end local v10    # "shift":J
    :cond_2
    iget-object v7, p0, Lorg/apache/commons/math3/random/SobolSequenceGenerator;->x:[J

    aput-wide v8, v7, v3

    .line 296
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 305
    .restart local v10    # "shift":J
    :cond_3
    const-wide/16 v12, 0x1

    and-long v4, v10, v12

    .line 306
    .local v4, "ik":J
    iget-object v7, p0, Lorg/apache/commons/math3/random/SobolSequenceGenerator;->direction:[[J

    aget-object v7, v7, v3

    aget-wide v12, v7, v6

    mul-long/2addr v12, v4

    xor-long/2addr v8, v12

    .line 298
    add-int/lit8 v6, v6, 0x1

    goto :goto_1
.end method
