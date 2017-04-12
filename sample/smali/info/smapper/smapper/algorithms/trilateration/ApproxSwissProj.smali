.class public Linfo/smapper/smapper/algorithms/trilateration/ApproxSwissProj;
.super Ljava/lang/Object;
.source "ApproxSwissProj.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 186
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 188
    return-void
.end method

.method private static CHtoWGSheight(DDD)D
    .locals 8
    .param p0, "y"    # D
    .param p2, "x"    # D
    .param p4, "h"    # D

    .prologue
    const-wide v6, 0x412e848000000000L    # 1000000.0

    .line 36
    const-wide v4, 0x41224f8000000000L    # 600000.0

    sub-double v4, p0, v4

    div-double v2, v4, v6

    .line 37
    .local v2, "y_aux":D
    const-wide v4, 0x41086a0000000000L    # 200000.0

    sub-double v4, p2, v4

    div-double v0, v4, v6

    .line 40
    .local v0, "x_aux":D
    const-wide v4, 0x4048c66666666666L    # 49.55

    add-double/2addr v4, p4

    const-wide v6, 0x4029333333333333L    # 12.6

    mul-double/2addr v6, v2

    sub-double/2addr v4, v6

    const-wide v6, 0x4036a3d70a3d70a4L    # 22.64

    mul-double/2addr v6, v0

    sub-double p4, v4, v6

    .line 42
    return-wide p4
.end method

