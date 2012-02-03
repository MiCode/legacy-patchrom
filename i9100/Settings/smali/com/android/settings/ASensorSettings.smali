.class public Lcom/android/settings/ASensorSettings;
.super Landroid/app/Activity;
.source "ASensorSettings.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/ASensorSettings$1;,
        Lcom/android/settings/ASensorSettings$setHandler;,
        Lcom/android/settings/ASensorSettings$ASensorSettingsView;,
        Lcom/android/settings/ASensorSettings$handlersensor;
    }
.end annotation


# static fields
.field static ani_count:I

.field static ani_gap_x:F

.field static ani_gap_y:F

.field private static circlePaint:Landroid/graphics/Paint;

.field private static sampleCount:I

.field static sampleData_x:F

.field static sampleData_y:F


# instance fields
.field private btn_cal:Landroid/widget/Button;

.field private drawView:Lcom/android/settings/ASensorSettings$ASensorSettingsView;

.field private draw_layout:Landroid/widget/LinearLayout;

.field private mAccelerometerSensor:Landroid/hardware/Sensor;

.field mHandler:Lcom/android/settings/ASensorSettings$setHandler;

.field mSensorListner:Lcom/android/settings/ASensorSettings$handlersensor;

.field private mSensorManager:Landroid/hardware/SensorManager;

.field private text:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 327
    return-void
.end method

.method static synthetic access$300()I
    .locals 1

    .prologue
    .line 52
    sget v0, Lcom/android/settings/ASensorSettings;->sampleCount:I

    return v0
.end method

.method static synthetic access$302(I)I
    .locals 0
    .parameter "x0"

    .prologue
    .line 52
    sput p0, Lcom/android/settings/ASensorSettings;->sampleCount:I

    return p0
.end method

.method static synthetic access$304()I
    .locals 1

    .prologue
    .line 52
    sget v0, Lcom/android/settings/ASensorSettings;->sampleCount:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/android/settings/ASensorSettings;->sampleCount:I

    return v0
.end method

.method static synthetic access$308()I
    .locals 2

    .prologue
    .line 52
    sget v0, Lcom/android/settings/ASensorSettings;->sampleCount:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lcom/android/settings/ASensorSettings;->sampleCount:I

    return v0
.end method

.method static synthetic access$400(Lcom/android/settings/ASensorSettings;)Lcom/android/settings/ASensorSettings$ASensorSettingsView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/settings/ASensorSettings;->drawView:Lcom/android/settings/ASensorSettings$ASensorSettingsView;

    return-object v0
.end method

.method static synthetic access$500()Landroid/graphics/Paint;
    .locals 1

    .prologue
    .line 52
    sget-object v0, Lcom/android/settings/ASensorSettings;->circlePaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/settings/ASensorSettings;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/settings/ASensorSettings;->text:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/settings/ASensorSettings;)Landroid/hardware/Sensor;
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/settings/ASensorSettings;->mAccelerometerSensor:Landroid/hardware/Sensor;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/settings/ASensorSettings;)Landroid/hardware/SensorManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/settings/ASensorSettings;->mSensorManager:Landroid/hardware/SensorManager;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/settings/ASensorSettings;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/android/settings/ASensorSettings;->diplayCompleted()V

    return-void
.end method

