.class public Landroid/app/admin/DevicePolicyManager$MiscPolicy;
.super Ljava/lang/Object;
.source "DevicePolicyManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/admin/DevicePolicyManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MiscPolicy"
.end annotation


# static fields
.field public static final WIPE_EXTERNAL_MEMORY:I = 0x2

.field public static final WIPE_INTERNAL_EXTERNAL_MEMORY:I = 0x3

.field public static final WIPE_INTERNAL_MEMORY:I = 0x1


# instance fields
.field private final mService:Landroid/app/enterprise/IMiscPolicy;

.field final synthetic this$0:Landroid/app/admin/DevicePolicyManager;


# direct methods
.method private constructor <init>(Landroid/app/admin/DevicePolicyManager;)V
    .locals 1
    .parameter

    .prologue
    .line 3998
    iput-object p1, p0, Landroid/app/admin/DevicePolicyManager$MiscPolicy;->this$0:Landroid/app/admin/DevicePolicyManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3999
    const-string/jumbo v0, "misc_policy"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/enterprise/IMiscPolicy$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/enterprise/IMiscPolicy;

    move-result-object v0

    iput-object v0, p0, Landroid/app/admin/DevicePolicyManager$MiscPolicy;->mService:Landroid/app/enterprise/IMiscPolicy;

    .line 4000
    return-void
.end method

