.class Lcom/android/server/InputManager$Callbacks;
.super Ljava/lang/Object;
.source "InputManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/InputManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Callbacks"
.end annotation


# static fields
.field private static final CALIBRATION_DIR_PATH:Ljava/lang/String; = "usr/idc/"

.field private static final DEBUG_VIRTUAL_KEYS:Z = false

.field private static final EXCLUDED_DEVICES_PATH:Ljava/lang/String; = "etc/excluded-input-devices.xml"

.field static final TAG:Ljava/lang/String; = "InputManager-Callbacks"


# instance fields
.field final synthetic this$0:Lcom/android/server/InputManager;


# direct methods
.method private constructor <init>(Lcom/android/server/InputManager;)V
    .locals 0
    .parameter

    .prologue
    iput-object p1, p0, Lcom/android/server/InputManager$Callbacks;->this$0:Lcom/android/server/InputManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/InputManager;Lcom/android/server/InputManager$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/InputManager$Callbacks;-><init>(Lcom/android/server/InputManager;)V

    return-void
.end method


# virtual methods
.method public checkInjectEventsPermission(II)Z
    .locals 2
    .parameter "injectorPid"
    .parameter "injectorUid"

    .prologue
    iget-object v0, p0, Lcom/android/server/InputManager$Callbacks;->this$0:Lcom/android/server/InputManager;

    #getter for: Lcom/android/server/InputManager;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/server/InputManager;->access$200(Lcom/android/server/InputManager;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.INJECT_EVENTS"

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public endMouseCursorView()V
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/server/InputManager$Callbacks;->this$0:Lcom/android/server/InputManager;

    #getter for: Lcom/android/server/InputManager;->mWindowManagerService:Lcom/android/server/WindowManagerService;
    invoke-static {v0}, Lcom/android/server/InputManager;->access$100(Lcom/android/server/InputManager;)Lcom/android/server/WindowManagerService;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v0}, Landroid/view/WindowManagerPolicy;->hideMouseCursor()V

    return-void
.end method

.method public filterJumpyTouchEvents()Z
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/android/server/InputManager$Callbacks;->this$0:Lcom/android/server/InputManager;

    #getter for: Lcom/android/server/InputManager;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/server/InputManager;->access$200(Lcom/android/server/InputManager;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10d0011

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    return v0
.end method

.method public filterTouchEvents()Z
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/android/server/InputManager$Callbacks;->this$0:Lcom/android/server/InputManager;

    #getter for: Lcom/android/server/InputManager;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/server/InputManager;->access$200(Lcom/android/server/InputManager;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10d0010

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    return v0
.end method

