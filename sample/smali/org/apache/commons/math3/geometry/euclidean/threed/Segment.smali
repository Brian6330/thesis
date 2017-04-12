.class public Lorg/apache/commons/math3/geometry/euclidean/threed/Segment;
.super Ljava/lang/Object;
.source "Segment.java"


# instance fields
.field private final end:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

.field private final line:Lorg/apache/commons/math3/geometry/euclidean/threed/Line;

.field private final start:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;


# direct methods
.method public constructor <init>(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;Lorg/apache/commons/math3/geometry/euclidean/threed/Line;)V
    .locals 0
    .param p1, "start"    # Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    .param p2, "end"    # Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    .param p3, "line"    # Lorg/apache/commons/math3/geometry/euclidean/threed/Line;

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Segment;->start:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    .line 41
    iput-object p2, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Segment;->end:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    .line 42
    iput-object p3, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Segment;->line:Lorg/apache/commons/math3/geometry/euclidean/threed/Line;

    .line 43
    return-void
.end method


# virtual methods
.method public getEnd()Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Segment;->end:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    return-object v0
.end method

.method public getLine()Lorg/apache/commons/math3/geometry/euclidean/threed/Line;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Segment;->line:Lorg/apache/commons/math3/geometry/euclidean/threed/Line;

    return-object v0
.end method

.method public getStart()Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Segment;->start:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    return-object v0
.end method
