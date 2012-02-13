.class Lcom/motorola/CameraF/LocUtility$LocationListener$1;
.super Ljava/lang/Object;
.source "LocUtility.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/motorola/CameraF/LocUtility$LocationListener;->onLocationChanged(Landroid/location/Location;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/motorola/CameraF/LocUtility$LocationListener;

.field final synthetic val$newLocation:Landroid/location/Location;


# direct methods
.method constructor <init>(Lcom/motorola/CameraF/LocUtility$LocationListener;Landroid/location/Location;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 79
    iput-object p1, p0, Lcom/motorola/CameraF/LocUtility$LocationListener$1;->this$1:Lcom/motorola/CameraF/LocUtility$LocationListener;

    iput-object p2, p0, Lcom/motorola/CameraF/LocUtility$LocationListener$1;->val$newLocation:Landroid/location/Location;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 81
    iget-object v1, p0, Lcom/motorola/CameraF/LocUtility$LocationListener$1;->this$1:Lcom/motorola/CameraF/LocUtility$LocationListener;

    iget-object v1, v1, Lcom/motorola/CameraF/LocUtility$LocationListener;->this$0:Lcom/motorola/CameraF/LocUtility;

    iget-object v2, p0, Lcom/motorola/CameraF/LocUtility$LocationListener$1;->this$1:Lcom/motorola/CameraF/LocUtility$LocationListener;

    iget-object v2, v2, Lcom/motorola/CameraF/LocUtility$LocationListener;->this$0:Lcom/motorola/CameraF/LocUtility;

    #getter for: Lcom/motorola/CameraF/LocUtility;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/motorola/CameraF/LocUtility;->access$100(Lcom/motorola/CameraF/LocUtility;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/motorola/CameraF/LocUtility$LocationListener$1;->val$newLocation:Landroid/location/Location;

    invoke-virtual {v1, v2, v3}, Lcom/motorola/CameraF/LocUtility;->getAddressByLoc(Landroid/content/Context;Landroid/location/Location;)Ljava/lang/String;

    move-result-object v0

    .line 82
    .local v0, address:Ljava/lang/String;
    invoke-static {}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCamSetting()Lcom/motorola/CameraF/CamSetting/CamSetting;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/motorola/CameraF/CamSetting/CamSetting;->setCurrentAddress(Ljava/lang/String;)V

    .line 83
    invoke-static {}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCamSetting()Lcom/motorola/CameraF/CamSetting/CamSetting;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/motorola/CameraF/CamSetting/CamSetting;->setSearchingLoc(I)V

    .line 84
    iget-object v1, p0, Lcom/motorola/CameraF/LocUtility$LocationListener$1;->this$1:Lcom/motorola/CameraF/LocUtility$LocationListener;

    iget-object v1, v1, Lcom/motorola/CameraF/LocUtility$LocationListener;->this$0:Lcom/motorola/CameraF/LocUtility;

    #getter for: Lcom/motorola/CameraF/LocUtility;->mMainHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/motorola/CameraF/LocUtility;->access$000(Lcom/motorola/CameraF/LocUtility;)Landroid/os/Handler;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/motorola/CameraF/LocUtility$LocationListener$1;->this$1:Lcom/motorola/CameraF/LocUtility$LocationListener;

    iget-object v1, v1, Lcom/motorola/CameraF/LocUtility$LocationListener;->this$0:Lcom/motorola/CameraF/LocUtility;

    #getter for: Lcom/motorola/CameraF/LocUtility;->mMainHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/motorola/CameraF/LocUtility;->access$000(Lcom/motorola/CameraF/LocUtility;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0xf

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 85
    :cond_0
    return-void
.end method
