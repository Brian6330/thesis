.class public final Lorg/apache/commons/math3/geometry/euclidean/threed/RotationOrder;
.super Ljava/lang/Object;
.source "RotationOrder.java"


# static fields
.field public static final XYX:Lorg/apache/commons/math3/geometry/euclidean/threed/RotationOrder;

.field public static final XYZ:Lorg/apache/commons/math3/geometry/euclidean/threed/RotationOrder;

.field public static final XZX:Lorg/apache/commons/math3/geometry/euclidean/threed/RotationOrder;

.field public static final XZY:Lorg/apache/commons/math3/geometry/euclidean/threed/RotationOrder;

.field public static final YXY:Lorg/apache/commons/math3/geometry/euclidean/threed/RotationOrder;

.field public static final YXZ:Lorg/apache/commons/math3/geometry/euclidean/threed/RotationOrder;

.field public static final YZX:Lorg/apache/commons/math3/geometry/euclidean/threed/RotationOrder;

.field public static final YZY:Lorg/apache/commons/math3/geometry/euclidean/threed/RotationOrder;

.field public static final ZXY:Lorg/apache/commons/math3/geometry/euclidean/threed/RotationOrder;

.field public static final ZXZ:Lorg/apache/commons/math3/geometry/euclidean/threed/RotationOrder;

.field public static final ZYX:Lorg/apache/commons/math3/geometry/euclidean/threed/RotationOrder;

.field public static final ZYZ:Lorg/apache/commons/math3/geometry/euclidean/threed/RotationOrder;


# instance fields
.field private final a1:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

.field private final a2:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

.field private final a3:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

