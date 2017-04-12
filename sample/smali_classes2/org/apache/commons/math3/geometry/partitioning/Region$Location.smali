.class public final enum Lorg/apache/commons/math3/geometry/partitioning/Region$Location;
.super Ljava/lang/Enum;
.source "Region.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/math3/geometry/partitioning/Region;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Location"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/apache/commons/math3/geometry/partitioning/Region$Location;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/apache/commons/math3/geometry/partitioning/Region$Location;

.field public static final enum BOUNDARY:Lorg/apache/commons/math3/geometry/partitioning/Region$Location;

.field public static final enum INSIDE:Lorg/apache/commons/math3/geometry/partitioning/Region$Location;

.field public static final enum OUTSIDE:Lorg/apache/commons/math3/geometry/partitioning/Region$Location;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 58
    new-instance v0, Lorg/apache/commons/math3/geometry/partitioning/Region$Location;

    const-string v1, "INSIDE"

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/geometry/partitioning/Region$Location;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/commons/math3/geometry/partitioning/Region$Location;->INSIDE:Lorg/apache/commons/math3/geometry/partitioning/Region$Location;

    .line 61
    new-instance v0, Lorg/apache/commons/math3/geometry/partitioning/Region$Location;

    const-string v1, "OUTSIDE"

    invoke-direct {v0, v1, v3}, Lorg/apache/commons/math3/geometry/partitioning/Region$Location;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/commons/math3/geometry/partitioning/Region$Location;->OUTSIDE:Lorg/apache/commons/math3/geometry/partitioning/Region$Location;

    .line 64
    new-instance v0, Lorg/apache/commons/math3/geometry/partitioning/Region$Location;

    const-string v1, "BOUNDARY"

    invoke-direct {v0, v1, v4}, Lorg/apache/commons/math3/geometry/partitioning/Region$Location;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/commons/math3/geometry/partitioning/Region$Location;->BOUNDARY:Lorg/apache/commons/math3/geometry/partitioning/Region$Location;

    .line 56
    const/4 v0, 0x3

    new-array v0, v0, [Lorg/apache/commons/math3/geometry/partitioning/Region$Location;

    sget-object v1, Lorg/apache/commons/math3/geometry/partitioning/Region$Location;->INSIDE:Lorg/apache/commons/math3/geometry/partitioning/Region$Location;

    aput-object v1, v0, v2

    sget-object v1, Lorg/apache/commons/math3/geometry/partitioning/Region$Location;->OUTSIDE:Lorg/apache/commons/math3/geometry/partitioning/Region$Location;

    aput-object v1, v0, v3

    sget-object v1, Lorg/apache/commons/math3/geometry/partitioning/Region$Location;->BOUNDARY:Lorg/apache/commons/math3/geometry/partitioning/Region$Location;

    aput-object v1, v0, v4

    sput-object v0, Lorg/apache/commons/math3/geometry/partitioning/Region$Location;->$VALUES:[Lorg/apache/commons/math3/geometry/partitioning/Region$Location;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 56
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/apache/commons/math3/geometry/partitioning/Region$Location;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 56
    const-class v0, Lorg/apache/commons/math3/geometry/partitioning/Region$Location;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/geometry/partitioning/Region$Location;

    return-object v0
.end method

.method public static values()[Lorg/apache/commons/math3/geometry/partitioning/Region$Location;
    .locals 1

    .prologue
    .line 56
    sget-object v0, Lorg/apache/commons/math3/geometry/partitioning/Region$Location;->$VALUES:[Lorg/apache/commons/math3/geometry/partitioning/Region$Location;

    invoke-virtual {v0}, [Lorg/apache/commons/math3/geometry/partitioning/Region$Location;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/commons/math3/geometry/partitioning/Region$Location;

    return-object v0
.end method
