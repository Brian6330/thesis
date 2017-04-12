.class Lorg/apache/commons/math3/ode/nonstiff/AdamsMoultonIntegrator$Corrector;
.super Ljava/lang/Object;
.source "AdamsMoultonIntegrator.java"

# interfaces
.implements Lorg/apache/commons/math3/linear/RealMatrixPreservingVisitor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/math3/ode/nonstiff/AdamsMoultonIntegrator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Corrector"
.end annotation


# instance fields
.field private final after:[D

.field private final before:[D

.field private final previous:[D

.field private final scaled:[D

.field final synthetic this$0:Lorg/apache/commons/math3/ode/nonstiff/AdamsMoultonIntegrator;


# direct methods
.method public constructor <init>(Lorg/apache/commons/math3/ode/nonstiff/AdamsMoultonIntegrator;[D[D[D)V
    .locals 1
    .param p2, "previous"    # [D
    .param p3, "scaled"    # [D
    .param p4, "state"    # [D

    .prologue
    .line 370
    iput-object p1, p0, Lorg/apache/commons/math3/ode/nonstiff/AdamsMoultonIntegrator$Corrector;->this$0:Lorg/apache/commons/math3/ode/nonstiff/AdamsMoultonIntegrator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 371
    iput-object p2, p0, Lorg/apache/commons/math3/ode/nonstiff/AdamsMoultonIntegrator$Corrector;->previous:[D

    .line 372
    iput-object p3, p0, Lorg/apache/commons/math3/ode/nonstiff/AdamsMoultonIntegrator$Corrector;->scaled:[D

    .line 373
    iput-object p4, p0, Lorg/apache/commons/math3/ode/nonstiff/AdamsMoultonIntegrator$Corrector;->after:[D

    .line 374
    invoke-virtual {p4}, [D->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [D

    iput-object v0, p0, Lorg/apache/commons/math3/ode/nonstiff/AdamsMoultonIntegrator$Corrector;->before:[D

    .line 375
    return-void
.end method


# virtual methods
.method public end()D
    .locals 18

    .prologue
    .line 403
    const-wide/16 v2, 0x0

    .line 404
    .local v2, "error":D
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/commons/math3/ode/nonstiff/AdamsMoultonIntegrator$Corrector;->after:[D

    array-length v5, v5

    if-ge v4, v5, :cond_2

    .line 405
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/commons/math3/ode/nonstiff/AdamsMoultonIntegrator$Corrector;->after:[D

    aget-wide v12, v5, v4

    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/apache/commons/math3/ode/nonstiff/AdamsMoultonIntegrator$Corrector;->previous:[D

    aget-wide v14, v14, v4

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/ode/nonstiff/AdamsMoultonIntegrator$Corrector;->scaled:[D

    move-object/from16 v16, v0

    aget-wide v16, v16, v4

    add-double v14, v14, v16

    add-double/2addr v12, v14

    aput-wide v12, v5, v4

    .line 406
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/commons/math3/ode/nonstiff/AdamsMoultonIntegrator$Corrector;->this$0:Lorg/apache/commons/math3/ode/nonstiff/AdamsMoultonIntegrator;

    iget v5, v5, Lorg/apache/commons/math3/ode/nonstiff/AdamsMoultonIntegrator;->mainSetDimension:I

    if-ge v4, v5, :cond_0

    .line 407
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/commons/math3/ode/nonstiff/AdamsMoultonIntegrator$Corrector;->previous:[D

    aget-wide v12, v5, v4

    invoke-static {v12, v13}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v12

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/commons/math3/ode/nonstiff/AdamsMoultonIntegrator$Corrector;->after:[D

    aget-wide v14, v5, v4

    invoke-static {v14, v15}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v14

    invoke-static {v12, v13, v14, v15}, Lorg/apache/commons/math3/util/FastMath;->max(DD)D

    move-result-wide v10

    .line 408
    .local v10, "yScale":D
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/commons/math3/ode/nonstiff/AdamsMoultonIntegrator$Corrector;->this$0:Lorg/apache/commons/math3/ode/nonstiff/AdamsMoultonIntegrator;

    iget-object v5, v5, Lorg/apache/commons/math3/ode/nonstiff/AdamsMoultonIntegrator;->vecAbsoluteTolerance:[D

    if-nez v5, :cond_1

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/commons/math3/ode/nonstiff/AdamsMoultonIntegrator$Corrector;->this$0:Lorg/apache/commons/math3/ode/nonstiff/AdamsMoultonIntegrator;

    iget-wide v12, v5, Lorg/apache/commons/math3/ode/nonstiff/AdamsMoultonIntegrator;->scalAbsoluteTolerance:D

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/commons/math3/ode/nonstiff/AdamsMoultonIntegrator$Corrector;->this$0:Lorg/apache/commons/math3/ode/nonstiff/AdamsMoultonIntegrator;

    iget-wide v14, v5, Lorg/apache/commons/math3/ode/nonstiff/AdamsMoultonIntegrator;->scalRelativeTolerance:D

    mul-double/2addr v14, v10

    add-double v8, v12, v14

    .line 411
    .local v8, "tol":D
    :goto_1
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/commons/math3/ode/nonstiff/AdamsMoultonIntegrator$Corrector;->after:[D

    aget-wide v12, v5, v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/commons/math3/ode/nonstiff/AdamsMoultonIntegrator$Corrector;->before:[D

    aget-wide v14, v5, v4

    sub-double/2addr v12, v14

    div-double v6, v12, v8

    .line 412
    .local v6, "ratio":D
    mul-double v12, v6, v6

    add-double/2addr v2, v12

    .line 404
    .end local v6    # "ratio":D
    .end local v8    # "tol":D
    .end local v10    # "yScale":D
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 408
    .restart local v10    # "yScale":D
    :cond_1
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/commons/math3/ode/nonstiff/AdamsMoultonIntegrator$Corrector;->this$0:Lorg/apache/commons/math3/ode/nonstiff/AdamsMoultonIntegrator;

    iget-object v5, v5, Lorg/apache/commons/math3/ode/nonstiff/AdamsMoultonIntegrator;->vecAbsoluteTolerance:[D

    aget-wide v12, v5, v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/commons/math3/ode/nonstiff/AdamsMoultonIntegrator$Corrector;->this$0:Lorg/apache/commons/math3/ode/nonstiff/AdamsMoultonIntegrator;

    iget-object v5, v5, Lorg/apache/commons/math3/ode/nonstiff/AdamsMoultonIntegrator;->vecRelativeTolerance:[D

    aget-wide v14, v5, v4

    mul-double/2addr v14, v10

    add-double v8, v12, v14

    goto :goto_1

    .line 416
    .end local v10    # "yScale":D
    :cond_2
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/commons/math3/ode/nonstiff/AdamsMoultonIntegrator$Corrector;->this$0:Lorg/apache/commons/math3/ode/nonstiff/AdamsMoultonIntegrator;

    iget v5, v5, Lorg/apache/commons/math3/ode/nonstiff/AdamsMoultonIntegrator;->mainSetDimension:I

    int-to-double v12, v5

    div-double v12, v2, v12

    invoke-static {v12, v13}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v12

    return-wide v12
.end method

.method public start(IIIIII)V
    .locals 4
    .param p1, "rows"    # I
    .param p2, "columns"    # I
    .param p3, "startRow"    # I
    .param p4, "endRow"    # I
    .param p5, "startColumn"    # I
    .param p6, "endColumn"    # I

    .prologue
    .line 380
    iget-object v0, p0, Lorg/apache/commons/math3/ode/nonstiff/AdamsMoultonIntegrator$Corrector;->after:[D

    const-wide/16 v2, 0x0

    invoke-static {v0, v2, v3}, Ljava/util/Arrays;->fill([DD)V

    .line 381
    return-void
.end method

.method public visit(IID)V
    .locals 5
    .param p1, "row"    # I
    .param p2, "column"    # I
    .param p3, "value"    # D

    .prologue
    .line 385
    and-int/lit8 v0, p1, 0x1

    if-nez v0, :cond_0

    .line 386
    iget-object v0, p0, Lorg/apache/commons/math3/ode/nonstiff/AdamsMoultonIntegrator$Corrector;->after:[D

    aget-wide v2, v0, p2

    sub-double/2addr v2, p3

    aput-wide v2, v0, p2

    .line 390
    :goto_0
    return-void

    .line 388
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/math3/ode/nonstiff/AdamsMoultonIntegrator$Corrector;->after:[D

    aget-wide v2, v0, p2

    add-double/2addr v2, p3

    aput-wide v2, v0, p2

    goto :goto_0
.end method
