.class public Lcom/motorola/CameraF/CameraDialog;
.super Landroid/app/AlertDialog;
.source "CameraDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/CameraF/CameraDialog$IDialogListener;
    }
.end annotation


# static fields
.field public static final DIALOG_CAPTURE_MODE:I = 0x0

.field public static final DIALOG_FLASH_MODE:I = 0x2

.field public static final DIALOG_LIGHT_MODE:I = 0x1

.field public static final DIALOG_MODE_MAX:I = 0x5

.field public static final DIALOG_PANORAMIC_MODE:I = 0x3

.field public static final DIALOG_TORCH_MODE:I = 0x5

.field public static final DIALOG_VIDEO_MODE:I = 0x4

.field public static final TAG:Ljava/lang/String; = "CameraDialog"


# instance fields
.field private camcorderBtn:Landroid/widget/Button;

.field private currentDialog:I

.field private fastMotionBtn:Landroid/widget/Button;

.field private flashAutoBtn:Landroid/widget/Button;

.field private flashOffBtn:Landroid/widget/Button;

.field private flashOnBtn:Landroid/widget/Button;

.field private lightAutoBtn:Landroid/widget/Button;

.field private lightOffBtn:Landroid/widget/Button;

.field private lightOnBtn:Landroid/widget/Button;

.field private mContext:Landroid/content/Context;

.field private mController:Lcom/motorola/CameraF/View/Control/OnScreenController;

.field private mHandler:Landroid/os/Handler;

.field private mListener:Lcom/motorola/CameraF/CameraDialog$IDialogListener;

.field private mmsModeBtn:Landroid/widget/Button;

.field private moveDownBtn:Landroid/widget/Button;

.field private moveLeftBtn:Landroid/widget/Button;

.field private moveRightBtn:Landroid/widget/Button;

.field private moveUpBtn:Landroid/widget/Button;

.field private multiShotBtn:Landroid/widget/Button;

.field private panoramicBtn:Landroid/widget/Button;

.field private selfPortraitBtn:Landroid/widget/Button;

.field private singleShotBtn:Landroid/widget/Button;

.field private slowMotionBtn:Landroid/widget/Button;

.field private torchOffBtn:Landroid/widget/Button;

.field private torchOnBtn:Landroid/widget/Button;


# direct methods
.method protected constructor <init>(Landroid/content/Context;ILandroid/os/Handler;Lcom/motorola/CameraF/View/Control/OnScreenController;Lcom/motorola/CameraF/CameraDialog$IDialogListener;)V
    .locals 2
    .parameter "context"
    .parameter "dialogID"
    .parameter "handler"
    .parameter "mController"
    .parameter "listener"

    .prologue
    const/4 v1, 0x0

    .line 77
    invoke-direct {p0, p1}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;)V

    .line 33
    iput v1, p0, Lcom/motorola/CameraF/CameraDialog;->currentDialog:I

    .line 80
    iput-object p1, p0, Lcom/motorola/CameraF/CameraDialog;->mContext:Landroid/content/Context;

    .line 83
    iput-object p3, p0, Lcom/motorola/CameraF/CameraDialog;->mHandler:Landroid/os/Handler;

    .line 86
    iput-object p4, p0, Lcom/motorola/CameraF/CameraDialog;->mController:Lcom/motorola/CameraF/View/Control/OnScreenController;

    .line 88
    iput-object p5, p0, Lcom/motorola/CameraF/CameraDialog;->mListener:Lcom/motorola/CameraF/CameraDialog$IDialogListener;

    .line 91
    const/4 v0, 0x5

    if-gt p2, v0, :cond_0

    .line 93
    iput p2, p0, Lcom/motorola/CameraF/CameraDialog;->currentDialog:I

    .line 100
    :goto_0
    return-void

    .line 98
    :cond_0
    iput v1, p0, Lcom/motorola/CameraF/CameraDialog;->currentDialog:I

    goto :goto_0
.end method