.method public getExcludedDeviceNames()[Ljava/lang/String;
    .locals 10

    .prologue
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .local v5, names:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v6, 0x0

    .local v6, parser:Lorg/xmlpull/v1/XmlPullParser;
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v7

    const-string v8, "etc/excluded-input-devices.xml"

    invoke-direct {v0, v7, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .local v0, confFile:Ljava/io/File;
    const/4 v1, 0x0

    .local v1, confreader:Ljava/io/FileReader;
    :try_start_0
    new-instance v2, Ljava/io/FileReader;

    invoke-direct {v2, v0}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    .end local v1           #confreader:Ljava/io/FileReader;
    .local v2, confreader:Ljava/io/FileReader;
    :try_start_1
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v6

    invoke-interface {v6, v2}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    const-string v7, "devices"

    invoke-static {v6, v7}, Lcom/android/internal/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    :cond_0
    :goto_0
    invoke-static {v6}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V

    const-string v7, "device"

    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_6

    move-result v7

    if-nez v7, :cond_3

    if-eqz v2, :cond_1

    :try_start_2
    invoke-virtual {v2}, Ljava/io/FileReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    :cond_1
    move-object v1, v2

    .end local v2           #confreader:Ljava/io/FileReader;
    .restart local v1       #confreader:Ljava/io/FileReader;
    :cond_2
    :goto_1
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v7

    new-array v7, v7, [Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, [Ljava/lang/String;

    return-object p0

    .end local v1           #confreader:Ljava/io/FileReader;
    .restart local v2       #confreader:Ljava/io/FileReader;
    .restart local p0
    :cond_3
    const/4 v7, 0x0

    :try_start_3
    const-string v8, "name"

    invoke-interface {v6, v7, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .local v4, name:Ljava/lang/String;
    if-eqz v4, :cond_0

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_6

    goto :goto_0

    .end local v4           #name:Ljava/lang/String;
    :catch_0
    move-exception v7

    move-object v1, v2

    .end local v2           #confreader:Ljava/io/FileReader;
    .restart local v1       #confreader:Ljava/io/FileReader;
    :goto_2
    if-eqz v1, :cond_2

    :try_start_4
    invoke-virtual {v1}, Ljava/io/FileReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1

    :catch_1
    move-exception v7

    goto :goto_1

    .end local v1           #confreader:Ljava/io/FileReader;
    .restart local v2       #confreader:Ljava/io/FileReader;
    :catch_2
    move-exception v7

    move-object v1, v2

    .end local v2           #confreader:Ljava/io/FileReader;
    .restart local v1       #confreader:Ljava/io/FileReader;
    goto :goto_1

    :catch_3
    move-exception v7

    move-object v3, v7

    .local v3, e:Ljava/lang/Exception;
    :goto_3
    :try_start_5
    const-string v7, "InputManager-Callbacks"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Exception while parsing \'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-eqz v1, :cond_2

    :try_start_6
    invoke-virtual {v1}, Ljava/io/FileReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_1

    :catch_4
    move-exception v7

    goto :goto_1

    .end local v3           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v7

    :goto_4
    if-eqz v1, :cond_4

    :try_start_7
    invoke-virtual {v1}, Ljava/io/FileReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    :cond_4
    :goto_5
    throw v7

    :catch_5
    move-exception v8

    goto :goto_5

    .end local v1           #confreader:Ljava/io/FileReader;
    .restart local v2       #confreader:Ljava/io/FileReader;
    :catchall_1
    move-exception v7

    move-object v1, v2

    .end local v2           #confreader:Ljava/io/FileReader;
    .restart local v1       #confreader:Ljava/io/FileReader;
    goto :goto_4

    .end local v1           #confreader:Ljava/io/FileReader;
    .restart local v2       #confreader:Ljava/io/FileReader;
    :catch_6
    move-exception v7

    move-object v3, v7

    move-object v1, v2

    .end local v2           #confreader:Ljava/io/FileReader;
    .restart local v1       #confreader:Ljava/io/FileReader;
    goto :goto_3

    :catch_7
    move-exception v7

    goto :goto_2
.end method

.method public getInputDeviceCalibration(Ljava/lang/String;)Lcom/android/server/InputManager$InputDeviceCalibration;
    .locals 10
    .parameter "deviceName"

    .prologue
    const/4 v7, 0x0

    const-string v9, "InputManager-Callbacks"

    const-string v8, "."

    new-instance v3, Ljava/util/Properties;

    invoke-direct {v3}, Ljava/util/Properties;-><init>()V

    .local v3, properties:Ljava/util/Properties;
    new-instance v1, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "usr/idc/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".idc"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .local v1, calibrationFile:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_0

    :try_start_0
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v3, v4}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    new-instance v0, Lcom/android/server/InputManager$InputDeviceCalibration;

    invoke-direct {v0, v7}, Lcom/android/server/InputManager$InputDeviceCalibration;-><init>(Lcom/android/server/InputManager$1;)V

    .local v0, calibration:Lcom/android/server/InputManager$InputDeviceCalibration;
    invoke-virtual {v3}, Ljava/util/Properties;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-virtual {v3}, Ljava/util/Properties;->size()I

    move-result v5

    new-array v5, v5, [Ljava/lang/String;

    invoke-interface {v4, v5}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, [Ljava/lang/String;

    iput-object p0, v0, Lcom/android/server/InputManager$InputDeviceCalibration;->keys:[Ljava/lang/String;

    invoke-virtual {v3}, Ljava/util/Properties;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-virtual {v3}, Ljava/util/Properties;->size()I

    move-result v5

    new-array v5, v5, [Ljava/lang/String;

    invoke-interface {v4, v5}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    iput-object p0, v0, Lcom/android/server/InputManager$InputDeviceCalibration;->values:[Ljava/lang/String;

    move-object v4, v0

    .end local v0           #calibration:Lcom/android/server/InputManager$InputDeviceCalibration;
    :goto_1
    return-object v4

    .restart local p0
    :catch_0
    move-exception v4

    move-object v2, v4

    .local v2, ex:Ljava/io/IOException;
    const-string v4, "InputManager-Callbacks"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error reading input device calibration properties for device "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " from "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "."

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v9, v4, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .end local v2           #ex:Ljava/io/IOException;
    :cond_0
    const-string v4, "InputManager-Callbacks"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "No input device calibration properties found for device "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "."

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v9, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object v4, v7

    goto :goto_1
.end method

.method public getMaxEventsPerSecond()I
    .locals 2

    .prologue
    const/4 v0, 0x0

    .local v0, result:I
    :try_start_0
    const-string v1, "windowsmgr.max_events_per_sec"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    const/16 v0, 0x3c

    :cond_0
    return v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public getMouseSpeed()I
    .locals 4

    .prologue
    iget-object v1, p0, Lcom/android/server/InputManager$Callbacks;->this$0:Lcom/android/server/InputManager;

    #getter for: Lcom/android/server/InputManager;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/server/InputManager;->access$200(Lcom/android/server/InputManager;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "pointer_speed_level"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lcom/motorola/android/provider/MotorolaSettings;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .local v0, mouseSpeed:I
    if-gtz v0, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public getVirtualKeyDefinitions(Ljava/lang/String;)[Lcom/android/server/InputManager$VirtualKeyDefinition;
    .locals 13
    .parameter "deviceName"

    .prologue
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .local v8, keys:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/InputManager$VirtualKeyDefinition;>;"
    :try_start_0
    new-instance v3, Ljava/io/FileInputStream;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "/sys/board_properties/virtualkeys."

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v3, v10}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .local v3, fis:Ljava/io/FileInputStream;
    new-instance v5, Ljava/io/InputStreamReader;

    invoke-direct {v5, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .local v5, isr:Ljava/io/InputStreamReader;
    new-instance v1, Ljava/io/BufferedReader;

    const/16 v10, 0x800

    invoke-direct {v1, v5, v10}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    .local v1, br:Ljava/io/BufferedReader;
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v9

    .local v9, str:Ljava/lang/String;
    if-eqz v9, :cond_1

    const-string v10, ":"

    invoke-virtual {v9, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .local v6, it:[Ljava/lang/String;
    array-length v10, v6

    const/4 v11, 0x6

    sub-int v0, v10, v11

    .local v0, N:I
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    if-gt v4, v0, :cond_1

    const-string v10, "0x01"

    aget-object v11, v6, v4

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_0

    const-string v10, "InputManager-Callbacks"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Unknown virtual key type at elem #"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ": "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    aget-object v12, v6, v4

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " for device "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    :goto_1
    add-int/lit8 v4, v4, 0x6

    goto :goto_0

    :cond_0
    :try_start_1
    new-instance v7, Lcom/android/server/InputManager$VirtualKeyDefinition;

    const/4 v10, 0x0

    invoke-direct {v7, v10}, Lcom/android/server/InputManager$VirtualKeyDefinition;-><init>(Lcom/android/server/InputManager$1;)V

    .local v7, key:Lcom/android/server/InputManager$VirtualKeyDefinition;
    add-int/lit8 v10, v4, 0x1

    aget-object v10, v6, v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    iput v10, v7, Lcom/android/server/InputManager$VirtualKeyDefinition;->scanCode:I

    add-int/lit8 v10, v4, 0x2

    aget-object v10, v6, v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    iput v10, v7, Lcom/android/server/InputManager$VirtualKeyDefinition;->centerX:I

    add-int/lit8 v10, v4, 0x3

    aget-object v10, v6, v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    iput v10, v7, Lcom/android/server/InputManager$VirtualKeyDefinition;->centerY:I

    add-int/lit8 v10, v4, 0x4

    aget-object v10, v6, v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    iput v10, v7, Lcom/android/server/InputManager$VirtualKeyDefinition;->width:I

    add-int/lit8 v10, v4, 0x5

    aget-object v10, v6, v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    iput v10, v7, Lcom/android/server/InputManager$VirtualKeyDefinition;->height:I

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_1

    .end local v7           #key:Lcom/android/server/InputManager$VirtualKeyDefinition;
    :catch_0
    move-exception v10

    move-object v2, v10

    .local v2, e:Ljava/lang/NumberFormatException;
    :try_start_2
    const-string v10, "InputManager-Callbacks"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Bad number in virtual key definition at region "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " in: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " for device "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_1

    .end local v0           #N:I
    .end local v1           #br:Ljava/io/BufferedReader;
    .end local v2           #e:Ljava/lang/NumberFormatException;
    .end local v3           #fis:Ljava/io/FileInputStream;
    .end local v4           #i:I
    .end local v5           #isr:Ljava/io/InputStreamReader;
    .end local v6           #it:[Ljava/lang/String;
    .end local v9           #str:Ljava/lang/String;
    :catch_1
    move-exception v10

    move-object v2, v10

    .local v2, e:Ljava/io/FileNotFoundException;
    const-string v10, "InputManager-Callbacks"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "No virtual keys found for device "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "."

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .end local v2           #e:Ljava/io/FileNotFoundException;
    :goto_2
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v10

    new-array v10, v10, [Lcom/android/server/InputManager$VirtualKeyDefinition;

    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, [Lcom/android/server/InputManager$VirtualKeyDefinition;

    return-object p0

    .restart local v1       #br:Ljava/io/BufferedReader;
    .restart local v3       #fis:Ljava/io/FileInputStream;
    .restart local v5       #isr:Ljava/io/InputStreamReader;
    .restart local v9       #str:Ljava/lang/String;
    .restart local p0
    :cond_1
    :try_start_3
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_2

    .end local v1           #br:Ljava/io/BufferedReader;
    .end local v3           #fis:Ljava/io/FileInputStream;
    .end local v5           #isr:Ljava/io/InputStreamReader;
    .end local v9           #str:Ljava/lang/String;
    :catch_2
    move-exception v10

    move-object v2, v10

    .local v2, e:Ljava/io/IOException;
    const-string v10, "InputManager-Callbacks"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Error reading virtual keys for device "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "."

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2
.end method

.method public getVirtualKeyQuietTimeMillis()I
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/android/server/InputManager$Callbacks;->this$0:Lcom/android/server/InputManager;

    #getter for: Lcom/android/server/InputManager;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/server/InputManager;->access$200(Lcom/android/server/InputManager;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e0010

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    return v0
.end method

.method public interceptKeyBeforeDispatching(Landroid/view/InputChannel;IIIIIII)Z
    .locals 9
    .parameter "focus"
    .parameter "action"
    .parameter "flags"
    .parameter "keyCode"
    .parameter "scanCode"
    .parameter "metaState"
    .parameter "repeatCount"
    .parameter "policyFlags"

    .prologue
    iget-object v0, p0, Lcom/android/server/InputManager$Callbacks;->this$0:Lcom/android/server/InputManager;

    #getter for: Lcom/android/server/InputManager;->mWindowManagerService:Lcom/android/server/WindowManagerService;
    invoke-static {v0}, Lcom/android/server/InputManager;->access$100(Lcom/android/server/InputManager;)Lcom/android/server/WindowManagerService;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mInputMonitor:Lcom/android/server/WindowManagerService$InputMonitor;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    invoke-virtual/range {v0 .. v8}, Lcom/android/server/WindowManagerService$InputMonitor;->interceptKeyBeforeDispatching(Landroid/view/InputChannel;IIIIIII)Z

    move-result v0

    return v0
.end method

.method public interceptKeyBeforeQueueing(JIIIIIZ)I
    .locals 9
    .parameter "whenNanos"
    .parameter "action"
    .parameter "flags"
    .parameter "keyCode"
    .parameter "scanCode"
    .parameter "policyFlags"
    .parameter "isScreenOn"

    .prologue
    iget-object v0, p0, Lcom/android/server/InputManager$Callbacks;->this$0:Lcom/android/server/InputManager;

    #getter for: Lcom/android/server/InputManager;->mWindowManagerService:Lcom/android/server/WindowManagerService;
    invoke-static {v0}, Lcom/android/server/InputManager;->access$100(Lcom/android/server/InputManager;)Lcom/android/server/WindowManagerService;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mInputMonitor:Lcom/android/server/WindowManagerService$InputMonitor;

    move-wide v1, p1

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    invoke-virtual/range {v0 .. v8}, Lcom/android/server/WindowManagerService$InputMonitor;->interceptKeyBeforeQueueing(JIIIIIZ)I

    move-result v0

    return v0
.end method

.method public notifyANR(Ljava/lang/Object;Landroid/view/InputChannel;)J
    .locals 2
    .parameter "token"
    .parameter "inputChannel"

    .prologue
    iget-object v0, p0, Lcom/android/server/InputManager$Callbacks;->this$0:Lcom/android/server/InputManager;

    #getter for: Lcom/android/server/InputManager;->mWindowManagerService:Lcom/android/server/WindowManagerService;
    invoke-static {v0}, Lcom/android/server/InputManager;->access$100(Lcom/android/server/InputManager;)Lcom/android/server/WindowManagerService;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mInputMonitor:Lcom/android/server/WindowManagerService$InputMonitor;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/WindowManagerService$InputMonitor;->notifyANR(Ljava/lang/Object;Landroid/view/InputChannel;)J

    move-result-wide v0

    return-wide v0
.end method

.method public notifyConfigurationChanged(J)V
    .locals 1
    .parameter "whenNanos"

    .prologue
    iget-object v0, p0, Lcom/android/server/InputManager$Callbacks;->this$0:Lcom/android/server/InputManager;

    #getter for: Lcom/android/server/InputManager;->mWindowManagerService:Lcom/android/server/WindowManagerService;
    invoke-static {v0}, Lcom/android/server/InputManager;->access$100(Lcom/android/server/InputManager;)Lcom/android/server/WindowManagerService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/WindowManagerService;->sendNewConfiguration()V

    return-void
.end method

.method public notifyHeadphoneSwitchChanged(JZ)V
    .locals 1
    .parameter "whenNanos"
    .parameter "inserted"

    .prologue
    iget-object v0, p0, Lcom/android/server/InputManager$Callbacks;->this$0:Lcom/android/server/InputManager;

    #getter for: Lcom/android/server/InputManager;->mWindowManagerService:Lcom/android/server/WindowManagerService;
    invoke-static {v0}, Lcom/android/server/InputManager;->access$100(Lcom/android/server/InputManager;)Lcom/android/server/WindowManagerService;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mInputMonitor:Lcom/android/server/WindowManagerService$InputMonitor;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/WindowManagerService$InputMonitor;->notifyHeadphoneSwitchChanged(JZ)V

    return-void
.end method

.method public notifyInputChannelBroken(Landroid/view/InputChannel;)V
    .locals 1
    .parameter "inputChannel"

    .prologue
    iget-object v0, p0, Lcom/android/server/InputManager$Callbacks;->this$0:Lcom/android/server/InputManager;

    #getter for: Lcom/android/server/InputManager;->mWindowManagerService:Lcom/android/server/WindowManagerService;
    invoke-static {v0}, Lcom/android/server/InputManager;->access$100(Lcom/android/server/InputManager;)Lcom/android/server/WindowManagerService;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mInputMonitor:Lcom/android/server/WindowManagerService$InputMonitor;

    invoke-virtual {v0, p1}, Lcom/android/server/WindowManagerService$InputMonitor;->notifyInputChannelBroken(Landroid/view/InputChannel;)V

    return-void
.end method

.method public notifyLidSwitchChanged(JZ)V
    .locals 1
    .parameter "whenNanos"
    .parameter "lidOpen"

    .prologue
    iget-object v0, p0, Lcom/android/server/InputManager$Callbacks;->this$0:Lcom/android/server/InputManager;

    #getter for: Lcom/android/server/InputManager;->mWindowManagerService:Lcom/android/server/WindowManagerService;
    invoke-static {v0}, Lcom/android/server/InputManager;->access$100(Lcom/android/server/InputManager;)Lcom/android/server/WindowManagerService;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mInputMonitor:Lcom/android/server/WindowManagerService$InputMonitor;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/WindowManagerService$InputMonitor;->notifyLidSwitchChanged(JZ)V

    return-void
.end method

.method public proximityTargetDetected()Z
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/server/InputManager$Callbacks;->this$0:Lcom/android/server/InputManager;

    #getter for: Lcom/android/server/InputManager;->mPowerManager:Landroid/os/PowerManager;
    invoke-static {v0}, Lcom/android/server/InputManager;->access$500(Lcom/android/server/InputManager;)Landroid/os/PowerManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager;->proximityTargetDetected()Z

    move-result v0

    return v0
.end method

.method public startMouseCursorView()V
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/server/InputManager$Callbacks;->this$0:Lcom/android/server/InputManager;

    #getter for: Lcom/android/server/InputManager;->mWindowManagerService:Lcom/android/server/WindowManagerService;
    invoke-static {v0}, Lcom/android/server/InputManager;->access$100(Lcom/android/server/InputManager;)Lcom/android/server/WindowManagerService;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v0}, Landroid/view/WindowManagerPolicy;->showMouseCursor()V

    return-void
.end method
