.class Lcom/android/settings/GSensorSettings$setHandler;
.super Landroid/os/Handler;
.source "GSensorSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/GSensorSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "setHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/GSensorSettings;


# direct methods
.method private constructor <init>(Lcom/android/settings/GSensorSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 326
    iput-object p1, p0, Lcom/android/settings/GSensorSettings$setHandler;->this$0:Lcom/android/settings/GSensorSettings;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/GSensorSettings;Lcom/android/settings/GSensorSettings$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 326
    invoke-direct {p0, p1}, Lcom/android/settings/GSensorSettings$setHandler;-><init>(Lcom/android/settings/GSensorSettings;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 10
    .parameter "msg"

    .prologue
    const/4 v9, 0x0

    const/high16 v8, 0x4248

    const-wide/16 v6, 0x32

    const/4 v5, 0x1

    const/4 v4, 0x2

    .line 328
    new-array v1, v4, [F

    .line 329
    .local v1, position:[F
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 330
    .local v0, message:Landroid/os/Message;
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 382
    :goto_0
    return-void

    .line 332
    :pswitch_0
    iget-object v2, p0, Lcom/android/settings/GSensorSettings$setHandler;->this$0:Lcom/android/settings/GSensorSettings;

    #getter for: Lcom/android/settings/GSensorSettings;->text:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/android/settings/GSensorSettings;->access$400(Lcom/android/settings/GSensorSettings;)Landroid/widget/TextView;

    move-result-object v2

    const v3, 0x7f080573

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 333
    iget-object v2, p0, Lcom/android/settings/GSensorSettings$setHandler;->this$0:Lcom/android/settings/GSensorSettings;

    #getter for: Lcom/android/settings/GSensorSettings;->drawView:Lcom/android/settings/GSensorSettings$GSensorSettingsView;
    invoke-static {v2}, Lcom/android/settings/GSensorSettings;->access$500(Lcom/android/settings/GSensorSettings;)Lcom/android/settings/GSensorSettings$GSensorSettingsView;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/settings/GSensorSettings$GSensorSettingsView;->getPoint([F)[F

    .line 334
    iget-object v2, p0, Lcom/android/settings/GSensorSettings$setHandler;->this$0:Lcom/android/settings/GSensorSettings;

    #getter for: Lcom/android/settings/GSensorSettings;->drawView:Lcom/android/settings/GSensorSettings$GSensorSettingsView;
    invoke-static {v2}, Lcom/android/settings/GSensorSettings;->access$500(Lcom/android/settings/GSensorSettings;)Lcom/android/settings/GSensorSettings$GSensorSettingsView;

    move-result-object v2

    #calls: Lcom/android/settings/GSensorSettings$GSensorSettingsView;->updateState(I)V
    invoke-static {v2, v4}, Lcom/android/settings/GSensorSettings$GSensorSettingsView;->access$200(Lcom/android/settings/GSensorSettings$GSensorSettingsView;I)V

    .line 335
    aget v2, v1, v9

    const/high16 v3, 0x4370

    sub-float/2addr v2, v3

    div-float/2addr v2, v8

    sput v2, Lcom/android/settings/GSensorSettings;->ani_gap_x:F

    .line 336
    aget v2, v1, v5

    const/high16 v3, 0x43b9

    sub-float/2addr v2, v3

    div-float/2addr v2, v8

    sput v2, Lcom/android/settings/GSensorSettings;->ani_gap_y:F

    .line 337
    const/16 v2, 0x32

    sput v2, Lcom/android/settings/GSensorSettings;->ani_count:I

    .line 338
    iget-object v2, p0, Lcom/android/settings/GSensorSettings$setHandler;->this$0:Lcom/android/settings/GSensorSettings;

    #getter for: Lcom/android/settings/GSensorSettings;->drawView:Lcom/android/settings/GSensorSettings$GSensorSettingsView;
    invoke-static {v2}, Lcom/android/settings/GSensorSettings;->access$500(Lcom/android/settings/GSensorSettings;)Lcom/android/settings/GSensorSettings$GSensorSettingsView;

    move-result-object v2

    sget v3, Lcom/android/settings/GSensorSettings;->ani_count:I

    invoke-virtual {v2, v3}, Lcom/android/settings/GSensorSettings$GSensorSettingsView;->setImage(I)V

    .line 339
    iput v4, v0, Landroid/os/Message;->what:I

    .line 340
    invoke-virtual {p0, v0, v6, v7}, Lcom/android/settings/GSensorSettings$setHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 341
    invoke-virtual {p0, v5}, Lcom/android/settings/GSensorSettings$setHandler;->removeMessages(I)V

    goto :goto_0

    .line 344
    :pswitch_1
    sget v2, Lcom/android/settings/GSensorSettings;->ani_count:I

    sub-int/2addr v2, v5

    sput v2, Lcom/android/settings/GSensorSettings;->ani_count:I

    if-ltz v2, :cond_0

    .line 351
    iget-object v2, p0, Lcom/android/settings/GSensorSettings$setHandler;->this$0:Lcom/android/settings/GSensorSettings;

    #getter for: Lcom/android/settings/GSensorSettings;->drawView:Lcom/android/settings/GSensorSettings$GSensorSettingsView;
    invoke-static {v2}, Lcom/android/settings/GSensorSettings;->access$500(Lcom/android/settings/GSensorSettings;)Lcom/android/settings/GSensorSettings$GSensorSettingsView;

    move-result-object v2

    sget v3, Lcom/android/settings/GSensorSettings;->ani_count:I

    invoke-virtual {v2, v3}, Lcom/android/settings/GSensorSettings$GSensorSettingsView;->setImage(I)V

    .line 352
    iget-object v2, p0, Lcom/android/settings/GSensorSettings$setHandler;->this$0:Lcom/android/settings/GSensorSettings;

    #getter for: Lcom/android/settings/GSensorSettings;->drawView:Lcom/android/settings/GSensorSettings$GSensorSettingsView;
    invoke-static {v2}, Lcom/android/settings/GSensorSettings;->access$500(Lcom/android/settings/GSensorSettings;)Lcom/android/settings/GSensorSettings$GSensorSettingsView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/settings/GSensorSettings$GSensorSettingsView;->invalidate()V

    .line 353
    invoke-virtual {p0, v4}, Lcom/android/settings/GSensorSettings$setHandler;->removeMessages(I)V

    .line 354
    iput v4, v0, Landroid/os/Message;->what:I

    .line 355
    invoke-virtual {p0, v0, v6, v7}, Lcom/android/settings/GSensorSettings$setHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 357
    :cond_0
    invoke-virtual {p0, v4}, Lcom/android/settings/GSensorSettings$setHandler;->removeMessages(I)V

    .line 358
    const/4 v2, 0x3

    iput v2, v0, Landroid/os/Message;->what:I

    .line 359
    invoke-virtual {p0, v0, v6, v7}, Lcom/android/settings/GSensorSettings$setHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 360
    const/16 v2, 0x32

    sput v2, Lcom/android/settings/GSensorSettings;->ani_count:I

    goto :goto_0

    .line 364
    :pswitch_2
    const/4 v2, 0x3

    invoke-virtual {p0, v2}, Lcom/android/settings/GSensorSettings$setHandler;->removeMessages(I)V

    .line 365
    iget-object v2, p0, Lcom/android/settings/GSensorSettings$setHandler;->this$0:Lcom/android/settings/GSensorSettings;

    #getter for: Lcom/android/settings/GSensorSettings;->mSensorManager:Landroid/hardware/SensorManager;
    invoke-static {v2}, Lcom/android/settings/GSensorSettings;->access$600(Lcom/android/settings/GSensorSettings;)Landroid/hardware/SensorManager;

    move-result-object v2

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/hardware/SensorManager;->runCalibration(I)I

    move-result v2

    sput v2, Lcom/android/settings/GSensorSettings;->file:I

    .line 366
    const-string v2, "GSensorSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "animation end -- file ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v4, Lcom/android/settings/GSensorSettings;->file:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 370
    invoke-static {v9}, Lcom/android/settings/GSensorSettings;->access$702(I)I

    .line 371
    iget-object v2, p0, Lcom/android/settings/GSensorSettings$setHandler;->this$0:Lcom/android/settings/GSensorSettings;

    #getter for: Lcom/android/settings/GSensorSettings;->drawView:Lcom/android/settings/GSensorSettings$GSensorSettingsView;
    invoke-static {v2}, Lcom/android/settings/GSensorSettings;->access$500(Lcom/android/settings/GSensorSettings;)Lcom/android/settings/GSensorSettings$GSensorSettingsView;

    move-result-object v2

    #calls: Lcom/android/settings/GSensorSettings$GSensorSettingsView;->updateState(I)V
    invoke-static {v2, v5}, Lcom/android/settings/GSensorSettings$GSensorSettingsView;->access$200(Lcom/android/settings/GSensorSettings$GSensorSettingsView;I)V

    .line 372
    iget-object v2, p0, Lcom/android/settings/GSensorSettings$setHandler;->this$0:Lcom/android/settings/GSensorSettings;

    #getter for: Lcom/android/settings/GSensorSettings;->text:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/android/settings/GSensorSettings;->access$400(Lcom/android/settings/GSensorSettings;)Landroid/widget/TextView;

    move-result-object v2

    const v3, 0x7f080572

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 373
    sget v2, Lcom/android/settings/GSensorSettings;->file:I

    if-lez v2, :cond_1

    .line 374
    iget-object v2, p0, Lcom/android/settings/GSensorSettings$setHandler;->this$0:Lcom/android/settings/GSensorSettings;

    #calls: Lcom/android/settings/GSensorSettings;->diplayCompleted()V
    invoke-static {v2}, Lcom/android/settings/GSensorSettings;->access$800(Lcom/android/settings/GSensorSettings;)V

    goto/16 :goto_0

    .line 376
    :cond_1
    iget-object v2, p0, Lcom/android/settings/GSensorSettings$setHandler;->this$0:Lcom/android/settings/GSensorSettings;

    #calls: Lcom/android/settings/GSensorSettings;->diplayError()V
    invoke-static {v2}, Lcom/android/settings/GSensorSettings;->access$900(Lcom/android/settings/GSensorSettings;)V

    goto/16 :goto_0

    .line 330
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
