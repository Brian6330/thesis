.class public Lorg/apache/commons/math3/filter/KalmanFilter;
.super Ljava/lang/Object;
.source "KalmanFilter.java"


# instance fields
.field private controlMatrix:Lorg/apache/commons/math3/linear/RealMatrix;

.field private errorCovariance:Lorg/apache/commons/math3/linear/RealMatrix;

.field private measurementMatrix:Lorg/apache/commons/math3/linear/RealMatrix;

.field private measurementMatrixT:Lorg/apache/commons/math3/linear/RealMatrix;

.field private final measurementModel:Lorg/apache/commons/math3/filter/MeasurementModel;

.field private final processModel:Lorg/apache/commons/math3/filter/ProcessModel;

.field private stateEstimation:Lorg/apache/commons/math3/linear/RealVector;

.field private transitionMatrix:Lorg/apache/commons/math3/linear/RealMatrix;

.field private transitionMatrixT:Lorg/apache/commons/math3/linear/RealMatrix;


# direct methods
.method public constructor <init>(Lorg/apache/commons/math3/filter/ProcessModel;Lorg/apache/commons/math3/filter/MeasurementModel;)V
    .locals 7
    .param p1, "process"    # Lorg/apache/commons/math3/filter/ProcessModel;
    .param p2, "measurement"    # Lorg/apache/commons/math3/filter/MeasurementModel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;,
            Lorg/apache/commons/math3/linear/NonSquareMatrixException;,
            Lorg/apache/commons/math3/exception/DimensionMismatchException;,
            Lorg/apache/commons/math3/linear/MatrixDimensionMismatchException;
        }
    .end annotation

    .prologue
    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 123
    invoke-static {p1}, Lorg/apache/commons/math3/util/MathUtils;->checkNotNull(Ljava/lang/Object;)V

    .line 124
    invoke-static {p2}, Lorg/apache/commons/math3/util/MathUtils;->checkNotNull(Ljava/lang/Object;)V

    .line 126
    iput-object p1, p0, Lorg/apache/commons/math3/filter/KalmanFilter;->processModel:Lorg/apache/commons/math3/filter/ProcessModel;

    .line 127
    iput-object p2, p0, Lorg/apache/commons/math3/filter/KalmanFilter;->measurementModel:Lorg/apache/commons/math3/filter/MeasurementModel;

    .line 129
    iget-object v2, p0, Lorg/apache/commons/math3/filter/KalmanFilter;->processModel:Lorg/apache/commons/math3/filter/ProcessModel;

    invoke-interface {v2}, Lorg/apache/commons/math3/filter/ProcessModel;->getStateTransitionMatrix()Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v2

    iput-object v2, p0, Lorg/apache/commons/math3/filter/KalmanFilter;->transitionMatrix:Lorg/apache/commons/math3/linear/RealMatrix;

    .line 130
    iget-object v2, p0, Lorg/apache/commons/math3/filter/KalmanFilter;->transitionMatrix:Lorg/apache/commons/math3/linear/RealMatrix;

    invoke-static {v2}, Lorg/apache/commons/math3/util/MathUtils;->checkNotNull(Ljava/lang/Object;)V

    .line 131
    iget-object v2, p0, Lorg/apache/commons/math3/filter/KalmanFilter;->transitionMatrix:Lorg/apache/commons/math3/linear/RealMatrix;

    invoke-interface {v2}, Lorg/apache/commons/math3/linear/RealMatrix;->transpose()Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v2

    iput-object v2, p0, Lorg/apache/commons/math3/filter/KalmanFilter;->transitionMatrixT:Lorg/apache/commons/math3/linear/RealMatrix;

    .line 134
    iget-object v2, p0, Lorg/apache/commons/math3/filter/KalmanFilter;->processModel:Lorg/apache/commons/math3/filter/ProcessModel;

    invoke-interface {v2}, Lorg/apache/commons/math3/filter/ProcessModel;->getControlMatrix()Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v2

    if-nez v2, :cond_0

    .line 135
    new-instance v2, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    invoke-direct {v2}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;-><init>()V

    iput-object v2, p0, Lorg/apache/commons/math3/filter/KalmanFilter;->controlMatrix:Lorg/apache/commons/math3/linear/RealMatrix;

    .line 140
    :goto_0
    iget-object v2, p0, Lorg/apache/commons/math3/filter/KalmanFilter;->measurementModel:Lorg/apache/commons/math3/filter/MeasurementModel;

    invoke-interface {v2}, Lorg/apache/commons/math3/filter/MeasurementModel;->getMeasurementMatrix()Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v2

    iput-object v2, p0, Lorg/apache/commons/math3/filter/KalmanFilter;->measurementMatrix:Lorg/apache/commons/math3/linear/RealMatrix;

    .line 141
    iget-object v2, p0, Lorg/apache/commons/math3/filter/KalmanFilter;->measurementMatrix:Lorg/apache/commons/math3/linear/RealMatrix;

    invoke-static {v2}, Lorg/apache/commons/math3/util/MathUtils;->checkNotNull(Ljava/lang/Object;)V

    .line 142
    iget-object v2, p0, Lorg/apache/commons/math3/filter/KalmanFilter;->measurementMatrix:Lorg/apache/commons/math3/linear/RealMatrix;

    invoke-interface {v2}, Lorg/apache/commons/math3/linear/RealMatrix;->transpose()Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v2

    iput-object v2, p0, Lorg/apache/commons/math3/filter/KalmanFilter;->measurementMatrixT:Lorg/apache/commons/math3/linear/RealMatrix;

    .line 147
    iget-object v2, p0, Lorg/apache/commons/math3/filter/KalmanFilter;->processModel:Lorg/apache/commons/math3/filter/ProcessModel;

    invoke-interface {v2}, Lorg/apache/commons/math3/filter/ProcessModel;->getProcessNoise()Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v1

    .line 148
    .local v1, "processNoise":Lorg/apache/commons/math3/linear/RealMatrix;
    invoke-static {v1}, Lorg/apache/commons/math3/util/MathUtils;->checkNotNull(Ljava/lang/Object;)V

    .line 149
    iget-object v2, p0, Lorg/apache/commons/math3/filter/KalmanFilter;->measurementModel:Lorg/apache/commons/math3/filter/MeasurementModel;

    invoke-interface {v2}, Lorg/apache/commons/math3/filter/MeasurementModel;->getMeasurementNoise()Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v0

    .line 150
    .local v0, "measNoise":Lorg/apache/commons/math3/linear/RealMatrix;
    invoke-static {v0}, Lorg/apache/commons/math3/util/MathUtils;->checkNotNull(Ljava/lang/Object;)V

    .line 154
    iget-object v2, p0, Lorg/apache/commons/math3/filter/KalmanFilter;->processModel:Lorg/apache/commons/math3/filter/ProcessModel;

    invoke-interface {v2}, Lorg/apache/commons/math3/filter/ProcessModel;->getInitialStateEstimate()Lorg/apache/commons/math3/linear/RealVector;

    move-result-object v2

    if-nez v2, :cond_1

    .line 155
    new-instance v2, Lorg/apache/commons/math3/linear/ArrayRealVector;

    iget-object v3, p0, Lorg/apache/commons/math3/filter/KalmanFilter;->transitionMatrix:Lorg/apache/commons/math3/linear/RealMatrix;

    invoke-interface {v3}, Lorg/apache/commons/math3/linear/RealMatrix;->getColumnDimension()I

    move-result v3

    invoke-direct {v2, v3}, Lorg/apache/commons/math3/linear/ArrayRealVector;-><init>(I)V

    iput-object v2, p0, Lorg/apache/commons/math3/filter/KalmanFilter;->stateEstimation:Lorg/apache/commons/math3/linear/RealVector;

    .line 160
    :goto_1
    iget-object v2, p0, Lorg/apache/commons/math3/filter/KalmanFilter;->transitionMatrix:Lorg/apache/commons/math3/linear/RealMatrix;

    invoke-interface {v2}, Lorg/apache/commons/math3/linear/RealMatrix;->getColumnDimension()I

    move-result v2

    iget-object v3, p0, Lorg/apache/commons/math3/filter/KalmanFilter;->stateEstimation:Lorg/apache/commons/math3/linear/RealVector;

    invoke-virtual {v3}, Lorg/apache/commons/math3/linear/RealVector;->getDimension()I

    move-result v3

    if-eq v2, v3, :cond_2

    .line 161
    new-instance v2, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    iget-object v3, p0, Lorg/apache/commons/math3/filter/KalmanFilter;->transitionMatrix:Lorg/apache/commons/math3/linear/RealMatrix;

    invoke-interface {v3}, Lorg/apache/commons/math3/linear/RealMatrix;->getColumnDimension()I

    move-result v3

    iget-object v4, p0, Lorg/apache/commons/math3/filter/KalmanFilter;->stateEstimation:Lorg/apache/commons/math3/linear/RealVector;

    invoke-virtual {v4}, Lorg/apache/commons/math3/linear/RealVector;->getDimension()I

    move-result v4

    invoke-direct {v2, v3, v4}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v2

    .line 137
    .end local v0    # "measNoise":Lorg/apache/commons/math3/linear/RealMatrix;
    .end local v1    # "processNoise":Lorg/apache/commons/math3/linear/RealMatrix;
    :cond_0
    iget-object v2, p0, Lorg/apache/commons/math3/filter/KalmanFilter;->processModel:Lorg/apache/commons/math3/filter/ProcessModel;

    invoke-interface {v2}, Lorg/apache/commons/math3/filter/ProcessModel;->getControlMatrix()Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v2

    iput-object v2, p0, Lorg/apache/commons/math3/filter/KalmanFilter;->controlMatrix:Lorg/apache/commons/math3/linear/RealMatrix;

    goto :goto_0

    .line 157
    .restart local v0    # "measNoise":Lorg/apache/commons/math3/linear/RealMatrix;
    .restart local v1    # "processNoise":Lorg/apache/commons/math3/linear/RealMatrix;
    :cond_1
    iget-object v2, p0, Lorg/apache/commons/math3/filter/KalmanFilter;->processModel:Lorg/apache/commons/math3/filter/ProcessModel;

    invoke-interface {v2}, Lorg/apache/commons/math3/filter/ProcessModel;->getInitialStateEstimate()Lorg/apache/commons/math3/linear/RealVector;

    move-result-object v2

    iput-object v2, p0, Lorg/apache/commons/math3/filter/KalmanFilter;->stateEstimation:Lorg/apache/commons/math3/linear/RealVector;

    goto :goto_1

    .line 167
    :cond_2
    iget-object v2, p0, Lorg/apache/commons/math3/filter/KalmanFilter;->processModel:Lorg/apache/commons/math3/filter/ProcessModel;

    invoke-interface {v2}, Lorg/apache/commons/math3/filter/ProcessModel;->getInitialErrorCovariance()Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v2

    if-nez v2, :cond_3

    .line 168
    invoke-interface {v1}, Lorg/apache/commons/math3/linear/RealMatrix;->copy()Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v2

    iput-object v2, p0, Lorg/apache/commons/math3/filter/KalmanFilter;->errorCovariance:Lorg/apache/commons/math3/linear/RealMatrix;

    .line 176
    :goto_2
    iget-object v2, p0, Lorg/apache/commons/math3/filter/KalmanFilter;->transitionMatrix:Lorg/apache/commons/math3/linear/RealMatrix;

    invoke-interface {v2}, Lorg/apache/commons/math3/linear/RealMatrix;->isSquare()Z

    move-result v2

    if-nez v2, :cond_4

    .line 177
    new-instance v2, Lorg/apache/commons/math3/linear/NonSquareMatrixException;

    iget-object v3, p0, Lorg/apache/commons/math3/filter/KalmanFilter;->transitionMatrix:Lorg/apache/commons/math3/linear/RealMatrix;

    invoke-interface {v3}, Lorg/apache/commons/math3/linear/RealMatrix;->getRowDimension()I

    move-result v3

    iget-object v4, p0, Lorg/apache/commons/math3/filter/KalmanFilter;->transitionMatrix:Lorg/apache/commons/math3/linear/RealMatrix;

    invoke-interface {v4}, Lorg/apache/commons/math3/linear/RealMatrix;->getColumnDimension()I

    move-result v4

    invoke-direct {v2, v3, v4}, Lorg/apache/commons/math3/linear/NonSquareMatrixException;-><init>(II)V

    throw v2

    .line 170
    :cond_3
    iget-object v2, p0, Lorg/apache/commons/math3/filter/KalmanFilter;->processModel:Lorg/apache/commons/math3/filter/ProcessModel;

    invoke-interface {v2}, Lorg/apache/commons/math3/filter/ProcessModel;->getInitialErrorCovariance()Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v2

    iput-object v2, p0, Lorg/apache/commons/math3/filter/KalmanFilter;->errorCovariance:Lorg/apache/commons/math3/linear/RealMatrix;

    goto :goto_2

    .line 184
    :cond_4
    iget-object v2, p0, Lorg/apache/commons/math3/filter/KalmanFilter;->controlMatrix:Lorg/apache/commons/math3/linear/RealMatrix;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lorg/apache/commons/math3/filter/KalmanFilter;->controlMatrix:Lorg/apache/commons/math3/linear/RealMatrix;

    invoke-interface {v2}, Lorg/apache/commons/math3/linear/RealMatrix;->getRowDimension()I

    move-result v2

    if-lez v2, :cond_5

    iget-object v2, p0, Lorg/apache/commons/math3/filter/KalmanFilter;->controlMatrix:Lorg/apache/commons/math3/linear/RealMatrix;

    invoke-interface {v2}, Lorg/apache/commons/math3/linear/RealMatrix;->getColumnDimension()I

    move-result v2

    if-lez v2, :cond_5

    iget-object v2, p0, Lorg/apache/commons/math3/filter/KalmanFilter;->controlMatrix:Lorg/apache/commons/math3/linear/RealMatrix;

    invoke-interface {v2}, Lorg/apache/commons/math3/linear/RealMatrix;->getRowDimension()I

    move-result v2

    iget-object v3, p0, Lorg/apache/commons/math3/filter/KalmanFilter;->transitionMatrix:Lorg/apache/commons/math3/linear/RealMatrix;

    invoke-interface {v3}, Lorg/apache/commons/math3/linear/RealMatrix;->getRowDimension()I

    move-result v3

    if-eq v2, v3, :cond_5

    .line 188
    new-instance v2, Lorg/apache/commons/math3/linear/MatrixDimensionMismatchException;

    iget-object v3, p0, Lorg/apache/commons/math3/filter/KalmanFilter;->controlMatrix:Lorg/apache/commons/math3/linear/RealMatrix;

    invoke-interface {v3}, Lorg/apache/commons/math3/linear/RealMatrix;->getRowDimension()I

    move-result v3

    iget-object v4, p0, Lorg/apache/commons/math3/filter/KalmanFilter;->controlMatrix:Lorg/apache/commons/math3/linear/RealMatrix;

    invoke-interface {v4}, Lorg/apache/commons/math3/linear/RealMatrix;->getColumnDimension()I

    move-result v4

    iget-object v5, p0, Lorg/apache/commons/math3/filter/KalmanFilter;->transitionMatrix:Lorg/apache/commons/math3/linear/RealMatrix;

    invoke-interface {v5}, Lorg/apache/commons/math3/linear/RealMatrix;->getRowDimension()I

    move-result v5

    iget-object v6, p0, Lorg/apache/commons/math3/filter/KalmanFilter;->controlMatrix:Lorg/apache/commons/math3/linear/RealMatrix;

    invoke-interface {v6}, Lorg/apache/commons/math3/linear/RealMatrix;->getColumnDimension()I

    move-result v6

    invoke-direct {v2, v3, v4, v5, v6}, Lorg/apache/commons/math3/linear/MatrixDimensionMismatchException;-><init>(IIII)V

    throw v2

    .line 195
    :cond_5
    iget-object v2, p0, Lorg/apache/commons/math3/filter/KalmanFilter;->transitionMatrix:Lorg/apache/commons/math3/linear/RealMatrix;

    invoke-static {v2, v1}, Lorg/apache/commons/math3/linear/MatrixUtils;->checkAdditionCompatible(Lorg/apache/commons/math3/linear/AnyMatrix;Lorg/apache/commons/math3/linear/AnyMatrix;)V

    .line 198
    iget-object v2, p0, Lorg/apache/commons/math3/filter/KalmanFilter;->measurementMatrix:Lorg/apache/commons/math3/linear/RealMatrix;

    invoke-interface {v2}, Lorg/apache/commons/math3/linear/RealMatrix;->getColumnDimension()I

    move-result v2

    iget-object v3, p0, Lorg/apache/commons/math3/filter/KalmanFilter;->transitionMatrix:Lorg/apache/commons/math3/linear/RealMatrix;

    invoke-interface {v3}, Lorg/apache/commons/math3/linear/RealMatrix;->getRowDimension()I

    move-result v3

    if-eq v2, v3, :cond_6

    .line 199
    new-instance v2, Lorg/apache/commons/math3/linear/MatrixDimensionMismatchException;

    iget-object v3, p0, Lorg/apache/commons/math3/filter/KalmanFilter;->measurementMatrix:Lorg/apache/commons/math3/linear/RealMatrix;

    invoke-interface {v3}, Lorg/apache/commons/math3/linear/RealMatrix;->getRowDimension()I

    move-result v3

    iget-object v4, p0, Lorg/apache/commons/math3/filter/KalmanFilter;->measurementMatrix:Lorg/apache/commons/math3/linear/RealMatrix;

    invoke-interface {v4}, Lorg/apache/commons/math3/linear/RealMatrix;->getColumnDimension()I

    move-result v4

    iget-object v5, p0, Lorg/apache/commons/math3/filter/KalmanFilter;->measurementMatrix:Lorg/apache/commons/math3/linear/RealMatrix;

    invoke-interface {v5}, Lorg/apache/commons/math3/linear/RealMatrix;->getRowDimension()I

    move-result v5

    iget-object v6, p0, Lorg/apache/commons/math3/filter/KalmanFilter;->transitionMatrix:Lorg/apache/commons/math3/linear/RealMatrix;

    invoke-interface {v6}, Lorg/apache/commons/math3/linear/RealMatrix;->getRowDimension()I

    move-result v6

    invoke-direct {v2, v3, v4, v5, v6}, Lorg/apache/commons/math3/linear/MatrixDimensionMismatchException;-><init>(IIII)V

    throw v2

    .line 206
    :cond_6
    invoke-interface {v0}, Lorg/apache/commons/math3/linear/RealMatrix;->getRowDimension()I

    move-result v2

    iget-object v3, p0, Lorg/apache/commons/math3/filter/KalmanFilter;->measurementMatrix:Lorg/apache/commons/math3/linear/RealMatrix;

    invoke-interface {v3}, Lorg/apache/commons/math3/linear/RealMatrix;->getRowDimension()I

    move-result v3

    if-eq v2, v3, :cond_7

    .line 207
    new-instance v2, Lorg/apache/commons/math3/linear/MatrixDimensionMismatchException;

    invoke-interface {v0}, Lorg/apache/commons/math3/linear/RealMatrix;->getRowDimension()I

    move-result v3

    invoke-interface {v0}, Lorg/apache/commons/math3/linear/RealMatrix;->getColumnDimension()I

    move-result v4

    iget-object v5, p0, Lorg/apache/commons/math3/filter/KalmanFilter;->measurementMatrix:Lorg/apache/commons/math3/linear/RealMatrix;

    invoke-interface {v5}, Lorg/apache/commons/math3/linear/RealMatrix;->getRowDimension()I

    move-result v5

    invoke-interface {v0}, Lorg/apache/commons/math3/linear/RealMatrix;->getColumnDimension()I

    move-result v6

    invoke-direct {v2, v3, v4, v5, v6}, Lorg/apache/commons/math3/linear/MatrixDimensionMismatchException;-><init>(IIII)V

    throw v2

    .line 212
    :cond_7
    return-void
