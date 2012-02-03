.class Lcom/android/server/EncryptService$1;
.super Landroid/content/BroadcastReceiver;
.source "EncryptService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/EncryptService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/EncryptService;


# direct methods
.method constructor <init>(Lcom/android/server/EncryptService;)V
    .locals 0
    .parameter

    .prologue
    .line 109
    iput-object p1, p0, Lcom/android/server/EncryptService$1;->this$0:Lcom/android/server/EncryptService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private disableADB(Landroid/content/Context;)V
    .locals 6
    .parameter "context"

    .prologue
    const-string v5, "persist.sys.disableadb"

    const-string v4, "persist.service.adb.enable"

    const-string v3, "0"

    .line 204
    const-string v2, "persist.service.adb.enable"

    const-string v2, "0"

    invoke-static {v4, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 206
    .local v1, prevADB:Ljava/lang/String;
    const-string v2, "1"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 207
    const-string v2, "persist.sys.disableadb"

    const-string v2, "0"

    invoke-static {v5, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 211
    .local v0, disableadb:Ljava/lang/String;
    const-string v2, "0"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 212
    const-string v2, "persist.sys.disableadb"

    const-string v2, "2"

    invoke-static {v5, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    const-string v2, "persist.service.adb.enable"

    const-string v2, "0"

    invoke-static {v4, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 216
    .end local v0           #disableadb:Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private enableADB(Landroid/content/Context;)V
    .locals 10
    .parameter "context"

    .prologue
    const/4 v6, 0x1

    const-string v9, "persist.service.adb.enable"

    const-string v8, "adb_enabled"

    const-string v7, "1"

    const-string v5, "0"

    .line 183
    const-string v3, "persist.service.adb.enable"

    const-string v3, "0"

    invoke-static {v9, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 185
    .local v2, prevADB:Ljava/lang/String;
    const-string v3, "0"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 186
    const-string v3, "persist.sys.disableadb"

    const-string v4, "0"

    invoke-static {v3, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 189
    .local v1, disableadb:Ljava/lang/String;
    const-string v3, "2"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-ne v3, v6, :cond_0

    .line 190
    const-string v3, "persist.sys.disableadb"

    const-string v4, "1"

    invoke-static {v3, v7}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 194
    .local v0, cr:Landroid/content/ContentResolver;
    if-eqz v0, :cond_1

    const-string v3, "adb_enabled"

    const/4 v3, 0x0

    invoke-static {v0, v8, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-nez v3, :cond_1

    .line 195
    const-string v3, "adb_enabled"

    invoke-static {v0, v8, v6}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 201
    .end local v0           #cr:Landroid/content/ContentResolver;
    .end local v1           #disableadb:Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 197
    .restart local v0       #cr:Landroid/content/ContentResolver;
    .restart local v1       #disableadb:Ljava/lang/String;
    :cond_1
    const-string v3, "persist.service.adb.enable"

    const-string v3, "1"

    invoke-static {v9, v7}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 114
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    const-string v8, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 116
    const-string v7, "storage"

    invoke-virtual {p1, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/storage/StorageManager;

    .line 118
    .local v6, sm:Landroid/os/storage/StorageManager;
    if-eqz v6, :cond_1

    invoke-virtual {v6}, Landroid/os/storage/StorageManager;->isUsbMassStorageEnabled()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 180
    .end local v6           #sm:Landroid/os/storage/StorageManager;
    :cond_0
    :goto_0
    return-void

    .line 123
    .restart local v6       #sm:Landroid/os/storage/StorageManager;
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/server/EncryptService$1;->disableADB(Landroid/content/Context;)V

    goto :goto_0

    .line 124
    .end local v6           #sm:Landroid/os/storage/StorageManager;
    :cond_2
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    const-string v8, "android.intent.action.USER_PRESENT"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 125
    invoke-direct {p0, p1}, Lcom/android/server/EncryptService$1;->enableADB(Landroid/content/Context;)V

    goto :goto_0

    .line 126
    :cond_3
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    const-string v8, "android.intent.action.SCREEN_ON"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 127
    const-string v7, "keyguard"

    invoke-virtual {p1, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/KeyguardManager;

    .line 131
    .local v4, km:Landroid/app/KeyguardManager;
    if-eqz v4, :cond_0

    invoke-virtual {v4}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v7

    if-nez v7, :cond_0

    .line 132
    invoke-direct {p0, p1}, Lcom/android/server/EncryptService$1;->enableADB(Landroid/content/Context;)V

    goto :goto_0

    .line 134
    .end local v4           #km:Landroid/app/KeyguardManager;
    :cond_4
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    const-string v8, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 135
    iget-object v7, p0, Lcom/android/server/EncryptService$1;->this$0:Lcom/android/server/EncryptService;

    #getter for: Lcom/android/server/EncryptService;->mContext:Landroid/content/Context;
    invoke-static {v7}, Lcom/android/server/EncryptService;->access$000(Lcom/android/server/EncryptService;)Landroid/content/Context;

    move-result-object v7

    const-string v8, "keyguard"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/KeyguardManager;

    .line 136
    .restart local v4       #km:Landroid/app/KeyguardManager;
    const/4 v3, 0x0

    .line 137
    .local v3, keyguard:Z
    const-string v7, "persist.sys.disableadb"

    const-string v8, "0"

    invoke-static {v7, v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 138
    .local v1, disableadb:Ljava/lang/String;
    const-string v7, "persist.service.adb.enable"

    const-string v8, "0"

    invoke-static {v7, v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 140
    .local v5, prevADB:Ljava/lang/String;
    if-eqz v4, :cond_5

    invoke-virtual {v4}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v3

    .line 145
    :cond_5
    const-string v7, "2"

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_7

    .line 147
    const/4 v7, 0x1

    if-ne v3, v7, :cond_6

    .line 148
    const-string v7, "persist.sys.disableadb"

    const-string v8, "2"

    invoke-static {v7, v8}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    const-string v7, "persist.service.adb.enable"

    const-string v8, "0"

    invoke-static {v7, v8}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 151
    :cond_6
    const-string v7, "persist.sys.disableadb"

    const-string v8, "1"

    invoke-static {v7, v8}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 155
    .local v0, cr:Landroid/content/ContentResolver;
    if-eqz v0, :cond_0

    const-string v7, "adb_enabled"

    const/4 v8, 0x0

    invoke-static {v0, v7, v8}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    if-nez v7, :cond_0

    .line 156
    const-string v7, "adb_enabled"

    const/4 v8, 0x1

    invoke-static {v0, v7, v8}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    .line 159
    .end local v0           #cr:Landroid/content/ContentResolver;
    :cond_7
    const-string v7, "1"

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    const/4 v7, 0x1

    if-ne v3, v7, :cond_0

    .line 160
    const-string v7, "persist.sys.disableadb"

    const-string v8, "2"

    invoke-static {v7, v8}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    const-string v7, "persist.service.adb.enable"

    const-string v8, "0"

    invoke-static {v7, v8}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 163
    .end local v1           #disableadb:Ljava/lang/String;
    .end local v3           #keyguard:Z
    .end local v4           #km:Landroid/app/KeyguardManager;
    .end local v5           #prevADB:Ljava/lang/String;
    :cond_8
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    const-string v8, "android.app.action.DEVICE_POLICY_MANAGER_STATE_CHANGED"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 164
    const-string v7, "device_policy"

    invoke-virtual {p1, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/admin/DevicePolicyManager;

    .line 166
    .local v2, dpm:Landroid/app/admin/DevicePolicyManager;
    if-eqz v2, :cond_0

    const/4 v7, 0x0

    invoke-virtual {v2, v7}, Landroid/app/admin/DevicePolicyManager;->getRequireDeviceEncryption(Landroid/content/ComponentName;)Z

    move-result v7

    const/4 v8, 0x1

    if-eq v7, v8, :cond_9

    const/4 v7, 0x0

    invoke-virtual {v2, v7}, Landroid/app/admin/DevicePolicyManager;->getRequireStorageCardEncryption(Landroid/content/ComponentName;)Z

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_0

    .line 169
    :cond_9
    const-string v7, "persist.sys.disableadb"

    const-string v8, "0"

    invoke-static {v7, v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 171
    .restart local v1       #disableadb:Ljava/lang/String;
    const-string v7, "0"

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 172
    const-string v7, "persist.sys.disableadb"

    const-string v8, "1"

    invoke-static {v7, v8}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    const-string v7, "keyguard"

    invoke-virtual {p1, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/KeyguardManager;

    .line 174
    .restart local v4       #km:Landroid/app/KeyguardManager;
    if-eqz v4, :cond_0

    invoke-virtual {v4}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_0

    .line 175
    invoke-direct {p0, p1}, Lcom/android/server/EncryptService$1;->disableADB(Landroid/content/Context;)V

    goto/16 :goto_0
.end method
