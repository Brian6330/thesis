.class public final enum Lorg/apache/commons/math3/ml/clustering/KMeansPlusPlusClusterer$EmptyClusterStrategy;
.super Ljava/lang/Enum;
.source "KMeansPlusPlusClusterer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/math3/ml/clustering/KMeansPlusPlusClusterer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "EmptyClusterStrategy"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/apache/commons/math3/ml/clustering/KMeansPlusPlusClusterer$EmptyClusterStrategy;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/apache/commons/math3/ml/clustering/KMeansPlusPlusClusterer$EmptyClusterStrategy;

.field public static final enum ERROR:Lorg/apache/commons/math3/ml/clustering/KMeansPlusPlusClusterer$EmptyClusterStrategy;

.field public static final enum FARTHEST_POINT:Lorg/apache/commons/math3/ml/clustering/KMeansPlusPlusClusterer$EmptyClusterStrategy;

.field public static final enum LARGEST_POINTS_NUMBER:Lorg/apache/commons/math3/ml/clustering/KMeansPlusPlusClusterer$EmptyClusterStrategy;

.field public static final enum LARGEST_VARIANCE:Lorg/apache/commons/math3/ml/clustering/KMeansPlusPlusClusterer$EmptyClusterStrategy;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 48
    new-instance v0, Lorg/apache/commons/math3/ml/clustering/KMeansPlusPlusClusterer$EmptyClusterStrategy;

    const-string v1, "LARGEST_VARIANCE"

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/ml/clustering/KMeansPlusPlusClusterer$EmptyClusterStrategy;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/commons/math3/ml/clustering/KMeansPlusPlusClusterer$EmptyClusterStrategy;->LARGEST_VARIANCE:Lorg/apache/commons/math3/ml/clustering/KMeansPlusPlusClusterer$EmptyClusterStrategy;

    .line 51
    new-instance v0, Lorg/apache/commons/math3/ml/clustering/KMeansPlusPlusClusterer$EmptyClusterStrategy;

    const-string v1, "LARGEST_POINTS_NUMBER"

    invoke-direct {v0, v1, v3}, Lorg/apache/commons/math3/ml/clustering/KMeansPlusPlusClusterer$EmptyClusterStrategy;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/commons/math3/ml/clustering/KMeansPlusPlusClusterer$EmptyClusterStrategy;->LARGEST_POINTS_NUMBER:Lorg/apache/commons/math3/ml/clustering/KMeansPlusPlusClusterer$EmptyClusterStrategy;

    .line 54
    new-instance v0, Lorg/apache/commons/math3/ml/clustering/KMeansPlusPlusClusterer$EmptyClusterStrategy;

    const-string v1, "FARTHEST_POINT"

    invoke-direct {v0, v1, v4}, Lorg/apache/commons/math3/ml/clustering/KMeansPlusPlusClusterer$EmptyClusterStrategy;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/commons/math3/ml/clustering/KMeansPlusPlusClusterer$EmptyClusterStrategy;->FARTHEST_POINT:Lorg/apache/commons/math3/ml/clustering/KMeansPlusPlusClusterer$EmptyClusterStrategy;

    .line 57
    new-instance v0, Lorg/apache/commons/math3/ml/clustering/KMeansPlusPlusClusterer$EmptyClusterStrategy;

    const-string v1, "ERROR"

    invoke-direct {v0, v1, v5}, Lorg/apache/commons/math3/ml/clustering/KMeansPlusPlusClusterer$EmptyClusterStrategy;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/commons/math3/ml/clustering/KMeansPlusPlusClusterer$EmptyClusterStrategy;->ERROR:Lorg/apache/commons/math3/ml/clustering/KMeansPlusPlusClusterer$EmptyClusterStrategy;

    .line 45
    const/4 v0, 0x4

    new-array v0, v0, [Lorg/apache/commons/math3/ml/clustering/KMeansPlusPlusClusterer$EmptyClusterStrategy;

    sget-object v1, Lorg/apache/commons/math3/ml/clustering/KMeansPlusPlusClusterer$EmptyClusterStrategy;->LARGEST_VARIANCE:Lorg/apache/commons/math3/ml/clustering/KMeansPlusPlusClusterer$EmptyClusterStrategy;

    aput-object v1, v0, v2

    sget-object v1, Lorg/apache/commons/math3/ml/clustering/KMeansPlusPlusClusterer$EmptyClusterStrategy;->LARGEST_POINTS_NUMBER:Lorg/apache/commons/math3/ml/clustering/KMeansPlusPlusClusterer$EmptyClusterStrategy;

    aput-object v1, v0, v3

    sget-object v1, Lorg/apache/commons/math3/ml/clustering/KMeansPlusPlusClusterer$EmptyClusterStrategy;->FARTHEST_POINT:Lorg/apache/commons/math3/ml/clustering/KMeansPlusPlusClusterer$EmptyClusterStrategy;

    aput-object v1, v0, v4

    sget-object v1, Lorg/apache/commons/math3/ml/clustering/KMeansPlusPlusClusterer$EmptyClusterStrategy;->ERROR:Lorg/apache/commons/math3/ml/clustering/KMeansPlusPlusClusterer$EmptyClusterStrategy;

    aput-object v1, v0, v5

    sput-object v0, Lorg/apache/commons/math3/ml/clustering/KMeansPlusPlusClusterer$EmptyClusterStrategy;->$VALUES:[Lorg/apache/commons/math3/ml/clustering/KMeansPlusPlusClusterer$EmptyClusterStrategy;

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
    .line 45
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/apache/commons/math3/ml/clustering/KMeansPlusPlusClusterer$EmptyClusterStrategy;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 45
    const-class v0, Lorg/apache/commons/math3/ml/clustering/KMeansPlusPlusClusterer$EmptyClusterStrategy;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/ml/clustering/KMeansPlusPlusClusterer$EmptyClusterStrategy;

    return-object v0
.end method

.method public static values()[Lorg/apache/commons/math3/ml/clustering/KMeansPlusPlusClusterer$EmptyClusterStrategy;
    .locals 1

    .prologue
    .line 45
    sget-object v0, Lorg/apache/commons/math3/ml/clustering/KMeansPlusPlusClusterer$EmptyClusterStrategy;->$VALUES:[Lorg/apache/commons/math3/ml/clustering/KMeansPlusPlusClusterer$EmptyClusterStrategy;

    invoke-virtual {v0}, [Lorg/apache/commons/math3/ml/clustering/KMeansPlusPlusClusterer$EmptyClusterStrategy;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/commons/math3/ml/clustering/KMeansPlusPlusClusterer$EmptyClusterStrategy;

    return-object v0
.end method
