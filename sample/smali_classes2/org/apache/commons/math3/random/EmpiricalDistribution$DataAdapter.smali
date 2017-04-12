.class abstract Lorg/apache/commons/math3/random/EmpiricalDistribution$DataAdapter;
.super Ljava/lang/Object;
.source "EmpiricalDistribution.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/math3/random/EmpiricalDistribution;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "DataAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/commons/math3/random/EmpiricalDistribution;


# direct methods
.method private constructor <init>(Lorg/apache/commons/math3/random/EmpiricalDistribution;)V
    .locals 0

    .prologue
    .line 314
    iput-object p1, p0, Lorg/apache/commons/math3/random/EmpiricalDistribution$DataAdapter;->this$0:Lorg/apache/commons/math3/random/EmpiricalDistribution;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/apache/commons/math3/random/EmpiricalDistribution;Lorg/apache/commons/math3/random/EmpiricalDistribution$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/apache/commons/math3/random/EmpiricalDistribution;
    .param p2, "x1"    # Lorg/apache/commons/math3/random/EmpiricalDistribution$1;

    .prologue
    .line 314
    invoke-direct {p0, p1}, Lorg/apache/commons/math3/random/EmpiricalDistribution$DataAdapter;-><init>(Lorg/apache/commons/math3/random/EmpiricalDistribution;)V

    return-void
.end method


# virtual methods
.method public abstract computeBinStats()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract computeStats()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
