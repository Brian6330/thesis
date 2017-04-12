.class Lorg/apache/commons/math3/random/EmpiricalDistribution$StreamDataAdapter;
.super Lorg/apache/commons/math3/random/EmpiricalDistribution$DataAdapter;
.source "EmpiricalDistribution.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/math3/random/EmpiricalDistribution;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StreamDataAdapter"
.end annotation


# instance fields
.field private inputStream:Ljava/io/BufferedReader;

.field final synthetic this$0:Lorg/apache/commons/math3/random/EmpiricalDistribution;


# direct methods
.method public constructor <init>(Lorg/apache/commons/math3/random/EmpiricalDistribution;Ljava/io/BufferedReader;)V
    .locals 1
    .param p2, "in"    # Ljava/io/BufferedReader;

    .prologue
    .line 345
    iput-object p1, p0, Lorg/apache/commons/math3/random/EmpiricalDistribution$StreamDataAdapter;->this$0:Lorg/apache/commons/math3/random/EmpiricalDistribution;

    .line 346
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/apache/commons/math3/random/EmpiricalDistribution$DataAdapter;-><init>(Lorg/apache/commons/math3/random/EmpiricalDistribution;Lorg/apache/commons/math3/random/EmpiricalDistribution$1;)V

    .line 347
    iput-object p2, p0, Lorg/apache/commons/math3/random/EmpiricalDistribution$StreamDataAdapter;->inputStream:Ljava/io/BufferedReader;

    .line 348
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
    .line 353
    const/4 v1, 0x0

    .line 354
    .local v1, "str":Ljava/lang/String;
    const-wide/16 v2, 0x0

    .line 355
    .local v2, "val":D
    :goto_0
    iget-object v4, p0, Lorg/apache/commons/math3/random/EmpiricalDistribution$StreamDataAdapter;->inputStream:Ljava/io/BufferedReader;

    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 356
    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    .line 357
    iget-object v4, p0, Lorg/apache/commons/math3/random/EmpiricalDistribution$StreamDataAdapter;->this$0:Lorg/apache/commons/math3/random/EmpiricalDistribution;

    invoke-static {v4}, Lorg/apache/commons/math3/random/EmpiricalDistribution;->access$200(Lorg/apache/commons/math3/random/EmpiricalDistribution;)Ljava/util/List;

    move-result-object v4

    iget-object v5, p0, Lorg/apache/commons/math3/random/EmpiricalDistribution$StreamDataAdapter;->this$0:Lorg/apache/commons/math3/random/EmpiricalDistribution;

    invoke-static {v5, v2, v3}, Lorg/apache/commons/math3/random/EmpiricalDistribution;->access$100(Lorg/apache/commons/math3/random/EmpiricalDistribution;D)I

    move-result v5

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;

    .line 358
    .local v0, "stats":Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;
    invoke-virtual {v0, v2, v3}, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;->addValue(D)V

    goto :goto_0

    .line 361
    .end local v0    # "stats":Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;
    :cond_0
    iget-object v4, p0, Lorg/apache/commons/math3/random/EmpiricalDistribution$StreamDataAdapter;->inputStream:Ljava/io/BufferedReader;

    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V

    .line 362
    const/4 v4, 0x0

    iput-object v4, p0, Lorg/apache/commons/math3/random/EmpiricalDistribution$StreamDataAdapter;->inputStream:Ljava/io/BufferedReader;

    .line 363
    return-void
.end method

.method public computeStats()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 368
    const/4 v0, 0x0

    .line 369
    .local v0, "str":Ljava/lang/String;
    const-wide/16 v2, 0x0

    .line 370
    .local v2, "val":D
    iget-object v1, p0, Lorg/apache/commons/math3/random/EmpiricalDistribution$StreamDataAdapter;->this$0:Lorg/apache/commons/math3/random/EmpiricalDistribution;

    new-instance v4, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;

    invoke-direct {v4}, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;-><init>()V

    invoke-static {v1, v4}, Lorg/apache/commons/math3/random/EmpiricalDistribution;->access$302(Lorg/apache/commons/math3/random/EmpiricalDistribution;Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;)Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;

    .line 371
    :goto_0
    iget-object v1, p0, Lorg/apache/commons/math3/random/EmpiricalDistribution$StreamDataAdapter;->inputStream:Ljava/io/BufferedReader;

    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 372
    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    .line 373
    iget-object v1, p0, Lorg/apache/commons/math3/random/EmpiricalDistribution$StreamDataAdapter;->this$0:Lorg/apache/commons/math3/random/EmpiricalDistribution;

    invoke-static {v1}, Lorg/apache/commons/math3/random/EmpiricalDistribution;->access$300(Lorg/apache/commons/math3/random/EmpiricalDistribution;)Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;

    move-result-object v1

    invoke-virtual {v1, v2, v3}, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;->addValue(D)V

    goto :goto_0

    .line 375
    :cond_0
    iget-object v1, p0, Lorg/apache/commons/math3/random/EmpiricalDistribution$StreamDataAdapter;->inputStream:Ljava/io/BufferedReader;

    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    .line 376
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/apache/commons/math3/random/EmpiricalDistribution$StreamDataAdapter;->inputStream:Ljava/io/BufferedReader;

    .line 377
    return-void
.end method
