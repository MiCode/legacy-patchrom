.class public Lcom/android/settings/GSensorSettings;
.super Landroid/app/Activity;
.source "GSensorSettings.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/GSensorSettings$1;,
        Lcom/android/settings/GSensorSettings$setHandler;,
        Lcom/android/settings/GSensorSettings$GSensorSettingsView;,
        Lcom/android/settings/GSensorSettings$handlersensor;
    }
.end annotation


# static fields
.field static ani_count:I

.field static ani_gap_x:F

.field static ani_gap_y:F

.field private static circlePaint:Landroid/graphics/Paint;

.field static file:I

.field private static sampleCount:I


# instance fields
.field private btn_cal:Landroid/widget/Button;

.field private drawView:Lcom/android/settings/GSensorSettings$GSensorSettingsView;

.field private draw_layout:Landroid/widget/LinearLayout;

.field private mAccelerometerSensor:Landroid/hardware/Sensor;

.field mHandler:Lcom/android/settings/GSensorSettings$setHandler;

.field mSensorListner:Lcom/android/settings/GSensorSettings$handlersensor;

.field private mSensorManager:Landroid/hardware/SensorManager;

.field private text:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 326
    return-void
.end method

.method static synthetic access$300()Landroid/graphics/Paint;
    .locals 1

    .prologue
    .line 45
    sget-object v0, Lcom/android/settings/GSensorSettings;->circlePaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/settings/GSensorSettings;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/settings/GSensorSettings;->text:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/settings/GSensorSettings;)Lcom/android/settings/GSensorSettings$GSensorSettingsView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/settings/GSensorSettings;->drawView:Lcom/android/settings/GSensorSettings$GSensorSettingsView;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/settings/GSensorSettings;)Landroid/hardware/SensorManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/settings/GSensorSettings;->mSensorManager:Landroid/hardware/SensorManager;

    return-object v0
.end method

.method static synthetic access$702(I)I
    .locals 0
    .parameter "x0"

    .prologue
    .line 45
    sput p0, Lcom/android/settings/GSensorSettings;->sampleCount:I

    return p0
.end method

