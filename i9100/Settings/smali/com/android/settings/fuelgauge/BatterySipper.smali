.class Lcom/android/settings/fuelgauge/BatterySipper;
.super Ljava/lang/Object;
.source "BatterySipper.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/fuelgauge/BatterySipper$UidToDetail;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/android/settings/fuelgauge/BatterySipper;",
        ">;"
    }
.end annotation


# instance fields
.field cpuFgTime:J

.field cpuTime:J

.field defaultPackageName:Ljava/lang/String;

.field drainType:Lcom/android/settings/fuelgauge/PowerUsageDetail$DrainType;

.field gpsTime:J

.field icon:Landroid/graphics/drawable/Drawable;

.field iconId:I

.field final mContext:Landroid/content/Context;

.field final mHandler:Landroid/os/Handler;

.field final mRequestQueue:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings/fuelgauge/BatterySipper;",
            ">;"
        }
    .end annotation
.end field

.field final mUidCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/settings/fuelgauge/BatterySipper$UidToDetail;",
            ">;"
        }
    .end annotation
.end field

.field name:Ljava/lang/String;

.field noCoveragePercent:D

.field percent:D

.field tcpBytesReceived:J

.field tcpBytesSent:J

.field uidObj:Landroid/os/BatteryStats$Uid;

.field usageTime:J

.field value:D

