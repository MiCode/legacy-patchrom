.class public Landroid/app/enterprise/EnterpriseDeviceManager;
.super Ljava/lang/Object;
.source "EnterpriseDeviceManager.java"


# static fields
.field private static TAG:Ljava/lang/String;


# instance fields
.field private mApplicationPolicy:Landroid/app/enterprise/ApplicationPolicy;

.field private final mContext:Landroid/content/Context;

.field mDpm:Landroid/app/admin/DevicePolicyManager;

.field private mEasAccountPolicy:Landroid/app/enterprise/ExchangeAccountPolicy;

.field private mMiscPolicy:Landroid/app/enterprise/MiscPolicy;

.field private mRoamingPolicy:Landroid/app/enterprise/RoamingPolicy;

.field private final mSync:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    const-string v0, "EnterpriseDeviceManager"

    sput-object v0, Landroid/app/enterprise/EnterpriseDeviceManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 144
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/app/enterprise/EnterpriseDeviceManager;->mSync:Ljava/lang/Object;

    .line 21
    iput-object p1, p0, Landroid/app/enterprise/EnterpriseDeviceManager;->mContext:Landroid/content/Context;

    .line 22
    iget-object v0, p0, Landroid/app/enterprise/EnterpriseDeviceManager;->mContext:Landroid/content/Context;

    const-string v1, "device_policy"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    iput-object v0, p0, Landroid/app/enterprise/EnterpriseDeviceManager;->mDpm:Landroid/app/admin/DevicePolicyManager;

    .line 24
    return-void
.end method


# virtual methods
.method public getApplicationPolicy()Landroid/app/enterprise/ApplicationPolicy;
    .locals 2

    .prologue
    .line 157
    iget-object v0, p0, Landroid/app/enterprise/EnterpriseDeviceManager;->mSync:Ljava/lang/Object;

    monitor-enter v0

    .line 158
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/EnterpriseDeviceManager;->mApplicationPolicy:Landroid/app/enterprise/ApplicationPolicy;

    if-nez v1, :cond_0

    .line 159
    new-instance v1, Landroid/app/enterprise/ApplicationPolicy;

    invoke-direct {v1}, Landroid/app/enterprise/ApplicationPolicy;-><init>()V

    iput-object v1, p0, Landroid/app/enterprise/EnterpriseDeviceManager;->mApplicationPolicy:Landroid/app/enterprise/ApplicationPolicy;

    .line 160
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 161
    iget-object v0, p0, Landroid/app/enterprise/EnterpriseDeviceManager;->mApplicationPolicy:Landroid/app/enterprise/ApplicationPolicy;

    return-object v0

    .line 160
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public getExchangeAccountPolicy()Landroid/app/enterprise/ExchangeAccountPolicy;
    .locals 2

    .prologue
    .line 170
    iget-object v0, p0, Landroid/app/enterprise/EnterpriseDeviceManager;->mSync:Ljava/lang/Object;

    monitor-enter v0

    .line 171
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/EnterpriseDeviceManager;->mEasAccountPolicy:Landroid/app/enterprise/ExchangeAccountPolicy;

    if-nez v1, :cond_0

    .line 172
    new-instance v1, Landroid/app/enterprise/ExchangeAccountPolicy;

    invoke-direct {v1}, Landroid/app/enterprise/ExchangeAccountPolicy;-><init>()V

    iput-object v1, p0, Landroid/app/enterprise/EnterpriseDeviceManager;->mEasAccountPolicy:Landroid/app/enterprise/ExchangeAccountPolicy;

    .line 173
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 174
    iget-object v0, p0, Landroid/app/enterprise/EnterpriseDeviceManager;->mEasAccountPolicy:Landroid/app/enterprise/ExchangeAccountPolicy;

    return-object v0

    .line 173
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public getMinPasswordComplexChars(Landroid/content/ComponentName;)I
    .locals 1
    .parameter "admin"

    .prologue
    .line 119
    iget-object v0, p0, Landroid/app/enterprise/EnterpriseDeviceManager;->mDpm:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v0, p1}, Landroid/app/admin/DevicePolicyManager;->getMinPasswordComplexChars(Landroid/content/ComponentName;)I

    move-result v0

    return v0
.end method

