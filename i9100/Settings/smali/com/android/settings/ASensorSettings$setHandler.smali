.class Lcom/android/settings/ASensorSettings$setHandler;
.super Landroid/os/Handler;
.source "ASensorSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/ASensorSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "setHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/ASensorSettings;


# direct methods
.method private constructor <init>(Lcom/android/settings/ASensorSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 327
    iput-object p1, p0, Lcom/android/settings/ASensorSettings$setHandler;->this$0:Lcom/android/settings/ASensorSettings;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/ASensorSettings;Lcom/android/settings/ASensorSettings$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 327
    invoke-direct {p0, p1}, Lcom/android/settings/ASensorSettings$setHandler;-><init>(Lcom/android/settings/ASensorSettings;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 10
    .parameter "msg"

    .prologue
    const/high16 v4, 0x4220

    const-wide/16 v8, 0x32

    const/4 v7, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x2

    .line 329
    new-array v1, v6, [F

    .line 330
    .local v1, position:[F
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 332
    .local v0, message:Landroid/os/Message;
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 378
    :goto_0
    return-void

    .line 334
    :pswitch_0
    iget-object v2, p0, Lcom/android/settings/ASensorSettings$setHandler;->this$0:Lcom/android/settings/ASensorSettings;

    #getter for: Lcom/android/settings/ASensorSettings;->text:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/android/settings/ASensorSettings;->access$600(Lcom/android/settings/ASensorSettings;)Landroid/widget/TextView;

    move-result-object v2

    const v3, 0x7f08057b

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 335
    iget-object v2, p0, Lcom/android/settings/ASensorSettings$setHandler;->this$0:Lcom/android/settings/ASensorSettings;

    #getter for: Lcom/android/settings/ASensorSettings;->drawView:Lcom/android/settings/ASensorSettings$ASensorSettingsView;
    invoke-static {v2}, Lcom/android/settings/ASensorSettings;->access$400(Lcom/android/settings/ASensorSettings;)Lcom/android/settings/ASensorSettings$ASensorSettingsView;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/settings/ASensorSettings$ASensorSettingsView;->getPoint([F)[F

    .line 336
    iget-object v2, p0, Lcom/android/settings/ASensorSettings$setHandler;->this$0:Lcom/android/settings/ASensorSettings;

    #getter for: Lcom/android/settings/ASensorSettings;->drawView:Lcom/android/settings/ASensorSettings$ASensorSettingsView;
    invoke-static {v2}, Lcom/android/settings/ASensorSettings;->access$400(Lcom/android/settings/ASensorSettings;)Lcom/android/settings/ASensorSettings$ASensorSettingsView;

    move-result-object v2

    #calls: Lcom/android/settings/ASensorSettings$ASensorSettingsView;->updateState(I)V
    invoke-static {v2, v6}, Lcom/android/settings/ASensorSettings$ASensorSettingsView;->access$200(Lcom/android/settings/ASensorSettings$ASensorSettingsView;I)V

    .line 337
    aget v2, v1, v7

    const/high16 v3, 0x4370

    sub-float/2addr v2, v3

    div-float/2addr v2, v4

    sput v2, Lcom/android/settings/ASensorSettings;->ani_gap_x:F

    .line 338
    aget v2, v1, v5

    const/high16 v3, 0x43b9

    sub-float/2addr v2, v3

    div-float/2addr v2, v4

    sput v2, Lcom/android/settings/ASensorSettings;->ani_gap_y:F

    .line 339
    const/16 v2, 0x28

    sput v2, Lcom/android/settings/ASensorSettings;->ani_count:I

    .line 341
    iput v6, v0, Landroid/os/Message;->what:I

    .line 342
    invoke-virtual {p0, v0, v8, v9}, Lcom/android/settings/ASensorSettings$setHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 343
    invoke-virtual {p0, v5}, Lcom/android/settings/ASensorSettings$setHandler;->removeMessages(I)V

    goto :goto_0

    .line 347
    :pswitch_1
    sget v2, Lcom/android/settings/ASensorSettings;->ani_count:I

    sub-int/2addr v2, v5

    sput v2, Lcom/android/settings/ASensorSettings;->ani_count:I

    if-ltz v2, :cond_0

    .line 348
    iget-object v2, p0, Lcom/android/settings/ASensorSettings$setHandler;->this$0:Lcom/android/settings/ASensorSettings;

    #getter for: Lcom/android/settings/ASensorSettings;->drawView:Lcom/android/settings/ASensorSettings$ASensorSettingsView;
    invoke-static {v2}, Lcom/android/settings/ASensorSettings;->access$400(Lcom/android/settings/ASensorSettings;)Lcom/android/settings/ASensorSettings$ASensorSettingsView;

    move-result-object v2

    sget v3, Lcom/android/settings/ASensorSettings;->ani_gap_x:F

    sget v4, Lcom/android/settings/ASensorSettings;->ani_count:I

    int-to-float v4, v4

    mul-float/2addr v3, v4

    sget v4, Lcom/android/settings/ASensorSettings;->ani_gap_y:F

    neg-float v4, v4

    sget v5, Lcom/android/settings/ASensorSettings;->ani_count:I

    int-to-float v5, v5

    mul-float/2addr v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/android/settings/ASensorSettings$ASensorSettingsView;->setPoint(FF)V

    .line 351
    iget-object v2, p0, Lcom/android/settings/ASensorSettings$setHandler;->this$0:Lcom/android/settings/ASensorSettings;

    #getter for: Lcom/android/settings/ASensorSettings;->drawView:Lcom/android/settings/ASensorSettings$ASensorSettingsView;
    invoke-static {v2}, Lcom/android/settings/ASensorSettings;->access$400(Lcom/android/settings/ASensorSettings;)Lcom/android/settings/ASensorSettings$ASensorSettingsView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/settings/ASensorSettings$ASensorSettingsView;->invalidate()V

    .line 352
    invoke-virtual {p0, v6}, Lcom/android/settings/ASensorSettings$setHandler;->removeMessages(I)V

    .line 353
    iput v6, v0, Landroid/os/Message;->what:I

    .line 354
    invoke-virtual {p0, v0, v8, v9}, Lcom/android/settings/ASensorSettings$setHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 356
    :cond_0
    invoke-virtual {p0, v6}, Lcom/android/settings/ASensorSettings$setHandler;->removeMessages(I)V

    .line 357
    const/4 v2, 0x3

    iput v2, v0, Landroid/os/Message;->what:I

    .line 358
    invoke-virtual {p0, v0, v8, v9}, Lcom/android/settings/ASensorSettings$setHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 359
    const/16 v2, 0x28

    sput v2, Lcom/android/settings/ASensorSettings;->ani_count:I

    goto :goto_0

    .line 364
    :pswitch_2
    const/4 v2, 0x3

    invoke-virtual {p0, v2}, Lcom/android/settings/ASensorSettings$setHandler;->removeMessages(I)V

    .line 366
    iget-object v2, p0, Lcom/android/settings/ASensorSettings$setHandler;->this$0:Lcom/android/settings/ASensorSettings;

    #getter for: Lcom/android/settings/ASensorSettings;->mSensorManager:Landroid/hardware/SensorManager;
    invoke-static {v2}, Lcom/android/settings/ASensorSettings;->access$800(Lcom/android/settings/ASensorSettings;)Landroid/hardware/SensorManager;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/ASensorSettings$setHandler;->this$0:Lcom/android/settings/ASensorSettings;

    iget-object v3, v3, Lcom/android/settings/ASensorSettings;->mSensorListner:Lcom/android/settings/ASensorSettings$handlersensor;

    iget-object v4, p0, Lcom/android/settings/ASensorSettings$setHandler;->this$0:Lcom/android/settings/ASensorSettings;

    #getter for: Lcom/android/settings/ASensorSettings;->mAccelerometerSensor:Landroid/hardware/Sensor;
    invoke-static {v4}, Lcom/android/settings/ASensorSettings;->access$700(Lcom/android/settings/ASensorSettings;)Landroid/hardware/Sensor;

    move-result-object v4

    invoke-virtual {v2, v3, v4, v7}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 369
    invoke-static {v7}, Lcom/android/settings/ASensorSettings;->access$302(I)I

    .line 370
    iget-object v2, p0, Lcom/android/settings/ASensorSettings$setHandler;->this$0:Lcom/android/settings/ASensorSettings;

    #getter for: Lcom/android/settings/ASensorSettings;->drawView:Lcom/android/settings/ASensorSettings$ASensorSettingsView;
    invoke-static {v2}, Lcom/android/settings/ASensorSettings;->access$400(Lcom/android/settings/ASensorSettings;)Lcom/android/settings/ASensorSettings$ASensorSettingsView;

    move-result-object v2

    #calls: Lcom/android/settings/ASensorSettings$ASensorSettingsView;->updateState(I)V
    invoke-static {v2, v5}, Lcom/android/settings/ASensorSettings$ASensorSettingsView;->access$200(Lcom/android/settings/ASensorSettings$ASensorSettingsView;I)V

    .line 371
    iget-object v2, p0, Lcom/android/settings/ASensorSettings$setHandler;->this$0:Lcom/android/settings/ASensorSettings;

    #getter for: Lcom/android/settings/ASensorSettings;->text:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/android/settings/ASensorSettings;->access$600(Lcom/android/settings/ASensorSettings;)Landroid/widget/TextView;

    move-result-object v2

    const v3, 0x7f08057a

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 373
    iget-object v2, p0, Lcom/android/settings/ASensorSettings$setHandler;->this$0:Lcom/android/settings/ASensorSettings;

    #calls: Lcom/android/settings/ASensorSettings;->diplayCompleted()V
    invoke-static {v2}, Lcom/android/settings/ASensorSettings;->access$900(Lcom/android/settings/ASensorSettings;)V

    goto/16 :goto_0

    .line 332
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