.field private final name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 37
    new-instance v0, Lorg/apache/commons/math3/geometry/euclidean/threed/RotationOrder;

    const-string v1, "XYZ"

    sget-object v2, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->PLUS_I:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    sget-object v3, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->PLUS_J:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    sget-object v4, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->PLUS_K:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/apache/commons/math3/geometry/euclidean/threed/RotationOrder;-><init>(Ljava/lang/String;Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)V

    sput-object v0, Lorg/apache/commons/math3/geometry/euclidean/threed/RotationOrder;->XYZ:Lorg/apache/commons/math3/geometry/euclidean/threed/RotationOrder;

    .line 44
    new-instance v0, Lorg/apache/commons/math3/geometry/euclidean/threed/RotationOrder;

    const-string v1, "XZY"

    sget-object v2, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->PLUS_I:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    sget-object v3, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->PLUS_K:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    sget-object v4, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->PLUS_J:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/apache/commons/math3/geometry/euclidean/threed/RotationOrder;-><init>(Ljava/lang/String;Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)V

    sput-object v0, Lorg/apache/commons/math3/geometry/euclidean/threed/RotationOrder;->XZY:Lorg/apache/commons/math3/geometry/euclidean/threed/RotationOrder;

    .line 51
    new-instance v0, Lorg/apache/commons/math3/geometry/euclidean/threed/RotationOrder;

    const-string v1, "YXZ"

    sget-object v2, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->PLUS_J:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    sget-object v3, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->PLUS_I:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    sget-object v4, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->PLUS_K:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/apache/commons/math3/geometry/euclidean/threed/RotationOrder;-><init>(Ljava/lang/String;Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)V

    sput-object v0, Lorg/apache/commons/math3/geometry/euclidean/threed/RotationOrder;->YXZ:Lorg/apache/commons/math3/geometry/euclidean/threed/RotationOrder;

    .line 58
    new-instance v0, Lorg/apache/commons/math3/geometry/euclidean/threed/RotationOrder;

    const-string v1, "YZX"

    sget-object v2, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->PLUS_J:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    sget-object v3, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->PLUS_K:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    sget-object v4, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->PLUS_I:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/apache/commons/math3/geometry/euclidean/threed/RotationOrder;-><init>(Ljava/lang/String;Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)V

    sput-object v0, Lorg/apache/commons/math3/geometry/euclidean/threed/RotationOrder;->YZX:Lorg/apache/commons/math3/geometry/euclidean/threed/RotationOrder;

    .line 65
    new-instance v0, Lorg/apache/commons/math3/geometry/euclidean/threed/RotationOrder;

    const-string v1, "ZXY"

    sget-object v2, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->PLUS_K:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    sget-object v3, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->PLUS_I:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    sget-object v4, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->PLUS_J:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/apache/commons/math3/geometry/euclidean/threed/RotationOrder;-><init>(Ljava/lang/String;Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)V

    sput-object v0, Lorg/apache/commons/math3/geometry/euclidean/threed/RotationOrder;->ZXY:Lorg/apache/commons/math3/geometry/euclidean/threed/RotationOrder;

    .line 72
    new-instance v0, Lorg/apache/commons/math3/geometry/euclidean/threed/RotationOrder;

    const-string v1, "ZYX"

    sget-object v2, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->PLUS_K:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    sget-object v3, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->PLUS_J:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    sget-object v4, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->PLUS_I:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/apache/commons/math3/geometry/euclidean/threed/RotationOrder;-><init>(Ljava/lang/String;Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)V

    sput-object v0, Lorg/apache/commons/math3/geometry/euclidean/threed/RotationOrder;->ZYX:Lorg/apache/commons/math3/geometry/euclidean/threed/RotationOrder;

    .line 79
    new-instance v0, Lorg/apache/commons/math3/geometry/euclidean/threed/RotationOrder;

    const-string v1, "XYX"

    sget-object v2, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->PLUS_I:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    sget-object v3, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->PLUS_J:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    sget-object v4, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->PLUS_I:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/apache/commons/math3/geometry/euclidean/threed/RotationOrder;-><init>(Ljava/lang/String;Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)V

    sput-object v0, Lorg/apache/commons/math3/geometry/euclidean/threed/RotationOrder;->XYX:Lorg/apache/commons/math3/geometry/euclidean/threed/RotationOrder;

    .line 86
    new-instance v0, Lorg/apache/commons/math3/geometry/euclidean/threed/RotationOrder;

    const-string v1, "XZX"

    sget-object v2, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->PLUS_I:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    sget-object v3, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->PLUS_K:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    sget-object v4, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->PLUS_I:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/apache/commons/math3/geometry/euclidean/threed/RotationOrder;-><init>(Ljava/lang/String;Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)V

    sput-object v0, Lorg/apache/commons/math3/geometry/euclidean/threed/RotationOrder;->XZX:Lorg/apache/commons/math3/geometry/euclidean/threed/RotationOrder;

    .line 93
    new-instance v0, Lorg/apache/commons/math3/geometry/euclidean/threed/RotationOrder;

    const-string v1, "YXY"

    sget-object v2, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->PLUS_J:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    sget-object v3, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->PLUS_I:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    sget-object v4, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->PLUS_J:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/apache/commons/math3/geometry/euclidean/threed/RotationOrder;-><init>(Ljava/lang/String;Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)V

    sput-object v0, Lorg/apache/commons/math3/geometry/euclidean/threed/RotationOrder;->YXY:Lorg/apache/commons/math3/geometry/euclidean/threed/RotationOrder;

    .line 100
    new-instance v0, Lorg/apache/commons/math3/geometry/euclidean/threed/RotationOrder;

    const-string v1, "YZY"

    sget-object v2, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->PLUS_J:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    sget-object v3, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->PLUS_K:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    sget-object v4, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->PLUS_J:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/apache/commons/math3/geometry/euclidean/threed/RotationOrder;-><init>(Ljava/lang/String;Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)V

    sput-object v0, Lorg/apache/commons/math3/geometry/euclidean/threed/RotationOrder;->YZY:Lorg/apache/commons/math3/geometry/euclidean/threed/RotationOrder;

    .line 107
    new-instance v0, Lorg/apache/commons/math3/geometry/euclidean/threed/RotationOrder;

    const-string v1, "ZXZ"

    sget-object v2, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->PLUS_K:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    sget-object v3, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->PLUS_I:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    sget-object v4, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->PLUS_K:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/apache/commons/math3/geometry/euclidean/threed/RotationOrder;-><init>(Ljava/lang/String;Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)V

    sput-object v0, Lorg/apache/commons/math3/geometry/euclidean/threed/RotationOrder;->ZXZ:Lorg/apache/commons/math3/geometry/euclidean/threed/RotationOrder;

    .line 114
    new-instance v0, Lorg/apache/commons/math3/geometry/euclidean/threed/RotationOrder;

    const-string v1, "ZYZ"

    sget-object v2, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->PLUS_K:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    sget-object v3, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->PLUS_J:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    sget-object v4, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->PLUS_K:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/apache/commons/math3/geometry/euclidean/threed/RotationOrder;-><init>(Ljava/lang/String;Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)V

    sput-object v0, Lorg/apache/commons/math3/geometry/euclidean/threed/RotationOrder;->ZYZ:Lorg/apache/commons/math3/geometry/euclidean/threed/RotationOrder;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "a1"    # Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    .param p3, "a2"    # Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    .param p4, "a3"    # Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    .prologue
    .line 138
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 139
    iput-object p1, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/RotationOrder;->name:Ljava/lang/String;

    .line 140
    iput-object p2, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/RotationOrder;->a1:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    .line 141
    iput-object p3, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/RotationOrder;->a2:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    .line 142
    iput-object p4, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/RotationOrder;->a3:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    .line 143
    return-void
.end method


# virtual methods
.method public getA1()Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    .locals 1

    .prologue
    .line 157
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/RotationOrder;->a1:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    return-object v0
.end method

.method public getA2()Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    .locals 1

    .prologue
    .line 164
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/RotationOrder;->a2:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    return-object v0
.end method

.method public getA3()Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    .locals 1

    .prologue
    .line 171
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/RotationOrder;->a3:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 150
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/RotationOrder;->name:Ljava/lang/String;

    return-object v0
.end method
