.class public Lmotorola/app/admin/DevicePolicyManagerExt;
.super Ljava/lang/Object;
.source "DevicePolicyManagerExt.java"


# static fields
.field private static EDM_VERSION:Ljava/lang/String;

.field private static TAG:Ljava/lang/String;


# instance fields
.field private edm_feature_enable:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const-string v0, "DevicePolicyManagerExt"

    sput-object v0, Lmotorola/app/admin/DevicePolicyManagerExt;->TAG:Ljava/lang/String;

    const-string v0, "1.4.0"

    sput-object v0, Lmotorola/app/admin/DevicePolicyManagerExt;->EDM_VERSION:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lmotorola/app/admin/DevicePolicyManagerExt;->edm_feature_enable:Z

    sget-object v0, Lmotorola/app/admin/DevicePolicyManagerExt;->TAG:Ljava/lang/String;

    const-string v1, "MOT EDM API - DevicePolicyManagerExt"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public getActiveSyncDeviceID(Landroid/app/admin/DevicePolicyManager;)V
    .locals 2
    .parameter "dpm"

    .prologue
    sget-object v0, Lmotorola/app/admin/DevicePolicyManagerExt;->TAG:Ljava/lang/String;

    const-string v1, "MOT EDM API - getActiveSyncID"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public getEdmVersion()Ljava/lang/String;
    .locals 1

    .prologue
    iget-boolean v0, p0, Lmotorola/app/admin/DevicePolicyManagerExt;->edm_feature_enable:Z

    if-eqz v0, :cond_0

    sget-object v0, Lmotorola/app/admin/DevicePolicyManagerExt;->EDM_VERSION:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