.method private initCaptureModeButtons()V
    .locals 1

    .prologue
    .line 184
    const/high16 v0, 0x7f0e

    invoke-virtual {p0, v0}, Lcom/motorola/CameraF/CameraDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/motorola/CameraF/CameraDialog;->singleShotBtn:Landroid/widget/Button;

    .line 185
    iget-object v0, p0, Lcom/motorola/CameraF/CameraDialog;->singleShotBtn:Landroid/widget/Button;

    if-eqz v0, :cond_0

    .line 187
    iget-object v0, p0, Lcom/motorola/CameraF/CameraDialog;->singleShotBtn:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 190
    :cond_0
    invoke-static {}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCamSetting()Lcom/motorola/CameraF/CamSetting/CamSetting;

    move-result-object v0

    iget-boolean v0, v0, Lcom/motorola/CameraF/CamSetting/CamSetting;->featurePanoramaEnabled:Z

    if-eqz v0, :cond_1

    .line 192
    const v0, 0x7f0e0002

    invoke-virtual {p0, v0}, Lcom/motorola/CameraF/CameraDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/motorola/CameraF/CameraDialog;->panoramicBtn:Landroid/widget/Button;

    .line 193
    iget-object v0, p0, Lcom/motorola/CameraF/CameraDialog;->panoramicBtn:Landroid/widget/Button;

    if-eqz v0, :cond_1

    .line 195
    iget-object v0, p0, Lcom/motorola/CameraF/CameraDialog;->panoramicBtn:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 198
    :cond_1
    invoke-static {}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCamSetting()Lcom/motorola/CameraF/CamSetting/CamSetting;

    move-result-object v0

    iget-boolean v0, v0, Lcom/motorola/CameraF/CamSetting/CamSetting;->featureMultishotEnabled:Z

    if-eqz v0, :cond_2

    .line 200
    const v0, 0x7f0e0003

    invoke-virtual {p0, v0}, Lcom/motorola/CameraF/CameraDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/motorola/CameraF/CameraDialog;->multiShotBtn:Landroid/widget/Button;

    .line 201
    iget-object v0, p0, Lcom/motorola/CameraF/CameraDialog;->multiShotBtn:Landroid/widget/Button;

    if-eqz v0, :cond_2

    .line 203
    iget-object v0, p0, Lcom/motorola/CameraF/CameraDialog;->multiShotBtn:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 207
    :cond_2
    invoke-static {}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCamSetting()Lcom/motorola/CameraF/CamSetting/CamSetting;

    move-result-object v0

    iget-boolean v0, v0, Lcom/motorola/CameraF/CamSetting/CamSetting;->featureFaceDetectionEnabled:Z

    if-eqz v0, :cond_3

    .line 209
    const v0, 0x7f0e0001

    invoke-virtual {p0, v0}, Lcom/motorola/CameraF/CameraDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/motorola/CameraF/CameraDialog;->selfPortraitBtn:Landroid/widget/Button;

    .line 210
    iget-object v0, p0, Lcom/motorola/CameraF/CameraDialog;->selfPortraitBtn:Landroid/widget/Button;

    if-eqz v0, :cond_3

    .line 212
    iget-object v0, p0, Lcom/motorola/CameraF/CameraDialog;->selfPortraitBtn:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 215
    :cond_3
    return-void
.end method

.method private initFlashModeButtons()V
    .locals 1

    .prologue
    .line 250
    const v0, 0x7f0e0004

    invoke-virtual {p0, v0}, Lcom/motorola/CameraF/CameraDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/motorola/CameraF/CameraDialog;->flashOnBtn:Landroid/widget/Button;

    .line 251
    iget-object v0, p0, Lcom/motorola/CameraF/CameraDialog;->flashOnBtn:Landroid/widget/Button;

    if-eqz v0, :cond_0

    .line 253
    iget-object v0, p0, Lcom/motorola/CameraF/CameraDialog;->flashOnBtn:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 256
    :cond_0
    const v0, 0x7f0e0005

    invoke-virtual {p0, v0}, Lcom/motorola/CameraF/CameraDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/motorola/CameraF/CameraDialog;->flashOffBtn:Landroid/widget/Button;

    .line 257
    iget-object v0, p0, Lcom/motorola/CameraF/CameraDialog;->flashOffBtn:Landroid/widget/Button;

    if-eqz v0, :cond_1

    .line 259
    iget-object v0, p0, Lcom/motorola/CameraF/CameraDialog;->flashOffBtn:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 262
    :cond_1
    const v0, 0x7f0e0006

    invoke-virtual {p0, v0}, Lcom/motorola/CameraF/CameraDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/motorola/CameraF/CameraDialog;->flashAutoBtn:Landroid/widget/Button;

    .line 263
    iget-object v0, p0, Lcom/motorola/CameraF/CameraDialog;->flashAutoBtn:Landroid/widget/Button;

    if-eqz v0, :cond_2

    .line 265
    iget-object v0, p0, Lcom/motorola/CameraF/CameraDialog;->flashAutoBtn:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 267
    :cond_2
    return-void
