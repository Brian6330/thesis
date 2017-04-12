.class public Lorg/apache/commons/math3/linear/ArrayRealVector;
.super Lorg/apache/commons/math3/linear/RealVector;
.source "ArrayRealVector.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final DEFAULT_FORMAT:Lorg/apache/commons/math3/linear/RealVectorFormat;

.field private static final serialVersionUID:J = -0xf3cbe05aa2dda3bL


# instance fields
.field private data:[D


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 42
    invoke-static {}, Lorg/apache/commons/math3/linear/RealVectorFormat;->getInstance()Lorg/apache/commons/math3/linear/RealVectorFormat;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/math3/linear/ArrayRealVector;->DEFAULT_FORMAT:Lorg/apache/commons/math3/linear/RealVectorFormat;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 55
    invoke-direct {p0}, Lorg/apache/commons/math3/linear/RealVector;-><init>()V

    .line 56
    const/4 v0, 0x0

    new-array v0, v0, [D

    iput-object v0, p0, Lorg/apache/commons/math3/linear/ArrayRealVector;->data:[D

    .line 57
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 64
    invoke-direct {p0}, Lorg/apache/commons/math3/linear/RealVector;-><init>()V

    .line 65
    new-array v0, p1, [D

    iput-object v0, p0, Lorg/apache/commons/math3/linear/ArrayRealVector;->data:[D

    .line 66
    return-void
.end method

.method public constructor <init>(ID)V
    .locals 2
    .param p1, "size"    # I
    .param p2, "preset"    # D

    .prologue
    .line 74
    invoke-direct {p0}, Lorg/apache/commons/math3/linear/RealVector;-><init>()V

    .line 75
    new-array v0, p1, [D

    iput-object v0, p0, Lorg/apache/commons/math3/linear/ArrayRealVector;->data:[D

    .line 76
    iget-object v0, p0, Lorg/apache/commons/math3/linear/ArrayRealVector;->data:[D

    invoke-static {v0, p2, p3}, Ljava/util/Arrays;->fill([DD)V

    .line 77
    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/linear/ArrayRealVector;)V
    .locals 1
    .param p1, "v"    # Lorg/apache/commons/math3/linear/ArrayRealVector;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;
        }
    .end annotation

    .prologue
    .line 191
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lorg/apache/commons/math3/linear/ArrayRealVector;-><init>(Lorg/apache/commons/math3/linear/ArrayRealVector;Z)V

    .line 192
    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/linear/ArrayRealVector;Lorg/apache/commons/math3/linear/ArrayRealVector;)V
    .locals 5
    .param p1, "v1"    # Lorg/apache/commons/math3/linear/ArrayRealVector;
    .param p2, "v2"    # Lorg/apache/commons/math3/linear/ArrayRealVector;

    .prologue
    const/4 v4, 0x0

    .line 210
    invoke-direct {p0}, Lorg/apache/commons/math3/linear/RealVector;-><init>()V

    .line 211
    iget-object v0, p1, Lorg/apache/commons/math3/linear/ArrayRealVector;->data:[D

    array-length v0, v0

    iget-object v1, p2, Lorg/apache/commons/math3/linear/ArrayRealVector;->data:[D

    array-length v1, v1

    add-int/2addr v0, v1

    new-array v0, v0, [D

    iput-object v0, p0, Lorg/apache/commons/math3/linear/ArrayRealVector;->data:[D

    .line 212
    iget-object v0, p1, Lorg/apache/commons/math3/linear/ArrayRealVector;->data:[D

    iget-object v1, p0, Lorg/apache/commons/math3/linear/ArrayRealVector;->data:[D

    iget-object v2, p1, Lorg/apache/commons/math3/linear/ArrayRealVector;->data:[D

    array-length v2, v2

    invoke-static {v0, v4, v1, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 213
    iget-object v0, p2, Lorg/apache/commons/math3/linear/ArrayRealVector;->data:[D

    iget-object v1, p0, Lorg/apache/commons/math3/linear/ArrayRealVector;->data:[D

    iget-object v2, p1, Lorg/apache/commons/math3/linear/ArrayRealVector;->data:[D

    array-length v2, v2

    iget-object v3, p2, Lorg/apache/commons/math3/linear/ArrayRealVector;->data:[D

    array-length v3, v3

    invoke-static {v0, v4, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 214
    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/linear/ArrayRealVector;Lorg/apache/commons/math3/linear/RealVector;)V
    .locals 8
    .param p1, "v1"    # Lorg/apache/commons/math3/linear/ArrayRealVector;
    .param p2, "v2"    # Lorg/apache/commons/math3/linear/RealVector;

    .prologue
    const/4 v5, 0x0

    .line 221
    invoke-direct {p0}, Lorg/apache/commons/math3/linear/RealVector;-><init>()V

    .line 222
    iget-object v3, p1, Lorg/apache/commons/math3/linear/ArrayRealVector;->data:[D

    array-length v1, v3

    .line 223
    .local v1, "l1":I
    invoke-virtual {p2}, Lorg/apache/commons/math3/linear/RealVector;->getDimension()I

    move-result v2

    .line 224
    .local v2, "l2":I
    add-int v3, v1, v2

    new-array v3, v3, [D

    iput-object v3, p0, Lorg/apache/commons/math3/linear/ArrayRealVector;->data:[D

    .line 225
    iget-object v3, p1, Lorg/apache/commons/math3/linear/ArrayRealVector;->data:[D

    iget-object v4, p0, Lorg/apache/commons/math3/linear/ArrayRealVector;->data:[D

    invoke-static {v3, v5, v4, v5, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 226
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 227
    iget-object v3, p0, Lorg/apache/commons/math3/linear/ArrayRealVector;->data:[D

    add-int v4, v1, v0

    invoke-virtual {p2, v0}, Lorg/apache/commons/math3/linear/RealVector;->getEntry(I)D

    move-result-wide v6

    aput-wide v6, v3, v4

    .line 226
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 229
    :cond_0
    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/linear/ArrayRealVector;Z)V
    .locals 1
    .param p1, "v"    # Lorg/apache/commons/math3/linear/ArrayRealVector;
    .param p2, "deep"    # Z

    .prologue
    .line 201
    invoke-direct {p0}, Lorg/apache/commons/math3/linear/RealVector;-><init>()V

    .line 202
    if-eqz p2, :cond_0

    iget-object v0, p1, Lorg/apache/commons/math3/linear/ArrayRealVector;->data:[D

    invoke-virtual {v0}, [D->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [D

    :goto_0
    iput-object v0, p0, Lorg/apache/commons/math3/linear/ArrayRealVector;->data:[D

    .line 203
    return-void

    .line 202
    :cond_0
    iget-object v0, p1, Lorg/apache/commons/math3/linear/ArrayRealVector;->data:[D

    goto :goto_0
.end method

.method public constructor <init>(Lorg/apache/commons/math3/linear/ArrayRealVector;[D)V
    .locals 5
    .param p1, "v1"    # Lorg/apache/commons/math3/linear/ArrayRealVector;
    .param p2, "v2"    # [D

    .prologue
    const/4 v4, 0x0

    .line 251
    invoke-direct {p0}, Lorg/apache/commons/math3/linear/RealVector;-><init>()V

    .line 252
    invoke-virtual {p1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getDimension()I

    move-result v0

    .line 253
    .local v0, "l1":I
    array-length v1, p2

    .line 254
    .local v1, "l2":I
    add-int v2, v0, v1

    new-array v2, v2, [D

    iput-object v2, p0, Lorg/apache/commons/math3/linear/ArrayRealVector;->data:[D

    .line 255
    iget-object v2, p1, Lorg/apache/commons/math3/linear/ArrayRealVector;->data:[D

    iget-object v3, p0, Lorg/apache/commons/math3/linear/ArrayRealVector;->data:[D

    invoke-static {v2, v4, v3, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 256
    iget-object v2, p0, Lorg/apache/commons/math3/linear/ArrayRealVector;->data:[D

    invoke-static {p2, v4, v2, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 257
    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/linear/RealVector;)V
    .locals 4
    .param p1, "v"    # Lorg/apache/commons/math3/linear/RealVector;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;
        }
    .end annotation

    .prologue
    .line 174
    invoke-direct {p0}, Lorg/apache/commons/math3/linear/RealVector;-><init>()V

    .line 175
    if-nez p1, :cond_0

    .line 176
    new-instance v1, Lorg/apache/commons/math3/exception/NullArgumentException;

    invoke-direct {v1}, Lorg/apache/commons/math3/exception/NullArgumentException;-><init>()V

    throw v1

    .line 178
    :cond_0
    invoke-virtual {p1}, Lorg/apache/commons/math3/linear/RealVector;->getDimension()I

    move-result v1

    new-array v1, v1, [D

    iput-object v1, p0, Lorg/apache/commons/math3/linear/ArrayRealVector;->data:[D

    .line 179
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lorg/apache/commons/math3/linear/ArrayRealVector;->data:[D

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 180
    iget-object v1, p0, Lorg/apache/commons/math3/linear/ArrayRealVector;->data:[D

    invoke-virtual {p1, v0}, Lorg/apache/commons/math3/linear/RealVector;->getEntry(I)D

    move-result-wide v2

    aput-wide v2, v1, v0

    .line 179
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 182
    :cond_1
    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/linear/RealVector;Lorg/apache/commons/math3/linear/ArrayRealVector;)V
    .locals 6
    .param p1, "v1"    # Lorg/apache/commons/math3/linear/RealVector;
    .param p2, "v2"    # Lorg/apache/commons/math3/linear/ArrayRealVector;

    .prologue
    .line 236
    invoke-direct {p0}, Lorg/apache/commons/math3/linear/RealVector;-><init>()V

    .line 237
    invoke-virtual {p1}, Lorg/apache/commons/math3/linear/RealVector;->getDimension()I

    move-result v1

    .line 238
    .local v1, "l1":I
    iget-object v3, p2, Lorg/apache/commons/math3/linear/ArrayRealVector;->data:[D

    array-length v2, v3

    .line 239
    .local v2, "l2":I
    add-int v3, v1, v2

    new-array v3, v3, [D

    iput-object v3, p0, Lorg/apache/commons/math3/linear/ArrayRealVector;->data:[D

    .line 240
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 241
    iget-object v3, p0, Lorg/apache/commons/math3/linear/ArrayRealVector;->data:[D

    invoke-virtual {p1, v0}, Lorg/apache/commons/math3/linear/RealVector;->getEntry(I)D

    move-result-wide v4

    aput-wide v4, v3, v0

    .line 240
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 243
    :cond_0
    iget-object v3, p2, Lorg/apache/commons/math3/linear/ArrayRealVector;->data:[D

    const/4 v4, 0x0

    iget-object v5, p0, Lorg/apache/commons/math3/linear/ArrayRealVector;->data:[D

    invoke-static {v3, v4, v5, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 244
    return-void
.end method

.method public constructor <init>([D)V
    .locals 1
    .param p1, "d"    # [D

    .prologue
    .line 84
    invoke-direct {p0}, Lorg/apache/commons/math3/linear/RealVector;-><init>()V

    .line 85
    invoke-virtual {p1}, [D->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [D

    iput-object v0, p0, Lorg/apache/commons/math3/linear/ArrayRealVector;->data:[D

    .line 86
    return-void
.end method

.method public constructor <init>([DII)V
    .locals 4
    .param p1, "d"    # [D
    .param p2, "pos"    # I
    .param p3, "size"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;,
            Lorg/apache/commons/math3/exception/NumberIsTooLargeException;
        }
    .end annotation

    .prologue
    .line 121
    invoke-direct {p0}, Lorg/apache/commons/math3/linear/RealVector;-><init>()V

    .line 122
    if-nez p1, :cond_0

    .line 123
    new-instance v0, Lorg/apache/commons/math3/exception/NullArgumentException;

    invoke-direct {v0}, Lorg/apache/commons/math3/exception/NullArgumentException;-><init>()V

    throw v0

    .line 125
    :cond_0
    array-length v0, p1

    add-int v1, p2, p3

    if-ge v0, v1, :cond_1

    .line 126
    new-instance v0, Lorg/apache/commons/math3/exception/NumberIsTooLargeException;

    add-int v1, p2, p3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    array-length v2, p1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/commons/math3/exception/NumberIsTooLargeException;-><init>(Ljava/lang/Number;Ljava/lang/Number;Z)V

    throw v0

    .line 128
    :cond_1
    new-array v0, p3, [D

    iput-object v0, p0, Lorg/apache/commons/math3/linear/ArrayRealVector;->data:[D

    .line 129
    iget-object v0, p0, Lorg/apache/commons/math3/linear/ArrayRealVector;->data:[D

    const/4 v1, 0x0

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 130
    return-void
.end method

.method public constructor <init>([DLorg/apache/commons/math3/linear/ArrayRealVector;)V
    .locals 5
    .param p1, "v1"    # [D
    .param p2, "v2"    # Lorg/apache/commons/math3/linear/ArrayRealVector;

    .prologue
    const/4 v4, 0x0

    .line 264
    invoke-direct {p0}, Lorg/apache/commons/math3/linear/RealVector;-><init>()V

    .line 265
    array-length v0, p1

    .line 266
    .local v0, "l1":I
    invoke-virtual {p2}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getDimension()I

    move-result v1

    .line 267
    .local v1, "l2":I
    add-int v2, v0, v1

    new-array v2, v2, [D

    iput-object v2, p0, Lorg/apache/commons/math3/linear/ArrayRealVector;->data:[D

    .line 268
    iget-object v2, p0, Lorg/apache/commons/math3/linear/ArrayRealVector;->data:[D

    invoke-static {p1, v4, v2, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 269
    iget-object v2, p2, Lorg/apache/commons/math3/linear/ArrayRealVector;->data:[D

    iget-object v3, p0, Lorg/apache/commons/math3/linear/ArrayRealVector;->data:[D

    invoke-static {v2, v4, v3, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 270
    return-void
.end method

.method public constructor <init>([DZ)V
    .locals 1
    .param p1, "d"    # [D
    .param p2, "copyArray"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;
        }
    .end annotation

    .prologue
    .line 103
    invoke-direct {p0}, Lorg/apache/commons/math3/linear/RealVector;-><init>()V

    .line 104
    if-nez p1, :cond_0

    .line 105
    new-instance v0, Lorg/apache/commons/math3/exception/NullArgumentException;

    invoke-direct {v0}, Lorg/apache/commons/math3/exception/NullArgumentException;-><init>()V

    throw v0

    .line 107
    :cond_0
    if-eqz p2, :cond_1

    invoke-virtual {p1}, [D->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [D

    :goto_0
    iput-object v0, p0, Lorg/apache/commons/math3/linear/ArrayRealVector;->data:[D

    .line 108
    return-void

    :cond_1
    move-object v0, p1

    .line 107
    goto :goto_0
.end method

.method public constructor <init>([D[D)V
    .locals 4
    .param p1, "v1"    # [D
    .param p2, "v2"    # [D

    .prologue
    const/4 v3, 0x0

    .line 277
    invoke-direct {p0}, Lorg/apache/commons/math3/linear/RealVector;-><init>()V

    .line 278
    array-length v0, p1

    .line 279
    .local v0, "l1":I
    array-length v1, p2

    .line 280
    .local v1, "l2":I
    add-int v2, v0, v1

    new-array v2, v2, [D

    iput-object v2, p0, Lorg/apache/commons/math3/linear/ArrayRealVector;->data:[D

    .line 281
    iget-object v2, p0, Lorg/apache/commons/math3/linear/ArrayRealVector;->data:[D

    invoke-static {p1, v3, v2, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 282
    iget-object v2, p0, Lorg/apache/commons/math3/linear/ArrayRealVector;->data:[D

    invoke-static {p2, v3, v2, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 283
    return-void
.end method

.method public constructor <init>([Ljava/lang/Double;)V
    .locals 4
    .param p1, "d"    # [Ljava/lang/Double;

    .prologue
    .line 137
    invoke-direct {p0}, Lorg/apache/commons/math3/linear/RealVector;-><init>()V

    .line 138
    array-length v1, p1

    new-array v1, v1, [D

    iput-object v1, p0, Lorg/apache/commons/math3/linear/ArrayRealVector;->data:[D

    .line 139
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 140
    iget-object v1, p0, Lorg/apache/commons/math3/linear/ArrayRealVector;->data:[D

    aget-object v2, p1, v0

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    aput-wide v2, v1, v0

    .line 139
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 142
    :cond_0
    return-void
.end method

.method public constructor <init>([Ljava/lang/Double;II)V
    .locals 6
    .param p1, "d"    # [Ljava/lang/Double;
    .param p2, "pos"    # I
    .param p3, "size"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;,
            Lorg/apache/commons/math3/exception/NumberIsTooLargeException;
        }
    .end annotation

    .prologue
    .line 155
    invoke-direct {p0}, Lorg/apache/commons/math3/linear/RealVector;-><init>()V

    .line 156
    if-nez p1, :cond_0

    .line 157
    new-instance v1, Lorg/apache/commons/math3/exception/NullArgumentException;

    invoke-direct {v1}, Lorg/apache/commons/math3/exception/NullArgumentException;-><init>()V

    throw v1

    .line 159
    :cond_0
    array-length v1, p1

    add-int v2, p2, p3

    if-ge v1, v2, :cond_1

    .line 160
    new-instance v1, Lorg/apache/commons/math3/exception/NumberIsTooLargeException;

    add-int v2, p2, p3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    array-length v3, p1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x1

    invoke-direct {v1, v2, v3, v4}, Lorg/apache/commons/math3/exception/NumberIsTooLargeException;-><init>(Ljava/lang/Number;Ljava/lang/Number;Z)V

    throw v1

    .line 162
    :cond_1
    new-array v1, p3, [D

    iput-object v1, p0, Lorg/apache/commons/math3/linear/ArrayRealVector;->data:[D

    .line 163
    move v0, p2

    .local v0, "i":I
    :goto_0
    add-int v1, p2, p3

    if-ge v0, v1, :cond_2

    .line 164
    iget-object v1, p0, Lorg/apache/commons/math3/linear/ArrayRealVector;->data:[D

    sub-int v2, v0, p2

    aget-object v3, p1, v0

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    aput-wide v4, v1, v2

    .line 163
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 166
    :cond_2
    return-void
.end method


# virtual methods
.method public add(Lorg/apache/commons/math3/linear/RealVector;)Lorg/apache/commons/math3/linear/ArrayRealVector;
    .locals 14
    .param p1, "v"    # Lorg/apache/commons/math3/linear/RealVector;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    .prologue
    .line 295
    instance-of v8, p1, Lorg/apache/commons/math3/linear/ArrayRealVector;

    if-eqz v8, :cond_0

    .line 296
    check-cast p1, Lorg/apache/commons/math3/linear/ArrayRealVector;

    .end local p1    # "v":Lorg/apache/commons/math3/linear/RealVector;
    iget-object v7, p1, Lorg/apache/commons/math3/linear/ArrayRealVector;->data:[D

    .line 297
    .local v7, "vData":[D
    array-length v0, v7

    .line 298
    .local v0, "dim":I
    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/linear/ArrayRealVector;->checkVectorDimensions(I)V

    .line 299
    new-instance v5, Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-direct {v5, v0}, Lorg/apache/commons/math3/linear/ArrayRealVector;-><init>(I)V

    .line 300
    .local v5, "result":Lorg/apache/commons/math3/linear/ArrayRealVector;
    iget-object v6, v5, Lorg/apache/commons/math3/linear/ArrayRealVector;->data:[D

    .line 301
    .local v6, "resultData":[D
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_2

    .line 302
    iget-object v8, p0, Lorg/apache/commons/math3/linear/ArrayRealVector;->data:[D

    aget-wide v8, v8, v2

    aget-wide v10, v7, v2

    add-double/2addr v8, v10

    aput-wide v8, v6, v2

    .line 301
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 306
    .end local v0    # "dim":I
    .end local v2    # "i":I
    .end local v5    # "result":Lorg/apache/commons/math3/linear/ArrayRealVector;
    .end local v6    # "resultData":[D
    .end local v7    # "vData":[D
    .restart local p1    # "v":Lorg/apache/commons/math3/linear/RealVector;
    :cond_0
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->checkVectorDimensions(Lorg/apache/commons/math3/linear/RealVector;)V

    .line 307
    iget-object v8, p0, Lorg/apache/commons/math3/linear/ArrayRealVector;->data:[D

    invoke-virtual {v8}, [D->clone()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [D

    .line 308
    .local v4, "out":[D
    invoke-virtual {p1}, Lorg/apache/commons/math3/linear/RealVector;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 309
    .local v3, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/apache/commons/math3/linear/RealVector$Entry;>;"
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 310
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/math3/linear/RealVector$Entry;

    .line 311
    .local v1, "e":Lorg/apache/commons/math3/linear/RealVector$Entry;
    invoke-virtual {v1}, Lorg/apache/commons/math3/linear/RealVector$Entry;->getIndex()I

    move-result v8

    aget-wide v10, v4, v8

    invoke-virtual {v1}, Lorg/apache/commons/math3/linear/RealVector$Entry;->getValue()D

    move-result-wide v12

    add-double/2addr v10, v12

    aput-wide v10, v4, v8

    goto :goto_1

    .line 313
    .end local v1    # "e":Lorg/apache/commons/math3/linear/RealVector$Entry;
    :cond_1
    new-instance v5, Lorg/apache/commons/math3/linear/ArrayRealVector;

    const/4 v8, 0x0

    invoke-direct {v5, v4, v8}, Lorg/apache/commons/math3/linear/ArrayRealVector;-><init>([DZ)V

    .end local v3    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/apache/commons/math3/linear/RealVector$Entry;>;"
    .end local v4    # "out":[D
    .end local p1    # "v":Lorg/apache/commons/math3/linear/RealVector;
    :cond_2
    return-object v5
.end method

.method public bridge synthetic add(Lorg/apache/commons/math3/linear/RealVector;)Lorg/apache/commons/math3/linear/RealVector;
    .locals 1
    .param p1, "x0"    # Lorg/apache/commons/math3/linear/RealVector;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    .prologue
    .line 38
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->add(Lorg/apache/commons/math3/linear/RealVector;)Lorg/apache/commons/math3/linear/ArrayRealVector;

    move-result-object v0

    return-object v0
.end method

.method public addToEntry(ID)V
    .locals 6
    .param p1, "index"    # I
    .param p2, "increment"    # D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/OutOfRangeException;
        }
    .end annotation

    .prologue
    .line 673
    :try_start_0
    iget-object v1, p0, Lorg/apache/commons/math3/linear/ArrayRealVector;->data:[D

    aget-wide v2, v1, p1

    add-double/2addr v2, p2

    aput-wide v2, v1, p1
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 678
    return-void

    .line 674
    :catch_0
    move-exception v0

    .line 675
    .local v0, "e":Ljava/lang/IndexOutOfBoundsException;
    new-instance v1, Lorg/apache/commons/math3/exception/OutOfRangeException;

    sget-object v2, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->INDEX:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget-object v5, p0, Lorg/apache/commons/math3/linear/ArrayRealVector;->data:[D

    array-length v5, v5

    add-int/lit8 v5, v5, -0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-direct {v1, v2, v3, v4, v5}, Lorg/apache/commons/math3/exception/OutOfRangeException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;)V

    throw v1
.end method

.method public append(Lorg/apache/commons/math3/linear/ArrayRealVector;)Lorg/apache/commons/math3/linear/ArrayRealVector;
    .locals 1
    .param p1, "v"    # Lorg/apache/commons/math3/linear/ArrayRealVector;

    .prologue
    .line 629
    new-instance v0, Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-direct {v0, p0, p1}, Lorg/apache/commons/math3/linear/ArrayRealVector;-><init>(Lorg/apache/commons/math3/linear/ArrayRealVector;Lorg/apache/commons/math3/linear/ArrayRealVector;)V

    return-object v0
.end method

.method public append(D)Lorg/apache/commons/math3/linear/RealVector;
    .locals 5
    .param p1, "in"    # D

    .prologue
    const/4 v3, 0x0

    .line 635
    iget-object v1, p0, Lorg/apache/commons/math3/linear/ArrayRealVector;->data:[D

    array-length v1, v1

    add-int/lit8 v1, v1, 0x1

    new-array v0, v1, [D

    .line 636
    .local v0, "out":[D
    iget-object v1, p0, Lorg/apache/commons/math3/linear/ArrayRealVector;->data:[D

    iget-object v2, p0, Lorg/apache/commons/math3/linear/ArrayRealVector;->data:[D

    array-length v2, v2

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 637
    iget-object v1, p0, Lorg/apache/commons/math3/linear/ArrayRealVector;->data:[D

    array-length v1, v1

    aput-wide p1, v0, v1

    .line 638
    new-instance v1, Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-direct {v1, v0, v3}, Lorg/apache/commons/math3/linear/ArrayRealVector;-><init>([DZ)V

    return-object v1
.end method

.method public append(Lorg/apache/commons/math3/linear/RealVector;)Lorg/apache/commons/math3/linear/RealVector;
    .locals 4
    .param p1, "v"    # Lorg/apache/commons/math3/linear/RealVector;

    .prologue
    .line 616
    :try_start_0
    new-instance v3, Lorg/apache/commons/math3/linear/ArrayRealVector;

    move-object v0, p1

    check-cast v0, Lorg/apache/commons/math3/linear/ArrayRealVector;

    move-object v2, v0

    invoke-direct {v3, p0, v2}, Lorg/apache/commons/math3/linear/ArrayRealVector;-><init>(Lorg/apache/commons/math3/linear/ArrayRealVector;Lorg/apache/commons/math3/linear/ArrayRealVector;)V
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v2, v3

    .line 618
    :goto_0
    return-object v2

    .line 617
    :catch_0
    move-exception v1

    .line 618
    .local v1, "cce":Ljava/lang/ClassCastException;
    new-instance v2, Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-direct {v2, p0, p1}, Lorg/apache/commons/math3/linear/ArrayRealVector;-><init>(Lorg/apache/commons/math3/linear/ArrayRealVector;Lorg/apache/commons/math3/linear/RealVector;)V

    goto :goto_0
.end method

.method protected checkVectorDimensions(I)V
    .locals 2
    .param p1, "n"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    .prologue
    .line 757
    iget-object v0, p0, Lorg/apache/commons/math3/linear/ArrayRealVector;->data:[D

    array-length v0, v0

    if-eq v0, p1, :cond_0

    .line 758
    new-instance v0, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    iget-object v1, p0, Lorg/apache/commons/math3/linear/ArrayRealVector;->data:[D

    array-length v1, v1

    invoke-direct {v0, v1, p1}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v0

    .line 760
    :cond_0
    return-void
.end method

.method protected checkVectorDimensions(Lorg/apache/commons/math3/linear/RealVector;)V
    .locals 1
    .param p1, "v"    # Lorg/apache/commons/math3/linear/RealVector;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    .prologue
    .line 744
    invoke-virtual {p1}, Lorg/apache/commons/math3/linear/RealVector;->getDimension()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/linear/ArrayRealVector;->checkVectorDimensions(I)V

    .line 745
    return-void
.end method

.method public combine(DDLorg/apache/commons/math3/linear/RealVector;)Lorg/apache/commons/math3/linear/ArrayRealVector;
    .locals 7
    .param p1, "a"    # D
    .param p3, "b"    # D
    .param p5, "y"    # Lorg/apache/commons/math3/linear/RealVector;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    .prologue
    .line 843
    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/ArrayRealVector;->copy()Lorg/apache/commons/math3/linear/ArrayRealVector;

    move-result-object v1

    move-wide v2, p1

    move-wide v4, p3

    move-object v6, p5

    invoke-virtual/range {v1 .. v6}, Lorg/apache/commons/math3/linear/ArrayRealVector;->combineToSelf(DDLorg/apache/commons/math3/linear/RealVector;)Lorg/apache/commons/math3/linear/ArrayRealVector;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic combine(DDLorg/apache/commons/math3/linear/RealVector;)Lorg/apache/commons/math3/linear/RealVector;
    .locals 1
    .param p1, "x0"    # D
    .param p3, "x1"    # D
    .param p5, "x2"    # Lorg/apache/commons/math3/linear/RealVector;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    .prologue
    .line 38
    invoke-virtual/range {p0 .. p5}, Lorg/apache/commons/math3/linear/ArrayRealVector;->combine(DDLorg/apache/commons/math3/linear/RealVector;)Lorg/apache/commons/math3/linear/ArrayRealVector;

    move-result-object v0

    return-object v0
.end method

.method public combineToSelf(DDLorg/apache/commons/math3/linear/RealVector;)Lorg/apache/commons/math3/linear/ArrayRealVector;
    .locals 9
    .param p1, "a"    # D
    .param p3, "b"    # D
    .param p5, "y"    # Lorg/apache/commons/math3/linear/RealVector;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    .prologue
    .line 850
    instance-of v2, p5, Lorg/apache/commons/math3/linear/ArrayRealVector;

    if-eqz v2, :cond_0

    .line 851
    check-cast p5, Lorg/apache/commons/math3/linear/ArrayRealVector;

    .end local p5    # "y":Lorg/apache/commons/math3/linear/RealVector;
    iget-object v1, p5, Lorg/apache/commons/math3/linear/ArrayRealVector;->data:[D

    .line 852
    .local v1, "yData":[D
    array-length v2, v1

    invoke-virtual {p0, v2}, Lorg/apache/commons/math3/linear/ArrayRealVector;->checkVectorDimensions(I)V

    .line 853
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lorg/apache/commons/math3/linear/ArrayRealVector;->data:[D

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 854
    iget-object v2, p0, Lorg/apache/commons/math3/linear/ArrayRealVector;->data:[D

    iget-object v3, p0, Lorg/apache/commons/math3/linear/ArrayRealVector;->data:[D

    aget-wide v4, v3, v0

    mul-double/2addr v4, p1

    aget-wide v6, v1, v0

    mul-double/2addr v6, p3

    add-double/2addr v4, v6

    aput-wide v4, v2, v0

    .line 853
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 857
    .end local v0    # "i":I
    .end local v1    # "yData":[D
    .restart local p5    # "y":Lorg/apache/commons/math3/linear/RealVector;
    :cond_0
    invoke-virtual {p0, p5}, Lorg/apache/commons/math3/linear/ArrayRealVector;->checkVectorDimensions(Lorg/apache/commons/math3/linear/RealVector;)V

    .line 858
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_1
    iget-object v2, p0, Lorg/apache/commons/math3/linear/ArrayRealVector;->data:[D

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 859
    iget-object v2, p0, Lorg/apache/commons/math3/linear/ArrayRealVector;->data:[D

    iget-object v3, p0, Lorg/apache/commons/math3/linear/ArrayRealVector;->data:[D

    aget-wide v4, v3, v0

    mul-double/2addr v4, p1

    invoke-virtual {p5, v0}, Lorg/apache/commons/math3/linear/RealVector;->getEntry(I)D

    move-result-wide v6

    mul-double/2addr v6, p3

    add-double/2addr v4, v6

    aput-wide v4, v2, v0

    .line 858
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 862
    .end local p5    # "y":Lorg/apache/commons/math3/linear/RealVector;
    :cond_1
    return-object p0
.end method

.method public bridge synthetic combineToSelf(DDLorg/apache/commons/math3/linear/RealVector;)Lorg/apache/commons/math3/linear/RealVector;
    .locals 1
    .param p1, "x0"    # D
    .param p3, "x1"    # D
    .param p5, "x2"    # Lorg/apache/commons/math3/linear/RealVector;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    .prologue
    .line 38
    invoke-virtual/range {p0 .. p5}, Lorg/apache/commons/math3/linear/ArrayRealVector;->combineToSelf(DDLorg/apache/commons/math3/linear/RealVector;)Lorg/apache/commons/math3/linear/ArrayRealVector;

    move-result-object v0

    return-object v0
.end method

.method public copy()Lorg/apache/commons/math3/linear/ArrayRealVector;
    .locals 2

    .prologue
    .line 288
    new-instance v0, Lorg/apache/commons/math3/linear/ArrayRealVector;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;-><init>(Lorg/apache/commons/math3/linear/ArrayRealVector;Z)V

    return-object v0
.end method

.method public bridge synthetic copy()Lorg/apache/commons/math3/linear/RealVector;
    .locals 1

    .prologue
    .line 38
    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/ArrayRealVector;->copy()Lorg/apache/commons/math3/linear/ArrayRealVector;

    move-result-object v0

    return-object v0
.end method

.method public dotProduct(Lorg/apache/commons/math3/linear/RealVector;)D
    .locals 8
    .param p1, "v"    # Lorg/apache/commons/math3/linear/RealVector;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    .prologue
    .line 455
    instance-of v4, p1, Lorg/apache/commons/math3/linear/ArrayRealVector;

    if-eqz v4, :cond_0

    .line 456
    check-cast p1, Lorg/apache/commons/math3/linear/ArrayRealVector;

    .end local p1    # "v":Lorg/apache/commons/math3/linear/RealVector;
    iget-object v3, p1, Lorg/apache/commons/math3/linear/ArrayRealVector;->data:[D

    .line 457
    .local v3, "vData":[D
    array-length v4, v3

    invoke-virtual {p0, v4}, Lorg/apache/commons/math3/linear/ArrayRealVector;->checkVectorDimensions(I)V

    .line 458
    const-wide/16 v0, 0x0

    .line 459
    .local v0, "dot":D
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v4, p0, Lorg/apache/commons/math3/linear/ArrayRealVector;->data:[D

    array-length v4, v4

    if-ge v2, v4, :cond_1

    .line 460
    iget-object v4, p0, Lorg/apache/commons/math3/linear/ArrayRealVector;->data:[D

    aget-wide v4, v4, v2

    aget-wide v6, v3, v2

    mul-double/2addr v4, v6

    add-double/2addr v0, v4

    .line 459
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 464
    .end local v0    # "dot":D
    .end local v2    # "i":I
    .end local v3    # "vData":[D
    .restart local p1    # "v":Lorg/apache/commons/math3/linear/RealVector;
    :cond_0
    invoke-super {p0, p1}, Lorg/apache/commons/math3/linear/RealVector;->dotProduct(Lorg/apache/commons/math3/linear/RealVector;)D

    move-result-wide v0

    .end local p1    # "v":Lorg/apache/commons/math3/linear/RealVector;
    :cond_1
    return-wide v0
.end method

.method public ebeDivide(Lorg/apache/commons/math3/linear/RealVector;)Lorg/apache/commons/math3/linear/ArrayRealVector;
    .locals 10
    .param p1, "v"    # Lorg/apache/commons/math3/linear/RealVector;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    .prologue
    .line 422
    instance-of v6, p1, Lorg/apache/commons/math3/linear/ArrayRealVector;

    if-eqz v6, :cond_0

    .line 423
    check-cast p1, Lorg/apache/commons/math3/linear/ArrayRealVector;

    .end local p1    # "v":Lorg/apache/commons/math3/linear/RealVector;
    iget-object v5, p1, Lorg/apache/commons/math3/linear/ArrayRealVector;->data:[D

    .line 424
    .local v5, "vData":[D
    array-length v0, v5

    .line 425
    .local v0, "dim":I
    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/linear/ArrayRealVector;->checkVectorDimensions(I)V

    .line 426
    new-instance v3, Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-direct {v3, v0}, Lorg/apache/commons/math3/linear/ArrayRealVector;-><init>(I)V

    .line 427
    .local v3, "result":Lorg/apache/commons/math3/linear/ArrayRealVector;
    iget-object v4, v3, Lorg/apache/commons/math3/linear/ArrayRealVector;->data:[D

    .line 428
    .local v4, "resultData":[D
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_2

    .line 429
    iget-object v6, p0, Lorg/apache/commons/math3/linear/ArrayRealVector;->data:[D

    aget-wide v6, v6, v1

    aget-wide v8, v5, v1

    div-double/2addr v6, v8

    aput-wide v6, v4, v1

    .line 428
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 433
    .end local v0    # "dim":I
    .end local v1    # "i":I
    .end local v3    # "result":Lorg/apache/commons/math3/linear/ArrayRealVector;
    .end local v4    # "resultData":[D
    .end local v5    # "vData":[D
    .restart local p1    # "v":Lorg/apache/commons/math3/linear/RealVector;
    :cond_0
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->checkVectorDimensions(Lorg/apache/commons/math3/linear/RealVector;)V

    .line 434
    iget-object v6, p0, Lorg/apache/commons/math3/linear/ArrayRealVector;->data:[D

    invoke-virtual {v6}, [D->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [D

    .line 435
    .local v2, "out":[D
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_1
    iget-object v6, p0, Lorg/apache/commons/math3/linear/ArrayRealVector;->data:[D

    array-length v6, v6

    if-ge v1, v6, :cond_1

    .line 436
    aget-wide v6, v2, v1

    invoke-virtual {p1, v1}, Lorg/apache/commons/math3/linear/RealVector;->getEntry(I)D

    move-result-wide v8

    div-double/2addr v6, v8

    aput-wide v6, v2, v1

    .line 435
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 438
    :cond_1
    new-instance v3, Lorg/apache/commons/math3/linear/ArrayRealVector;

    const/4 v6, 0x0

    invoke-direct {v3, v2, v6}, Lorg/apache/commons/math3/linear/ArrayRealVector;-><init>([DZ)V

    .end local v2    # "out":[D
    .end local p1    # "v":Lorg/apache/commons/math3/linear/RealVector;
    :cond_2
    return-object v3
.end method

.method public bridge synthetic ebeDivide(Lorg/apache/commons/math3/linear/RealVector;)Lorg/apache/commons/math3/linear/RealVector;
    .locals 1
    .param p1, "x0"    # Lorg/apache/commons/math3/linear/RealVector;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    .prologue
    .line 38
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->ebeDivide(Lorg/apache/commons/math3/linear/RealVector;)Lorg/apache/commons/math3/linear/ArrayRealVector;

    move-result-object v0

    return-object v0
.end method

.method public ebeMultiply(Lorg/apache/commons/math3/linear/RealVector;)Lorg/apache/commons/math3/linear/ArrayRealVector;
    .locals 10
    .param p1, "v"    # Lorg/apache/commons/math3/linear/RealVector;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    .prologue
    .line 398
    instance-of v6, p1, Lorg/apache/commons/math3/linear/ArrayRealVector;

    if-eqz v6, :cond_0

    .line 399
    check-cast p1, Lorg/apache/commons/math3/linear/ArrayRealVector;

    .end local p1    # "v":Lorg/apache/commons/math3/linear/RealVector;
    iget-object v5, p1, Lorg/apache/commons/math3/linear/ArrayRealVector;->data:[D

    .line 400
    .local v5, "vData":[D
    array-length v0, v5

    .line 401
    .local v0, "dim":I
    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/linear/ArrayRealVector;->checkVectorDimensions(I)V

    .line 402
    new-instance v3, Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-direct {v3, v0}, Lorg/apache/commons/math3/linear/ArrayRealVector;-><init>(I)V

    .line 403
    .local v3, "result":Lorg/apache/commons/math3/linear/ArrayRealVector;
    iget-object v4, v3, Lorg/apache/commons/math3/linear/ArrayRealVector;->data:[D

    .line 404
    .local v4, "resultData":[D
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_2

    .line 405
    iget-object v6, p0, Lorg/apache/commons/math3/linear/ArrayRealVector;->data:[D

    aget-wide v6, v6, v1

    aget-wide v8, v5, v1

    mul-double/2addr v6, v8

    aput-wide v6, v4, v1

    .line 404
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 409
    .end local v0    # "dim":I
    .end local v1    # "i":I
    .end local v3    # "result":Lorg/apache/commons/math3/linear/ArrayRealVector;
    .end local v4    # "resultData":[D
    .end local v5    # "vData":[D
    .restart local p1    # "v":Lorg/apache/commons/math3/linear/RealVector;
    :cond_0
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->checkVectorDimensions(Lorg/apache/commons/math3/linear/RealVector;)V

    .line 410
    iget-object v6, p0, Lorg/apache/commons/math3/linear/ArrayRealVector;->data:[D

    invoke-virtual {v6}, [D->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [D

    .line 411
    .local v2, "out":[D
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_1
    iget-object v6, p0, Lorg/apache/commons/math3/linear/ArrayRealVector;->data:[D

    array-length v6, v6

    if-ge v1, v6, :cond_1

    .line 412
    aget-wide v6, v2, v1

    invoke-virtual {p1, v1}, Lorg/apache/commons/math3/linear/RealVector;->getEntry(I)D

    move-result-wide v8

    mul-double/2addr v6, v8

    aput-wide v6, v2, v1

    .line 411
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 414
    :cond_1
    new-instance v3, Lorg/apache/commons/math3/linear/ArrayRealVector;

    const/4 v6, 0x0

    invoke-direct {v3, v2, v6}, Lorg/apache/commons/math3/linear/ArrayRealVector;-><init>([DZ)V

    .end local v2    # "out":[D
    .end local p1    # "v":Lorg/apache/commons/math3/linear/RealVector;
    :cond_2
    return-object v3
.end method

.method public bridge synthetic ebeMultiply(Lorg/apache/commons/math3/linear/RealVector;)Lorg/apache/commons/math3/linear/RealVector;
    .locals 1
    .param p1, "x0"    # Lorg/apache/commons/math3/linear/RealVector;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    .prologue
    .line 38
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->ebeMultiply(Lorg/apache/commons/math3/linear/RealVector;)Lorg/apache/commons/math3/linear/ArrayRealVector;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 8
    .param p1, "other"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 803
    if-ne p0, p1, :cond_1

    .line 825
    :cond_0
    :goto_0
    return v2

    .line 807
    :cond_1
    instance-of v4, p1, Lorg/apache/commons/math3/linear/RealVector;

    if-nez v4, :cond_2

    move v2, v3

    .line 808
    goto :goto_0

    :cond_2
    move-object v1, p1

    .line 811
    check-cast v1, Lorg/apache/commons/math3/linear/RealVector;

    .line 812
    .local v1, "rhs":Lorg/apache/commons/math3/linear/RealVector;
    iget-object v4, p0, Lorg/apache/commons/math3/linear/ArrayRealVector;->data:[D

    array-length v4, v4

    invoke-virtual {v1}, Lorg/apache/commons/math3/linear/RealVector;->getDimension()I

    move-result v5

    if-eq v4, v5, :cond_3

    move v2, v3

    .line 813
    goto :goto_0

    .line 816
    :cond_3
    invoke-virtual {v1}, Lorg/apache/commons/math3/linear/RealVector;->isNaN()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 817
    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/ArrayRealVector;->isNaN()Z

    move-result v2

    goto :goto_0

    .line 820
    :cond_4
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v4, p0, Lorg/apache/commons/math3/linear/ArrayRealVector;->data:[D

    array-length v4, v4

    if-ge v0, v4, :cond_0

    .line 821
    iget-object v4, p0, Lorg/apache/commons/math3/linear/ArrayRealVector;->data:[D

    aget-wide v4, v4, v0

    invoke-virtual {v1, v0}, Lorg/apache/commons/math3/linear/RealVector;->getEntry(I)D

    move-result-wide v6

    cmpl-double v4, v4, v6

    if-eqz v4, :cond_5

    move v2, v3

    .line 822
    goto :goto_0

    .line 820
    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public getDataRef()[D
    .locals 1

    .prologue
    .line 449
    iget-object v0, p0, Lorg/apache/commons/math3/linear/ArrayRealVector;->data:[D

    return-object v0
.end method

.method public getDimension()I
    .locals 1

    .prologue
    .line 609
    iget-object v0, p0, Lorg/apache/commons/math3/linear/ArrayRealVector;->data:[D

    array-length v0, v0

    return v0
.end method

.method public getDistance(Lorg/apache/commons/math3/linear/RealVector;)D
    .locals 10
    .param p1, "v"    # Lorg/apache/commons/math3/linear/RealVector;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    .prologue
    .line 500
    instance-of v6, p1, Lorg/apache/commons/math3/linear/ArrayRealVector;

    if-eqz v6, :cond_1

    .line 501
    check-cast p1, Lorg/apache/commons/math3/linear/ArrayRealVector;

    .end local p1    # "v":Lorg/apache/commons/math3/linear/RealVector;
    iget-object v3, p1, Lorg/apache/commons/math3/linear/ArrayRealVector;->data:[D

    .line 502
    .local v3, "vData":[D
    array-length v6, v3

    invoke-virtual {p0, v6}, Lorg/apache/commons/math3/linear/ArrayRealVector;->checkVectorDimensions(I)V

    .line 503
    const-wide/16 v4, 0x0

    .line 504
    .local v4, "sum":D
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v6, p0, Lorg/apache/commons/math3/linear/ArrayRealVector;->data:[D

    array-length v6, v6

    if-ge v2, v6, :cond_0

    .line 505
    iget-object v6, p0, Lorg/apache/commons/math3/linear/ArrayRealVector;->data:[D

    aget-wide v6, v6, v2

    aget-wide v8, v3, v2

    sub-double v0, v6, v8

    .line 506
    .local v0, "delta":D
    mul-double v6, v0, v0

    add-double/2addr v4, v6

    .line 504
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 508
    .end local v0    # "delta":D
    :cond_0
    invoke-static {v4, v5}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v6

    .line 516
    .end local v3    # "vData":[D
    :goto_1
    return-wide v6

    .line 510
    .end local v2    # "i":I
    .end local v4    # "sum":D
    .restart local p1    # "v":Lorg/apache/commons/math3/linear/RealVector;
    :cond_1
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->checkVectorDimensions(Lorg/apache/commons/math3/linear/RealVector;)V

    .line 511
    const-wide/16 v4, 0x0

    .line 512
    .restart local v4    # "sum":D
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_2
    iget-object v6, p0, Lorg/apache/commons/math3/linear/ArrayRealVector;->data:[D

    array-length v6, v6

    if-ge v2, v6, :cond_2

    .line 513
    iget-object v6, p0, Lorg/apache/commons/math3/linear/ArrayRealVector;->data:[D

    aget-wide v6, v6, v2

    invoke-virtual {p1, v2}, Lorg/apache/commons/math3/linear/RealVector;->getEntry(I)D

    move-result-wide v8

    sub-double v0, v6, v8

    .line 514
    .restart local v0    # "delta":D
    mul-double v6, v0, v0

    add-double/2addr v4, v6

    .line 512
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 516
    .end local v0    # "delta":D
    :cond_2
    invoke-static {v4, v5}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v6

    goto :goto_1
.end method

.method public getEntry(I)D
    .locals 6
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/OutOfRangeException;
        }
    .end annotation

    .prologue
    .line 599
    :try_start_0
    iget-object v1, p0, Lorg/apache/commons/math3/linear/ArrayRealVector;->data:[D

    aget-wide v2, v1, p1
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v2

    .line 600
    :catch_0
    move-exception v0

    .line 601
    .local v0, "e":Ljava/lang/IndexOutOfBoundsException;
    new-instance v1, Lorg/apache/commons/math3/exception/OutOfRangeException;

    sget-object v2, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->INDEX:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getDimension()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-direct {v1, v2, v3, v4, v5}, Lorg/apache/commons/math3/exception/OutOfRangeException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;)V

    throw v1
.end method

.method public getL1Distance(Lorg/apache/commons/math3/linear/RealVector;)D
    .locals 10
    .param p1, "v"    # Lorg/apache/commons/math3/linear/RealVector;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    .prologue
    .line 524
    instance-of v6, p1, Lorg/apache/commons/math3/linear/ArrayRealVector;

    if-eqz v6, :cond_0

    .line 525
    check-cast p1, Lorg/apache/commons/math3/linear/ArrayRealVector;

    .end local p1    # "v":Lorg/apache/commons/math3/linear/RealVector;
    iget-object v3, p1, Lorg/apache/commons/math3/linear/ArrayRealVector;->data:[D

    .line 526
    .local v3, "vData":[D
    array-length v6, v3

    invoke-virtual {p0, v6}, Lorg/apache/commons/math3/linear/ArrayRealVector;->checkVectorDimensions(I)V

    .line 527
    const-wide/16 v4, 0x0

    .line 528
    .local v4, "sum":D
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v6, p0, Lorg/apache/commons/math3/linear/ArrayRealVector;->data:[D

    array-length v6, v6

    if-ge v2, v6, :cond_1

    .line 529
    iget-object v6, p0, Lorg/apache/commons/math3/linear/ArrayRealVector;->data:[D

    aget-wide v6, v6, v2

    aget-wide v8, v3, v2

    sub-double v0, v6, v8

    .line 530
    .local v0, "delta":D
    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v6

    add-double/2addr v4, v6

    .line 528
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 534
    .end local v0    # "delta":D
    .end local v2    # "i":I
    .end local v3    # "vData":[D
    .end local v4    # "sum":D
    .restart local p1    # "v":Lorg/apache/commons/math3/linear/RealVector;
    :cond_0
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->checkVectorDimensions(Lorg/apache/commons/math3/linear/RealVector;)V

    .line 535
    const-wide/16 v4, 0x0

    .line 536
    .restart local v4    # "sum":D
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_1
    iget-object v6, p0, Lorg/apache/commons/math3/linear/ArrayRealVector;->data:[D

    array-length v6, v6

    if-ge v2, v6, :cond_1

    .line 537
    iget-object v6, p0, Lorg/apache/commons/math3/linear/ArrayRealVector;->data:[D

    aget-wide v6, v6, v2

    invoke-virtual {p1, v2}, Lorg/apache/commons/math3/linear/RealVector;->getEntry(I)D

    move-result-wide v8

    sub-double v0, v6, v8

    .line 538
    .restart local v0    # "delta":D
    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v6

    add-double/2addr v4, v6

    .line 536
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 540
    .end local v0    # "delta":D
    .end local p1    # "v":Lorg/apache/commons/math3/linear/RealVector;
    :cond_1
    return-wide v4
.end method

.method public getL1Norm()D
    .locals 10

    .prologue
    .line 480
    const-wide/16 v6, 0x0

    .line 481
    .local v6, "sum":D
    iget-object v2, p0, Lorg/apache/commons/math3/linear/ArrayRealVector;->data:[D

    .local v2, "arr$":[D
    array-length v4, v2

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_0

    aget-wide v0, v2, v3

    .line 482
    .local v0, "a":D
    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v8

    add-double/2addr v6, v8

    .line 481
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 484
    .end local v0    # "a":D
    :cond_0
    return-wide v6
.end method

.method public getLInfDistance(Lorg/apache/commons/math3/linear/RealVector;)D
    .locals 10
    .param p1, "v"    # Lorg/apache/commons/math3/linear/RealVector;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    .prologue
    .line 548
    instance-of v6, p1, Lorg/apache/commons/math3/linear/ArrayRealVector;

    if-eqz v6, :cond_0

    .line 549
    check-cast p1, Lorg/apache/commons/math3/linear/ArrayRealVector;

    .end local p1    # "v":Lorg/apache/commons/math3/linear/RealVector;
    iget-object v3, p1, Lorg/apache/commons/math3/linear/ArrayRealVector;->data:[D

    .line 550
    .local v3, "vData":[D
    array-length v6, v3

    invoke-virtual {p0, v6}, Lorg/apache/commons/math3/linear/ArrayRealVector;->checkVectorDimensions(I)V

    .line 551
    const-wide/16 v4, 0x0

    .line 552
    .local v4, "max":D
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v6, p0, Lorg/apache/commons/math3/linear/ArrayRealVector;->data:[D

    array-length v6, v6

    if-ge v2, v6, :cond_1

    .line 553
    iget-object v6, p0, Lorg/apache/commons/math3/linear/ArrayRealVector;->data:[D

    aget-wide v6, v6, v2

    aget-wide v8, v3, v2

    sub-double v0, v6, v8

    .line 554
    .local v0, "delta":D
    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v6

    invoke-static {v4, v5, v6, v7}, Lorg/apache/commons/math3/util/FastMath;->max(DD)D

    move-result-wide v4

    .line 552
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 558
    .end local v0    # "delta":D
    .end local v2    # "i":I
    .end local v3    # "vData":[D
    .end local v4    # "max":D
    .restart local p1    # "v":Lorg/apache/commons/math3/linear/RealVector;
    :cond_0
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->checkVectorDimensions(Lorg/apache/commons/math3/linear/RealVector;)V

    .line 559
    const-wide/16 v4, 0x0

    .line 560
    .restart local v4    # "max":D
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_1
    iget-object v6, p0, Lorg/apache/commons/math3/linear/ArrayRealVector;->data:[D

    array-length v6, v6

    if-ge v2, v6, :cond_1

    .line 561
    iget-object v6, p0, Lorg/apache/commons/math3/linear/ArrayRealVector;->data:[D

    aget-wide v6, v6, v2

    invoke-virtual {p1, v2}, Lorg/apache/commons/math3/linear/RealVector;->getEntry(I)D

    move-result-wide v8

    sub-double v0, v6, v8

    .line 562
    .restart local v0    # "delta":D
    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v6

    invoke-static {v4, v5, v6, v7}, Lorg/apache/commons/math3/util/FastMath;->max(DD)D

    move-result-wide v4

    .line 560
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 564
    .end local v0    # "delta":D
    .end local p1    # "v":Lorg/apache/commons/math3/linear/RealVector;
    :cond_1
    return-wide v4
.end method

.method public getLInfNorm()D
    .locals 10

    .prologue
    .line 490
    const-wide/16 v6, 0x0

    .line 491
    .local v6, "max":D
    iget-object v2, p0, Lorg/apache/commons/math3/linear/ArrayRealVector;->data:[D

    .local v2, "arr$":[D
    array-length v4, v2

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_0

    aget-wide v0, v2, v3

    .line 492
    .local v0, "a":D
    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v8

    invoke-static {v6, v7, v8, v9}, Lorg/apache/commons/math3/util/FastMath;->max(DD)D

    move-result-wide v6

    .line 491
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 494
    .end local v0    # "a":D
    :cond_0
    return-wide v6
.end method

.method public getNorm()D
    .locals 10

    .prologue
    .line 470
    const-wide/16 v6, 0x0

    .line 471
    .local v6, "sum":D
    iget-object v2, p0, Lorg/apache/commons/math3/linear/ArrayRealVector;->data:[D

    .local v2, "arr$":[D
    array-length v4, v2

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_0

    aget-wide v0, v2, v3

    .line 472
    .local v0, "a":D
    mul-double v8, v0, v0

    add-double/2addr v6, v8

    .line 471
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 474
    .end local v0    # "a":D
    :cond_0
    invoke-static {v6, v7}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v8

    return-wide v8
.end method

.method public getSubVector(II)Lorg/apache/commons/math3/linear/RealVector;
    .locals 5
    .param p1, "index"    # I
    .param p2, "n"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/OutOfRangeException;,
            Lorg/apache/commons/math3/exception/NotPositiveException;
        }
    .end annotation

    .prologue
    .line 645
    if-gez p2, :cond_0

    .line 646
    new-instance v2, Lorg/apache/commons/math3/exception/NotPositiveException;

    sget-object v3, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->NUMBER_OF_ELEMENTS_SHOULD_BE_POSITIVE:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lorg/apache/commons/math3/exception/NotPositiveException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;Ljava/lang/Number;)V

    throw v2

    .line 648
    :cond_0
    new-instance v1, Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-direct {v1, p2}, Lorg/apache/commons/math3/linear/ArrayRealVector;-><init>(I)V

    .line 650
    .local v1, "out":Lorg/apache/commons/math3/linear/ArrayRealVector;
    :try_start_0
    iget-object v2, p0, Lorg/apache/commons/math3/linear/ArrayRealVector;->data:[D

    iget-object v3, v1, Lorg/apache/commons/math3/linear/ArrayRealVector;->data:[D

    const/4 v4, 0x0

    invoke-static {v2, p1, v3, v4, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 655
    :goto_0
    return-object v1

    .line 651
    :catch_0
    move-exception v0

    .line 652
    .local v0, "e":Ljava/lang/IndexOutOfBoundsException;
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->checkIndex(I)V

    .line 653
    add-int v2, p1, p2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p0, v2}, Lorg/apache/commons/math3/linear/ArrayRealVector;->checkIndex(I)V

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 833
    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/ArrayRealVector;->isNaN()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 834
    const/16 v0, 0x9

    .line 836
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lorg/apache/commons/math3/linear/ArrayRealVector;->data:[D

    invoke-static {v0}, Lorg/apache/commons/math3/util/MathUtils;->hash([D)I

    move-result v0

    goto :goto_0
.end method

.method public isInfinite()Z
    .locals 7

    .prologue
    const/4 v3, 0x0

    .line 787
    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/ArrayRealVector;->isNaN()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 797
    :cond_0
    :goto_0
    return v3

    .line 791
    :cond_1
    iget-object v0, p0, Lorg/apache/commons/math3/linear/ArrayRealVector;->data:[D

    .local v0, "arr$":[D
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_1
    if-ge v1, v2, :cond_0

    aget-wide v4, v0, v1

    .line 792
    .local v4, "v":D
    invoke-static {v4, v5}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 793
    const/4 v3, 0x1

    goto :goto_0

    .line 791
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public isNaN()Z
    .locals 6

    .prologue
    .line 770
    iget-object v0, p0, Lorg/apache/commons/math3/linear/ArrayRealVector;->data:[D

    .local v0, "arr$":[D
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-wide v4, v0, v1

    .line 771
    .local v4, "v":D
    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 772
    const/4 v3, 0x1

    .line 775
    .end local v4    # "v":D
    :goto_1
    return v3

    .line 770
    .restart local v4    # "v":D
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 775
    .end local v4    # "v":D
    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public map(Lorg/apache/commons/math3/analysis/UnivariateFunction;)Lorg/apache/commons/math3/linear/ArrayRealVector;
    .locals 1
    .param p1, "function"    # Lorg/apache/commons/math3/analysis/UnivariateFunction;

    .prologue
    .line 346
    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/ArrayRealVector;->copy()Lorg/apache/commons/math3/linear/ArrayRealVector;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->mapToSelf(Lorg/apache/commons/math3/analysis/UnivariateFunction;)Lorg/apache/commons/math3/linear/ArrayRealVector;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic map(Lorg/apache/commons/math3/analysis/UnivariateFunction;)Lorg/apache/commons/math3/linear/RealVector;
    .locals 1
    .param p1, "x0"    # Lorg/apache/commons/math3/analysis/UnivariateFunction;

    .prologue
    .line 38
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->map(Lorg/apache/commons/math3/analysis/UnivariateFunction;)Lorg/apache/commons/math3/linear/ArrayRealVector;

    move-result-object v0

    return-object v0
.end method

.method public mapAddToSelf(D)Lorg/apache/commons/math3/linear/RealVector;
    .locals 5
    .param p1, "d"    # D

    .prologue
    .line 361
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lorg/apache/commons/math3/linear/ArrayRealVector;->data:[D

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 362
    iget-object v1, p0, Lorg/apache/commons/math3/linear/ArrayRealVector;->data:[D

    aget-wide v2, v1, v0

    add-double/2addr v2, p1

    aput-wide v2, v1, v0

    .line 361
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 364
    :cond_0
    return-object p0
.end method

.method public mapDivideToSelf(D)Lorg/apache/commons/math3/linear/RealVector;
    .locals 5
    .param p1, "d"    # D

    .prologue
    .line 388
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lorg/apache/commons/math3/linear/ArrayRealVector;->data:[D

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 389
    iget-object v1, p0, Lorg/apache/commons/math3/linear/ArrayRealVector;->data:[D

    aget-wide v2, v1, v0

    div-double/2addr v2, p1

    aput-wide v2, v1, v0

    .line 388
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 391
    :cond_0
    return-object p0
.end method

.method public mapMultiplyToSelf(D)Lorg/apache/commons/math3/linear/RealVector;
    .locals 5
    .param p1, "d"    # D

    .prologue
    .line 379
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lorg/apache/commons/math3/linear/ArrayRealVector;->data:[D

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 380
    iget-object v1, p0, Lorg/apache/commons/math3/linear/ArrayRealVector;->data:[D

    aget-wide v2, v1, v0

    mul-double/2addr v2, p1

    aput-wide v2, v1, v0

    .line 379
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 382
    :cond_0
    return-object p0
.end method

.method public mapSubtractToSelf(D)Lorg/apache/commons/math3/linear/RealVector;
    .locals 5
    .param p1, "d"    # D

    .prologue
    .line 370
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lorg/apache/commons/math3/linear/ArrayRealVector;->data:[D

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 371
    iget-object v1, p0, Lorg/apache/commons/math3/linear/ArrayRealVector;->data:[D

    aget-wide v2, v1, v0

    sub-double/2addr v2, p1

    aput-wide v2, v1, v0

    .line 370
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 373
    :cond_0
    return-object p0
.end method

.method public mapToSelf(Lorg/apache/commons/math3/analysis/UnivariateFunction;)Lorg/apache/commons/math3/linear/ArrayRealVector;
    .locals 4
    .param p1, "function"    # Lorg/apache/commons/math3/analysis/UnivariateFunction;

    .prologue
    .line 352
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lorg/apache/commons/math3/linear/ArrayRealVector;->data:[D

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 353
    iget-object v1, p0, Lorg/apache/commons/math3/linear/ArrayRealVector;->data:[D

    iget-object v2, p0, Lorg/apache/commons/math3/linear/ArrayRealVector;->data:[D

    aget-wide v2, v2, v0

    invoke-interface {p1, v2, v3}, Lorg/apache/commons/math3/analysis/UnivariateFunction;->value(D)D

    move-result-wide v2

    aput-wide v2, v1, v0

    .line 352
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 355
    :cond_0
    return-object p0
.end method

.method public bridge synthetic mapToSelf(Lorg/apache/commons/math3/analysis/UnivariateFunction;)Lorg/apache/commons/math3/linear/RealVector;
    .locals 1
    .param p1, "x0"    # Lorg/apache/commons/math3/analysis/UnivariateFunction;

    .prologue
    .line 38
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->mapToSelf(Lorg/apache/commons/math3/analysis/UnivariateFunction;)Lorg/apache/commons/math3/linear/ArrayRealVector;

    move-result-object v0

    return-object v0
.end method

.method public outerProduct(Lorg/apache/commons/math3/linear/RealVector;)Lorg/apache/commons/math3/linear/RealMatrix;
    .locals 10
    .param p1, "v"    # Lorg/apache/commons/math3/linear/RealVector;

    .prologue
    .line 571
    instance-of v6, p1, Lorg/apache/commons/math3/linear/ArrayRealVector;

    if-eqz v6, :cond_1

    .line 572
    check-cast p1, Lorg/apache/commons/math3/linear/ArrayRealVector;

    .end local p1    # "v":Lorg/apache/commons/math3/linear/RealVector;
    iget-object v5, p1, Lorg/apache/commons/math3/linear/ArrayRealVector;->data:[D

    .line 573
    .local v5, "vData":[D
    iget-object v6, p0, Lorg/apache/commons/math3/linear/ArrayRealVector;->data:[D

    array-length v2, v6

    .line 574
    .local v2, "m":I
    array-length v3, v5

    .line 575
    .local v3, "n":I
    invoke-static {v2, v3}, Lorg/apache/commons/math3/linear/MatrixUtils;->createRealMatrix(II)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v4

    .line 576
    .local v4, "out":Lorg/apache/commons/math3/linear/RealMatrix;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_3

    .line 577
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_1
    if-ge v1, v3, :cond_0

    .line 578
    iget-object v6, p0, Lorg/apache/commons/math3/linear/ArrayRealVector;->data:[D

    aget-wide v6, v6, v0

    aget-wide v8, v5, v1

    mul-double/2addr v6, v8

    invoke-interface {v4, v0, v1, v6, v7}, Lorg/apache/commons/math3/linear/RealMatrix;->setEntry(IID)V

    .line 577
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 576
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 583
    .end local v0    # "i":I
    .end local v1    # "j":I
    .end local v2    # "m":I
    .end local v3    # "n":I
    .end local v4    # "out":Lorg/apache/commons/math3/linear/RealMatrix;
    .end local v5    # "vData":[D
    .restart local p1    # "v":Lorg/apache/commons/math3/linear/RealVector;
    :cond_1
    iget-object v6, p0, Lorg/apache/commons/math3/linear/ArrayRealVector;->data:[D

    array-length v2, v6

    .line 584
    .restart local v2    # "m":I
    invoke-virtual {p1}, Lorg/apache/commons/math3/linear/RealVector;->getDimension()I

    move-result v3

    .line 585
    .restart local v3    # "n":I
    invoke-static {v2, v3}, Lorg/apache/commons/math3/linear/MatrixUtils;->createRealMatrix(II)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v4

    .line 586
    .restart local v4    # "out":Lorg/apache/commons/math3/linear/RealMatrix;
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_2
    if-ge v0, v2, :cond_3

    .line 587
    const/4 v1, 0x0

    .restart local v1    # "j":I
    :goto_3
    if-ge v1, v3, :cond_2

    .line 588
    iget-object v6, p0, Lorg/apache/commons/math3/linear/ArrayRealVector;->data:[D

    aget-wide v6, v6, v0

    invoke-virtual {p1, v1}, Lorg/apache/commons/math3/linear/RealVector;->getEntry(I)D

    move-result-wide v8

    mul-double/2addr v6, v8

    invoke-interface {v4, v0, v1, v6, v7}, Lorg/apache/commons/math3/linear/RealMatrix;->setEntry(IID)V

    .line 587
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 586
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 591
    .end local v1    # "j":I
    .end local p1    # "v":Lorg/apache/commons/math3/linear/RealVector;
    :cond_3
    return-object v4
.end method

.method public set(D)V
    .locals 1
    .param p1, "value"    # D

    .prologue
    .line 719
    iget-object v0, p0, Lorg/apache/commons/math3/linear/ArrayRealVector;->data:[D

    invoke-static {v0, p1, p2}, Ljava/util/Arrays;->fill([DD)V

    .line 720
    return-void
.end method

.method public setEntry(ID)V
    .locals 2
    .param p1, "index"    # I
    .param p2, "value"    # D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/OutOfRangeException;
        }
    .end annotation

    .prologue
    .line 662
    :try_start_0
    iget-object v1, p0, Lorg/apache/commons/math3/linear/ArrayRealVector;->data:[D

    aput-wide p2, v1, p1
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 666
    :goto_0
    return-void

    .line 663
    :catch_0
    move-exception v0

    .line 664
    .local v0, "e":Ljava/lang/IndexOutOfBoundsException;
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->checkIndex(I)V

    goto :goto_0
.end method

.method public setSubVector(ILorg/apache/commons/math3/linear/RealVector;)V
    .locals 6
    .param p1, "index"    # I
    .param p2, "v"    # Lorg/apache/commons/math3/linear/RealVector;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/OutOfRangeException;
        }
    .end annotation

    .prologue
    .line 684
    instance-of v2, p2, Lorg/apache/commons/math3/linear/ArrayRealVector;

    if-eqz v2, :cond_1

    .line 685
    check-cast p2, Lorg/apache/commons/math3/linear/ArrayRealVector;

    .end local p2    # "v":Lorg/apache/commons/math3/linear/RealVector;
    iget-object v2, p2, Lorg/apache/commons/math3/linear/ArrayRealVector;->data:[D

    invoke-virtual {p0, p1, v2}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setSubVector(I[D)V

    .line 696
    :cond_0
    :goto_0
    return-void

    .line 688
    .restart local p2    # "v":Lorg/apache/commons/math3/linear/RealVector;
    :cond_1
    move v1, p1

    .local v1, "i":I
    :goto_1
    :try_start_0
    invoke-virtual {p2}, Lorg/apache/commons/math3/linear/RealVector;->getDimension()I

    move-result v2

    add-int/2addr v2, p1

    if-ge v1, v2, :cond_0

    .line 689
    iget-object v2, p0, Lorg/apache/commons/math3/linear/ArrayRealVector;->data:[D

    sub-int v3, v1, p1

    invoke-virtual {p2, v3}, Lorg/apache/commons/math3/linear/RealVector;->getEntry(I)D

    move-result-wide v4

    aput-wide v4, v2, v1
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 688
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 691
    :catch_0
    move-exception v0

    .line 692
    .local v0, "e":Ljava/lang/IndexOutOfBoundsException;
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->checkIndex(I)V

    .line 693
    invoke-virtual {p2}, Lorg/apache/commons/math3/linear/RealVector;->getDimension()I

    move-result v2

    add-int/2addr v2, p1

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p0, v2}, Lorg/apache/commons/math3/linear/ArrayRealVector;->checkIndex(I)V

    goto :goto_0
.end method

.method public setSubVector(I[D)V
    .locals 4
    .param p1, "index"    # I
    .param p2, "v"    # [D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/OutOfRangeException;
        }
    .end annotation

    .prologue
    .line 709
    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lorg/apache/commons/math3/linear/ArrayRealVector;->data:[D

    array-length v3, p2

    invoke-static {p2, v1, v2, p1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 714
    :goto_0
    return-void

    .line 710
    :catch_0
    move-exception v0

    .line 711
    .local v0, "e":Ljava/lang/IndexOutOfBoundsException;
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->checkIndex(I)V

    .line 712
    array-length v1, p2

    add-int/2addr v1, p1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->checkIndex(I)V

    goto :goto_0
.end method

.method public subtract(Lorg/apache/commons/math3/linear/RealVector;)Lorg/apache/commons/math3/linear/ArrayRealVector;
    .locals 14
    .param p1, "v"    # Lorg/apache/commons/math3/linear/RealVector;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    .prologue
    .line 321
    instance-of v8, p1, Lorg/apache/commons/math3/linear/ArrayRealVector;

    if-eqz v8, :cond_0

    .line 322
    check-cast p1, Lorg/apache/commons/math3/linear/ArrayRealVector;

    .end local p1    # "v":Lorg/apache/commons/math3/linear/RealVector;
    iget-object v7, p1, Lorg/apache/commons/math3/linear/ArrayRealVector;->data:[D

    .line 323
    .local v7, "vData":[D
    array-length v0, v7

    .line 324
    .local v0, "dim":I
    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/linear/ArrayRealVector;->checkVectorDimensions(I)V

    .line 325
    new-instance v5, Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-direct {v5, v0}, Lorg/apache/commons/math3/linear/ArrayRealVector;-><init>(I)V

    .line 326
    .local v5, "result":Lorg/apache/commons/math3/linear/ArrayRealVector;
    iget-object v6, v5, Lorg/apache/commons/math3/linear/ArrayRealVector;->data:[D

    .line 327
    .local v6, "resultData":[D
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_2

    .line 328
    iget-object v8, p0, Lorg/apache/commons/math3/linear/ArrayRealVector;->data:[D

    aget-wide v8, v8, v2

    aget-wide v10, v7, v2

    sub-double/2addr v8, v10

    aput-wide v8, v6, v2

    .line 327
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 332
    .end local v0    # "dim":I
    .end local v2    # "i":I
    .end local v5    # "result":Lorg/apache/commons/math3/linear/ArrayRealVector;
    .end local v6    # "resultData":[D
    .end local v7    # "vData":[D
    .restart local p1    # "v":Lorg/apache/commons/math3/linear/RealVector;
    :cond_0
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->checkVectorDimensions(Lorg/apache/commons/math3/linear/RealVector;)V

    .line 333
    iget-object v8, p0, Lorg/apache/commons/math3/linear/ArrayRealVector;->data:[D

    invoke-virtual {v8}, [D->clone()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [D

    .line 334
    .local v4, "out":[D
    invoke-virtual {p1}, Lorg/apache/commons/math3/linear/RealVector;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 335
    .local v3, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/apache/commons/math3/linear/RealVector$Entry;>;"
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 336
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/math3/linear/RealVector$Entry;

    .line 337
    .local v1, "e":Lorg/apache/commons/math3/linear/RealVector$Entry;
    invoke-virtual {v1}, Lorg/apache/commons/math3/linear/RealVector$Entry;->getIndex()I

    move-result v8

    aget-wide v10, v4, v8

    invoke-virtual {v1}, Lorg/apache/commons/math3/linear/RealVector$Entry;->getValue()D

    move-result-wide v12

    sub-double/2addr v10, v12

    aput-wide v10, v4, v8

    goto :goto_1

    .line 339
    .end local v1    # "e":Lorg/apache/commons/math3/linear/RealVector$Entry;
    :cond_1
    new-instance v5, Lorg/apache/commons/math3/linear/ArrayRealVector;

    const/4 v8, 0x0

    invoke-direct {v5, v4, v8}, Lorg/apache/commons/math3/linear/ArrayRealVector;-><init>([DZ)V

    .end local v3    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/apache/commons/math3/linear/RealVector$Entry;>;"
    .end local v4    # "out":[D
    .end local p1    # "v":Lorg/apache/commons/math3/linear/RealVector;
    :cond_2
    return-object v5
.end method

.method public bridge synthetic subtract(Lorg/apache/commons/math3/linear/RealVector;)Lorg/apache/commons/math3/linear/RealVector;
    .locals 1
    .param p1, "x0"    # Lorg/apache/commons/math3/linear/RealVector;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    .prologue
    .line 38
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->subtract(Lorg/apache/commons/math3/linear/RealVector;)Lorg/apache/commons/math3/linear/ArrayRealVector;

    move-result-object v0

    return-object v0
.end method

.method public toArray()[D
    .locals 1

    .prologue
    .line 725
    iget-object v0, p0, Lorg/apache/commons/math3/linear/ArrayRealVector;->data:[D

    invoke-virtual {v0}, [D->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [D

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 731
    sget-object v0, Lorg/apache/commons/math3/linear/ArrayRealVector;->DEFAULT_FORMAT:Lorg/apache/commons/math3/linear/RealVectorFormat;

    invoke-virtual {v0, p0}, Lorg/apache/commons/math3/linear/RealVectorFormat;->format(Lorg/apache/commons/math3/linear/RealVector;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public walkInDefaultOrder(Lorg/apache/commons/math3/linear/RealVectorChangingVisitor;)D
    .locals 4
    .param p1, "visitor"    # Lorg/apache/commons/math3/linear/RealVectorChangingVisitor;

    .prologue
    .line 913
    iget-object v1, p0, Lorg/apache/commons/math3/linear/ArrayRealVector;->data:[D

    array-length v1, v1

    const/4 v2, 0x0

    iget-object v3, p0, Lorg/apache/commons/math3/linear/ArrayRealVector;->data:[D

    array-length v3, v3

    add-int/lit8 v3, v3, -0x1

    invoke-interface {p1, v1, v2, v3}, Lorg/apache/commons/math3/linear/RealVectorChangingVisitor;->start(III)V

    .line 914
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lorg/apache/commons/math3/linear/ArrayRealVector;->data:[D

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 915
    iget-object v1, p0, Lorg/apache/commons/math3/linear/ArrayRealVector;->data:[D

    iget-object v2, p0, Lorg/apache/commons/math3/linear/ArrayRealVector;->data:[D

    aget-wide v2, v2, v0

    invoke-interface {p1, v0, v2, v3}, Lorg/apache/commons/math3/linear/RealVectorChangingVisitor;->visit(ID)D

    move-result-wide v2

    aput-wide v2, v1, v0

    .line 914
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 917
    :cond_0
    invoke-interface {p1}, Lorg/apache/commons/math3/linear/RealVectorChangingVisitor;->end()D

    move-result-wide v2

    return-wide v2
.end method

.method public walkInDefaultOrder(Lorg/apache/commons/math3/linear/RealVectorChangingVisitor;II)D
    .locals 4
    .param p1, "visitor"    # Lorg/apache/commons/math3/linear/RealVectorChangingVisitor;
    .param p2, "start"    # I
    .param p3, "end"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NumberIsTooSmallException;,
            Lorg/apache/commons/math3/exception/OutOfRangeException;
        }
    .end annotation

    .prologue
    .line 925
    invoke-virtual {p0, p2, p3}, Lorg/apache/commons/math3/linear/ArrayRealVector;->checkIndices(II)V

    .line 926
    iget-object v1, p0, Lorg/apache/commons/math3/linear/ArrayRealVector;->data:[D

    array-length v1, v1

    invoke-interface {p1, v1, p2, p3}, Lorg/apache/commons/math3/linear/RealVectorChangingVisitor;->start(III)V

    .line 927
    move v0, p2

    .local v0, "i":I
    :goto_0
    if-gt v0, p3, :cond_0

    .line 928
    iget-object v1, p0, Lorg/apache/commons/math3/linear/ArrayRealVector;->data:[D

    iget-object v2, p0, Lorg/apache/commons/math3/linear/ArrayRealVector;->data:[D

    aget-wide v2, v2, v0

    invoke-interface {p1, v0, v2, v3}, Lorg/apache/commons/math3/linear/RealVectorChangingVisitor;->visit(ID)D

    move-result-wide v2

    aput-wide v2, v1, v0

    .line 927
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 930
    :cond_0
    invoke-interface {p1}, Lorg/apache/commons/math3/linear/RealVectorChangingVisitor;->end()D

    move-result-wide v2

    return-wide v2
.end method

.method public walkInDefaultOrder(Lorg/apache/commons/math3/linear/RealVectorPreservingVisitor;)D
    .locals 4
    .param p1, "visitor"    # Lorg/apache/commons/math3/linear/RealVectorPreservingVisitor;

    .prologue
    .line 868
    iget-object v1, p0, Lorg/apache/commons/math3/linear/ArrayRealVector;->data:[D

    array-length v1, v1

    const/4 v2, 0x0

    iget-object v3, p0, Lorg/apache/commons/math3/linear/ArrayRealVector;->data:[D

    array-length v3, v3

    add-int/lit8 v3, v3, -0x1

    invoke-interface {p1, v1, v2, v3}, Lorg/apache/commons/math3/linear/RealVectorPreservingVisitor;->start(III)V

    .line 869
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lorg/apache/commons/math3/linear/ArrayRealVector;->data:[D

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 870
    iget-object v1, p0, Lorg/apache/commons/math3/linear/ArrayRealVector;->data:[D

    aget-wide v2, v1, v0

    invoke-interface {p1, v0, v2, v3}, Lorg/apache/commons/math3/linear/RealVectorPreservingVisitor;->visit(ID)V

    .line 869
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 872
    :cond_0
    invoke-interface {p1}, Lorg/apache/commons/math3/linear/RealVectorPreservingVisitor;->end()D

    move-result-wide v2

    return-wide v2
.end method

.method public walkInDefaultOrder(Lorg/apache/commons/math3/linear/RealVectorPreservingVisitor;II)D
    .locals 4
    .param p1, "visitor"    # Lorg/apache/commons/math3/linear/RealVectorPreservingVisitor;
    .param p2, "start"    # I
    .param p3, "end"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NumberIsTooSmallException;,
            Lorg/apache/commons/math3/exception/OutOfRangeException;
        }
    .end annotation

    .prologue
    .line 880
    invoke-virtual {p0, p2, p3}, Lorg/apache/commons/math3/linear/ArrayRealVector;->checkIndices(II)V

    .line 881
    iget-object v1, p0, Lorg/apache/commons/math3/linear/ArrayRealVector;->data:[D

    array-length v1, v1

    invoke-interface {p1, v1, p2, p3}, Lorg/apache/commons/math3/linear/RealVectorPreservingVisitor;->start(III)V

    .line 882
    move v0, p2

    .local v0, "i":I
    :goto_0
    if-gt v0, p3, :cond_0

    .line 883
    iget-object v1, p0, Lorg/apache/commons/math3/linear/ArrayRealVector;->data:[D

    aget-wide v2, v1, v0

    invoke-interface {p1, v0, v2, v3}, Lorg/apache/commons/math3/linear/RealVectorPreservingVisitor;->visit(ID)V

    .line 882
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 885
    :cond_0
    invoke-interface {p1}, Lorg/apache/commons/math3/linear/RealVectorPreservingVisitor;->end()D

    move-result-wide v2

    return-wide v2
.end method

.method public walkInOptimizedOrder(Lorg/apache/commons/math3/linear/RealVectorChangingVisitor;)D
    .locals 2
    .param p1, "visitor"    # Lorg/apache/commons/math3/linear/RealVectorChangingVisitor;

    .prologue
    .line 940
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->walkInDefaultOrder(Lorg/apache/commons/math3/linear/RealVectorChangingVisitor;)D

    move-result-wide v0

    return-wide v0
.end method

.method public walkInOptimizedOrder(Lorg/apache/commons/math3/linear/RealVectorChangingVisitor;II)D
    .locals 2
    .param p1, "visitor"    # Lorg/apache/commons/math3/linear/RealVectorChangingVisitor;
    .param p2, "start"    # I
    .param p3, "end"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NumberIsTooSmallException;,
            Lorg/apache/commons/math3/exception/OutOfRangeException;
        }
    .end annotation

    .prologue
    .line 952
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/commons/math3/linear/ArrayRealVector;->walkInDefaultOrder(Lorg/apache/commons/math3/linear/RealVectorChangingVisitor;II)D

    move-result-wide v0

    return-wide v0
.end method

.method public walkInOptimizedOrder(Lorg/apache/commons/math3/linear/RealVectorPreservingVisitor;)D
    .locals 2
    .param p1, "visitor"    # Lorg/apache/commons/math3/linear/RealVectorPreservingVisitor;

    .prologue
    .line 895
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->walkInDefaultOrder(Lorg/apache/commons/math3/linear/RealVectorPreservingVisitor;)D

    move-result-wide v0

    return-wide v0
.end method

.method public walkInOptimizedOrder(Lorg/apache/commons/math3/linear/RealVectorPreservingVisitor;II)D
    .locals 2
    .param p1, "visitor"    # Lorg/apache/commons/math3/linear/RealVectorPreservingVisitor;
    .param p2, "start"    # I
    .param p3, "end"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NumberIsTooSmallException;,
            Lorg/apache/commons/math3/exception/OutOfRangeException;
        }
    .end annotation

    .prologue
    .line 907
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/commons/math3/linear/ArrayRealVector;->walkInDefaultOrder(Lorg/apache/commons/math3/linear/RealVectorPreservingVisitor;II)D

    move-result-wide v0

    return-wide v0
.end method