.method private diplayCompleted()V
    .locals 7

    .prologue
    const/4 v5, 0x0

    const-string v6, "GT-I9100"

    const-string v4, "ASensorSettings"

    .line 231
    const-string v2, "GT-I9103"

    const-string v3, "GT-I9100"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "GT-I9100G"

    const-string v3, "GT-I9100"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 232
    :cond_0
    const-string v2, "ASensorSettings"

    const-string v2, "Starting runCal..."

    invoke-static {v4, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    const-string v2, "sys/class/sensors/accelerometer_sensor/calibration"

    invoke-direct {p0, v2}, Lcom/android/settings/ASensorSettings;->readOneLine(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 234
    .local v0, error:Ljava/lang/String;
    const-string v2, "ASensorSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "error : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    const-string v2, "0"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 236
    const-string v2, "ASensorSettings"

    const-string v2, "Run Cal Done!"

    invoke-static {v4, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    .end local v0           #error:Ljava/lang/String;
    :cond_1
    iget-object v2, p0, Lcom/android/settings/ASensorSettings;->btn_cal:Landroid/widget/Button;

    invoke-virtual {v2, v5}, Landroid/widget/Button;->setVisibility(I)V

    .line 241
    const v2, 0x7f08057c

    invoke-static {p0, v2, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    .line 243
    .local v1, mtoast:Landroid/widget/Toast;
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 244
    return-void
.end method

.method private init()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 101
    const-string v0, "sensor"

    invoke-virtual {p0, v0}, Lcom/android/settings/ASensorSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Lcom/android/settings/ASensorSettings;->mSensorManager:Landroid/hardware/SensorManager;

    .line 102
    iget-object v0, p0, Lcom/android/settings/ASensorSettings;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v0, v2}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/ASensorSettings;->mAccelerometerSensor:Landroid/hardware/Sensor;

    .line 104
    const v0, 0x7f0b0003

    invoke-virtual {p0, v0}, Lcom/android/settings/ASensorSettings;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/settings/ASensorSettings;->btn_cal:Landroid/widget/Button;

    .line 105
    iget-object v0, p0, Lcom/android/settings/ASensorSettings;->btn_cal:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 106
    iget-object v0, p0, Lcom/android/settings/ASensorSettings;->btn_cal:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 108
    const v0, 0x7f0b0001

    invoke-virtual {p0, v0}, Lcom/android/settings/ASensorSettings;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/ASensorSettings;->text:Landroid/widget/TextView;

    .line 110
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v2}, Landroid/graphics/Paint;-><init>(I)V

    sput-object v0, Lcom/android/settings/ASensorSettings;->circlePaint:Landroid/graphics/Paint;

    .line 111
    sget-object v0, Lcom/android/settings/ASensorSettings;->circlePaint:Landroid/graphics/Paint;

    const v1, -0xff0100

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 112
    sget-object v0, Lcom/android/settings/ASensorSettings;->circlePaint:Landroid/graphics/Paint;

    const/high16 v1, 0x4040

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 113
    sget-object v0, Lcom/android/settings/ASensorSettings;->circlePaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 114
    return-void
.end method

.method private readOneLine(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter "filepath"

    .prologue
    .line 247
    const-string v3, ""

    .line 248
    .local v3, result:Ljava/lang/String;
    const/4 v0, 0x0

    .line 250
    .local v0, buf:Ljava/io/BufferedReader;
    :try_start_0
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/FileReader;

    invoke-direct {v4, p1}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    const/16 v5, 0x1fa0

    invoke-direct {v1, v4, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 251
    .end local v0           #buf:Ljava/io/BufferedReader;
    .local v1, buf:Ljava/io/BufferedReader;
    if-eqz v1, :cond_0

    .line 252
    :try_start_1
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4

    move-result-object v3

    .line 257
    :cond_0
    if-eqz v1, :cond_3

    .line 259
    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    move-object v0, v1

    .line 265
    .end local v1           #buf:Ljava/io/BufferedReader;
    .restart local v0       #buf:Ljava/io/BufferedReader;
    :cond_1
    :goto_0
    return-object v3

    .line 260
    .end local v0           #buf:Ljava/io/BufferedReader;
    .restart local v1       #buf:Ljava/io/BufferedReader;
    :catch_0
    move-exception v2

    .line 261
    .local v2, e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    move-object v0, v1

    .line 262
    .end local v1           #buf:Ljava/io/BufferedReader;
    .restart local v0       #buf:Ljava/io/BufferedReader;
    goto :goto_0

    .line 254
    .end local v2           #e:Ljava/io/IOException;
    :catch_1
    move-exception v4

    move-object v2, v4

    .line 255
    .local v2, e:Ljava/lang/Exception;
    :goto_1
    :try_start_3
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 257
    if-eqz v0, :cond_1

    .line 259
    :try_start_4
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    .line 260
    :catch_2
    move-exception v2

    .line 261
    .local v2, e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 257
    .end local v2           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v4

    :goto_2
    if-eqz v0, :cond_2

    .line 259
    :try_start_5
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 262
    :cond_2
    :goto_3
    throw v4

    .line 260
    :catch_3
    move-exception v2

    .line 261
    .restart local v2       #e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 257
    .end local v0           #buf:Ljava/io/BufferedReader;
    .end local v2           #e:Ljava/io/IOException;
    .restart local v1       #buf:Ljava/io/BufferedReader;
    :catchall_1
    move-exception v4

    move-object v0, v1

    .end local v1           #buf:Ljava/io/BufferedReader;
    .restart local v0       #buf:Ljava/io/BufferedReader;
    goto :goto_2

    .line 254
    .end local v0           #buf:Ljava/io/BufferedReader;
    .restart local v1       #buf:Ljava/io/BufferedReader;
    :catch_4
    move-exception v4

    move-object v2, v4

    move-object v0, v1

    .end local v1           #buf:Ljava/io/BufferedReader;
    .restart local v0       #buf:Ljava/io/BufferedReader;
    goto :goto_1

    .end local v0           #buf:Ljava/io/BufferedReader;
    .restart local v1       #buf:Ljava/io/BufferedReader;
    :cond_3
    move-object v0, v1

    .end local v1           #buf:Ljava/io/BufferedReader;
    .restart local v0       #buf:Ljava/io/BufferedReader;
    goto :goto_0
.end method

.method private writeToFile()V
    .locals 6

    .prologue
    const-string v5, "ASensorSettings"

    .line 117
    const-string v4, "ASensorSettings"

    const-string v4, "Start calibration"

    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    const/4 v2, 0x0

    .line 121
    .local v2, out:Ljava/io/OutputStream;
    :try_start_0
    new-instance v3, Ljava/io/FileOutputStream;

    new-instance v4, Ljava/io/File;

    const-string v5, "/sys/class/sec/gsensorcal/calibration"

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 127
    .end local v2           #out:Ljava/io/OutputStream;
    .local v3, out:Ljava/io/OutputStream;
    const/16 v4, 0x31

    :try_start_1
    invoke-virtual {v3, v4}, Ljava/io/OutputStream;->write(I)V

    .line 128
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    move-object v2, v3

    .line 137
    .end local v3           #out:Ljava/io/OutputStream;
    .restart local v2       #out:Ljava/io/OutputStream;
    :goto_0
    return-void

    .line 122
    :catch_0
    move-exception v4

    move-object v0, v4

    .line 123
    .local v0, e:Ljava/io/FileNotFoundException;
    :try_start_2
    const-string v4, "ASensorSettings"

    const-string v5, "File not found!"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 129
    .end local v0           #e:Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v4

    move-object v0, v4

    .line 130
    .local v0, e:Ljava/io/IOException;
    :goto_1
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 132
    :try_start_3
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    .line 133
    :catch_2
    move-exception v1

    .line 134
    .local v1, err:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 129
    .end local v0           #e:Ljava/io/IOException;
    .end local v1           #err:Ljava/lang/Exception;
    .end local v2           #out:Ljava/io/OutputStream;
    .restart local v3       #out:Ljava/io/OutputStream;
    :catch_3
    move-exception v4

    move-object v0, v4

    move-object v2, v3

    .end local v3           #out:Ljava/io/OutputStream;
    .restart local v2       #out:Ljava/io/OutputStream;
    goto :goto_1
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "view"

    .prologue
    .line 140
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 150
    :goto_0
    return-void

    .line 142
    :pswitch_0
    invoke-direct {p0}, Lcom/android/settings/ASensorSettings;->writeToFile()V

    .line 143
    iget-object v1, p0, Lcom/android/settings/ASensorSettings;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v2, p0, Lcom/android/settings/ASensorSettings;->mSensorListner:Lcom/android/settings/ASensorSettings$handlersensor;

    invoke-virtual {v1, v2}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 144
    iget-object v1, p0, Lcom/android/settings/ASensorSettings;->btn_cal:Landroid/widget/Button;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 145
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 146
    .local v0, msg:Landroid/os/Message;
    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->what:I

    .line 147
    iget-object v1, p0, Lcom/android/settings/ASensorSettings;->mHandler:Lcom/android/settings/ASensorSettings$setHandler;

    const-wide/16 v2, 0x32

    invoke-virtual {v1, v0, v2, v3}, Lcom/android/settings/ASensorSettings$setHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 140
    nop

    :pswitch_data_0
    .packed-switch 0x7f0b0003
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    const/4 v2, 0x0

    .line 86
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 88
    new-instance v0, Lcom/android/settings/ASensorSettings$setHandler;

    invoke-direct {v0, p0, v2}, Lcom/android/settings/ASensorSettings$setHandler;-><init>(Lcom/android/settings/ASensorSettings;Lcom/android/settings/ASensorSettings$1;)V

    iput-object v0, p0, Lcom/android/settings/ASensorSettings;->mHandler:Lcom/android/settings/ASensorSettings$setHandler;

    .line 90
    const v0, 0x7f030001

    invoke-virtual {p0, v0}, Lcom/android/settings/ASensorSettings;->setContentView(I)V

    .line 91
    new-instance v0, Lcom/android/settings/ASensorSettings$ASensorSettingsView;

    invoke-direct {v0, p0}, Lcom/android/settings/ASensorSettings$ASensorSettingsView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/ASensorSettings;->drawView:Lcom/android/settings/ASensorSettings$ASensorSettingsView;

    .line 92
    const v0, 0x7f0b0002

    invoke-virtual {p0, v0}, Lcom/android/settings/ASensorSettings;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/settings/ASensorSettings;->draw_layout:Landroid/widget/LinearLayout;

    .line 93
    iget-object v0, p0, Lcom/android/settings/ASensorSettings;->draw_layout:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/android/settings/ASensorSettings;->drawView:Lcom/android/settings/ASensorSettings$ASensorSettingsView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 94
    invoke-direct {p0}, Lcom/android/settings/ASensorSettings;->init()V

    .line 96
    new-instance v0, Lcom/android/settings/ASensorSettings$handlersensor;

    invoke-direct {v0, p0, v2}, Lcom/android/settings/ASensorSettings$handlersensor;-><init>(Lcom/android/settings/ASensorSettings;Lcom/android/settings/ASensorSettings$1;)V

    iput-object v0, p0, Lcom/android/settings/ASensorSettings;->mSensorListner:Lcom/android/settings/ASensorSettings$handlersensor;

    .line 97
    return-void
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 169
    iget-object v0, p0, Lcom/android/settings/ASensorSettings;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/android/settings/ASensorSettings;->mSensorListner:Lcom/android/settings/ASensorSettings$handlersensor;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 171
    iget-object v0, p0, Lcom/android/settings/ASensorSettings;->mHandler:Lcom/android/settings/ASensorSettings$setHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/settings/ASensorSettings$setHandler;->removeMessages(I)V

    .line 172
    iget-object v0, p0, Lcom/android/settings/ASensorSettings;->mHandler:Lcom/android/settings/ASensorSettings$setHandler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/settings/ASensorSettings$setHandler;->removeMessages(I)V

    .line 173
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 174
    return-void
.end method

.method protected onResume()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 153
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 154
    sput v3, Lcom/android/settings/ASensorSettings;->sampleCount:I

    .line 156
    iget-object v0, p0, Lcom/android/settings/ASensorSettings;->drawView:Lcom/android/settings/ASensorSettings$ASensorSettingsView;

    if-eqz v0, :cond_0

    .line 157
    iget-object v0, p0, Lcom/android/settings/ASensorSettings;->drawView:Lcom/android/settings/ASensorSettings$ASensorSettingsView;

    const/4 v1, 0x1

    #calls: Lcom/android/settings/ASensorSettings$ASensorSettingsView;->updateState(I)V
    invoke-static {v0, v1}, Lcom/android/settings/ASensorSettings$ASensorSettingsView;->access$200(Lcom/android/settings/ASensorSettings$ASensorSettingsView;I)V

    .line 159
    :cond_0
    iget-object v0, p0, Lcom/android/settings/ASensorSettings;->btn_cal:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 162
    iget-object v0, p0, Lcom/android/settings/ASensorSettings;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/android/settings/ASensorSettings;->mSensorListner:Lcom/android/settings/ASensorSettings$handlersensor;

    iget-object v2, p0, Lcom/android/settings/ASensorSettings;->mAccelerometerSensor:Landroid/hardware/Sensor;

    invoke-virtual {v0, v1, v2, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 164
    return-void
.end method