.end method

.method private initLightModeButtons()V
    .locals 1

    .prologue
    .line 271
    const v0, 0x7f0e0008

    invoke-virtual {p0, v0}, Lcom/motorola/CameraF/CameraDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/motorola/CameraF/CameraDialog;->lightOnBtn:Landroid/widget/Button;

    .line 272
    iget-object v0, p0, Lcom/motorola/CameraF/CameraDialog;->lightOnBtn:Landroid/widget/Button;

    if-eqz v0, :cond_0

    .line 274
    iget-object v0, p0, Lcom/motorola/CameraF/CameraDialog;->lightOnBtn:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 277
    :cond_0
    const v0, 0x7f0e000a

    invoke-virtual {p0, v0}, Lcom/motorola/CameraF/CameraDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/motorola/CameraF/CameraDialog;->lightOffBtn:Landroid/widget/Button;

    .line 278
    iget-object v0, p0, Lcom/motorola/CameraF/CameraDialog;->lightOffBtn:Landroid/widget/Button;

    if-eqz v0, :cond_1

    .line 280
    iget-object v0, p0, Lcom/motorola/CameraF/CameraDialog;->lightOffBtn:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 283
    :cond_1
    const v0, 0x7f0e000c

    invoke-virtual {p0, v0}, Lcom/motorola/CameraF/CameraDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/motorola/CameraF/CameraDialog;->lightAutoBtn:Landroid/widget/Button;

    .line 284
    iget-object v0, p0, Lcom/motorola/CameraF/CameraDialog;->lightAutoBtn:Landroid/widget/Button;

    if-eqz v0, :cond_2

    .line 286
    iget-object v0, p0, Lcom/motorola/CameraF/CameraDialog;->lightAutoBtn:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 288
    :cond_2
    return-void
.end method

.method private initPanoramicModeButtons()V
    .locals 1

    .prologue
    .line 153
    const v0, 0x7f0e000d

    invoke-virtual {p0, v0}, Lcom/motorola/CameraF/CameraDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/motorola/CameraF/CameraDialog;->moveUpBtn:Landroid/widget/Button;

    .line 154
    iget-object v0, p0, Lcom/motorola/CameraF/CameraDialog;->moveUpBtn:Landroid/widget/Button;

    if-eqz v0, :cond_0

    .line 156
    iget-object v0, p0, Lcom/motorola/CameraF/CameraDialog;->moveUpBtn:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 159
    :cond_0
    const v0, 0x7f0e0010

    invoke-virtual {p0, v0}, Lcom/motorola/CameraF/CameraDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/motorola/CameraF/CameraDialog;->moveDownBtn:Landroid/widget/Button;

    .line 160
    iget-object v0, p0, Lcom/motorola/CameraF/CameraDialog;->moveDownBtn:Landroid/widget/Button;

    if-eqz v0, :cond_1

    .line 162
    iget-object v0, p0, Lcom/motorola/CameraF/CameraDialog;->moveDownBtn:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 165
    :cond_1
    const v0, 0x7f0e000e

    invoke-virtual {p0, v0}, Lcom/motorola/CameraF/CameraDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/motorola/CameraF/CameraDialog;->moveLeftBtn:Landroid/widget/Button;

    .line 166
    iget-object v0, p0, Lcom/motorola/CameraF/CameraDialog;->moveLeftBtn:Landroid/widget/Button;

    if-eqz v0, :cond_2

    .line 168
    iget-object v0, p0, Lcom/motorola/CameraF/CameraDialog;->moveLeftBtn:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 171
    :cond_2
    const v0, 0x7f0e000f

    invoke-virtual {p0, v0}, Lcom/motorola/CameraF/CameraDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/motorola/CameraF/CameraDialog;->moveRightBtn:Landroid/widget/Button;

    .line 172
    iget-object v0, p0, Lcom/motorola/CameraF/CameraDialog;->moveRightBtn:Landroid/widget/Button;

    if-eqz v0, :cond_3

    .line 174
    iget-object v0, p0, Lcom/motorola/CameraF/CameraDialog;->moveRightBtn:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 176
    :cond_3
    return-void
