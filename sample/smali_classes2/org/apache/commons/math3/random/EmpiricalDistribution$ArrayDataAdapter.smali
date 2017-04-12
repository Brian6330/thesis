.class Lorg/apache/commons/math3/random/EmpiricalDistribution$ArrayDataAdapter;
.super Lorg/apache/commons/math3/random/EmpiricalDistribution$DataAdapter;
.source "EmpiricalDistribution.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/math3/random/EmpiricalDistribution;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ArrayDataAdapter"
.end annotation


# instance fields
.field private inputArray:[D

.field final synthetic this$0:Lorg/apache/commons/math3/random/EmpiricalDistribution;


# direct methods
.method public constructor <init>(Lorg/apache/commons/math3/random/EmpiricalDistribution;[D)V
    .locals 1
    .param p2, "in"    # [D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;
        }
    .end annotation

    .prologue
    .line 394
    iput-object p1, p0, Lorg/apache/commons/math3/random/EmpiricalDistribution$ArrayDataAdapter;->this$0:Lorg/apache/commons/math3/random/EmpiricalDistribution;

    .line 395
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/apache/commons/math3/random/EmpiricalDistribution$DataAdapter;-><init>(Lorg/apache/commons/math3/random/EmpiricalDistribution;Lorg/apache/commons/math3/random/EmpiricalDistribution$1;)V

    .line 396
    invoke-static {p2}, Lorg/apache/commons/math3/util/MathUtils;->checkNotNull(Ljava/lang/Object;)V

    .line 397
    iput-object p2, p0, Lorg/apache/commons/math3/random/EmpiricalDistribution$ArrayDataAdapter;->inputArray:[D

    .line 398
    return-void
.end method


# virtual methods
.method public computeBinStats()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 412
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lorg/apache/commons/math3/random/EmpiricalDistribution$ArrayDataAdapter;->inputArray:[D

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 413
    iget-object v2, p0, Lorg/apache/commons/math3/random/EmpiricalDistribution$ArrayDataAdapter;->this$0:Lorg/apache/commons/math3/random/EmpiricalDistribution;

    invoke-static {v2}, Lorg/apache/commons/math3/random/EmpiricalDistribution;->access$200(Lorg/apache/commons/math3/random/EmpiricalDistribution;)Ljava/util/List;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/commons/math3/random/EmpiricalDistribution$ArrayDataAdapter;->this$0:Lorg/apache/commons/math3/random/EmpiricalDistribution;

    iget-object v4, p0, Lorg/apache/commons/math3/random/EmpiricalDistribution$ArrayDataAdapter;->inputArray:[D

    aget-wide v4, v4, v0

    invoke-static {v3, v4, v5}, Lorg/apache/commons/math3/random/EmpiricalDistribution;->access$100(Lorg/apache/commons/math3/random/EmpiricalDistribution;D)I

    move-result v3

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;

    .line 415
    .local v1, "stats":Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;
    iget-object v2, p0, Lorg/apache/commons/math3/random/EmpiricalDistribution$ArrayDataAdapter;->inputArray:[D

    aget-wide v2, v2, v0

    invoke-virtual {v1, v2, v3}, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;->addValue(D)V

    .line 412
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 417
    .end local v1    # "stats":Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;
    :cond_0
    return-void
.end method

.method public computeStats()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 403
    iget-object v1, p0, Lorg/apache/commons/math3/random/EmpiricalDistribution$ArrayDataAdapter;->this$0:Lorg/apache/commons/math3/random/EmpiricalDistribution;

    new-instance v2, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;

    invoke-direct {v2}, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;-><init>()V

    invoke-static {v1, v2}, Lorg/apache/commons/math3/random/EmpiricalDistribution;->access$302(Lorg/apache/commons/math3/random/EmpiricalDistribution;Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;)Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;

    .line 404
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lorg/apache/commons/math3/random/EmpiricalDistribution$ArrayDataAdapter;->inputArray:[D

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 405
    iget-object v1, p0, Lorg/apache/commons/math3/random/EmpiricalDistribution$ArrayDataAdapter;->this$0:Lorg/apache/commons/math3/random/EmpiricalDistribution;

    invoke-static {v1}, Lorg/apache/commons/math3/random/EmpiricalDistribution;->access$300(Lorg/apache/commons/math3/random/EmpiricalDistribution;)Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/commons/math3/random/EmpiricalDistribution$ArrayDataAdapter;->inputArray:[D

    aget-wide v2, v2, v0

    invoke-virtual {v1, v2, v3}, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;->addValue(D)V

    .line 404
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 407
    :cond_0
    return-void
.end method