.method static synthetic access$800(Lcom/android/settings/GSensorSettings;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/android/settings/GSensorSettings;->diplayCompleted()V

    return-void
.end method

.method static synthetic access$900(Lcom/android/settings/GSensorSettings;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/android/settings/GSensorSettings;->diplayError()V

    return-void
.end method

.method private diplayCompleted()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 234
    iget-object v1, p0, Lcom/android/settings/GSensorSettings;->btn_cal:Landroid/widget/Button;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 235
    const v1, 0x7f080575

    invoke-static {p0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 237
    .local v0, mtoast:Landroid/widget/Toast;
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 238
    return-void
.end method

.method private diplayError()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 241
    iget-object v1, p0, Lcom/android/settings/GSensorSettings;->btn_cal:Landroid/widget/Button;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 242
    const v1, 0x7f080574

    invoke-static {p0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 243
    .local v0, mtoast:Landroid/widget/Toast;
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 244
    return-void
.end method

.method private init()V
    .locals 2

    .prologue
    .line 107
    const-string v0, "sensor"

    invoke-virtual {p0, v0}, Lcom/android/settings/GSensorSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Lcom/android/settings/GSensorSettings;->mSensorManager:Landroid/hardware/SensorManager;

    .line 108
    iget-object v0, p0, Lcom/android/settings/GSensorSettings;->mSensorManager:Landroid/hardware/SensorManager;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/GSensorSettings;->mAccelerometerSensor:Landroid/hardware/Sensor;

    .line 109
    const v0, 0x7f0b005f

    invoke-virtual {p0, v0}, Lcom/android/settings/GSensorSettings;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/settings/GSensorSettings;->btn_cal:Landroid/widget/Button;

    .line 110
    iget-object v0, p0, Lcom/android/settings/GSensorSettings;->btn_cal:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 111
    iget-object v0, p0, Lcom/android/settings/GSensorSettings;->btn_cal:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 112
    const v0, 0x7f0b005d

    invoke-virtual {p0, v0}, Lcom/android/settings/GSensorSettings;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/GSensorSettings;->text:Landroid/widget/TextView;

    .line 113
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    sput-object v0, Lcom/android/settings/GSensorSettings;->circlePaint:Landroid/graphics/Paint;

    .line 114
    sget-object v0, Lcom/android/settings/GSensorSettings;->circlePaint:Landroid/graphics/Paint;

    const v1, -0xff0100

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 115
    sget-object v0, Lcom/android/settings/GSensorSettings;->circlePaint:Landroid/graphics/Paint;

    const/high16 v1, 0x4040

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 116
    sget-object v0, Lcom/android/settings/GSensorSettings;->circlePaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 117
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "view"

    .prologue
    .line 143
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 155
    :goto_0
    return-void

    .line 147
    :pswitch_0
    iget-object v1, p0, Lcom/android/settings/GSensorSettings;->btn_cal:Landroid/widget/Button;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 148
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 149
    .local v0, msg:Landroid/os/Message;
    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->what:I

    .line 150
    iget-object v1, p0, Lcom/android/settings/GSensorSettings;->mHandler:Lcom/android/settings/GSensorSettings$setHandler;

    const-wide/16 v2, 0x32

    invoke-virtual {v1, v0, v2, v3}, Lcom/android/settings/GSensorSettings$setHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 143
    nop

    :pswitch_data_0
    .packed-switch 0x7f0b005f
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    const/4 v2, 0x0

    .line 96
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 97
    new-instance v0, Lcom/android/settings/GSensorSettings$setHandler;

    invoke-direct {v0, p0, v2}, Lcom/android/settings/GSensorSettings$setHandler;-><init>(Lcom/android/settings/GSensorSettings;Lcom/android/settings/GSensorSettings$1;)V

    iput-object v0, p0, Lcom/android/settings/GSensorSettings;->mHandler:Lcom/android/settings/GSensorSettings$setHandler;

    .line 98
    const v0, 0x7f030024

    invoke-virtual {p0, v0}, Lcom/android/settings/GSensorSettings;->setContentView(I)V

    .line 99
    new-instance v0, Lcom/android/settings/GSensorSettings$GSensorSettingsView;

    invoke-direct {v0, p0}, Lcom/android/settings/GSensorSettings$GSensorSettingsView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/GSensorSettings;->drawView:Lcom/android/settings/GSensorSettings$GSensorSettingsView;

    .line 100
    const v0, 0x7f0b005e

    invoke-virtual {p0, v0}, Lcom/android/settings/GSensorSettings;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/settings/GSensorSettings;->draw_layout:Landroid/widget/LinearLayout;

    .line 101
    iget-object v0, p0, Lcom/android/settings/GSensorSettings;->draw_layout:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/android/settings/GSensorSettings;->drawView:Lcom/android/settings/GSensorSettings$GSensorSettingsView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 102
    invoke-direct {p0}, Lcom/android/settings/GSensorSettings;->init()V

    .line 103
    new-instance v0, Lcom/android/settings/GSensorSettings$handlersensor;

    invoke-direct {v0, p0, v2}, Lcom/android/settings/GSensorSettings$handlersensor;-><init>(Lcom/android/settings/GSensorSettings;Lcom/android/settings/GSensorSettings$1;)V

    iput-object v0, p0, Lcom/android/settings/GSensorSettings;->mSensorListner:Lcom/android/settings/GSensorSettings$handlersensor;

    .line 104
    return-void
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 174
    iget-object v0, p0, Lcom/android/settings/GSensorSettings;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/android/settings/GSensorSettings;->mSensorListner:Lcom/android/settings/GSensorSettings$handlersensor;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 176
    iget-object v0, p0, Lcom/android/settings/GSensorSettings;->mHandler:Lcom/android/settings/GSensorSettings$setHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/settings/GSensorSettings$setHandler;->removeMessages(I)V

    .line 177
    iget-object v0, p0, Lcom/android/settings/GSensorSettings;->mHandler:Lcom/android/settings/GSensorSettings$setHandler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/settings/GSensorSettings$setHandler;->removeMessages(I)V

    .line 178
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 179
    return-void
.end method

.method protected onResume()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v3, 0x0

    .line 159
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 160
    sput v3, Lcom/android/settings/GSensorSettings;->sampleCount:I

    .line 161
    iget-object v0, p0, Lcom/android/settings/GSensorSettings;->drawView:Lcom/android/settings/GSensorSettings$GSensorSettingsView;

    if-eqz v0, :cond_0

    .line 162
    iget-object v0, p0, Lcom/android/settings/GSensorSettings;->drawView:Lcom/android/settings/GSensorSettings$GSensorSettingsView;

    #calls: Lcom/android/settings/GSensorSettings$GSensorSettingsView;->updateState(I)V
    invoke-static {v0, v5}, Lcom/android/settings/GSensorSettings$GSensorSettingsView;->access$200(Lcom/android/settings/GSensorSettings$GSensorSettingsView;I)V

    .line 164
    :cond_0
    iget-object v0, p0, Lcom/android/settings/GSensorSettings;->btn_cal:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 167
    iget-object v0, p0, Lcom/android/settings/GSensorSettings;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/android/settings/GSensorSettings;->mSensorListner:Lcom/android/settings/GSensorSettings$handlersensor;

    iget-object v2, p0, Lcom/android/settings/GSensorSettings;->mAccelerometerSensor:Landroid/hardware/Sensor;

    const/4 v4, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;ILandroid/os/Handler;I)Z

    .line 169
    return-void
.end method
