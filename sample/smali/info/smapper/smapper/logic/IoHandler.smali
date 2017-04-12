.class public Linfo/smapper/smapper/logic/IoHandler;
.super Ljava/lang/Object;
.source "IoHandler.java"


# static fields
.field private static MY_WRITE_EXTERNAL_STORAGE_ID:B

.field private static activity:Landroid/app/Activity;

.field private static fileMeasurements:Ljava/io/File;

.field private static fileMeasurementsParentFolder:Ljava/io/File;

.field private static fileSettings:Ljava/io/File;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    const/16 v0, 0x2b

    sput-byte v0, Linfo/smapper/smapper/logic/IoHandler;->MY_WRITE_EXTERNAL_STORAGE_ID:B

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static clearMeasurements()V
    .locals 3

    .prologue
    .line 107
    sget-object v0, Linfo/smapper/smapper/logic/IoHandler;->fileMeasurements:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 108
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/Smapper"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Measurements.log"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Linfo/smapper/smapper/logic/IoHandler;->fileMeasurements:Ljava/io/File;

    .line 109
    const-string v0, "Measurement Cache successfully cleared."

    invoke-static {v0}, Linfo/smapper/smapper/logic/Logger;->add(Ljava/lang/String;)V

    .line 110
    return-void
.end method

.method public static clearSettings()V
    .locals 3

    .prologue
    .line 113
    sget-object v0, Linfo/smapper/smapper/logic/IoHandler;->fileSettings:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 114
    new-instance v0, Ljava/io/File;

    sget-object v1, Linfo/smapper/smapper/logic/IoHandler;->activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    const-string v2, "Settings.ini"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sput-object v0, Linfo/smapper/smapper/logic/IoHandler;->fileSettings:Ljava/io/File;

    .line 115
    const-string v0, "Settings successfully cleared."

    invoke-static {v0}, Linfo/smapper/smapper/logic/Logger;->add(Ljava/lang/String;)V

    .line 116
    return-void
.end method

.method public static getAccessibleFileObject()Ljava/io/File;
    .locals 1

    .prologue
    .line 119
    sget-object v0, Linfo/smapper/smapper/logic/IoHandler;->fileMeasurements:Ljava/io/File;

    return-object v0
.end method

.method public static initIoHandler(Landroid/app/Activity;)V
    .locals 4
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 32
    sput-object p0, Linfo/smapper/smapper/logic/IoHandler;->activity:Landroid/app/Activity;

    .line 33
    new-instance v0, Ljava/io/File;

    sget-object v1, Linfo/smapper/smapper/logic/IoHandler;->activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    const-string v2, "Settings.ini"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sput-object v0, Linfo/smapper/smapper/logic/IoHandler;->fileSettings:Ljava/io/File;

    .line 34
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/Smapper"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Measurements.log"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Linfo/smapper/smapper/logic/IoHandler;->fileMeasurements:Ljava/io/File;

    .line 35
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/Smapper"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v0, Linfo/smapper/smapper/logic/IoHandler;->fileMeasurementsParentFolder:Ljava/io/File;

    .line 36
    const-string v0, "IoHandler is now ready."

    invoke-static {v0}, Linfo/smapper/smapper/logic/Logger;->add(Ljava/lang/String;)V

    .line 37
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Previously taken measurements take in total "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Linfo/smapper/smapper/logic/IoHandler;->fileMeasurements:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " bytes of space."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Linfo/smapper/smapper/logic/Logger;->add(Ljava/lang/String;)V

    .line 38
    return-void
.end method