.method public getMiscPolicy()Landroid/app/enterprise/MiscPolicy;
    .locals 3

    .prologue
    .line 196
    iget-object v0, p0, Landroid/app/enterprise/EnterpriseDeviceManager;->mSync:Ljava/lang/Object;

    monitor-enter v0

    .line 197
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/EnterpriseDeviceManager;->mMiscPolicy:Landroid/app/enterprise/MiscPolicy;

    if-nez v1, :cond_0

    .line 198
    new-instance v1, Landroid/app/enterprise/MiscPolicy;

    iget-object v2, p0, Landroid/app/enterprise/EnterpriseDeviceManager;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/app/enterprise/MiscPolicy;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Landroid/app/enterprise/EnterpriseDeviceManager;->mMiscPolicy:Landroid/app/enterprise/MiscPolicy;

    .line 199
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 200
    iget-object v0, p0, Landroid/app/enterprise/EnterpriseDeviceManager;->mMiscPolicy:Landroid/app/enterprise/MiscPolicy;

    return-object v0

    .line 199
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public getPassword(Landroid/content/ComponentName;)Ljava/lang/String;
    .locals 1
    .parameter "admin"

    .prologue
    .line 131
    iget-object v0, p0, Landroid/app/enterprise/EnterpriseDeviceManager;->mDpm:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v0, p1}, Landroid/app/admin/DevicePolicyManager;->getPassword(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPasswordExpires(Landroid/content/ComponentName;)I
    .locals 1
    .parameter "admin"

    .prologue
    .line 55
    iget-object v0, p0, Landroid/app/enterprise/EnterpriseDeviceManager;->mDpm:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v0, p1}, Landroid/app/admin/DevicePolicyManager;->getPasswordExpires(Landroid/content/ComponentName;)I

    move-result v0

    return v0
.end method

.method public getPasswordHistory(Landroid/content/ComponentName;)I
    .locals 1
    .parameter "admin"

    .prologue
    .line 88
    iget-object v0, p0, Landroid/app/enterprise/EnterpriseDeviceManager;->mDpm:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v0, p1}, Landroid/app/admin/DevicePolicyManager;->getPasswordHistory(Landroid/content/ComponentName;)I

    move-result v0

    return v0
.end method

.method public getRoamingPolicy()Landroid/app/enterprise/RoamingPolicy;
    .locals 2

    .prologue
    .line 183
    iget-object v0, p0, Landroid/app/enterprise/EnterpriseDeviceManager;->mSync:Ljava/lang/Object;

    monitor-enter v0

    .line 184
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/EnterpriseDeviceManager;->mRoamingPolicy:Landroid/app/enterprise/RoamingPolicy;

    if-nez v1, :cond_0

    .line 185
    new-instance v1, Landroid/app/enterprise/RoamingPolicy;

    invoke-direct {v1}, Landroid/app/enterprise/RoamingPolicy;-><init>()V

    iput-object v1, p0, Landroid/app/enterprise/EnterpriseDeviceManager;->mRoamingPolicy:Landroid/app/enterprise/RoamingPolicy;

    .line 186
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 187
    iget-object v0, p0, Landroid/app/enterprise/EnterpriseDeviceManager;->mRoamingPolicy:Landroid/app/enterprise/RoamingPolicy;

    return-object v0

    .line 186
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public reboot(Ljava/lang/String;)V
    .locals 1
    .parameter "reason"

    .prologue
    .line 141
    iget-object v0, p0, Landroid/app/enterprise/EnterpriseDeviceManager;->mDpm:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v0, p1}, Landroid/app/admin/DevicePolicyManager;->reboot(Ljava/lang/String;)V

    .line 142
    return-void
.end method

.method public setMinPasswordComplexChars(Landroid/content/ComponentName;I)V
    .locals 1
    .parameter "admin"
    .parameter "size"

    .prologue
    .line 107
    iget-object v0, p0, Landroid/app/enterprise/EnterpriseDeviceManager;->mDpm:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v0, p1, p2}, Landroid/app/admin/DevicePolicyManager;->setMinPasswordComplexChars(Landroid/content/ComponentName;I)V

    .line 108
    return-void
.end method

.method public setPasswordExpires(Landroid/content/ComponentName;I)V
    .locals 1
    .parameter "admin"
    .parameter "value"

    .prologue
    .line 42
    iget-object v0, p0, Landroid/app/enterprise/EnterpriseDeviceManager;->mDpm:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v0, p1, p2}, Landroid/app/admin/DevicePolicyManager;->setPasswordExpires(Landroid/content/ComponentName;I)V

    .line 43
    return-void
.end method

.method public setPasswordHistory(Landroid/content/ComponentName;I)V
    .locals 1
    .parameter "admin"
    .parameter "value"

    .prologue
    .line 75
    iget-object v0, p0, Landroid/app/enterprise/EnterpriseDeviceManager;->mDpm:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v0, p1, p2}, Landroid/app/admin/DevicePolicyManager;->setPasswordHistory(Landroid/content/ComponentName;I)V

    .line 76
    return-void
.end method