.method public static CHtoWGSlat(DD)D
    .locals 12
    .param p0, "y"    # D
    .param p2, "x"    # D

    .prologue
    .line 49
    const-wide v6, 0x41224f8000000000L    # 600000.0

    sub-double v6, p0, v6

    const-wide v8, 0x412e848000000000L    # 1000000.0

    div-double v4, v6, v8

    .line 50
    .local v4, "y_aux":D
    const-wide v6, 0x41086a0000000000L    # 200000.0

    sub-double v6, p2, v6

    const-wide v8, 0x412e848000000000L    # 1000000.0

    div-double v2, v6, v8

    .line 53
    .local v2, "x_aux":D
    const-wide v6, 0x4030e702fa86437bL    # 16.9023892

    const-wide v8, 0x4009e7fb267c6b8bL    # 3.238272

    mul-double/2addr v8, v2

    add-double/2addr v6, v8

    const-wide v8, 0x3fd157b41bfbdf09L    # 0.270978

    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    .line 54
    invoke-static {v4, v5, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v10

    mul-double/2addr v8, v10

    sub-double/2addr v6, v8

    const-wide v8, 0x3f64b599aa60913aL    # 0.002528

    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    .line 55
    invoke-static {v2, v3, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v10

    mul-double/2addr v8, v10

    sub-double/2addr v6, v8

    const-wide v8, 0x3fa6e2eb1c432ca5L    # 0.0447

    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    .line 56
    invoke-static {v4, v5, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v10

    mul-double/2addr v8, v10

    mul-double/2addr v8, v2

    sub-double/2addr v6, v8

    const-wide v8, 0x3f8cac083126e979L    # 0.014

    const-wide/high16 v10, 0x4008000000000000L    # 3.0

    .line 57
    invoke-static {v2, v3, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v10

    mul-double/2addr v8, v10

    sub-double v0, v6, v8

    .line 60
    .local v0, "lat":D
    const-wide/high16 v6, 0x4059000000000000L    # 100.0

    mul-double/2addr v6, v0

    const-wide/high16 v8, 0x4042000000000000L    # 36.0

    div-double v0, v6, v8

    .line 62
    return-wide v0
.end method

.method public static CHtoWGSlng(DD)D
    .locals 12
    .param p0, "y"    # D
    .param p2, "x"    # D

    .prologue
    const-wide v8, 0x412e848000000000L    # 1000000.0

    .line 69
    const-wide v6, 0x41224f8000000000L    # 600000.0

    sub-double v6, p0, v6

    div-double v4, v6, v8

    .line 70
    .local v4, "y_aux":D
    const-wide v6, 0x41086a0000000000L    # 200000.0

    sub-double v6, p2, v6

    div-double v2, v6, v8

    .line 73
    .local v2, "x_aux":D
    const-wide v6, 0x40056c5bc3753536L    # 2.6779094

    const-wide v8, 0x4012ea7a41e57d9eL    # 4.728982

    mul-double/2addr v8, v4

    add-double/2addr v6, v8

    const-wide v8, 0x3fe953d640e9d51bL    # 0.791484

    mul-double/2addr v8, v4

    mul-double/2addr v8, v2

    add-double/2addr v6, v8

    const-wide v8, 0x3fc0b780346dc5d6L    # 0.1306

    mul-double/2addr v8, v4

    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    .line 74
    invoke-static {v2, v3, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v10

    mul-double/2addr v8, v10

    add-double/2addr v6, v8

    const-wide v8, 0x3fa652bd3c361134L    # 0.0436

    const-wide/high16 v10, 0x4008000000000000L    # 3.0

    .line 75
    invoke-static {v4, v5, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v10

    mul-double/2addr v8, v10

    sub-double v0, v6, v8

    .line 78
    .local v0, "lng":D
    const-wide/high16 v6, 0x4059000000000000L    # 100.0

    mul-double/2addr v6, v0

    const-wide/high16 v8, 0x4042000000000000L    # 36.0

    div-double v0, v6, v8

    .line 80
    return-wide v0
.end method

.method public static DecToSexAngle(D)D
    .locals 10
    .param p0, "dec"    # D

    .prologue
    const-wide/high16 v8, 0x404e000000000000L    # 60.0

    .line 85
    invoke-static {p0, p1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v4

    double-to-int v0, v4

    .line 86
    .local v0, "deg":I
    int-to-double v4, v0

    sub-double v4, p0, v4

    mul-double/2addr v4, v8

    invoke-static {v4, v5}, Ljava/lang/Math;->floor(D)D

    move-result-wide v4

    double-to-int v1, v4

    .line 87
    .local v1, "min":I
    int-to-double v4, v0

    sub-double v4, p0, v4

    mul-double/2addr v4, v8

    int-to-double v6, v1

    sub-double/2addr v4, v6

    mul-double v2, v4, v8

    .line 89
    .local v2, "sec":D
    int-to-double v4, v1

    mul-double/2addr v4, v8

    add-double/2addr v4, v2

    int-to-double v6, v0

    const-wide v8, 0x40ac200000000000L    # 3600.0

    mul-double/2addr v6, v8

    add-double/2addr v4, v6

    return-wide v4
.end method

.method public static LV03toWGS84(DDD)[D
    .locals 4
    .param p0, "east"    # D
    .param p2, "north"    # D
    .param p4, "height"    # D

    .prologue
    .line 103
    const/4 v1, 0x3

    new-array v0, v1, [D

    .line 105
    .local v0, "d":[D
    const/4 v1, 0x0

    invoke-static {p0, p1, p2, p3}, Linfo/smapper/smapper/algorithms/trilateration/ApproxSwissProj;->CHtoWGSlat(DD)D

    move-result-wide v2

    aput-wide v2, v0, v1

    .line 106
    const/4 v1, 0x1

    invoke-static {p0, p1, p2, p3}, Linfo/smapper/smapper/algorithms/trilateration/ApproxSwissProj;->CHtoWGSlng(DD)D

    move-result-wide v2

    aput-wide v2, v0, v1

    .line 107
    const/4 v1, 0x2

    invoke-static/range {p0 .. p5}, Linfo/smapper/smapper/algorithms/trilateration/ApproxSwissProj;->CHtoWGSheight(DDD)D

    move-result-wide v2

    aput-wide v2, v0, v1

    .line 108
    return-object v0
.end method

.method public static WGS84toLV03(DDD)[D
    .locals 4
    .param p0, "latitude"    # D
    .param p2, "longitude"    # D
    .param p4, "ellHeight"    # D

    .prologue
    .line 124
    const/4 v1, 0x3

    new-array v0, v1, [D

    .line 126
    .local v0, "d":[D
    const/4 v1, 0x0

    invoke-static {p0, p1, p2, p3}, Linfo/smapper/smapper/algorithms/trilateration/ApproxSwissProj;->WGStoCHy(DD)D

    move-result-wide v2

    aput-wide v2, v0, v1

    .line 127
    const/4 v1, 0x1

    invoke-static {p0, p1, p2, p3}, Linfo/smapper/smapper/algorithms/trilateration/ApproxSwissProj;->WGStoCHx(DD)D

    move-result-wide v2

    aput-wide v2, v0, v1

    .line 128
    const/4 v1, 0x2

    invoke-static/range {p0 .. p5}, Linfo/smapper/smapper/algorithms/trilateration/ApproxSwissProj;->WGStoCHh(DDD)D

    move-result-wide v2

    aput-wide v2, v0, v1

    .line 129
    return-object v0
.end method

.method private static WGStoCHh(DDD)D
    .locals 8
    .param p0, "lat"    # D
    .param p2, "lng"    # D
    .param p4, "h"    # D

    .prologue
    const-wide v6, 0x40c3880000000000L    # 10000.0

    .line 135
    invoke-static {p0, p1}, Linfo/smapper/smapper/algorithms/trilateration/ApproxSwissProj;->DecToSexAngle(D)D

    move-result-wide p0

    .line 136
    invoke-static {p2, p3}, Linfo/smapper/smapper/algorithms/trilateration/ApproxSwissProj;->DecToSexAngle(D)D

    move-result-wide p2

    .line 139
    const-wide v4, 0x4104a22547ae147bL    # 169028.66

    sub-double v4, p0, v4

    div-double v0, v4, v6

    .line 140
    .local v0, "lat_aux":D
    const-wide v4, 0x40da27a000000000L    # 26782.5

    sub-double v4, p2, v4

    div-double v2, v4, v6

    .line 143
    .local v2, "lng_aux":D
    const-wide v4, 0x4048c66666666666L    # 49.55

    sub-double v4, p4, v4

    const-wide v6, 0x4005d70a3d70a3d7L    # 2.73

    mul-double/2addr v6, v2

    add-double/2addr v4, v6

    const-wide v6, 0x401bc28f5c28f5c3L    # 6.94

    mul-double/2addr v6, v0

    add-double p4, v4, v6

    .line 145
    return-wide p4
.end method

.method public static WGStoCHx(DD)D
    .locals 12
    .param p0, "lat"    # D
    .param p2, "lng"    # D

    .prologue
    .line 151
    invoke-static {p0, p1}, Linfo/smapper/smapper/algorithms/trilateration/ApproxSwissProj;->DecToSexAngle(D)D

    move-result-wide p0

    .line 152
    invoke-static {p2, p3}, Linfo/smapper/smapper/algorithms/trilateration/ApproxSwissProj;->DecToSexAngle(D)D

    move-result-wide p2

    .line 155
    const-wide v6, 0x4104a22547ae147bL    # 169028.66

    sub-double v6, p0, v6

    const-wide v8, 0x40c3880000000000L    # 10000.0

    div-double v0, v6, v8

    .line 156
    .local v0, "lat_aux":D
    const-wide v6, 0x40da27a000000000L    # 26782.5

    sub-double v6, p2, v6

    const-wide v8, 0x40c3880000000000L    # 10000.0

    div-double v2, v6, v8

    .line 159
    .local v2, "lng_aux":D
    const-wide v6, 0x41086e988f5c28f6L    # 200147.07

    const-wide v8, 0x4112d91fcccccccdL    # 308807.95

    mul-double/2addr v8, v0

    add-double/2addr v6, v8

    const-wide v8, 0x40ad428000000000L    # 3745.25

    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    .line 160
    invoke-static {v2, v3, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v10

    mul-double/2addr v8, v10

    add-double/2addr v6, v8

    const-wide v8, 0x40532851eb851eb8L    # 76.63

    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    invoke-static {v0, v1, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v10

    mul-double/2addr v8, v10

    add-double/2addr v6, v8

    const-wide v8, 0x406851eb851eb852L    # 194.56

    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    .line 161
    invoke-static {v2, v3, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v10

    mul-double/2addr v8, v10

    mul-double/2addr v8, v0

    sub-double/2addr v6, v8

    const-wide v8, 0x405df28f5c28f5c3L    # 119.79

    const-wide/high16 v10, 0x4008000000000000L    # 3.0

    .line 162
    invoke-static {v0, v1, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v10

    mul-double/2addr v8, v10

    add-double v4, v6, v8

    .line 164
    .local v4, "x":D
    return-wide v4
.end method

.method public static WGStoCHy(DD)D
    .locals 12
    .param p0, "lat"    # D
    .param p2, "lng"    # D

    .prologue
    const-wide v8, 0x40c3880000000000L    # 10000.0

    .line 170
    invoke-static {p0, p1}, Linfo/smapper/smapper/algorithms/trilateration/ApproxSwissProj;->DecToSexAngle(D)D

    move-result-wide p0

    .line 171
    invoke-static {p2, p3}, Linfo/smapper/smapper/algorithms/trilateration/ApproxSwissProj;->DecToSexAngle(D)D

    move-result-wide p2

    .line 174
    const-wide v6, 0x4104a22547ae147bL    # 169028.66

    sub-double v6, p0, v6

    div-double v0, v6, v8

    .line 175
    .local v0, "lat_aux":D
    const-wide v6, 0x40da27a000000000L    # 26782.5

    sub-double v6, p2, v6

    div-double v2, v6, v8

    .line 178
    .local v2, "lng_aux":D
    const-wide v6, 0x41225010bd70a3d7L    # 600072.37

    const-wide v8, 0x4109cfff70a3d70aL    # 211455.93

    mul-double/2addr v8, v2

    add-double/2addr v6, v8

    const-wide v8, 0x40c55d4147ae147bL    # 10938.51

    mul-double/2addr v8, v2

    mul-double/2addr v8, v0

    sub-double/2addr v6, v8

    const-wide v8, 0x3fd70a3d70a3d70aL    # 0.36

    mul-double/2addr v8, v2

    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    .line 180
    invoke-static {v0, v1, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v10

    mul-double/2addr v8, v10

    sub-double/2addr v6, v8

    const-wide v8, 0x4046451eb851eb85L    # 44.54

    const-wide/high16 v10, 0x4008000000000000L    # 3.0

    .line 181
    invoke-static {v2, v3, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v10

    mul-double/2addr v8, v10

    sub-double v4, v6, v8

    .line 183
    .local v4, "y":D
    return-wide v4
.end method
