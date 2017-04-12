.class final Linfo/smapper/smapper/logic/BackgroundWorkerUploader$2;
.super Ljava/lang/Object;
.source "BackgroundWorkerUploader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/smapper/smapper/logic/BackgroundWorkerUploader;->uploadData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 13

    .prologue
    .line 49
    invoke-static {}, Linfo/smapper/smapper/views/fragments/MapFragment;->getCurrentLocation()Landroid/location/Location;

    move-result-object v4

    .line 52
    .local v4, "loc":Landroid/location/Location;
    if-nez v4, :cond_1

    .line 100
    :cond_0
    :goto_0
    return-void

    .line 57
    :cond_1
    invoke-static {}, Linfo/smapper/smapper/logic/BackgroundWorkerDataHandler;->getCurrentData()Ljava/util/List;

    move-result-object v1

    .line 58
    .local v1, "data":Ljava/util/List;, "Ljava/util/List<Linfo/smapper/smapper/data/CellData;>;"
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 59
    .local v5, "obj":Lorg/json/JSONObject;
    const/4 v0, 0x0

    .line 62
    .local v0, "bestSignal":I
    if-eqz v1, :cond_0

    .line 63
    const v0, -0x1869f

    .line 64
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_2
    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Linfo/smapper/smapper/data/CellData;

    .line 65
    .local v2, "e":Linfo/smapper/smapper/data/CellData;
    invoke-virtual {v2}, Linfo/smapper/smapper/data/CellData;->getSignalStrengthUnit()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {v2}, Linfo/smapper/smapper/data/CellData;->getSignalStrengthUnit()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v12

    add-int/lit8 v12, v12, -0x4

    invoke-virtual {v10, v11, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 66
    .local v3, "eSignal":I
    if-le v3, v0, :cond_2

    .line 67
    move v0, v3

    goto :goto_1

    .line 73
    .end local v2    # "e":Linfo/smapper/smapper/data/CellData;
    .end local v3    # "eSignal":I
    :cond_3
    :try_start_0
    const-string v9, "latitude"

    invoke-virtual {v4}, Landroid/location/Location;->getLatitude()D

    move-result-wide v10

    invoke-virtual {v5, v9, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 74
    const-string v9, "longitude"

    invoke-virtual {v4}, Landroid/location/Location;->getLongitude()D

    move-result-wide v10

    invoke-virtual {v5, v9, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 75
    const-string v9, "strength"

    invoke-virtual {v5, v9, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    .line 80
    :goto_2
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "BU: created JSON obj: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v5}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Linfo/smapper/smapper/logic/Logger;->add(Ljava/lang/String;)V

    .line 82
    :try_start_1
    new-instance v7, Ljava/net/URL;

    # getter for: Linfo/smapper/smapper/logic/BackgroundWorkerUploader;->remoteSite:Ljava/lang/String;
    invoke-static {}, Linfo/smapper/smapper/logic/BackgroundWorkerUploader;->access$300()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v7, v9}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 83
    .local v7, "url":Ljava/net/URL;
    invoke-virtual {v7}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v8

    check-cast v8, Ljava/net/HttpURLConnection;

    .line 85
    .local v8, "urlConn":Ljava/net/HttpURLConnection;
    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 87
    new-instance v6, Ljava/io/DataOutputStream;

    invoke-virtual {v8}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v9

    invoke-direct {v6, v9}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 88
    .local v6, "out":Ljava/io/DataOutputStream;
    invoke-virtual {v5}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v9

    const-string v10, "UTF-8"

    invoke-static {v9, v10}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 89
    invoke-virtual {v6}, Ljava/io/DataOutputStream;->close()V

    .line 90
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "BU: got HTTP response "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v8}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " - "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v8}, Ljava/net/HttpURLConnection;->getResponseMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Linfo/smapper/smapper/logic/Logger;->add(Ljava/lang/String;)V

    .line 91
    invoke-virtual {v8}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_1
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/net/ProtocolException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    goto/16 :goto_0

    .line 92
    .end local v6    # "out":Ljava/io/DataOutputStream;
    .end local v7    # "url":Ljava/net/URL;
    .end local v8    # "urlConn":Ljava/net/HttpURLConnection;
    :catch_0
    move-exception v2

    .line 93
    .local v2, "e":Ljava/net/MalformedURLException;
    invoke-virtual {v2}, Ljava/net/MalformedURLException;->printStackTrace()V

    goto/16 :goto_0

    .line 76
    .end local v2    # "e":Ljava/net/MalformedURLException;
    :catch_1
    move-exception v2

    .line 77
    .local v2, "e":Lorg/json/JSONException;
    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_2

    .line 94
    .end local v2    # "e":Lorg/json/JSONException;
    :catch_2
    move-exception v2

    .line 95
    .local v2, "e":Ljava/net/ProtocolException;
    invoke-virtual {v2}, Ljava/net/ProtocolException;->printStackTrace()V

    goto/16 :goto_0

    .line 96
    .end local v2    # "e":Ljava/net/ProtocolException;
    :catch_3
    move-exception v2

    .line 97
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_0
.end method
