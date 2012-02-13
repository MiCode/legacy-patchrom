.class Lcom/motorola/CameraF/Camcorder$1;
.super Landroid/content/BroadcastReceiver;
.source "Camcorder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/CameraF/Camcorder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/motorola/CameraF/Camcorder;


# direct methods
.method constructor <init>(Lcom/motorola/CameraF/Camcorder;)V
    .locals 0
    .parameter

    .prologue
    .line 1155
    iput-object p1, p0, Lcom/motorola/CameraF/Camcorder$1;->this$0:Lcom/motorola/CameraF/Camcorder;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .parameter "context"
    .parameter "intent"

    .prologue
    const/16 v7, 0x3f

    const/4 v6, 0x1

    const/4 v5, 0x0

    const-string v4, "MotoCamcorder"

    .line 1156
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1158
    .local v0, action:Ljava/lang/String;
    invoke-static {}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCamSetting()Lcom/motorola/CameraF/CamSetting/CamSetting;

    move-result-object v3

    invoke-virtual {v3}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCurrentScene()I

    move-result v2

    .line 1159
    .local v2, mCurrentScenes:I
    if-eq v2, v6, :cond_1

    .line 1181
    :cond_0
    :goto_0
    return-void

    .line 1162
    :cond_1
    invoke-static {}, Lcom/motorola/CameraF/Camcorder;->access$4000()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1163
    const-string v3, "MotoCamcorder"

    const-string v3, "Wind noise intent received"

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1164
    const-string v3, "value"

    invoke-virtual {p2, v3, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    sput-boolean v3, Lcom/motorola/CameraF/CameraGlobalType;->windDetected:Z

    .line 1165
    sget-boolean v3, Lcom/motorola/CameraF/CameraGlobalType;->windDetected:Z

    if-eqz v3, :cond_3

    .line 1166
    const-string v3, "MotoCamcorder"

    const-string v3, "Wind noise received TRUE"

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1168
    iget-object v3, p0, Lcom/motorola/CameraF/Camcorder$1;->this$0:Lcom/motorola/CameraF/Camcorder;

    #getter for: Lcom/motorola/CameraF/Camcorder;->mStatus:I
    invoke-static {v3}, Lcom/motorola/CameraF/Camcorder;->access$1200(Lcom/motorola/CameraF/Camcorder;)I

    move-result v3

    const/4 v4, 0x4

    if-ne v3, v4, :cond_2

    .line 1169
    iget-object v3, p0, Lcom/motorola/CameraF/Camcorder$1;->this$0:Lcom/motorola/CameraF/Camcorder;

    #getter for: Lcom/motorola/CameraF/Camcorder;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/motorola/CameraF/Camcorder;->access$800(Lcom/motorola/CameraF/Camcorder;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/os/Handler;->removeMessages(I)V

    .line 1170
    iget-object v3, p0, Lcom/motorola/CameraF/Camcorder$1;->this$0:Lcom/motorola/CameraF/Camcorder;

    const v4, 0x7f0e0094

    invoke-virtual {v3, v4}, Lcom/motorola/CameraF/Camcorder;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 1171
    .local v1, i:Landroid/widget/ImageView;
    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1172
    iget-object v3, p0, Lcom/motorola/CameraF/Camcorder$1;->this$0:Lcom/motorola/CameraF/Camcorder;

    #getter for: Lcom/motorola/CameraF/Camcorder;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/motorola/CameraF/Camcorder;->access$800(Lcom/motorola/CameraF/Camcorder;)Landroid/os/Handler;

    move-result-object v3

    const-wide/16 v4, 0x7d0

    invoke-virtual {v3, v7, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1177
    .end local v1           #i:Landroid/widget/ImageView;
    :cond_2
    :goto_1
    sget-boolean v3, Lcom/motorola/CameraF/CameraGlobalType;->camPremium:Z

    if-ne v3, v6, :cond_0

    .line 1178
    iget-object v3, p0, Lcom/motorola/CameraF/Camcorder$1;->this$0:Lcom/motorola/CameraF/Camcorder;

    #getter for: Lcom/motorola/CameraF/Camcorder;->mController:Lcom/motorola/CameraF/View/Control/OnScreenController;
    invoke-static {v3}, Lcom/motorola/CameraF/Camcorder;->access$300(Lcom/motorola/CameraF/Camcorder;)Lcom/motorola/CameraF/View/Control/OnScreenController;

    move-result-object v3

    invoke-virtual {v3}, Lcom/motorola/CameraF/View/Control/OnScreenController;->updateStatusIcons()V

    goto :goto_0

    .line 1175
    :cond_3
    const-string v3, "MotoCamcorder"

    const-string v3, "Wind noise received FALSE"

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method