.method public static readSettings()Linfo/smapper/smapper/data/Configuration;
    .locals 5

    .prologue
    .line 41
    new-instance v1, Linfo/smapper/smapper/data/Configuration;

    invoke-direct {v1}, Linfo/smapper/smapper/data/Configuration;-><init>()V

    .line 44
    .local v1, "config":Linfo/smapper/smapper/data/Configuration;
    :try_start_0
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/FileReader;

    sget-object v4, Linfo/smapper/smapper/logic/IoHandler;->fileSettings:Ljava/io/File;

    invoke-direct {v3, v4}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 46
    .local v0, "br":Ljava/io/BufferedReader;
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v3

    invoke-virtual {v1, v3}, Linfo/smapper/smapper/data/Configuration;->setCompatibleModeStatus(Z)V

    .line 47
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v1, v3}, Linfo/smapper/smapper/data/Configuration;->setUpdateInterval(I)V

    .line 48
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v1, v3}, Linfo/smapper/smapper/data/Configuration;->setMapType(I)V

    .line 50
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 57
    .end local v0    # "br":Ljava/io/BufferedReader;
    :goto_0
    return-object v1

    .line 51
    :catch_0
    move-exception v2

    .line 52
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static saveData(Ljava/lang/String;Ljava/lang/String;)V
    .locals 9
    .param p0, "data"    # Ljava/lang/String;
    .param p1, "deviceId"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x1

    .line 77
    sget-object v5, Linfo/smapper/smapper/logic/IoHandler;->activity:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object v5

    const-string v6, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-static {v5, v6}, Landroid/support/v4/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v5

    if-eqz v5, :cond_0

    .line 78
    sget-object v5, Linfo/smapper/smapper/logic/IoHandler;->activity:Landroid/app/Activity;

    new-array v6, v7, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string v8, "android.permission.WRITE_EXTERNAL_STORAGE"

    aput-object v8, v6, v7

    sget-byte v7, Linfo/smapper/smapper/logic/IoHandler;->MY_WRITE_EXTERNAL_STORAGE_ID:B

    invoke-static {v5, v6, v7}, Landroid/support/v4/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    .line 104
    :goto_0
    return-void

    .line 82
    :cond_0
    sget-object v5, Linfo/smapper/smapper/logic/IoHandler;->fileMeasurementsParentFolder:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_1

    .line 83
    sget-object v5, Linfo/smapper/smapper/logic/IoHandler;->fileMeasurementsParentFolder:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->mkdir()Z

    .line 87
    :cond_1
    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 88
    .local v3, "s":Ljava/lang/StringBuilder;
    new-instance v4, Ljava/text/SimpleDateFormat;

    const-string v5, "dd.MM.yyyy HH:mm:ss.SSS"

    invoke-direct {v4, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 89
    .local v4, "simpleDateFormat":Ljava/text/SimpleDateFormat;
    new-instance v5, Ljava/util/Date;

    invoke-direct {v5}, Ljava/util/Date;-><init>()V

    invoke-virtual {v4, v5}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 90
    .local v0, "currentTimestamp":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "|"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "v_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget v6, Linfo/smapper/smapper/views/activities/MainActivity;->version:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "|"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    new-instance v2, Ljava/io/FileOutputStream;

    sget-object v5, Linfo/smapper/smapper/logic/IoHandler;->fileMeasurements:Ljava/io/File;

    const/4 v6, 0x1

    invoke-direct {v2, v5, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    .line 95
    .local v2, "outputStream":Ljava/io/FileOutputStream;
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/io/FileOutputStream;->write([B)V

    .line 96
    const-string v5, "|"

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/io/FileOutputStream;->write([B)V

    .line 97
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/io/FileOutputStream;->write([B)V

    .line 98
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/io/FileOutputStream;->write([B)V

    .line 99
    const-string v5, "\n"

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/io/FileOutputStream;->write([B)V

    .line 100
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 101
    .end local v0    # "currentTimestamp":Ljava/lang/String;
    .end local v2    # "outputStream":Ljava/io/FileOutputStream;
    .end local v3    # "s":Ljava/lang/StringBuilder;
    .end local v4    # "simpleDateFormat":Ljava/text/SimpleDateFormat;
    :catch_0
    move-exception v1

    .line 102
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0
.end method

.method public static saveSettings(Linfo/smapper/smapper/data/Configuration;)V
    .locals 5
    .param p0, "config"    # Linfo/smapper/smapper/data/Configuration;

    .prologue
    .line 62
    :try_start_0
    new-instance v0, Ljava/io/BufferedWriter;

    new-instance v2, Ljava/io/FileWriter;

    sget-object v3, Linfo/smapper/smapper/logic/IoHandler;->fileSettings:Ljava/io/File;

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Ljava/io/FileWriter;-><init>(Ljava/io/File;Z)V

    invoke-direct {v0, v2}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    .line 63
    .local v0, "bw":Ljava/io/BufferedWriter;
    invoke-virtual {p0}, Linfo/smapper/smapper/data/Configuration;->getCompatibleModeStatus()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 64
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->newLine()V

    .line 65
    invoke-virtual {p0}, Linfo/smapper/smapper/data/Configuration;->getUpdateInterval()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 66
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->newLine()V

    .line 67
    invoke-virtual {p0}, Linfo/smapper/smapper/data/Configuration;->getMapType()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 68
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->newLine()V

    .line 69
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 74
    .end local v0    # "bw":Ljava/io/BufferedWriter;
    :goto_0
    return-void

    .line 70
    :catch_0
    move-exception v1

    .line 71
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method
