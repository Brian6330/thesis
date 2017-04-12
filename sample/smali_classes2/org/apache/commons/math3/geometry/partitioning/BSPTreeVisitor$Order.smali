.class public final enum Lorg/apache/commons/math3/geometry/partitioning/BSPTreeVisitor$Order;
.super Ljava/lang/Enum;
.source "BSPTreeVisitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/math3/geometry/partitioning/BSPTreeVisitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Order"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/apache/commons/math3/geometry/partitioning/BSPTreeVisitor$Order;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/apache/commons/math3/geometry/partitioning/BSPTreeVisitor$Order;

.field public static final enum MINUS_PLUS_SUB:Lorg/apache/commons/math3/geometry/partitioning/BSPTreeVisitor$Order;

.field public static final enum MINUS_SUB_PLUS:Lorg/apache/commons/math3/geometry/partitioning/BSPTreeVisitor$Order;

.field public static final enum PLUS_MINUS_SUB:Lorg/apache/commons/math3/geometry/partitioning/BSPTreeVisitor$Order;

.field public static final enum PLUS_SUB_MINUS:Lorg/apache/commons/math3/geometry/partitioning/BSPTreeVisitor$Order;

.field public static final enum SUB_MINUS_PLUS:Lorg/apache/commons/math3/geometry/partitioning/BSPTreeVisitor$Order;

.field public static final enum SUB_PLUS_MINUS:Lorg/apache/commons/math3/geometry/partitioning/BSPTreeVisitor$Order;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 57
    new-instance v0, Lorg/apache/commons/math3/geometry/partitioning/BSPTreeVisitor$Order;

    const-string v1, "PLUS_MINUS_SUB"

    invoke-direct {v0, v1, v3}, Lorg/apache/commons/math3/geometry/partitioning/BSPTreeVisitor$Order;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/commons/math3/geometry/partitioning/BSPTreeVisitor$Order;->PLUS_MINUS_SUB:Lorg/apache/commons/math3/geometry/partitioning/BSPTreeVisitor$Order;

    .line 62
    new-instance v0, Lorg/apache/commons/math3/geometry/partitioning/BSPTreeVisitor$Order;

    const-string v1, "PLUS_SUB_MINUS"

    invoke-direct {v0, v1, v4}, Lorg/apache/commons/math3/geometry/partitioning/BSPTreeVisitor$Order;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/commons/math3/geometry/partitioning/BSPTreeVisitor$Order;->PLUS_SUB_MINUS:Lorg/apache/commons/math3/geometry/partitioning/BSPTreeVisitor$Order;

    .line 67
    new-instance v0, Lorg/apache/commons/math3/geometry/partitioning/BSPTreeVisitor$Order;

    const-string v1, "MINUS_PLUS_SUB"

    invoke-direct {v0, v1, v5}, Lorg/apache/commons/math3/geometry/partitioning/BSPTreeVisitor$Order;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/commons/math3/geometry/partitioning/BSPTreeVisitor$Order;->MINUS_PLUS_SUB:Lorg/apache/commons/math3/geometry/partitioning/BSPTreeVisitor$Order;

    .line 72
    new-instance v0, Lorg/apache/commons/math3/geometry/partitioning/BSPTreeVisitor$Order;

    const-string v1, "MINUS_SUB_PLUS"

    invoke-direct {v0, v1, v6}, Lorg/apache/commons/math3/geometry/partitioning/BSPTreeVisitor$Order;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/commons/math3/geometry/partitioning/BSPTreeVisitor$Order;->MINUS_SUB_PLUS:Lorg/apache/commons/math3/geometry/partitioning/BSPTreeVisitor$Order;

    .line 77
    new-instance v0, Lorg/apache/commons/math3/geometry/partitioning/BSPTreeVisitor$Order;

    const-string v1, "SUB_PLUS_MINUS"

    invoke-direct {v0, v1, v7}, Lorg/apache/commons/math3/geometry/partitioning/BSPTreeVisitor$Order;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/commons/math3/geometry/partitioning/BSPTreeVisitor$Order;->SUB_PLUS_MINUS:Lorg/apache/commons/math3/geometry/partitioning/BSPTreeVisitor$Order;

    .line 82
    new-instance v0, Lorg/apache/commons/math3/geometry/partitioning/BSPTreeVisitor$Order;

    const-string v1, "SUB_MINUS_PLUS"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/geometry/partitioning/BSPTreeVisitor$Order;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/commons/math3/geometry/partitioning/BSPTreeVisitor$Order;->SUB_MINUS_PLUS:Lorg/apache/commons/math3/geometry/partitioning/BSPTreeVisitor$Order;

    .line 53
    const/4 v0, 0x6

    new-array v0, v0, [Lorg/apache/commons/math3/geometry/partitioning/BSPTreeVisitor$Order;

    sget-object v1, Lorg/apache/commons/math3/geometry/partitioning/BSPTreeVisitor$Order;->PLUS_MINUS_SUB:Lorg/apache/commons/math3/geometry/partitioning/BSPTreeVisitor$Order;

    aput-object v1, v0, v3

    sget-object v1, Lorg/apache/commons/math3/geometry/partitioning/BSPTreeVisitor$Order;->PLUS_SUB_MINUS:Lorg/apache/commons/math3/geometry/partitioning/BSPTreeVisitor$Order;

    aput-object v1, v0, v4

    sget-object v1, Lorg/apache/commons/math3/geometry/partitioning/BSPTreeVisitor$Order;->MINUS_PLUS_SUB:Lorg/apache/commons/math3/geometry/partitioning/BSPTreeVisitor$Order;

    aput-object v1, v0, v5

    sget-object v1, Lorg/apache/commons/math3/geometry/partitioning/BSPTreeVisitor$Order;->MINUS_SUB_PLUS:Lorg/apache/commons/math3/geometry/partitioning/BSPTreeVisitor$Order;

    aput-object v1, v0, v6

    sget-object v1, Lorg/apache/commons/math3/geometry/partitioning/BSPTreeVisitor$Order;->SUB_PLUS_MINUS:Lorg/apache/commons/math3/geometry/partitioning/BSPTreeVisitor$Order;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lorg/apache/commons/math3/geometry/partitioning/BSPTreeVisitor$Order;->SUB_MINUS_PLUS:Lorg/apache/commons/math3/geometry/partitioning/BSPTreeVisitor$Order;

    aput-object v2, v0, v1

    sput-object v0, Lorg/apache/commons/math3/geometry/partitioning/BSPTreeVisitor$Order;->$VALUES:[Lorg/apache/commons/math3/geometry/partitioning/BSPTreeVisitor$Order;

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
    .line 53
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/apache/commons/math3/geometry/partitioning/BSPTreeVisitor$Order;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 53
    const-class v0, Lorg/apache/commons/math3/geometry/partitioning/BSPTreeVisitor$Order;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/geometry/partitioning/BSPTreeVisitor$Order;

    return-object v0
.end method

.method public static values()[Lorg/apache/commons/math3/geometry/partitioning/BSPTreeVisitor$Order;
    .locals 1

    .prologue
    .line 53
    sget-object v0, Lorg/apache/commons/math3/geometry/partitioning/BSPTreeVisitor$Order;->$VALUES:[Lorg/apache/commons/math3/geometry/partitioning/BSPTreeVisitor$Order;

    invoke-virtual {v0}, [Lorg/apache/commons/math3/geometry/partitioning/BSPTreeVisitor$Order;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/commons/math3/geometry/partitioning/BSPTreeVisitor$Order;

    return-object v0
.end method
