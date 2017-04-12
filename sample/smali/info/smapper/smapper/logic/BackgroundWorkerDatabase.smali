.class public Linfo/smapper/smapper/logic/BackgroundWorkerDatabase;
.super Ljava/lang/Object;
.source "BackgroundWorkerDatabase.java"


# static fields
.field private static activity:Landroid/app/Activity;

.field private static databaseBakom:Landroid/database/sqlite/SQLiteDatabase;

.field private static databaseMCCMNC:Landroid/database/sqlite/SQLiteDatabase;

.field private static databaseOpenCellId:Landroid/database/sqlite/SQLiteDatabase;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addBakomData(Ljava/util/List;)Ljava/util/List;
    .locals 31
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Linfo/smapper/smapper/data/CellData;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Linfo/smapper/smapper/data/CellData;",
            ">;"
        }
    .end annotation

    .prologue
    .line 111
    .local p0, "cds":Ljava/util/List;, "Ljava/util/List<Linfo/smapper/smapper/data/CellData;>;"
    const-wide v26, 0x3ee4f8b588e368f1L    # 1.0E-5

    .line 112
    .local v26, "threshold":D
    invoke-interface/range {p0 .. p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v25

    :cond_0
    :goto_0
    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->hasNext()Z

    move-result v28

    if-eqz v28, :cond_1

    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Linfo/smapper/smapper/data/CellData;

    .line 113
    .local v14, "each":Linfo/smapper/smapper/data/CellData;
    invoke-virtual {v14}, Linfo/smapper/smapper/data/CellData;->getCellLocationOpenCellId()Landroid/location/Location;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Landroid/location/Location;->getLatitude()D

    move-result-wide v28

    sub-double v18, v28, v26

    .line 114
    .local v18, "latLow":D
    invoke-virtual {v14}, Linfo/smapper/smapper/data/CellData;->getCellLocationOpenCellId()Landroid/location/Location;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Landroid/location/Location;->getLatitude()D

    move-result-wide v28

    add-double v16, v28, v26

    .line 115
    .local v16, "latHigh":D
    invoke-virtual {v14}, Linfo/smapper/smapper/data/CellData;->getCellLocationOpenCellId()Landroid/location/Location;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Landroid/location/Location;->getLongitude()D

    move-result-wide v28

    sub-double v22, v28, v26

    .line 116
    .local v22, "lonLow":D
    invoke-virtual {v14}, Linfo/smapper/smapper/data/CellData;->getCellLocationOpenCellId()Landroid/location/Location;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Landroid/location/Location;->getLongitude()D

    move-result-wide v28

    add-double v20, v28, v26

    .line 117
    .local v20, "lonHigh":D
    new-instance v15, Landroid/location/Location;

    const-string v28, "BackgroundWorkerDatabase"

    move-object/from16 v0, v28

    invoke-direct {v15, v0}, Landroid/location/Location;-><init>(Ljava/lang/String;)V

    .line 118
    .local v15, "locationBakom":Landroid/location/Location;
    const-wide/16 v4, 0x0

    .line 119
    .local v4, "bakomLatitude":D
    const-wide/16 v6, 0x0

    .line 123
    .local v6, "bakomLongitude":D
    :try_start_0
    sget-object v28, Linfo/smapper/smapper/logic/BackgroundWorkerDatabase;->databaseBakom:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "SELECT latitude, longitude, powercode, type FROM celldata WHERE latitude > \""

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    move-wide/from16 v1, v18

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, "\" and latitude < \""

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    move-wide/from16 v1, v16

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, "\" and longitude > \""

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    move-wide/from16 v1, v22

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, "\" and longitude < \""

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    move-wide/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, "\" LIMIT 1"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    const/16 v30, 0x0

    invoke-virtual/range {v28 .. v30}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v24

    .line 125
    .local v24, "resultSet":Landroid/database/Cursor;
    invoke-interface/range {v24 .. v24}, Landroid/database/Cursor;->moveToFirst()Z

    .line 126
    invoke-interface/range {v24 .. v24}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v28

    if-eqz v28, :cond_0

    .line 131
    const/16 v28, 0x0

    move-object/from16 v0, v24

    move/from16 v1, v28

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v8

    .line 132
    .local v8, "col1":D
    const/16 v28, 0x1

    move-object/from16 v0, v24

    move/from16 v1, v28

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v10

    .line 133
    .local v10, "col2":D
    const/16 v28, 0x2

    move-object/from16 v0, v24

    move/from16 v1, v28

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 134
    .local v12, "col3":Ljava/lang/String;
    const/16 v28, 0x3

    move-object/from16 v0, v24

    move/from16 v1, v28

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 135
    .local v13, "col4":Ljava/lang/String;
    invoke-interface/range {v24 .. v24}, Landroid/database/Cursor;->moveToNext()Z

    .line 141
    invoke-virtual {v15, v4, v5}, Landroid/location/Location;->setLatitude(D)V

    .line 142
    invoke-virtual {v15, v6, v7}, Landroid/location/Location;->setLongitude(D)V

    .line 144
    invoke-virtual {v14, v15}, Linfo/smapper/smapper/data/CellData;->setBakomLocation(Landroid/location/Location;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 146
    .end local v8    # "col1":D
    .end local v10    # "col2":D
    .end local v12    # "col3":Ljava/lang/String;
    .end local v13    # "col4":Ljava/lang/String;
    .end local v24    # "resultSet":Landroid/database/Cursor;
    :catch_0
    move-exception v28

    goto/16 :goto_0

    .line 149
    .end local v4    # "bakomLatitude":D
    .end local v6    # "bakomLongitude":D
    .end local v14    # "each":Linfo/smapper/smapper/data/CellData;
    .end local v15    # "locationBakom":Landroid/location/Location;
    .end local v16    # "latHigh":D
    .end local v18    # "latLow":D
    .end local v20    # "lonHigh":D
    .end local v22    # "lonLow":D
    :cond_1
    return-object p0
.end method

.method public static getServiceProviderName(II)Ljava/lang/String;
    .locals 4
    .param p0, "mcc"    # I
    .param p1, "mnc"    # I

    .prologue
    .line 94
    :try_start_0
    sget-object v1, Linfo/smapper/smapper/logic/BackgroundWorkerDatabase;->databaseMCCMNC:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SELECT Network FROM global_networks WHERE MCC = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " AND MNC = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " LIMIT 1"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 96
    .local v0, "resultSet":Landroid/database/Cursor;
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 97
    invoke-interface {v0}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v1

    if-nez v1, :cond_0

    .line 98
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 106
    .end local v0    # "resultSet":Landroid/database/Cursor;
    :goto_0
    return-object v1

    .line 100
    .restart local v0    # "resultSet":Landroid/database/Cursor;
    :cond_0
    const-string v1, "n/a"
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 103
    .end local v0    # "resultSet":Landroid/database/Cursor;
    :catch_0
    move-exception v1

    .line 106
    const-string v1, "n/a"

    goto :goto_0
.end method

.method public static initWorker(Landroid/app/Activity;)V
    .locals 10
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 26
    sput-object p0, Linfo/smapper/smapper/logic/BackgroundWorkerDatabase;->activity:Landroid/app/Activity;

    .line 27
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    const-string v8, "mcc-mnc-table.db"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    .line 28
    .local v2, "dbTargetMCCMNC":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_0

    .line 31
    :try_start_0
    invoke-virtual {p0}, Landroid/app/Activity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v7

    const-string v8, "mcc-mnc-table.db"

    invoke-virtual {v7, v8}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v4

    .line 32
    .local v4, "in":Ljava/io/InputStream;
    new-instance v6, Ljava/io/FileOutputStream;

    invoke-direct {v6, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 34
    .local v6, "out":Ljava/io/OutputStream;
    const/16 v7, 0x400

    new-array v0, v7, [B

    .line 36
    .local v0, "buf":[B
    :goto_0
    invoke-virtual {v4, v0}, Ljava/io/InputStream;->read([B)I

    move-result v5

    .local v5, "len":I
    if-lez v5, :cond_3

    .line 37
    const/4 v7, 0x0

    invoke-virtual {v6, v0, v7, v5}, Ljava/io/OutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 41
    .end local v0    # "buf":[B
    .end local v4    # "in":Ljava/io/InputStream;
    .end local v5    # "len":I
    .end local v6    # "out":Ljava/io/OutputStream;
    :catch_0
    move-exception v7

    .line 44
    :cond_0
    :goto_1
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    const-string v8, "bakom_celldata.db"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 45
    .local v1, "dbTargetBakom":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_1

    .line 48
    :try_start_1
    invoke-virtual {p0}, Landroid/app/Activity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v7

    const-string v8, "bakom_celldata.db"

    invoke-virtual {v7, v8}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v4

    .line 49
    .restart local v4    # "in":Ljava/io/InputStream;
    new-instance v6, Ljava/io/FileOutputStream;

    invoke-direct {v6, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 51
    .restart local v6    # "out":Ljava/io/OutputStream;
    const/16 v7, 0x400

    new-array v0, v7, [B

    .line 53
    .restart local v0    # "buf":[B
    :goto_2
    invoke-virtual {v4, v0}, Ljava/io/InputStream;->read([B)I

    move-result v5

    .restart local v5    # "len":I
    if-lez v5, :cond_4

    .line 54
    const/4 v7, 0x0

    invoke-virtual {v6, v0, v7, v5}, Ljava/io/OutputStream;->write([BII)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    .line 58
    .end local v0    # "buf":[B
    .end local v4    # "in":Ljava/io/InputStream;
    .end local v5    # "len":I
    .end local v6    # "out":Ljava/io/OutputStream;
    :catch_1
    move-exception v7

    .line 61
    :cond_1
    :goto_3
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    const-string v8, "opencellid_CH.db"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    .line 62
    .local v3, "dbTargetOpenCellId":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_2

    .line 65
    :try_start_2
    invoke-virtual {p0}, Landroid/app/Activity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v7

    const-string v8, "opencellid_CH.db"

    invoke-virtual {v7, v8}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v4

    .line 66
    .restart local v4    # "in":Ljava/io/InputStream;
    new-instance v6, Ljava/io/FileOutputStream;

    invoke-direct {v6, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 68
    .restart local v6    # "out":Ljava/io/OutputStream;
    const/16 v7, 0x400

    new-array v0, v7, [B

    .line 70
    .restart local v0    # "buf":[B
    :goto_4
    invoke-virtual {v4, v0}, Ljava/io/InputStream;->read([B)I

    move-result v5

    .restart local v5    # "len":I
    if-lez v5, :cond_5

    .line 71
    const/4 v7, 0x0

    invoke-virtual {v6, v0, v7, v5}, Ljava/io/OutputStream;->write([BII)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_4

    .line 75
    .end local v0    # "buf":[B
    .end local v4    # "in":Ljava/io/InputStream;
    .end local v5    # "len":I
    .end local v6    # "out":Ljava/io/OutputStream;
    :catch_2
    move-exception v7

    .line 80
    :cond_2
    :goto_5
    :try_start_3
    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x1

    invoke-static {v7, v8, v9}, Landroid/database/sqlite/SQLiteDatabase;->openDatabase(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v7

    sput-object v7, Linfo/smapper/smapper/logic/BackgroundWorkerDatabase;->databaseMCCMNC:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_5

    .line 84
    :goto_6
    :try_start_4
    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x1

    invoke-static {v7, v8, v9}, Landroid/database/sqlite/SQLiteDatabase;->openDatabase(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v7

    sput-object v7, Linfo/smapper/smapper/logic/BackgroundWorkerDatabase;->databaseBakom:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    .line 88
    :goto_7
    :try_start_5
    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x1

    invoke-static {v7, v8, v9}, Landroid/database/sqlite/SQLiteDatabase;->openDatabase(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v7

    sput-object v7, Linfo/smapper/smapper/logic/BackgroundWorkerDatabase;->databaseOpenCellId:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    .line 90
    :goto_8
    return-void

    .line 39
    .end local v1    # "dbTargetBakom":Ljava/io/File;
    .end local v3    # "dbTargetOpenCellId":Ljava/io/File;
    .restart local v0    # "buf":[B
    .restart local v4    # "in":Ljava/io/InputStream;
    .restart local v5    # "len":I
    .restart local v6    # "out":Ljava/io/OutputStream;
    :cond_3
    :try_start_6
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    .line 40
    invoke-virtual {v6}, Ljava/io/OutputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    goto/16 :goto_1

    .line 56
    .restart local v1    # "dbTargetBakom":Ljava/io/File;
    :cond_4
    :try_start_7
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    .line 57
    invoke-virtual {v6}, Ljava/io/OutputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    goto :goto_3

    .line 73
    .restart local v3    # "dbTargetOpenCellId":Ljava/io/File;
    :cond_5
    :try_start_8
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    .line 74
    invoke-virtual {v6}, Ljava/io/OutputStream;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_2

    goto :goto_5

    .line 89
    .end local v0    # "buf":[B
    .end local v4    # "in":Ljava/io/InputStream;
    .end local v5    # "len":I
    .end local v6    # "out":Ljava/io/OutputStream;
    :catch_3
    move-exception v7

    goto :goto_8

    .line 85
    :catch_4
    move-exception v7

    goto :goto_7

    .line 81
    :catch_5
    move-exception v7

    goto :goto_6
.end method

.method public static matchOpenCellInfo(Linfo/smapper/smapper/data/CellData;)Linfo/smapper/smapper/data/CellData;
    .locals 12
    .param p0, "c"    # Linfo/smapper/smapper/data/CellData;

    .prologue
    const/4 v8, 0x0

    .line 153
    invoke-virtual {p0}, Linfo/smapper/smapper/data/CellData;->getCountryCode()I

    move-result v3

    .line 154
    .local v3, "mcc":I
    invoke-virtual {p0}, Linfo/smapper/smapper/data/CellData;->getNetworkCode()I

    move-result v4

    .line 155
    .local v4, "mnc":I
    invoke-virtual {p0}, Linfo/smapper/smapper/data/CellData;->getAreaCode()I

    move-result v2

    .line 156
    .local v2, "lac":I
    invoke-virtual {p0}, Linfo/smapper/smapper/data/CellData;->getCellId()I

    move-result v0

    .line 157
    .local v0, "cid":I
    invoke-virtual {p0}, Linfo/smapper/smapper/data/CellData;->getUnitCode()I

    move-result v7

    .line 160
    .local v7, "unit":I
    :try_start_0
    invoke-virtual {p0}, Linfo/smapper/smapper/data/CellData;->getNetworkType()Ljava/lang/String;

    move-result-object v9

    const-string v10, "2G"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 162
    const-string v5, "GSM"

    .line 165
    .local v5, "radio":Ljava/lang/String;
    sget-object v9, Linfo/smapper/smapper/logic/BackgroundWorkerDatabase;->databaseOpenCellId:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "SELECT * FROM cell_towers WHERE radio = \""

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "\" AND mcc = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " AND net = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " AND area = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " AND cell = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " LIMIT 1"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 167
    .local v6, "resultSet":Landroid/database/Cursor;
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 168
    invoke-interface {v6}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v9

    if-eqz v9, :cond_0

    move-object p0, v8

    .line 205
    .end local v5    # "radio":Ljava/lang/String;
    .end local v6    # "resultSet":Landroid/database/Cursor;
    .end local p0    # "c":Linfo/smapper/smapper/data/CellData;
    :goto_0
    return-object p0

    .line 171
    .restart local v5    # "radio":Ljava/lang/String;
    .restart local v6    # "resultSet":Landroid/database/Cursor;
    .restart local p0    # "c":Linfo/smapper/smapper/data/CellData;
    :cond_0
    new-instance v1, Landroid/location/Location;

    const-string v8, "BackgroundWorkerDatabase"

    invoke-direct {v1, v8}, Landroid/location/Location;-><init>(Ljava/lang/String;)V

    .line 172
    .local v1, "l":Landroid/location/Location;
    const/4 v8, 0x7

    invoke-interface {v6, v8}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v8

    invoke-virtual {v1, v8, v9}, Landroid/location/Location;->setLatitude(D)V

    .line 173
    const/4 v8, 0x6

    invoke-interface {v6, v8}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v8

    invoke-virtual {v1, v8, v9}, Landroid/location/Location;->setLongitude(D)V

    .line 174
    invoke-virtual {p0, v1}, Linfo/smapper/smapper/data/CellData;->setCellLocationOpenCellId(Landroid/location/Location;)V

    .line 175
    const/16 v8, 0x8

    invoke-interface {v6, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    invoke-virtual {p0, v8}, Linfo/smapper/smapper/data/CellData;->setCellRange(I)V

    goto :goto_0

    .line 203
    .end local v1    # "l":Landroid/location/Location;
    .end local v5    # "radio":Ljava/lang/String;
    .end local v6    # "resultSet":Landroid/database/Cursor;
    :catch_0
    move-exception v8

    goto :goto_0

    .line 181
    :cond_1
    invoke-virtual {p0}, Linfo/smapper/smapper/data/CellData;->getNetworkType()Ljava/lang/String;

    move-result-object v9

    const-string v10, "3G"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 182
    const-string v5, "UMTS"

    .line 188
    .restart local v5    # "radio":Ljava/lang/String;
    :goto_1
    sget-object v9, Linfo/smapper/smapper/logic/BackgroundWorkerDatabase;->databaseOpenCellId:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "SELECT * FROM cell_towers WHERE radio = \""

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "\" AND mcc = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " AND net = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " AND area = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " AND cell = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " AND unit = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " LIMIT 1"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 190
    .restart local v6    # "resultSet":Landroid/database/Cursor;
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 191
    invoke-interface {v6}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v9

    if-eqz v9, :cond_3

    move-object p0, v8

    .line 192
    goto/16 :goto_0

    .line 184
    .end local v5    # "radio":Ljava/lang/String;
    .end local v6    # "resultSet":Landroid/database/Cursor;
    :cond_2
    const-string v5, "LTE"

    .restart local v5    # "radio":Ljava/lang/String;
    goto :goto_1

    .line 194
    .restart local v6    # "resultSet":Landroid/database/Cursor;
    :cond_3
    new-instance v1, Landroid/location/Location;

    const-string v8, "BackgroundWorkerDatabase"

    invoke-direct {v1, v8}, Landroid/location/Location;-><init>(Ljava/lang/String;)V

    .line 195
    .restart local v1    # "l":Landroid/location/Location;
    const/4 v8, 0x7

    invoke-interface {v6, v8}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v8

    invoke-virtual {v1, v8, v9}, Landroid/location/Location;->setLatitude(D)V

    .line 196
    const/4 v8, 0x6

    invoke-interface {v6, v8}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v8

    invoke-virtual {v1, v8, v9}, Landroid/location/Location;->setLongitude(D)V

    .line 197
    invoke-virtual {p0, v1}, Linfo/smapper/smapper/data/CellData;->setCellLocationOpenCellId(Landroid/location/Location;)V

    .line 198
    const/16 v8, 0x8

    invoke-interface {v6, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    invoke-virtual {p0, v8}, Linfo/smapper/smapper/data/CellData;->setCellRange(I)V

    .line 199
    const/4 v8, 0x5

    invoke-interface {v6, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    invoke-virtual {p0, v8}, Linfo/smapper/smapper/data/CellData;->setUnitCode(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0
.end method