.end method

.method private initTorchModeButtons()V
    .locals 1

    .prologue
    .line 292
    const v0, 0x7f0e0011

    invoke-virtual {p0, v0}, Lcom/motorola/CameraF/CameraDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/motorola/CameraF/CameraDialog;->torchOnBtn:Landroid/widget/Button;

    .line 293
    iget-object v0, p0, Lcom/motorola/CameraF/CameraDialog;->torchOnBtn:Landroid/widget/Button;

    if-eqz v0, :cond_0

    .line 295
    iget-object v0, p0, Lcom/motorola/CameraF/CameraDialog;->torchOnBtn:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 298
    :cond_0
    const v0, 0x7f0e0012

    invoke-virtual {p0, v0}, Lcom/motorola/CameraF/CameraDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/motorola/CameraF/CameraDialog;->torchOffBtn:Landroid/widget/Button;

    .line 299
    iget-object v0, p0, Lcom/motorola/CameraF/CameraDialog;->torchOffBtn:Landroid/widget/Button;

    if-eqz v0, :cond_1

    .line 301
    iget-object v0, p0, Lcom/motorola/CameraF/CameraDialog;->torchOffBtn:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 303
    :cond_1
    return-void
.end method

.method private initVideoModeButtons()V
    .locals 1

    .prologue
    .line 222
    const v0, 0x7f0e0013

    invoke-virtual {p0, v0}, Lcom/motorola/CameraF/CameraDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/motorola/CameraF/CameraDialog;->camcorderBtn:Landroid/widget/Button;

    .line 223
    iget-object v0, p0, Lcom/motorola/CameraF/CameraDialog;->camcorderBtn:Landroid/widget/Button;

    if-eqz v0, :cond_0

    .line 225
    iget-object v0, p0, Lcom/motorola/CameraF/CameraDialog;->camcorderBtn:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 228
    :cond_0
    const v0, 0x7f0e0015

    invoke-virtual {p0, v0}, Lcom/motorola/CameraF/CameraDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/motorola/CameraF/CameraDialog;->mmsModeBtn:Landroid/widget/Button;

    .line 229
    iget-object v0, p0, Lcom/motorola/CameraF/CameraDialog;->mmsModeBtn:Landroid/widget/Button;

    if-eqz v0, :cond_1

    .line 231
    iget-object v0, p0, Lcom/motorola/CameraF/CameraDialog;->mmsModeBtn:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 234
    :cond_1
    const v0, 0x7f0e0014

    invoke-virtual {p0, v0}, Lcom/motorola/CameraF/CameraDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/motorola/CameraF/CameraDialog;->slowMotionBtn:Landroid/widget/Button;

    .line 235
    iget-object v0, p0, Lcom/motorola/CameraF/CameraDialog;->slowMotionBtn:Landroid/widget/Button;

    if-eqz v0, :cond_2

    .line 237
    iget-object v0, p0, Lcom/motorola/CameraF/CameraDialog;->slowMotionBtn:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 240
    :cond_2
    const v0, 0x7f0e0016

    invoke-virtual {p0, v0}, Lcom/motorola/CameraF/CameraDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/motorola/CameraF/CameraDialog;->fastMotionBtn:Landroid/widget/Button;

    .line 241
    iget-object v0, p0, Lcom/motorola/CameraF/CameraDialog;->fastMotionBtn:Landroid/widget/Button;

    if-eqz v0, :cond_3

    .line 243
    iget-object v0, p0, Lcom/motorola/CameraF/CameraDialog;->fastMotionBtn:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 245
    :cond_3
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7
    .parameter "view"

    .prologue
    const/16 v6, 0x6b

    const/16 v5, 0x6d

    const/4 v4, 0x0

    const/16 v2, 0x21

    const/4 v3, 0x1

    .line 308
    sget-boolean v0, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_0

    const-string v0, "CameraDialog"

    const-string v1, "onClick()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 409
    :goto_0
    :pswitch_0
    return-void

    .line 313
    :pswitch_1
    iget-object v0, p0, Lcom/motorola/CameraF/CameraDialog;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x23

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 314
    invoke-virtual {p0}, Lcom/motorola/CameraF/CameraDialog;->dismiss()V

    goto :goto_0

    .line 317
    :pswitch_2
    iget-object v0, p0, Lcom/motorola/CameraF/CameraDialog;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x28

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 318
    invoke-virtual {p0}, Lcom/motorola/CameraF/CameraDialog;->dismiss()V

    goto :goto_0

    .line 321
    :pswitch_3
    iget-object v0, p0, Lcom/motorola/CameraF/CameraDialog;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x2a

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 322
    invoke-virtual {p0}, Lcom/motorola/CameraF/CameraDialog;->dismiss()V

    goto :goto_0

    .line 326
    :pswitch_4
    iget-object v0, p0, Lcom/motorola/CameraF/CameraDialog;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x1f

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 327
    invoke-virtual {p0}, Lcom/motorola/CameraF/CameraDialog;->dismiss()V

    goto :goto_0

    .line 331
    :pswitch_5
    iget-object v0, p0, Lcom/motorola/CameraF/CameraDialog;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x3b

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 332
    invoke-virtual {p0}, Lcom/motorola/CameraF/CameraDialog;->dismiss()V

    goto :goto_0

    .line 336
    :pswitch_6
    iget-object v0, p0, Lcom/motorola/CameraF/CameraDialog;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x3d

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 337
    invoke-virtual {p0}, Lcom/motorola/CameraF/CameraDialog;->dismiss()V

    goto :goto_0

    .line 340
    :pswitch_7
    iget-object v0, p0, Lcom/motorola/CameraF/CameraDialog;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x3c

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 341
    invoke-virtual {p0}, Lcom/motorola/CameraF/CameraDialog;->dismiss()V

    goto :goto_0

    .line 344
    :pswitch_8
    iget-object v0, p0, Lcom/motorola/CameraF/CameraDialog;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/motorola/CameraF/CameraDialog;->mContext:Landroid/content/Context;

    const v2, 0x7f0b00f9

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 345
    iget-object v0, p0, Lcom/motorola/CameraF/CameraDialog;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 346
    invoke-virtual {p0}, Lcom/motorola/CameraF/CameraDialog;->dismiss()V

    goto :goto_0

    .line 350
    :pswitch_9
    iget-object v0, p0, Lcom/motorola/CameraF/CameraDialog;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 351
    invoke-static {}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCamSetting()Lcom/motorola/CameraF/CamSetting/CamSetting;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/motorola/CameraF/CamSetting/CamSetting;->setCurrentFlash(I)V

    .line 352
    iget-object v0, p0, Lcom/motorola/CameraF/CameraDialog;->mController:Lcom/motorola/CameraF/View/Control/OnScreenController;

    invoke-virtual {v0}, Lcom/motorola/CameraF/View/Control/OnScreenController;->updateController()V

    .line 353
    iget-object v0, p0, Lcom/motorola/CameraF/CameraDialog;->mController:Lcom/motorola/CameraF/View/Control/OnScreenController;

    invoke-virtual {v0}, Lcom/motorola/CameraF/View/Control/OnScreenController;->show()V

    .line 354
    invoke-virtual {p0}, Lcom/motorola/CameraF/CameraDialog;->dismiss()V

    goto/16 :goto_0

    .line 358
    :pswitch_a
    iget-object v0, p0, Lcom/motorola/CameraF/CameraDialog;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 359
    invoke-static {}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCamSetting()Lcom/motorola/CameraF/CamSetting/CamSetting;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/motorola/CameraF/CamSetting/CamSetting;->setCurrentFlash(I)V

    .line 361
    iget-object v0, p0, Lcom/motorola/CameraF/CameraDialog;->mController:Lcom/motorola/CameraF/View/Control/OnScreenController;

    invoke-virtual {v0}, Lcom/motorola/CameraF/View/Control/OnScreenController;->updateController()V

    .line 362
    iget-object v0, p0, Lcom/motorola/CameraF/CameraDialog;->mController:Lcom/motorola/CameraF/View/Control/OnScreenController;

    invoke-virtual {v0}, Lcom/motorola/CameraF/View/Control/OnScreenController;->show()V

    .line 363
    invoke-virtual {p0}, Lcom/motorola/CameraF/CameraDialog;->dismiss()V

    goto/16 :goto_0

    .line 367
    :pswitch_b
    iget-object v0, p0, Lcom/motorola/CameraF/CameraDialog;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 368
    invoke-static {}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCamSetting()Lcom/motorola/CameraF/CamSetting/CamSetting;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/motorola/CameraF/CamSetting/CamSetting;->setCurrentFlash(I)V

    .line 370
    iget-object v0, p0, Lcom/motorola/CameraF/CameraDialog;->mController:Lcom/motorola/CameraF/View/Control/OnScreenController;

    invoke-virtual {v0}, Lcom/motorola/CameraF/View/Control/OnScreenController;->updateController()V

    .line 371
    iget-object v0, p0, Lcom/motorola/CameraF/CameraDialog;->mController:Lcom/motorola/CameraF/View/Control/OnScreenController;

    invoke-virtual {v0}, Lcom/motorola/CameraF/View/Control/OnScreenController;->show()V

    .line 372
    invoke-virtual {p0}, Lcom/motorola/CameraF/CameraDialog;->dismiss()V

    goto/16 :goto_0

    .line 375
    :pswitch_c
    sput-boolean v3, Lcom/motorola/CameraF/CameraGlobalType;->torchOn:Z

    .line 376
    invoke-static {}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCamSetting()Lcom/motorola/CameraF/CamSetting/CamSetting;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/motorola/CameraF/CamSetting/CamSetting;->setCurrentFlash(I)V

    .line 377
    iget-object v0, p0, Lcom/motorola/CameraF/CameraDialog;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v6}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 378
    invoke-virtual {p0}, Lcom/motorola/CameraF/CameraDialog;->dismiss()V

    goto/16 :goto_0

    .line 381
    :pswitch_d
    sput-boolean v4, Lcom/motorola/CameraF/CameraGlobalType;->torchOn:Z

    .line 382
    invoke-static {}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCamSetting()Lcom/motorola/CameraF/CamSetting/CamSetting;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/motorola/CameraF/CamSetting/CamSetting;->setCurrentFlash(I)V

    .line 383
    iget-object v0, p0, Lcom/motorola/CameraF/CameraDialog;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v6}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 384
    invoke-virtual {p0}, Lcom/motorola/CameraF/CameraDialog;->dismiss()V

    goto/16 :goto_0

    .line 387
    :pswitch_e
    invoke-static {}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCamSetting()Lcom/motorola/CameraF/CamSetting/CamSetting;

    move-result-object v0

    const-string v1, "down-up"

    invoke-virtual {v0, v1}, Lcom/motorola/CameraF/CamSetting/CamSetting;->setCurrentStitchMode(Ljava/lang/String;)V

    .line 388
    iget-object v0, p0, Lcom/motorola/CameraF/CameraDialog;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 389
    invoke-virtual {p0}, Lcom/motorola/CameraF/CameraDialog;->dismiss()V

    goto/16 :goto_0

    .line 392
    :pswitch_f
    invoke-static {}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCamSetting()Lcom/motorola/CameraF/CamSetting/CamSetting;

    move-result-object v0

    const-string v1, "up-down"

    invoke-virtual {v0, v1}, Lcom/motorola/CameraF/CamSetting/CamSetting;->setCurrentStitchMode(Ljava/lang/String;)V

    .line 393
    iget-object v0, p0, Lcom/motorola/CameraF/CameraDialog;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 394
    invoke-virtual {p0}, Lcom/motorola/CameraF/CameraDialog;->dismiss()V

    goto/16 :goto_0

    .line 397
    :pswitch_10
    invoke-static {}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCamSetting()Lcom/motorola/CameraF/CamSetting/CamSetting;

    move-result-object v0

    const-string v1, "right-left"

    invoke-virtual {v0, v1}, Lcom/motorola/CameraF/CamSetting/CamSetting;->setCurrentStitchMode(Ljava/lang/String;)V

    .line 398
    iget-object v0, p0, Lcom/motorola/CameraF/CameraDialog;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 399
    invoke-virtual {p0}, Lcom/motorola/CameraF/CameraDialog;->dismiss()V

    goto/16 :goto_0

    .line 402
    :pswitch_11
    invoke-static {}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCamSetting()Lcom/motorola/CameraF/CamSetting/CamSetting;

    move-result-object v0

    const-string v1, "left-right"

    invoke-virtual {v0, v1}, Lcom/motorola/CameraF/CamSetting/CamSetting;->setCurrentStitchMode(Ljava/lang/String;)V

    .line 403
    iget-object v0, p0, Lcom/motorola/CameraF/CameraDialog;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 404
    invoke-virtual {p0}, Lcom/motorola/CameraF/CameraDialog;->dismiss()V

    goto/16 :goto_0

    .line 310
    nop

    :pswitch_data_0
    .packed-switch 0x7f0e0000
        :pswitch_1
        :pswitch_8
        :pswitch_3
        :pswitch_2
        :pswitch_a
        :pswitch_b
        :pswitch_9
        :pswitch_0
        :pswitch_a
        :pswitch_0
        :pswitch_b
        :pswitch_0
        :pswitch_9
        :pswitch_e
        :pswitch_10
        :pswitch_11
        :pswitch_f
        :pswitch_c
        :pswitch_d
        :pswitch_4
        :pswitch_6
        :pswitch_5
        :pswitch_7
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    const/high16 v1, 0x7f03

    .line 106
    invoke-super {p0, p1}, Landroid/app/AlertDialog;->onCreate(Landroid/os/Bundle;)V

    .line 109
    iget v0, p0, Lcom/motorola/CameraF/CameraDialog;->currentDialog:I

    packed-switch v0, :pswitch_data_0

    .line 146
    invoke-virtual {p0, v1}, Lcom/motorola/CameraF/CameraDialog;->setContentView(I)V

    .line 148
    :goto_0
    return-void

    .line 112
    :pswitch_0
    invoke-static {}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCamSetting()Lcom/motorola/CameraF/CamSetting/CamSetting;

    move-result-object v0

    iget-boolean v0, v0, Lcom/motorola/CameraF/CamSetting/CamSetting;->featureFaceDetectionEnabled:Z

    if-nez v0, :cond_0

    .line 113
    const v0, 0x7f030001

    invoke-virtual {p0, v0}, Lcom/motorola/CameraF/CameraDialog;->setContentView(I)V

    .line 121
    :goto_1
    invoke-direct {p0}, Lcom/motorola/CameraF/CameraDialog;->initCaptureModeButtons()V

    goto :goto_0

    .line 114
    :cond_0
    invoke-static {}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCamSetting()Lcom/motorola/CameraF/CamSetting/CamSetting;

    move-result-object v0

    iget-boolean v0, v0, Lcom/motorola/CameraF/CamSetting/CamSetting;->featureMultishotEnabled:Z

    if-nez v0, :cond_1

    .line 115
    const v0, 0x7f030002

    invoke-virtual {p0, v0}, Lcom/motorola/CameraF/CameraDialog;->setContentView(I)V

    goto :goto_1

    .line 116
    :cond_1
    invoke-static {}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCamSetting()Lcom/motorola/CameraF/CamSetting/CamSetting;

    move-result-object v0

    iget-boolean v0, v0, Lcom/motorola/CameraF/CamSetting/CamSetting;->featurePanoramaEnabled:Z

    if-nez v0, :cond_2

    .line 117
    const v0, 0x7f030003

    invoke-virtual {p0, v0}, Lcom/motorola/CameraF/CameraDialog;->setContentView(I)V

    goto :goto_1

    .line 119
    :cond_2
    invoke-virtual {p0, v1}, Lcom/motorola/CameraF/CameraDialog;->setContentView(I)V

    goto :goto_1

    .line 124
    :pswitch_1
    const v0, 0x7f030008

    invoke-virtual {p0, v0}, Lcom/motorola/CameraF/CameraDialog;->setContentView(I)V

    .line 125
    invoke-direct {p0}, Lcom/motorola/CameraF/CameraDialog;->initVideoModeButtons()V

    goto :goto_0

    .line 128
    :pswitch_2
    const v0, 0x7f030004

    invoke-virtual {p0, v0}, Lcom/motorola/CameraF/CameraDialog;->setContentView(I)V

    .line 129
    invoke-direct {p0}, Lcom/motorola/CameraF/CameraDialog;->initFlashModeButtons()V

    goto :goto_0

    .line 132
    :pswitch_3
    const v0, 0x7f030005

    invoke-virtual {p0, v0}, Lcom/motorola/CameraF/CameraDialog;->setContentView(I)V

    .line 133
    invoke-direct {p0}, Lcom/motorola/CameraF/CameraDialog;->initLightModeButtons()V

    goto :goto_0

    .line 136
    :pswitch_4
    const v0, 0x7f030006

    invoke-virtual {p0, v0}, Lcom/motorola/CameraF/CameraDialog;->setContentView(I)V

    .line 137
    invoke-direct {p0}, Lcom/motorola/CameraF/CameraDialog;->initPanoramicModeButtons()V

    goto :goto_0

    .line 140
    :pswitch_5
    const v0, 0x7f030007

    invoke-virtual {p0, v0}, Lcom/motorola/CameraF/CameraDialog;->setContentView(I)V

    .line 141
    invoke-direct {p0}, Lcom/motorola/CameraF/CameraDialog;->initTorchModeButtons()V

    goto :goto_0

    .line 109
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_4
        :pswitch_1
        :pswitch_5
    .end packed-switch
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 439
    sget-boolean v0, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_0

    const-string v0, "CameraDialog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onKeyDown() - Enter keyCode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 442
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 453
    invoke-super {p0, p1, p2}, Landroid/app/AlertDialog;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    :goto_0
    return v0

    .line 445
    :pswitch_0
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isLongPress()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 446
    const/4 v0, 0x1

    goto :goto_0

    .line 448
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/app/AlertDialog;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0

    .line 442
    nop

    :pswitch_data_0
    .packed-switch 0x52
        :pswitch_0
    .end packed-switch
