.class public final enum Lorg/apache/commons/math3/optim/linear/PivotSelectionRule;
.super Ljava/lang/Enum;
.source "PivotSelectionRule.java"

# interfaces
.implements Lorg/apache/commons/math3/optim/OptimizationData;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/apache/commons/math3/optim/linear/PivotSelectionRule;",
        ">;",
        "Lorg/apache/commons/math3/optim/OptimizationData;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/apache/commons/math3/optim/linear/PivotSelectionRule;

.field public static final enum BLAND:Lorg/apache/commons/math3/optim/linear/PivotSelectionRule;

.field public static final enum DANTZIG:Lorg/apache/commons/math3/optim/linear/PivotSelectionRule;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 31
    new-instance v0, Lorg/apache/commons/math3/optim/linear/PivotSelectionRule;

    const-string v1, "DANTZIG"

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/optim/linear/PivotSelectionRule;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/commons/math3/optim/linear/PivotSelectionRule;->DANTZIG:Lorg/apache/commons/math3/optim/linear/PivotSelectionRule;

    .line 37
    new-instance v0, Lorg/apache/commons/math3/optim/linear/PivotSelectionRule;

    const-string v1, "BLAND"

    invoke-direct {v0, v1, v3}, Lorg/apache/commons/math3/optim/linear/PivotSelectionRule;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/commons/math3/optim/linear/PivotSelectionRule;->BLAND:Lorg/apache/commons/math3/optim/linear/PivotSelectionRule;

    .line 26
    const/4 v0, 0x2

    new-array v0, v0, [Lorg/apache/commons/math3/optim/linear/PivotSelectionRule;

    sget-object v1, Lorg/apache/commons/math3/optim/linear/PivotSelectionRule;->DANTZIG:Lorg/apache/commons/math3/optim/linear/PivotSelectionRule;

    aput-object v1, v0, v2

    sget-object v1, Lorg/apache/commons/math3/optim/linear/PivotSelectionRule;->BLAND:Lorg/apache/commons/math3/optim/linear/PivotSelectionRule;

    aput-object v1, v0, v3

    sput-object v0, Lorg/apache/commons/math3/optim/linear/PivotSelectionRule;->$VALUES:[Lorg/apache/commons/math3/optim/linear/PivotSelectionRule;

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
    .line 26
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/apache/commons/math3/optim/linear/PivotSelectionRule;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 26
    const-class v0, Lorg/apache/commons/math3/optim/linear/PivotSelectionRule;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/optim/linear/PivotSelectionRule;

    return-object v0
.end method

.method public static values()[Lorg/apache/commons/math3/optim/linear/PivotSelectionRule;
    .locals 1

    .prologue
    .line 26
    sget-object v0, Lorg/apache/commons/math3/optim/linear/PivotSelectionRule;->$VALUES:[Lorg/apache/commons/math3/optim/linear/PivotSelectionRule;

    invoke-virtual {v0}, [Lorg/apache/commons/math3/optim/linear/PivotSelectionRule;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/commons/math3/optim/linear/PivotSelectionRule;

    return-object v0
.end method