.field values:[D

.field wakeLockTime:J

.field wifiRunningTime:J


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;Landroid/os/Handler;Ljava/lang/String;Lcom/android/settings/fuelgauge/PowerUsageDetail$DrainType;ILandroid/os/BatteryStats$Uid;[D)V
    .locals 2
    .parameter "context"
    .parameter
    .parameter "handler"
    .parameter "label"
    .parameter "drainType"
    .parameter "iconId"
    .parameter "uid"
    .parameter "values"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings/fuelgauge/BatterySipper;",
            ">;",
            "Landroid/os/Handler;",
            "Ljava/lang/String;",
            "Lcom/android/settings/fuelgauge/PowerUsageDetail$DrainType;",
            "I",
            "Landroid/os/BatteryStats$Uid;",
            "[D)V"
        }
    .end annotation

    .prologue
    .line 67
    .local p2, requestQueue:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/settings/fuelgauge/BatterySipper;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/settings/fuelgauge/BatterySipper;->mUidCache:Ljava/util/HashMap;

    .line 68
    iput-object p1, p0, Lcom/android/settings/fuelgauge/BatterySipper;->mContext:Landroid/content/Context;

    .line 69
    iput-object p2, p0, Lcom/android/settings/fuelgauge/BatterySipper;->mRequestQueue:Ljava/util/ArrayList;

    .line 70
    iput-object p3, p0, Lcom/android/settings/fuelgauge/BatterySipper;->mHandler:Landroid/os/Handler;

    .line 71
    iput-object p8, p0, Lcom/android/settings/fuelgauge/BatterySipper;->values:[D

    .line 72
    iput-object p4, p0, Lcom/android/settings/fuelgauge/BatterySipper;->name:Ljava/lang/String;

    .line 73
    iput-object p5, p0, Lcom/android/settings/fuelgauge/BatterySipper;->drainType:Lcom/android/settings/fuelgauge/PowerUsageDetail$DrainType;

    .line 74
    if-lez p6, :cond_0

    .line 75
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatterySipper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/fuelgauge/BatterySipper;->icon:Landroid/graphics/drawable/Drawable;

    .line 77
    :cond_0
    if-eqz p8, :cond_1

    const/4 v0, 0x0

    aget-wide v0, p8, v0

    iput-wide v0, p0, Lcom/android/settings/fuelgauge/BatterySipper;->value:D

    .line 78
    :cond_1
    if-eqz p4, :cond_2

    if-nez p6, :cond_3

    :cond_2
    if-eqz p7, :cond_3

    .line 79
    invoke-virtual {p0, p7}, Lcom/android/settings/fuelgauge/BatterySipper;->getQuickNameIconForUid(Landroid/os/BatteryStats$Uid;)V

    .line 81
    :cond_3
    iput-object p7, p0, Lcom/android/settings/fuelgauge/BatterySipper;->uidObj:Landroid/os/BatteryStats$Uid;

    .line 82
    return-void
.end method


# virtual methods
.method public compareTo(Lcom/android/settings/fuelgauge/BatterySipper;)I
    .locals 4
    .parameter "other"

    .prologue
    .line 98
    invoke-virtual {p1}, Lcom/android/settings/fuelgauge/BatterySipper;->getSortValue()D

    move-result-wide v0

    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/BatterySipper;->getSortValue()D

    move-result-wide v2

    sub-double/2addr v0, v2

    double-to-int v0, v0

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    check-cast p1, Lcom/android/settings/fuelgauge/BatterySipper;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/settings/fuelgauge/BatterySipper;->compareTo(Lcom/android/settings/fuelgauge/BatterySipper;)I

    move-result v0

    return v0
.end method

.method getIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatterySipper;->icon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method getNameIcon()V
    .locals 26

    .prologue
    .line 138
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/fuelgauge/BatterySipper;->mContext:Landroid/content/Context;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v18

    .line 139
    .local v18, pm:Landroid/content/pm/PackageManager;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/fuelgauge/BatterySipper;->uidObj:Landroid/os/BatteryStats$Uid;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result v20

    .line 140
    .local v20, uid:I
    invoke-virtual/range {v18 .. v18}, Landroid/content/pm/PackageManager;->getDefaultActivityIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v7

    .line 141
    .local v7, defaultActivityIcon:Landroid/graphics/drawable/Drawable;
    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v15

    .line 142
    .local v15, packages:[Ljava/lang/String;
    if-nez v15, :cond_0

    .line 143
    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/fuelgauge/BatterySipper;->name:Ljava/lang/String;

    .line 203
    :goto_0
    return-void

    .line 147
    :cond_0
    move-object v0, v15

    array-length v0, v0

    move/from16 v23, v0

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/String;

    move-object v14, v0

    .line 148
    .local v14, packageLabels:[Ljava/lang/String;
    const/16 v23, 0x0

    const/16 v24, 0x0

    move-object v0, v15

    array-length v0, v0

    move/from16 v25, v0

    move-object v0, v15

    move/from16 v1, v23

    move-object v2, v14

    move/from16 v3, v24

    move/from16 v4, v25

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 150
    const/16 v19, -0x1

    .line 152
    .local v19, preferredIndex:I
    const/4 v9, 0x0

    .local v9, i:I
    :goto_1
    move-object v0, v14

    array-length v0, v0

    move/from16 v23, v0

    move v0, v9

    move/from16 v1, v23

    if-ge v0, v1, :cond_3

    .line 154
    aget-object v23, v14, v9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/fuelgauge/BatterySipper;->name:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_1

    move/from16 v19, v9

    .line 156
    :cond_1
    :try_start_0
    aget-object v23, v14, v9

    const/16 v24, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v23

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v5

    .line 157
    .local v5, ai:Landroid/content/pm/ApplicationInfo;
    move-object v0, v5

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v11

    .line 158
    .local v11, label:Ljava/lang/CharSequence;
    if-eqz v11, :cond_2

    .line 159
    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v23

    aput-object v23, v14, v9

    .line 161
    :cond_2
    move-object v0, v5

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->icon:I

    move/from16 v23, v0

    if-eqz v23, :cond_6

    .line 162
    aget-object v23, v15, v9

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/fuelgauge/BatterySipper;->defaultPackageName:Ljava/lang/String;

    .line 163
    move-object v0, v5

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/fuelgauge/BatterySipper;->icon:Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 170
    .end local v5           #ai:Landroid/content/pm/ApplicationInfo;
    .end local v11           #label:Ljava/lang/CharSequence;
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/fuelgauge/BatterySipper;->icon:Landroid/graphics/drawable/Drawable;

    move-object/from16 v23, v0

    if-nez v23, :cond_4

    move-object v0, v7

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/fuelgauge/BatterySipper;->icon:Landroid/graphics/drawable/Drawable;

    .line 172
    :cond_4
    move-object v0, v14

    array-length v0, v0

    move/from16 v23, v0

    const/16 v24, 0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_7

    .line 173
    const/16 v23, 0x0

    aget-object v23, v14, v23

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/fuelgauge/BatterySipper;->name:Ljava/lang/String;

    .line 196
    :cond_5
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/fuelgauge/BatterySipper;->uidObj:Landroid/os/BatteryStats$Uid;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result v23

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v21

    .line 197
    .local v21, uidString:Ljava/lang/String;
    new-instance v22, Lcom/android/settings/fuelgauge/BatterySipper$UidToDetail;

    invoke-direct/range {v22 .. v22}, Lcom/android/settings/fuelgauge/BatterySipper$UidToDetail;-><init>()V

    .line 198
    .local v22, utd:Lcom/android/settings/fuelgauge/BatterySipper$UidToDetail;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/fuelgauge/BatterySipper;->name:Ljava/lang/String;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v22

    iput-object v0, v1, Lcom/android/settings/fuelgauge/BatterySipper$UidToDetail;->name:Ljava/lang/String;

    .line 199
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/fuelgauge/BatterySipper;->icon:Landroid/graphics/drawable/Drawable;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v22

    iput-object v0, v1, Lcom/android/settings/fuelgauge/BatterySipper$UidToDetail;->icon:Landroid/graphics/drawable/Drawable;

    .line 200
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/fuelgauge/BatterySipper;->defaultPackageName:Ljava/lang/String;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v22

    iput-object v0, v1, Lcom/android/settings/fuelgauge/BatterySipper$UidToDetail;->packageName:Ljava/lang/String;

    .line 201
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/fuelgauge/BatterySipper;->mUidCache:Ljava/util/HashMap;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 202
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/fuelgauge/BatterySipper;->mHandler:Landroid/os/Handler;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/fuelgauge/BatterySipper;->mHandler:Landroid/os/Handler;

    move-object/from16 v24, v0

    const/16 v25, 0x1

    invoke-virtual/range {v24 .. v26}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 166
    .end local v21           #uidString:Ljava/lang/String;
    .end local v22           #utd:Lcom/android/settings/fuelgauge/BatterySipper$UidToDetail;
    :catch_0
    move-exception v23

    move-object/from16 v8, v23

    .line 167
    .local v8, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v23, "BatterySipper"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "Package name is not found, "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move-object v1, v8

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    .end local v8           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_6
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_1

    .line 176
    :cond_7
    move-object v6, v15

    .local v6, arr$:[Ljava/lang/String;
    array-length v12, v6

    .local v12, len$:I
    const/4 v10, 0x0

    .local v10, i$:I
    :goto_3
    if-ge v10, v12, :cond_5

    aget-object v17, v6, v10

    .line 178
    .local v17, pkgName:Ljava/lang/String;
    const/16 v23, 0x0

    :try_start_1
    move-object/from16 v0, v18

    move-object/from16 v1, v17

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v16

    .line 179
    .local v16, pi:Landroid/content/pm/PackageInfo;
    move-object/from16 v0, v16

    iget v0, v0, Landroid/content/pm/PackageInfo;->sharedUserLabel:I

    move/from16 v23, v0

    if-eqz v23, :cond_8

    .line 180
    move-object/from16 v0, v16

    iget v0, v0, Landroid/content/pm/PackageInfo;->sharedUserLabel:I

    move/from16 v23, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v24, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    move/from16 v2, v23

    move-object/from16 v3, v24

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/pm/PackageManager;->getText(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v13

    .line 182
    .local v13, nm:Ljava/lang/CharSequence;
    if-eqz v13, :cond_8

    .line 183
    invoke-virtual {v13}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/fuelgauge/BatterySipper;->name:Ljava/lang/String;

    .line 184
    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->icon:I

    move/from16 v23, v0

    if-eqz v23, :cond_5

    .line 185
    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/fuelgauge/BatterySipper;->defaultPackageName:Ljava/lang/String;

    .line 186
    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/fuelgauge/BatterySipper;->icon:Landroid/graphics/drawable/Drawable;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_2

    .line 191
    .end local v13           #nm:Ljava/lang/CharSequence;
    .end local v16           #pi:Landroid/content/pm/PackageInfo;
    :catch_1
    move-exception v23

    move-object/from16 v8, v23

    .line 192
    .restart local v8       #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v23, "BatterySipper"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "Package name is not found, "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move-object v1, v8

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    .end local v8           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_8
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_3
.end method

.method getQuickNameIconForUid(Landroid/os/BatteryStats$Uid;)V
    .locals 8
    .parameter "uidObj"

    .prologue
    .line 102
    invoke-virtual {p1}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result v3

    .line 103
    .local v3, uid:I
    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    .line 104
    .local v4, uidString:Ljava/lang/String;
    iget-object v6, p0, Lcom/android/settings/fuelgauge/BatterySipper;->mUidCache:Ljava/util/HashMap;

    invoke-virtual {v6, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 105
    iget-object v6, p0, Lcom/android/settings/fuelgauge/BatterySipper;->mUidCache:Ljava/util/HashMap;

    invoke-virtual {v6, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/settings/fuelgauge/BatterySipper$UidToDetail;

    .line 106
    .local v5, utd:Lcom/android/settings/fuelgauge/BatterySipper$UidToDetail;
    iget-object v6, v5, Lcom/android/settings/fuelgauge/BatterySipper$UidToDetail;->packageName:Ljava/lang/String;

    iput-object v6, p0, Lcom/android/settings/fuelgauge/BatterySipper;->defaultPackageName:Ljava/lang/String;

    .line 107
    iget-object v6, v5, Lcom/android/settings/fuelgauge/BatterySipper$UidToDetail;->name:Ljava/lang/String;

    iput-object v6, p0, Lcom/android/settings/fuelgauge/BatterySipper;->name:Ljava/lang/String;

    .line 108
    iget-object v6, v5, Lcom/android/settings/fuelgauge/BatterySipper$UidToDetail;->icon:Landroid/graphics/drawable/Drawable;

    iput-object v6, p0, Lcom/android/settings/fuelgauge/BatterySipper;->icon:Landroid/graphics/drawable/Drawable;

    .line 131
    .end local v5           #utd:Lcom/android/settings/fuelgauge/BatterySipper$UidToDetail;
    :goto_0
    return-void

    .line 111
    :cond_0
    iget-object v6, p0, Lcom/android/settings/fuelgauge/BatterySipper;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 112
    .local v2, pm:Landroid/content/pm/PackageManager;
    invoke-virtual {v2}, Landroid/content/pm/PackageManager;->getDefaultActivityIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 113
    .local v0, defaultActivityIcon:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v1

    .line 114
    .local v1, packages:[Ljava/lang/String;
    invoke-virtual {v2}, Landroid/content/pm/PackageManager;->getDefaultActivityIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings/fuelgauge/BatterySipper;->icon:Landroid/graphics/drawable/Drawable;

    .line 115
    if-nez v1, :cond_3

    .line 117
    if-nez v3, :cond_2

    .line 118
    iget-object v6, p0, Lcom/android/settings/fuelgauge/BatterySipper;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f08045d

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings/fuelgauge/BatterySipper;->name:Ljava/lang/String;

    .line 122
    :cond_1
    :goto_1
    const v6, 0x7f02003d

    iput v6, p0, Lcom/android/settings/fuelgauge/BatterySipper;->iconId:I

    .line 123
    iget-object v6, p0, Lcom/android/settings/fuelgauge/BatterySipper;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    iget v7, p0, Lcom/android/settings/fuelgauge/BatterySipper;->iconId:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings/fuelgauge/BatterySipper;->icon:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    .line 119
    :cond_2
    const-string v6, "mediaserver"

    iget-object v7, p0, Lcom/android/settings/fuelgauge/BatterySipper;->name:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 120
    iget-object v6, p0, Lcom/android/settings/fuelgauge/BatterySipper;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f08045e

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings/fuelgauge/BatterySipper;->name:Ljava/lang/String;

    goto :goto_1

    .line 128
    :cond_3
    iget-object v6, p0, Lcom/android/settings/fuelgauge/BatterySipper;->mRequestQueue:Ljava/util/ArrayList;

    monitor-enter v6

    .line 129
    :try_start_0
    iget-object v7, p0, Lcom/android/settings/fuelgauge/BatterySipper;->mRequestQueue:Ljava/util/ArrayList;

    invoke-virtual {v7, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 130
    monitor-exit v6

    goto :goto_0

    :catchall_0
    move-exception v7

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v7
.end method

.method getSortValue()D
    .locals 2

    .prologue
    .line 85
    iget-wide v0, p0, Lcom/android/settings/fuelgauge/BatterySipper;->value:D

    return-wide v0
.end method