.end method


# virtual methods
.method public correct(Lorg/apache/commons/math3/linear/RealVector;)V
    .locals 7
    .param p1, "z"    # Lorg/apache/commons/math3/linear/RealVector;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;,
            Lorg/apache/commons/math3/exception/DimensionMismatchException;,
            Lorg/apache/commons/math3/linear/SingularMatrixException;
        }
    .end annotation

    .prologue
    .line 352
    invoke-static {p1}, Lorg/apache/commons/math3/util/MathUtils;->checkNotNull(Ljava/lang/Object;)V

    .line 353
    invoke-virtual {p1}, Lorg/apache/commons/math3/linear/RealVector;->getDimension()I

    move-result v4

    iget-object v5, p0, Lorg/apache/commons/math3/filter/KalmanFilter;->measurementMatrix:Lorg/apache/commons/math3/linear/RealMatrix;

    invoke-interface {v5}, Lorg/apache/commons/math3/linear/RealMatrix;->getRowDimension()I

    move-result v5

    if-eq v4, v5, :cond_0

    .line 354
    new-instance v4, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    invoke-virtual {p1}, Lorg/apache/commons/math3/linear/RealVector;->getDimension()I

    move-result v5

    iget-object v6, p0, Lorg/apache/commons/math3/filter/KalmanFilter;->measurementMatrix:Lorg/apache/commons/math3/linear/RealMatrix;

    invoke-interface {v6}, Lorg/apache/commons/math3/linear/RealMatrix;->getRowDimension()I

    move-result v6

    invoke-direct {v4, v5, v6}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v4

    .line 359
    :cond_0
    iget-object v4, p0, Lorg/apache/commons/math3/filter/KalmanFilter;->measurementMatrix:Lorg/apache/commons/math3/linear/RealMatrix;

    iget-object v5, p0, Lorg/apache/commons/math3/filter/KalmanFilter;->errorCovariance:Lorg/apache/commons/math3/linear/RealMatrix;

    invoke-interface {v4, v5}, Lorg/apache/commons/math3/linear/RealMatrix;->multiply(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v4

    iget-object v5, p0, Lorg/apache/commons/math3/filter/KalmanFilter;->measurementMatrixT:Lorg/apache/commons/math3/linear/RealMatrix;

    invoke-interface {v4, v5}, Lorg/apache/commons/math3/linear/RealMatrix;->multiply(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v4

    iget-object v5, p0, Lorg/apache/commons/math3/filter/KalmanFilter;->measurementModel:Lorg/apache/commons/math3/filter/MeasurementModel;

    invoke-interface {v5}, Lorg/apache/commons/math3/filter/MeasurementModel;->getMeasurementNoise()Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v5

    invoke-interface {v4, v5}, Lorg/apache/commons/math3/linear/RealMatrix;->add(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v3

    .line 364
    .local v3, "s":Lorg/apache/commons/math3/linear/RealMatrix;
    iget-object v4, p0, Lorg/apache/commons/math3/filter/KalmanFilter;->measurementMatrix:Lorg/apache/commons/math3/linear/RealMatrix;

    iget-object v5, p0, Lorg/apache/commons/math3/filter/KalmanFilter;->stateEstimation:Lorg/apache/commons/math3/linear/RealVector;

    invoke-interface {v4, v5}, Lorg/apache/commons/math3/linear/RealMatrix;->operate(Lorg/apache/commons/math3/linear/RealVector;)Lorg/apache/commons/math3/linear/RealVector;

    move-result-object v4

    invoke-virtual {p1, v4}, Lorg/apache/commons/math3/linear/RealVector;->subtract(Lorg/apache/commons/math3/linear/RealVector;)Lorg/apache/commons/math3/linear/RealVector;

    move-result-object v1

    .line 375
    .local v1, "innovation":Lorg/apache/commons/math3/linear/RealVector;
    new-instance v4, Lorg/apache/commons/math3/linear/CholeskyDecomposition;

    invoke-direct {v4, v3}, Lorg/apache/commons/math3/linear/CholeskyDecomposition;-><init>(Lorg/apache/commons/math3/linear/RealMatrix;)V

    invoke-virtual {v4}, Lorg/apache/commons/math3/linear/CholeskyDecomposition;->getSolver()Lorg/apache/commons/math3/linear/DecompositionSolver;

    move-result-object v4

    iget-object v5, p0, Lorg/apache/commons/math3/filter/KalmanFilter;->measurementMatrix:Lorg/apache/commons/math3/linear/RealMatrix;

    iget-object v6, p0, Lorg/apache/commons/math3/filter/KalmanFilter;->errorCovariance:Lorg/apache/commons/math3/linear/RealMatrix;

    invoke-interface {v6}, Lorg/apache/commons/math3/linear/RealMatrix;->transpose()Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v6

    invoke-interface {v5, v6}, Lorg/apache/commons/math3/linear/RealMatrix;->multiply(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v5

    invoke-interface {v4, v5}, Lorg/apache/commons/math3/linear/DecompositionSolver;->solve(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v4

    invoke-interface {v4}, Lorg/apache/commons/math3/linear/RealMatrix;->transpose()Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v2

    .line 381
    .local v2, "kalmanGain":Lorg/apache/commons/math3/linear/RealMatrix;
    iget-object v4, p0, Lorg/apache/commons/math3/filter/KalmanFilter;->stateEstimation:Lorg/apache/commons/math3/linear/RealVector;

    invoke-interface {v2, v1}, Lorg/apache/commons/math3/linear/RealMatrix;->operate(Lorg/apache/commons/math3/linear/RealVector;)Lorg/apache/commons/math3/linear/RealVector;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/apache/commons/math3/linear/RealVector;->add(Lorg/apache/commons/math3/linear/RealVector;)Lorg/apache/commons/math3/linear/RealVector;

    move-result-object v4

    iput-object v4, p0, Lorg/apache/commons/math3/filter/KalmanFilter;->stateEstimation:Lorg/apache/commons/math3/linear/RealVector;

    .line 385
    invoke-interface {v2}, Lorg/apache/commons/math3/linear/RealMatrix;->getRowDimension()I

    move-result v4

    invoke-static {v4}, Lorg/apache/commons/math3/linear/MatrixUtils;->createRealIdentityMatrix(I)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v0

    .line 386
    .local v0, "identity":Lorg/apache/commons/math3/linear/RealMatrix;
    iget-object v4, p0, Lorg/apache/commons/math3/filter/KalmanFilter;->measurementMatrix:Lorg/apache/commons/math3/linear/RealMatrix;

    invoke-interface {v2, v4}, Lorg/apache/commons/math3/linear/RealMatrix;->multiply(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v4

    invoke-interface {v0, v4}, Lorg/apache/commons/math3/linear/RealMatrix;->subtract(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v4

    iget-object v5, p0, Lorg/apache/commons/math3/filter/KalmanFilter;->errorCovariance:Lorg/apache/commons/math3/linear/RealMatrix;

    invoke-interface {v4, v5}, Lorg/apache/commons/math3/linear/RealMatrix;->multiply(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v4

    iput-object v4, p0, Lorg/apache/commons/math3/filter/KalmanFilter;->errorCovariance:Lorg/apache/commons/math3/linear/RealMatrix;

    .line 387
    return-void
.end method

.method public correct([D)V
    .locals 2
    .param p1, "z"    # [D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;,
            Lorg/apache/commons/math3/exception/DimensionMismatchException;,
            Lorg/apache/commons/math3/linear/SingularMatrixException;
        }
    .end annotation

    .prologue
    .line 333
    new-instance v0, Lorg/apache/commons/math3/linear/ArrayRealVector;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;-><init>([DZ)V

    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/filter/KalmanFilter;->correct(Lorg/apache/commons/math3/linear/RealVector;)V

    .line 334
    return-void
.end method

.method public getErrorCovariance()[[D
    .locals 1

    .prologue
    .line 256
    iget-object v0, p0, Lorg/apache/commons/math3/filter/KalmanFilter;->errorCovariance:Lorg/apache/commons/math3/linear/RealMatrix;

    invoke-interface {v0}, Lorg/apache/commons/math3/linear/RealMatrix;->getData()[[D

    move-result-object v0

    return-object v0
.end method

.method public getErrorCovarianceMatrix()Lorg/apache/commons/math3/linear/RealMatrix;
    .locals 1

    .prologue
    .line 265
    iget-object v0, p0, Lorg/apache/commons/math3/filter/KalmanFilter;->errorCovariance:Lorg/apache/commons/math3/linear/RealMatrix;

    invoke-interface {v0}, Lorg/apache/commons/math3/linear/RealMatrix;->copy()Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v0

    return-object v0
.end method

.method public getMeasurementDimension()I
    .locals 1

    .prologue
    .line 229
    iget-object v0, p0, Lorg/apache/commons/math3/filter/KalmanFilter;->measurementMatrix:Lorg/apache/commons/math3/linear/RealMatrix;

    invoke-interface {v0}, Lorg/apache/commons/math3/linear/RealMatrix;->getRowDimension()I

    move-result v0

    return v0
.end method

.method public getStateDimension()I
    .locals 1

    .prologue
    .line 220
    iget-object v0, p0, Lorg/apache/commons/math3/filter/KalmanFilter;->stateEstimation:Lorg/apache/commons/math3/linear/RealVector;

    invoke-virtual {v0}, Lorg/apache/commons/math3/linear/RealVector;->getDimension()I

    move-result v0

    return v0
.end method

.method public getStateEstimation()[D
    .locals 1

    .prologue
    .line 238
    iget-object v0, p0, Lorg/apache/commons/math3/filter/KalmanFilter;->stateEstimation:Lorg/apache/commons/math3/linear/RealVector;

    invoke-virtual {v0}, Lorg/apache/commons/math3/linear/RealVector;->toArray()[D

    move-result-object v0

    return-object v0
.end method

.method public getStateEstimationVector()Lorg/apache/commons/math3/linear/RealVector;
    .locals 1

    .prologue
    .line 247
    iget-object v0, p0, Lorg/apache/commons/math3/filter/KalmanFilter;->stateEstimation:Lorg/apache/commons/math3/linear/RealVector;

    invoke-virtual {v0}, Lorg/apache/commons/math3/linear/RealVector;->copy()Lorg/apache/commons/math3/linear/RealVector;

    move-result-object v0

    return-object v0
.end method

.method public predict()V
    .locals 1

    .prologue
    .line 272
    const/4 v0, 0x0

    check-cast v0, Lorg/apache/commons/math3/linear/RealVector;

    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/filter/KalmanFilter;->predict(Lorg/apache/commons/math3/linear/RealVector;)V

    .line 273
    return-void
.end method

.method public predict(Lorg/apache/commons/math3/linear/RealVector;)V
    .locals 3
    .param p1, "u"    # Lorg/apache/commons/math3/linear/RealVector;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    .prologue
    .line 297
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lorg/apache/commons/math3/linear/RealVector;->getDimension()I

    move-result v0

    iget-object v1, p0, Lorg/apache/commons/math3/filter/KalmanFilter;->controlMatrix:Lorg/apache/commons/math3/linear/RealMatrix;

    invoke-interface {v1}, Lorg/apache/commons/math3/linear/RealMatrix;->getColumnDimension()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 299
    new-instance v0, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    invoke-virtual {p1}, Lorg/apache/commons/math3/linear/RealVector;->getDimension()I

    move-result v1

    iget-object v2, p0, Lorg/apache/commons/math3/filter/KalmanFilter;->controlMatrix:Lorg/apache/commons/math3/linear/RealMatrix;

    invoke-interface {v2}, Lorg/apache/commons/math3/linear/RealMatrix;->getColumnDimension()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v0

    .line 305
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/math3/filter/KalmanFilter;->transitionMatrix:Lorg/apache/commons/math3/linear/RealMatrix;

    iget-object v1, p0, Lorg/apache/commons/math3/filter/KalmanFilter;->stateEstimation:Lorg/apache/commons/math3/linear/RealVector;

    invoke-interface {v0, v1}, Lorg/apache/commons/math3/linear/RealMatrix;->operate(Lorg/apache/commons/math3/linear/RealVector;)Lorg/apache/commons/math3/linear/RealVector;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/math3/filter/KalmanFilter;->stateEstimation:Lorg/apache/commons/math3/linear/RealVector;

    .line 308
    if-eqz p1, :cond_1

    .line 309
    iget-object v0, p0, Lorg/apache/commons/math3/filter/KalmanFilter;->stateEstimation:Lorg/apache/commons/math3/linear/RealVector;

    iget-object v1, p0, Lorg/apache/commons/math3/filter/KalmanFilter;->controlMatrix:Lorg/apache/commons/math3/linear/RealMatrix;

    invoke-interface {v1, p1}, Lorg/apache/commons/math3/linear/RealMatrix;->operate(Lorg/apache/commons/math3/linear/RealVector;)Lorg/apache/commons/math3/linear/RealVector;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/linear/RealVector;->add(Lorg/apache/commons/math3/linear/RealVector;)Lorg/apache/commons/math3/linear/RealVector;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/math3/filter/KalmanFilter;->stateEstimation:Lorg/apache/commons/math3/linear/RealVector;

    .line 314
    :cond_1
    iget-object v0, p0, Lorg/apache/commons/math3/filter/KalmanFilter;->transitionMatrix:Lorg/apache/commons/math3/linear/RealMatrix;

    iget-object v1, p0, Lorg/apache/commons/math3/filter/KalmanFilter;->errorCovariance:Lorg/apache/commons/math3/linear/RealMatrix;

    invoke-interface {v0, v1}, Lorg/apache/commons/math3/linear/RealMatrix;->multiply(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/commons/math3/filter/KalmanFilter;->transitionMatrixT:Lorg/apache/commons/math3/linear/RealMatrix;

    invoke-interface {v0, v1}, Lorg/apache/commons/math3/linear/RealMatrix;->multiply(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/commons/math3/filter/KalmanFilter;->processModel:Lorg/apache/commons/math3/filter/ProcessModel;

    invoke-interface {v1}, Lorg/apache/commons/math3/filter/ProcessModel;->getProcessNoise()Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/commons/math3/linear/RealMatrix;->add(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/math3/filter/KalmanFilter;->errorCovariance:Lorg/apache/commons/math3/linear/RealMatrix;

    .line 317
    return-void
.end method

.method public predict([D)V
    .locals 2
    .param p1, "u"    # [D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    .prologue
    .line 284
    new-instance v0, Lorg/apache/commons/math3/linear/ArrayRealVector;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;-><init>([DZ)V

    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/filter/KalmanFilter;->predict(Lorg/apache/commons/math3/linear/RealVector;)V

    .line 285
    return-void
.end method