.end method

.method public onStart()V
    .locals 2

    .prologue
    .line 423
    sget-boolean v0, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_0

    .line 424
    const-string v0, "CameraDialog"

    const-string v1, "onStart"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 425
    :cond_0
    invoke-super {p0}, Landroid/app/AlertDialog;->onStart()V

    .line 426
    iget-object v0, p0, Lcom/motorola/CameraF/CameraDialog;->mListener:Lcom/motorola/CameraF/CameraDialog$IDialogListener;

    if-eqz v0, :cond_1

    .line 427
    iget-object v0, p0, Lcom/motorola/CameraF/CameraDialog;->mListener:Lcom/motorola/CameraF/CameraDialog$IDialogListener;

    invoke-interface {v0}, Lcom/motorola/CameraF/CameraDialog$IDialogListener;->onDialogCreate()V

    .line 429
    :cond_1
    return-void
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 413
    sget-boolean v0, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_0

    .line 414
    const-string v0, "CameraDialog"

    const-string v1, "onStop"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 415
    :cond_0
    invoke-super {p0}, Landroid/app/AlertDialog;->onStop()V

    .line 416
    iget-object v0, p0, Lcom/motorola/CameraF/CameraDialog;->mListener:Lcom/motorola/CameraF/CameraDialog$IDialogListener;

    if-eqz v0, :cond_1

    .line 417
    iget-object v0, p0, Lcom/motorola/CameraF/CameraDialog;->mListener:Lcom/motorola/CameraF/CameraDialog$IDialogListener;

    invoke-interface {v0}, Lcom/motorola/CameraF/CameraDialog$IDialogListener;->onDialogDismiss()V

    .line 419
    :cond_1
    return-void
.end method
