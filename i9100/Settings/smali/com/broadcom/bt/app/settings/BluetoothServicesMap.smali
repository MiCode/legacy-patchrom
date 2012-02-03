.class public Lcom/broadcom/bt/app/settings/BluetoothServicesMap;
.super Ljava/lang/Object;
.source "BluetoothServicesMap.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/broadcom/bt/app/settings/BluetoothServicesMap$IServiceListManager;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    return-void
.end method

.method public static getServiceStringByUUID(Landroid/content/Context;Landroid/os/ParcelUuid;Lcom/broadcom/bt/app/settings/BluetoothServicesMap$IServiceListManager;)V
    .locals 10
    .parameter "ctx"
    .parameter "uuid"
    .parameter "listManager"

    .prologue
    const v8, 0x7f080751

    const/4 v7, 0x1

    const/4 v6, 0x0

    const-string v9, "BluetoothServicesMap"

    .line 69
    invoke-virtual {p1}, Landroid/os/ParcelUuid;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    .line 70
    .local v3, uuidStr:Ljava/lang/String;
    const-string v4, "BluetoothServicesMap"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "UUID = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v9, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    if-nez v3, :cond_0

    .line 206
    :goto_0
    return-void

    .line 74
    :cond_0
    const-string v4, "0000-1000-8000-00805F9B34FB"

    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 75
    const-string v4, "BluetoothServicesMap"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown UUID = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v9, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    new-array v4, v7, [Ljava/lang/Object;

    aput-object v3, v4, v6

    invoke-virtual {p0, v8, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p2, v4}, Lcom/broadcom/bt/app/settings/BluetoothServicesMap$IServiceListManager;->add(Ljava/lang/String;)V

    goto :goto_0

    .line 80
    :cond_1
    const/16 v4, 0x8

    invoke-virtual {v3, v6, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    .line 81
    .local v2, uuidPrefixStr:Ljava/lang/String;
    const/4 v1, -0x1

    .line 83
    .local v1, uuidPrefix:I
    const/16 v4, 0x10

    :try_start_0
    invoke-static {v2, v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 88
    :goto_1
    sparse-switch v1, :sswitch_data_0

    .line 205
    new-array v4, v7, [Ljava/lang/Object;

    aput-object v3, v4, v6

    invoke-virtual {p0, v8, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p2, v4}, Lcom/broadcom/bt/app/settings/BluetoothServicesMap$IServiceListManager;->add(Ljava/lang/String;)V

    goto :goto_0

    .line 84
    :catch_0
    move-exception v0

    .line 85
    .local v0, e:Ljava/lang/Exception;
    new-array v4, v7, [Ljava/lang/Object;

    aput-object v3, v4, v6

    invoke-virtual {p0, v8, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p2, v4}, Lcom/broadcom/bt/app/settings/BluetoothServicesMap$IServiceListManager;->add(Ljava/lang/String;)V

    goto :goto_1

    .line 90
    .end local v0           #e:Ljava/lang/Exception;
    :sswitch_0
    const v4, 0x7f080734

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p2, v4}, Lcom/broadcom/bt/app/settings/BluetoothServicesMap$IServiceListManager;->add(Ljava/lang/String;)V

    goto :goto_0

    .line 94
    :sswitch_1
    const v4, 0x7f080735

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p2, v4}, Lcom/broadcom/bt/app/settings/BluetoothServicesMap$IServiceListManager;->add(Ljava/lang/String;)V

    goto :goto_0

    .line 98
    :sswitch_2
    const v4, 0x7f080736

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p2, v4}, Lcom/broadcom/bt/app/settings/BluetoothServicesMap$IServiceListManager;->add(Ljava/lang/String;)V

    goto :goto_0

    .line 102
    :sswitch_3
    const v4, 0x7f080737

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p2, v4}, Lcom/broadcom/bt/app/settings/BluetoothServicesMap$IServiceListManager;->add(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 106
    :sswitch_4
    const v4, 0x7f080738

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p2, v4}, Lcom/broadcom/bt/app/settings/BluetoothServicesMap$IServiceListManager;->add(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 110
    :sswitch_5
    const v4, 0x7f080739

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p2, v4}, Lcom/broadcom/bt/app/settings/BluetoothServicesMap$IServiceListManager;->add(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 114
    :sswitch_6
    const v4, 0x7f08073a

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p2, v4}, Lcom/broadcom/bt/app/settings/BluetoothServicesMap$IServiceListManager;->add(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 118
    :sswitch_7
    const v4, 0x7f08073b

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p2, v4}, Lcom/broadcom/bt/app/settings/BluetoothServicesMap$IServiceListManager;->add(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 122
    :sswitch_8
    const v4, 0x7f08073c

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p2, v4}, Lcom/broadcom/bt/app/settings/BluetoothServicesMap$IServiceListManager;->add(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 126
    :sswitch_9
    const v4, 0x7f08073e

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p2, v4}, Lcom/broadcom/bt/app/settings/BluetoothServicesMap$IServiceListManager;->add(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 130
    :sswitch_a
    const v4, 0x7f08073f

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p2, v4}, Lcom/broadcom/bt/app/settings/BluetoothServicesMap$IServiceListManager;->add(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 134
    :sswitch_b
    const v4, 0x7f080740

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p2, v4}, Lcom/broadcom/bt/app/settings/BluetoothServicesMap$IServiceListManager;->add(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 138
    :sswitch_c
    const v4, 0x7f080741

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p2, v4}, Lcom/broadcom/bt/app/settings/BluetoothServicesMap$IServiceListManager;->add(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 142
    :sswitch_d
    const v4, 0x7f080742

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p2, v4}, Lcom/broadcom/bt/app/settings/BluetoothServicesMap$IServiceListManager;->add(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 146
    :sswitch_e
    const v4, 0x7f080743

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p2, v4}, Lcom/broadcom/bt/app/settings/BluetoothServicesMap$IServiceListManager;->add(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 150
    :sswitch_f
    const v4, 0x7f08073d

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p2, v4}, Lcom/broadcom/bt/app/settings/BluetoothServicesMap$IServiceListManager;->add(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 154
    :sswitch_10
    const v4, 0x7f080744

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p2, v4}, Lcom/broadcom/bt/app/settings/BluetoothServicesMap$IServiceListManager;->add(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 158
    :sswitch_11
    const v4, 0x7f080745

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p2, v4}, Lcom/broadcom/bt/app/settings/BluetoothServicesMap$IServiceListManager;->add(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 162
    :sswitch_12
    const v4, 0x7f080746

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p2, v4}, Lcom/broadcom/bt/app/settings/BluetoothServicesMap$IServiceListManager;->add(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 166
    :sswitch_13
    const v4, 0x7f080747

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p2, v4}, Lcom/broadcom/bt/app/settings/BluetoothServicesMap$IServiceListManager;->add(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 170
    :sswitch_14
    const v4, 0x7f080748

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p2, v4}, Lcom/broadcom/bt/app/settings/BluetoothServicesMap$IServiceListManager;->add(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 174
    :sswitch_15
    const v4, 0x7f080749

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p2, v4}, Lcom/broadcom/bt/app/settings/BluetoothServicesMap$IServiceListManager;->add(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 178
    :sswitch_16
    const v4, 0x7f08074a

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p2, v4}, Lcom/broadcom/bt/app/settings/BluetoothServicesMap$IServiceListManager;->add(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 182
    :sswitch_17
    const v4, 0x7f08074b

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p2, v4}, Lcom/broadcom/bt/app/settings/BluetoothServicesMap$IServiceListManager;->add(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 186
    :sswitch_18
    const v4, 0x7f08074c

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p2, v4}, Lcom/broadcom/bt/app/settings/BluetoothServicesMap$IServiceListManager;->add(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 190
    :sswitch_19
    const v4, 0x7f08074d

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p2, v4}, Lcom/broadcom/bt/app/settings/BluetoothServicesMap$IServiceListManager;->add(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 194
    :sswitch_1a
    const v4, 0x7f08074e

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p2, v4}, Lcom/broadcom/bt/app/settings/BluetoothServicesMap$IServiceListManager;->add(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 198
    :sswitch_1b
    const v4, 0x7f08074f

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p2, v4}, Lcom/broadcom/bt/app/settings/BluetoothServicesMap$IServiceListManager;->add(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 202
    :sswitch_1c
    const v4, 0x7f080750

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p2, v4}, Lcom/broadcom/bt/app/settings/BluetoothServicesMap$IServiceListManager;->add(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 88
    :sswitch_data_0
    .sparse-switch
        0x1101 -> :sswitch_d
        0x1102 -> :sswitch_19
        0x1103 -> :sswitch_e
        0x1104 -> :sswitch_15
        0x1105 -> :sswitch_9
        0x1106 -> :sswitch_a
        0x1108 -> :sswitch_3
        0x1109 -> :sswitch_16
        0x110a -> :sswitch_0
        0x110b -> :sswitch_1
        0x110c -> :sswitch_8
        0x110d -> :sswitch_2
        0x110e -> :sswitch_7
        0x1110 -> :sswitch_17
        0x1111 -> :sswitch_18
        0x1112 -> :sswitch_4
        0x1115 -> :sswitch_12
        0x1116 -> :sswitch_13
        0x1117 -> :sswitch_14
        0x111a -> :sswitch_1a
        0x111e -> :sswitch_5
        0x111f -> :sswitch_6
        0x1122 -> :sswitch_c
        0x1124 -> :sswitch_11
        0x112d -> :sswitch_1c
        0x1130 -> :sswitch_b
        0x1200 -> :sswitch_f
        0x1203 -> :sswitch_10
        0x1305 -> :sswitch_1b
    .end sparse-switch
.end method
