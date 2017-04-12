.class public Lorg/apache/commons/math3/analysis/interpolation/MicrosphereInterpolatingFunction;
.super Ljava/lang/Object;
.source "MicrosphereInterpolatingFunction.java"

# interfaces
.implements Lorg/apache/commons/math3/analysis/MultivariateFunction;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/math3/analysis/interpolation/MicrosphereInterpolatingFunction$MicrosphereSurfaceElement;
    }
.end annotation


# instance fields
.field private final brightnessExponent:D

.field private final dimension:I

.field private final microsphere:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/apache/commons/math3/analysis/interpolation/MicrosphereInterpolatingFunction$MicrosphereSurfaceElement;",
            ">;"
        }
    .end annotation
.end field

.field private final samples:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lorg/apache/commons/math3/linear/RealVector;",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>([[D[DIILorg/apache/commons/math3/random/UnitSphereRandomVectorGenerator;)V
    .locals 6
    .param p1, "xval"    # [[D
    .param p2, "yval"    # [D
    .param p3, "brightnessExponent"    # I
    .param p4, "microsphereElements"    # I
    .param p5, "rand"    # Lorg/apache/commons/math3/random/UnitSphereRandomVectorGenerator;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;,
            Lorg/apache/commons/math3/exception/NoDataException;,
            Lorg/apache/commons/math3/exception/NullArgumentException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 152
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 153
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 155
    :cond_0
    new-instance v2, Lorg/apache/commons/math3/exception/NullArgumentException;

    invoke-direct {v2}, Lorg/apache/commons/math3/exception/NullArgumentException;-><init>()V

    throw v2

    .line 157
    :cond_1
    array-length v2, p1

    if-nez v2, :cond_2

    .line 158
    new-instance v2, Lorg/apache/commons/math3/exception/NoDataException;

    invoke-direct {v2}, Lorg/apache/commons/math3/exception/NoDataException;-><init>()V

    throw v2

    .line 160
    :cond_2
    array-length v2, p1

    array-length v3, p2

    if-eq v2, v3, :cond_3

    .line 161
    new-instance v2, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    array-length v3, p1

    array-length v4, p2

    invoke-direct {v2, v3, v4}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v2

    .line 163
    :cond_3
    aget-object v2, p1, v4

    if-nez v2, :cond_4

    .line 164
    new-instance v2, Lorg/apache/commons/math3/exception/NullArgumentException;

    invoke-direct {v2}, Lorg/apache/commons/math3/exception/NullArgumentException;-><init>()V

    throw v2

    .line 167
    :cond_4
    aget-object v2, p1, v4

    array-length v2, v2

    iput v2, p0, Lorg/apache/commons/math3/analysis/interpolation/MicrosphereInterpolatingFunction;->dimension:I

    .line 168
    int-to-double v2, p3

    iput-wide v2, p0, Lorg/apache/commons/math3/analysis/interpolation/MicrosphereInterpolatingFunction;->brightnessExponent:D

    .line 171
    new-instance v2, Ljava/util/HashMap;

    array-length v3, p2

    invoke-direct {v2, v3}, Ljava/util/HashMap;-><init>(I)V

    iput-object v2, p0, Lorg/apache/commons/math3/analysis/interpolation/MicrosphereInterpolatingFunction;->samples:Ljava/util/Map;

    .line 172
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, p1

    if-ge v0, v2, :cond_7

    .line 173
    aget-object v1, p1, v0

    .line 174
    .local v1, "xvalI":[D
    if-nez v1, :cond_5

    .line 175
    new-instance v2, Lorg/apache/commons/math3/exception/NullArgumentException;

    invoke-direct {v2}, Lorg/apache/commons/math3/exception/NullArgumentException;-><init>()V

    throw v2

    .line 177
    :cond_5
    array-length v2, v1

    iget v3, p0, Lorg/apache/commons/math3/analysis/interpolation/MicrosphereInterpolatingFunction;->dimension:I

    if-eq v2, v3, :cond_6

    .line 178
    new-instance v2, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    array-length v3, v1

    iget v4, p0, Lorg/apache/commons/math3/analysis/interpolation/MicrosphereInterpolatingFunction;->dimension:I

    invoke-direct {v2, v3, v4}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v2

    .line 181
    :cond_6
    iget-object v2, p0, Lorg/apache/commons/math3/analysis/interpolation/MicrosphereInterpolatingFunction;->samples:Ljava/util/Map;

    new-instance v3, Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-direct {v3, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;-><init>([D)V

    aget-wide v4, p2, v0

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 172
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 184
    .end local v1    # "xvalI":[D
    :cond_7
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, p4}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v2, p0, Lorg/apache/commons/math3/analysis/interpolation/MicrosphereInterpolatingFunction;->microsphere:Ljava/util/List;

    .line 187
    const/4 v0, 0x0

    :goto_1
    if-ge v0, p4, :cond_8

    .line 188
    iget-object v2, p0, Lorg/apache/commons/math3/analysis/interpolation/MicrosphereInterpolatingFunction;->microsphere:Ljava/util/List;

    new-instance v3, Lorg/apache/commons/math3/analysis/interpolation/MicrosphereInterpolatingFunction$MicrosphereSurfaceElement;

    invoke-virtual {p5}, Lorg/apache/commons/math3/random/UnitSphereRandomVectorGenerator;->nextVector()[D

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/apache/commons/math3/analysis/interpolation/MicrosphereInterpolatingFunction$MicrosphereSurfaceElement;-><init>([D)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 187
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 190
    :cond_8
    return-void
.end method

.method private cosAngle(Lorg/apache/commons/math3/linear/RealVector;Lorg/apache/commons/math3/linear/RealVector;)D
    .locals 6
    .param p1, "v"    # Lorg/apache/commons/math3/linear/RealVector;
    .param p2, "w"    # Lorg/apache/commons/math3/linear/RealVector;

    .prologue
    .line 248
    invoke-virtual {p1, p2}, Lorg/apache/commons/math3/linear/RealVector;->dotProduct(Lorg/apache/commons/math3/linear/RealVector;)D

    move-result-wide v0

    invoke-virtual {p1}, Lorg/apache/commons/math3/linear/RealVector;->getNorm()D

    move-result-wide v2

    invoke-virtual {p2}, Lorg/apache/commons/math3/linear/RealVector;->getNorm()D

    move-result-wide v4

    mul-double/2addr v2, v4

    div-double/2addr v0, v2

    return-wide v0
.end method


# virtual methods
.method public value([D)D
    .locals 22
    .param p1, "point"    # [D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    .prologue
    .line 198
    new-instance v10, Lorg/apache/commons/math3/linear/ArrayRealVector;

    move-object/from16 v0, p1

    invoke-direct {v10, v0}, Lorg/apache/commons/math3/linear/ArrayRealVector;-><init>([D)V

    .line 201
    .local v10, "p":Lorg/apache/commons/math3/linear/RealVector;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/analysis/interpolation/MicrosphereInterpolatingFunction;->microsphere:Ljava/util/List;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/apache/commons/math3/analysis/interpolation/MicrosphereInterpolatingFunction$MicrosphereSurfaceElement;

    .line 202
    .local v7, "md":Lorg/apache/commons/math3/analysis/interpolation/MicrosphereInterpolatingFunction$MicrosphereSurfaceElement;
    invoke-virtual {v7}, Lorg/apache/commons/math3/analysis/interpolation/MicrosphereInterpolatingFunction$MicrosphereSurfaceElement;->reset()V

    goto :goto_0

    .line 206
    .end local v7    # "md":Lorg/apache/commons/math3/analysis/interpolation/MicrosphereInterpolatingFunction$MicrosphereSurfaceElement;
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/analysis/interpolation/MicrosphereInterpolatingFunction;->samples:Ljava/util/Map;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .end local v3    # "i$":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/Map$Entry;

    .line 209
    .local v11, "sd":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lorg/apache/commons/math3/linear/RealVector;Ljava/lang/Double;>;"
    invoke-interface {v11}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lorg/apache/commons/math3/linear/RealVector;

    move-object/from16 v0, v18

    invoke-virtual {v0, v10}, Lorg/apache/commons/math3/linear/RealVector;->subtract(Lorg/apache/commons/math3/linear/RealVector;)Lorg/apache/commons/math3/linear/RealVector;

    move-result-object v2

    .line 210
    .local v2, "diff":Lorg/apache/commons/math3/linear/RealVector;
    invoke-virtual {v2}, Lorg/apache/commons/math3/linear/RealVector;->getNorm()D

    move-result-wide v4

    .line 212
    .local v4, "diffNorm":D
    invoke-static {v4, v5}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v18

    const-wide/high16 v20, 0x3ff0000000000000L    # 1.0

    invoke-static/range {v20 .. v21}, Lorg/apache/commons/math3/util/FastMath;->ulp(D)D

    move-result-wide v20

    cmpg-double v18, v18, v20

    if-gez v18, :cond_2

    .line 215
    invoke-interface {v11}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/Double;

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v18

    .line 237
    .end local v2    # "diff":Lorg/apache/commons/math3/linear/RealVector;
    .end local v4    # "diffNorm":D
    .end local v11    # "sd":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lorg/apache/commons/math3/linear/RealVector;Ljava/lang/Double;>;"
    :goto_1
    return-wide v18

    .line 218
    .restart local v2    # "diff":Lorg/apache/commons/math3/linear/RealVector;
    .restart local v4    # "diffNorm":D
    .restart local v11    # "sd":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lorg/apache/commons/math3/linear/RealVector;Ljava/lang/Double;>;"
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/analysis/interpolation/MicrosphereInterpolatingFunction;->microsphere:Ljava/util/List;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/apache/commons/math3/analysis/interpolation/MicrosphereInterpolatingFunction$MicrosphereSurfaceElement;

    .line 219
    .restart local v7    # "md":Lorg/apache/commons/math3/analysis/interpolation/MicrosphereInterpolatingFunction$MicrosphereSurfaceElement;
    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/apache/commons/math3/analysis/interpolation/MicrosphereInterpolatingFunction;->brightnessExponent:D

    move-wide/from16 v18, v0

    move-wide/from16 v0, v18

    neg-double v0, v0

    move-wide/from16 v18, v0

    move-wide/from16 v0, v18

    invoke-static {v4, v5, v0, v1}, Lorg/apache/commons/math3/util/FastMath;->pow(DD)D

    move-result-wide v16

    .line 220
    .local v16, "w":D
    invoke-virtual {v7}, Lorg/apache/commons/math3/analysis/interpolation/MicrosphereInterpolatingFunction$MicrosphereSurfaceElement;->normal()Lorg/apache/commons/math3/linear/RealVector;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v2, v1}, Lorg/apache/commons/math3/analysis/interpolation/MicrosphereInterpolatingFunction;->cosAngle(Lorg/apache/commons/math3/linear/RealVector;Lorg/apache/commons/math3/linear/RealVector;)D

    move-result-wide v18

    mul-double v18, v18, v16

    move-wide/from16 v0, v18

    invoke-virtual {v7, v0, v1, v11}, Lorg/apache/commons/math3/analysis/interpolation/MicrosphereInterpolatingFunction$MicrosphereSurfaceElement;->store(DLjava/util/Map$Entry;)V

    goto :goto_2

    .line 226
    .end local v2    # "diff":Lorg/apache/commons/math3/linear/RealVector;
    .end local v4    # "diffNorm":D
    .end local v6    # "i$":Ljava/util/Iterator;
    .end local v7    # "md":Lorg/apache/commons/math3/analysis/interpolation/MicrosphereInterpolatingFunction$MicrosphereSurfaceElement;
    .end local v11    # "sd":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lorg/apache/commons/math3/linear/RealVector;Ljava/lang/Double;>;"
    .end local v16    # "w":D
    :cond_3
    const-wide/16 v14, 0x0

    .line 227
    .local v14, "value":D
    const-wide/16 v12, 0x0

    .line 228
    .local v12, "totalWeight":D
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/analysis/interpolation/MicrosphereInterpolatingFunction;->microsphere:Ljava/util/List;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .restart local v3    # "i$":Ljava/util/Iterator;
    :cond_4
    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/apache/commons/math3/analysis/interpolation/MicrosphereInterpolatingFunction$MicrosphereSurfaceElement;

    .line 229
    .restart local v7    # "md":Lorg/apache/commons/math3/analysis/interpolation/MicrosphereInterpolatingFunction$MicrosphereSurfaceElement;
    invoke-virtual {v7}, Lorg/apache/commons/math3/analysis/interpolation/MicrosphereInterpolatingFunction$MicrosphereSurfaceElement;->illumination()D

    move-result-wide v8

    .line 230
    .local v8, "iV":D
    invoke-virtual {v7}, Lorg/apache/commons/math3/analysis/interpolation/MicrosphereInterpolatingFunction$MicrosphereSurfaceElement;->sample()Ljava/util/Map$Entry;

    move-result-object v11

    .line 231
    .restart local v11    # "sd":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lorg/apache/commons/math3/linear/RealVector;Ljava/lang/Double;>;"
    if-eqz v11, :cond_4

    .line 232
    invoke-interface {v11}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/Double;

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v18

    mul-double v18, v18, v8

    add-double v14, v14, v18

    .line 233
    add-double/2addr v12, v8

    goto :goto_3

    .line 237
    .end local v7    # "md":Lorg/apache/commons/math3/analysis/interpolation/MicrosphereInterpolatingFunction$MicrosphereSurfaceElement;
    .end local v8    # "iV":D
    .end local v11    # "sd":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lorg/apache/commons/math3/linear/RealVector;Ljava/lang/Double;>;"
    :cond_5
    div-double v18, v14, v12

    goto :goto_1
.end method