.method synthetic constructor <init>(Landroid/app/admin/DevicePolicyManager;Landroid/app/admin/DevicePolicyManager$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 3987
    invoke-direct {p0, p1}, Landroid/app/admin/DevicePolicyManager$MiscPolicy;-><init>(Landroid/app/admin/DevicePolicyManager;)V

    return-void
.end method


# virtual methods
.method public addBookmarkOnHomeScreenBitmap(Landroid/net/Uri;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 3
    .parameter "bookmarkUri"
    .parameter "title"
    .parameter "icon"

    .prologue
    .line 4014
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$MiscPolicy;->mService:Landroid/app/enterprise/IMiscPolicy;

    if-eqz v1, :cond_0

    .line 4016
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$MiscPolicy;->mService:Landroid/app/enterprise/IMiscPolicy;

    invoke-interface {v1, p1, p2, p3}, Landroid/app/enterprise/IMiscPolicy;->addBookmarkOnHomeScreenBitmap(Landroid/net/Uri;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4021
    :cond_0
    :goto_0
    return-void

    .line 4017
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 4018
    .local v0, e:Landroid/os/RemoteException;
    invoke-static {}, Landroid/app/admin/DevicePolicyManager;->access$900()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Failed talking with misc policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public addBookmarkOnHomeScreenByteBuffer(Landroid/net/Uri;Ljava/lang/String;[B)V
    .locals 3
    .parameter "bookmarkUri"
    .parameter "title"
    .parameter "iconBuffer"

    .prologue
    .line 4004
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$MiscPolicy;->mService:Landroid/app/enterprise/IMiscPolicy;

    if-eqz v1, :cond_0

    .line 4006
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$MiscPolicy;->mService:Landroid/app/enterprise/IMiscPolicy;

    invoke-interface {v1, p1, p2, p3}, Landroid/app/enterprise/IMiscPolicy;->addBookmarkOnHomeScreenByteBuffer(Landroid/net/Uri;Ljava/lang/String;[B)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4011
    :cond_0
    :goto_0
    return-void

    .line 4007
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 4008
    .local v0, e:Landroid/os/RemoteException;
    invoke-static {}, Landroid/app/admin/DevicePolicyManager;->access$900()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Failed talking with misc policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public addSubscribedCalendar(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;)Z
    .locals 3
    .parameter "emailId"
    .parameter "accountType"
    .parameter "url"
    .parameter "displayName"

    .prologue
    .line 4025
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$MiscPolicy;->mService:Landroid/app/enterprise/IMiscPolicy;

    if-eqz v1, :cond_0

    .line 4027
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$MiscPolicy;->mService:Landroid/app/enterprise/IMiscPolicy;

    invoke-interface {v1, p1, p2, p3, p4}, Landroid/app/enterprise/IMiscPolicy;->addSubscribedCalendar(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 4032
    :goto_0
    return v1

    .line 4028
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 4029
    .local v0, e:Landroid/os/RemoteException;
    invoke-static {}, Landroid/app/admin/DevicePolicyManager;->access$900()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Failed talking with misc policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4032
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public allowBluetooth(Z)Z
    .locals 3
    .parameter "enable"

    .prologue
    .line 4163
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$MiscPolicy;->mService:Landroid/app/enterprise/IMiscPolicy;

    if-eqz v1, :cond_0

    .line 4165
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$MiscPolicy;->mService:Landroid/app/enterprise/IMiscPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IMiscPolicy;->allowBluetooth(Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 4170
    :goto_0
    return v1

    .line 4166
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 4167
    .local v0, e:Landroid/os/RemoteException;
    invoke-static {}, Landroid/app/admin/DevicePolicyManager;->access$900()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Failed talking with misc info policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4170
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public allowWiFi(Z)Z
    .locals 3
    .parameter "enable"

    .prologue
    .line 4109
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$MiscPolicy;->mService:Landroid/app/enterprise/IMiscPolicy;

    if-eqz v1, :cond_0

    .line 4111
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$MiscPolicy;->mService:Landroid/app/enterprise/IMiscPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IMiscPolicy;->allowWiFi(Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 4116
    :goto_0
    return v1

    .line 4112
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 4113
    .local v0, e:Landroid/os/RemoteException;
    invoke-static {}, Landroid/app/admin/DevicePolicyManager;->access$900()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Failed talking with misc info policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4116
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public formatInternalStorage(ZZ)Z
    .locals 3
    .parameter "includeSystemDirectory"
    .parameter "includeDataDirectory"

    .prologue
    .line 4338
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$MiscPolicy;->mService:Landroid/app/enterprise/IMiscPolicy;

    if-eqz v1, :cond_0

    .line 4340
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$MiscPolicy;->mService:Landroid/app/enterprise/IMiscPolicy;

    invoke-interface {v1, p1, p2}, Landroid/app/enterprise/IMiscPolicy;->formatInternalStorage(ZZ)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 4346
    :goto_0
    return v1

    .line 4342
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 4343
    .local v0, e:Landroid/os/RemoteException;
    invoke-static {}, Landroid/app/admin/DevicePolicyManager;->access$900()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Failed talking with misc policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4346
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public formatSelective([Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;
    .locals 3
    .parameter "fileList"
    .parameter "filters"

    .prologue
    .line 4309
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$MiscPolicy;->mService:Landroid/app/enterprise/IMiscPolicy;

    if-eqz v1, :cond_0

    .line 4311
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$MiscPolicy;->mService:Landroid/app/enterprise/IMiscPolicy;

    invoke-interface {v1, p1, p2}, Landroid/app/enterprise/IMiscPolicy;->formatSelective([Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 4316
    :goto_0
    return-object v1

    .line 4312
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 4313
    .local v0, e:Landroid/os/RemoteException;
    invoke-static {}, Landroid/app/admin/DevicePolicyManager;->access$900()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Failed talking with device info policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4316
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public formatStorageCard(Z)Z
    .locals 3
    .parameter "isExternal"

    .prologue
    .line 4358
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$MiscPolicy;->mService:Landroid/app/enterprise/IMiscPolicy;

    if-eqz v1, :cond_0

    .line 4360
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$MiscPolicy;->mService:Landroid/app/enterprise/IMiscPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IMiscPolicy;->formatStorageCard(Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 4365
    :goto_0
    return v1

    .line 4361
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 4362
    .local v0, e:Landroid/os/RemoteException;
    invoke-static {}, Landroid/app/admin/DevicePolicyManager;->access$900()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Failed talking with misc policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4365
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getInstalledCertiFicateList()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/app/enterprise/CertificateInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 4073
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$MiscPolicy;->mService:Landroid/app/enterprise/IMiscPolicy;

    if-eqz v1, :cond_0

    .line 4075
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$MiscPolicy;->mService:Landroid/app/enterprise/IMiscPolicy;

    invoke-interface {v1}, Landroid/app/enterprise/IMiscPolicy;->getInstalledCertiFicateList()Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 4080
    :goto_0
    return-object v1

    .line 4076
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 4077
    .local v0, e:Landroid/os/RemoteException;
    invoke-static {}, Landroid/app/admin/DevicePolicyManager;->access$900()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Failed talking with misc policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4080
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public installCertificateWithType(Ljava/lang/String;[B)V
    .locals 3
    .parameter "type"
    .parameter "value"

    .prologue
    .line 4042
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$MiscPolicy;->mService:Landroid/app/enterprise/IMiscPolicy;

    if-eqz v1, :cond_0

    .line 4044
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$MiscPolicy;->mService:Landroid/app/enterprise/IMiscPolicy;

    invoke-interface {v1, p1, p2}, Landroid/app/enterprise/IMiscPolicy;->installCertificateWithType(Ljava/lang/String;[B)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4049
    :cond_0
    :goto_0
    return-void

    .line 4045
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 4046
    .local v0, e:Landroid/os/RemoteException;
    invoke-static {}, Landroid/app/admin/DevicePolicyManager;->access$900()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Failed talking with misc policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public installCertificatesFromSdCard()V
    .locals 3

    .prologue
    .line 4055
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$MiscPolicy;->mService:Landroid/app/enterprise/IMiscPolicy;

    if-eqz v1, :cond_0

    .line 4057
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$MiscPolicy;->mService:Landroid/app/enterprise/IMiscPolicy;

    invoke-interface {v1}, Landroid/app/enterprise/IMiscPolicy;->installCertificatesFromSdCard()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4062
    :cond_0
    :goto_0
    return-void

    .line 4058
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 4059
    .local v0, e:Landroid/os/RemoteException;
    invoke-static {}, Landroid/app/admin/DevicePolicyManager;->access$900()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Failed talking with misc policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public isBluetoothEnabled(Z)Z
    .locals 6
    .parameter "showMsg"

    .prologue
    const/4 v5, 0x1

    .line 4181
    const/4 v1, 0x1

    .line 4183
    .local v1, enabled:Z
    :try_start_0
    iget-object v3, p0, Landroid/app/admin/DevicePolicyManager$MiscPolicy;->this$0:Landroid/app/admin/DevicePolicyManager;

    #getter for: Landroid/app/admin/DevicePolicyManager;->mContext:Landroid/content/Context;
    invoke-static {v3}, Landroid/app/admin/DevicePolicyManager;->access$1000(Landroid/app/admin/DevicePolicyManager;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "bluetooth_enabled"

    invoke-static {v3, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 4184
    .local v2, value:I
    if-ne v5, v2, :cond_0

    move v1, v5

    .line 4188
    .end local v2           #value:I
    :goto_0
    return v1

    .line 4184
    .restart local v2       #value:I
    :cond_0
    const/4 v3, 0x0

    move v1, v3

    goto :goto_0

    .line 4185
    .end local v2           #value:I
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 4186
    .local v0, e:Ljava/lang/Exception;
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public isCameraEnabled(Z)Z
    .locals 3
    .parameter "showMsg"

    .prologue
    .line 4217
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$MiscPolicy;->mService:Landroid/app/enterprise/IMiscPolicy;

    if-eqz v1, :cond_0

    .line 4219
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$MiscPolicy;->mService:Landroid/app/enterprise/IMiscPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IMiscPolicy;->isCameraEnabled(Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 4224
    :goto_0
    return v1

    .line 4220
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 4221
    .local v0, e:Landroid/os/RemoteException;
    invoke-static {}, Landroid/app/admin/DevicePolicyManager;->access$900()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Failed talking with device info policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4224
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isExternalStorageEncrypted()Z
    .locals 3

    .prologue
    .line 4422
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$MiscPolicy;->mService:Landroid/app/enterprise/IMiscPolicy;

    if-eqz v1, :cond_0

    .line 4424
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$MiscPolicy;->mService:Landroid/app/enterprise/IMiscPolicy;

    invoke-interface {v1}, Landroid/app/enterprise/IMiscPolicy;->isExternalStorageEncrypted()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 4429
    :goto_0
    return v1

    .line 4425
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 4426
    .local v0, e:Landroid/os/RemoteException;
    invoke-static {}, Landroid/app/admin/DevicePolicyManager;->access$900()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Failed talking with misc policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4429
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isInternalStorageEncrypted()Z
    .locals 3

    .prologue
    .line 4406
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$MiscPolicy;->mService:Landroid/app/enterprise/IMiscPolicy;

    if-eqz v1, :cond_0

    .line 4408
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$MiscPolicy;->mService:Landroid/app/enterprise/IMiscPolicy;

    invoke-interface {v1}, Landroid/app/enterprise/IMiscPolicy;->isInternalStorageEncrypted()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 4413
    :goto_0
    return v1

    .line 4409
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 4410
    .local v0, e:Landroid/os/RemoteException;
    invoke-static {}, Landroid/app/admin/DevicePolicyManager;->access$900()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Failed talking with misc policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4413
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isMicrophoneEnabled(Z)Z
    .locals 3
    .parameter "showMsg"

    .prologue
    .line 4253
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$MiscPolicy;->mService:Landroid/app/enterprise/IMiscPolicy;

    if-eqz v1, :cond_0

    .line 4255
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$MiscPolicy;->mService:Landroid/app/enterprise/IMiscPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IMiscPolicy;->isMicrophoneEnabled(Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 4260
    :goto_0
    return v1

    .line 4256
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 4257
    .local v0, e:Landroid/os/RemoteException;
    invoke-static {}, Landroid/app/admin/DevicePolicyManager;->access$900()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Failed talking with misc policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4260
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public isWiFiEnabled(Z)Z
    .locals 6
    .parameter "showMsg"

    .prologue
    const/4 v5, 0x1

    .line 4127
    const/4 v1, 0x1

    .line 4129
    .local v1, enabled:Z
    :try_start_0
    iget-object v3, p0, Landroid/app/admin/DevicePolicyManager$MiscPolicy;->this$0:Landroid/app/admin/DevicePolicyManager;

    #getter for: Landroid/app/admin/DevicePolicyManager;->mContext:Landroid/content/Context;
    invoke-static {v3}, Landroid/app/admin/DevicePolicyManager;->access$1000(Landroid/app/admin/DevicePolicyManager;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "wifi_enabled"

    invoke-static {v3, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 4130
    .local v2, value:I
    if-ne v5, v2, :cond_0

    move v1, v5

    .line 4134
    .end local v2           #value:I
    :goto_0
    return v1

    .line 4130
    .restart local v2       #value:I
    :cond_0
    const/4 v3, 0x0

    move v1, v3

    goto :goto_0

    .line 4131
    .end local v2           #value:I
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 4132
    .local v0, e:Ljava/lang/Exception;
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public setBluetoothState(Z)Z
    .locals 3
    .parameter "enable"

    .prologue
    .line 4145
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$MiscPolicy;->mService:Landroid/app/enterprise/IMiscPolicy;

    if-eqz v1, :cond_0

    .line 4147
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$MiscPolicy;->mService:Landroid/app/enterprise/IMiscPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IMiscPolicy;->setBluetooth(Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 4152
    :goto_0
    return v1

    .line 4148
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 4149
    .local v0, e:Landroid/os/RemoteException;
    invoke-static {}, Landroid/app/admin/DevicePolicyManager;->access$900()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Failed talking with misc info policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4152
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setCameraState(Z)Z
    .locals 3
    .parameter "enable"

    .prologue
    .line 4199
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$MiscPolicy;->mService:Landroid/app/enterprise/IMiscPolicy;

    if-eqz v1, :cond_0

    .line 4201
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$MiscPolicy;->mService:Landroid/app/enterprise/IMiscPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IMiscPolicy;->setCamera(Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 4206
    :goto_0
    return v1

    .line 4202
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 4203
    .local v0, e:Landroid/os/RemoteException;
    invoke-static {}, Landroid/app/admin/DevicePolicyManager;->access$900()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Failed talking with misc info policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4206
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setExternalStorageEncryption(Z)V
    .locals 3
    .parameter "isEncrypt"

    .prologue
    .line 4391
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$MiscPolicy;->mService:Landroid/app/enterprise/IMiscPolicy;

    if-eqz v1, :cond_0

    .line 4393
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$MiscPolicy;->mService:Landroid/app/enterprise/IMiscPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IMiscPolicy;->setExternalStorageEncryption(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4398
    :cond_0
    :goto_0
    return-void

    .line 4394
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 4395
    .local v0, e:Landroid/os/RemoteException;
    invoke-static {}, Landroid/app/admin/DevicePolicyManager;->access$900()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Failed talking with misc policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setInternalStorageEncryption(Z)V
    .locals 3
    .parameter "isEncrypt"

    .prologue
    .line 4375
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$MiscPolicy;->mService:Landroid/app/enterprise/IMiscPolicy;

    if-eqz v1, :cond_0

    .line 4377
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$MiscPolicy;->mService:Landroid/app/enterprise/IMiscPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IMiscPolicy;->setInternalStorageEncryption(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4382
    :cond_0
    :goto_0
    return-void

    .line 4378
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 4379
    .local v0, e:Landroid/os/RemoteException;
    invoke-static {}, Landroid/app/admin/DevicePolicyManager;->access$900()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Failed talking with misc policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setMicrophoneState(Z)Z
    .locals 3
    .parameter "enable"

    .prologue
    .line 4235
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$MiscPolicy;->mService:Landroid/app/enterprise/IMiscPolicy;

    if-eqz v1, :cond_0

    .line 4237
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$MiscPolicy;->mService:Landroid/app/enterprise/IMiscPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IMiscPolicy;->setMicrophoneState(Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 4242
    :goto_0
    return v1

    .line 4238
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 4239
    .local v0, e:Landroid/os/RemoteException;
    invoke-static {}, Landroid/app/admin/DevicePolicyManager;->access$900()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Failed talking with misc policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4242
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setWiFiState(Z)Z
    .locals 3
    .parameter "enable"

    .prologue
    .line 4091
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$MiscPolicy;->mService:Landroid/app/enterprise/IMiscPolicy;

    if-eqz v1, :cond_0

    .line 4093
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$MiscPolicy;->mService:Landroid/app/enterprise/IMiscPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IMiscPolicy;->setWiFi(Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 4098
    :goto_0
    return v1

    .line 4094
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 4095
    .local v0, e:Landroid/os/RemoteException;
    invoke-static {}, Landroid/app/admin/DevicePolicyManager;->access$900()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Failed talking with misc info policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4098
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public wipeDevice(I)Z
    .locals 6
    .parameter "flags"

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x1

    .line 4274
    const/4 v1, 0x0

    .line 4275
    .local v1, result:Z
    iget-object v3, p0, Landroid/app/admin/DevicePolicyManager$MiscPolicy;->mService:Landroid/app/enterprise/IMiscPolicy;

    if-eqz v3, :cond_3

    .line 4277
    const/4 v3, 0x2

    if-eq p1, v3, :cond_0

    if-ne p1, v5, :cond_1

    .line 4278
    :cond_0
    const/4 v3, 0x1

    :try_start_0
    invoke-virtual {p0, v3}, Landroid/app/admin/DevicePolicyManager$MiscPolicy;->formatStorageCard(Z)Z

    .line 4280
    :cond_1
    if-eq p1, v4, :cond_2

    if-ne p1, v5, :cond_3

    .line 4281
    :cond_2
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Landroid/app/admin/DevicePolicyManager$MiscPolicy;->formatStorageCard(Z)Z

    .line 4282
    const/4 v3, 0x1

    const/4 v4, 0x1

    invoke-virtual {p0, v3, v4}, Landroid/app/admin/DevicePolicyManager$MiscPolicy;->formatInternalStorage(ZZ)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :cond_3
    move v2, v1

    .line 4289
    .end local v1           #result:Z
    .local v2, result:I
    :goto_0
    return v2

    .line 4284
    .end local v2           #result:I
    .restart local v1       #result:Z
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 4285
    .local v0, e:Ljava/lang/Exception;
    invoke-static {}, Landroid/app/admin/DevicePolicyManager;->access$900()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Failed talking with misc info policy"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v2, v1

    .line 4286
    .restart local v2       #result:I
    goto :goto_0
.end method
