.class public Lcom/android/internal/os/storage/ExternalStorageFormatterSd;
.super Landroid/app/Service;
.source "ExternalStorageFormatterSd.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# static fields
.field public static final COMPONENT_NAME:Landroid/content/ComponentName; = null

.field public static final EXTRA_ALWAYS_RESET:Ljava/lang/String; = "always_reset"

.field public static final FORMAT_AND_FACTORY_RESET:Ljava/lang/String; = "com.android.internal.os.storage.FORMAT_AND_FACTORY_RESET"

.field public static final FORMAT_ONLY_SD:Ljava/lang/String; = "com.android.internal.os.storage.FORMAT_ONLY_SD"

.field static final TAG:Ljava/lang/String; = "ExternalStorageFormatterSd"


# instance fields
.field private mAlwaysReset:Z

.field private mFactoryReset:Z

.field private mMountService:Landroid/os/storage/IMountService;

.field private mProgressDialog:Landroid/app/ProgressDialog;

.field mStorageListener:Landroid/os/storage/StorageEventListener;

.field private mStorageManager:Landroid/os/storage/StorageManager;

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 35
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "android"

    const-class v2, Lcom/android/internal/os/storage/ExternalStorageFormatterSd;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/android/internal/os/storage/ExternalStorageFormatterSd;->COMPONENT_NAME:Landroid/content/ComponentName;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 26
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 39
    iput-object v0, p0, Lcom/android/internal/os/storage/ExternalStorageFormatterSd;->mMountService:Landroid/os/storage/IMountService;

    .line 41
    iput-object v0, p0, Lcom/android/internal/os/storage/ExternalStorageFormatterSd;->mStorageManager:Landroid/os/storage/StorageManager;

    .line 45
    iput-object v0, p0, Lcom/android/internal/os/storage/ExternalStorageFormatterSd;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 47
    iput-boolean v1, p0, Lcom/android/internal/os/storage/ExternalStorageFormatterSd;->mFactoryReset:Z

    .line 48
    iput-boolean v1, p0, Lcom/android/internal/os/storage/ExternalStorageFormatterSd;->mAlwaysReset:Z

    .line 50
    new-instance v0, Lcom/android/internal/os/storage/ExternalStorageFormatterSd$1;

    invoke-direct {v0, p0}, Lcom/android/internal/os/storage/ExternalStorageFormatterSd$1;-><init>(Lcom/android/internal/os/storage/ExternalStorageFormatterSd;)V

    iput-object v0, p0, Lcom/android/internal/os/storage/ExternalStorageFormatterSd;->mStorageListener:Landroid/os/storage/StorageEventListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/os/storage/ExternalStorageFormatterSd;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 26
    iget-boolean v0, p0, Lcom/android/internal/os/storage/ExternalStorageFormatterSd;->mFactoryReset:Z

    return v0
.end method

.method static synthetic access$100(Lcom/android/internal/os/storage/ExternalStorageFormatterSd;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 26
    iget-boolean v0, p0, Lcom/android/internal/os/storage/ExternalStorageFormatterSd;->mAlwaysReset:Z

    return v0
.end method


# virtual methods
.method fail(I)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 134
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 135
    iget-boolean v0, p0, Lcom/android/internal/os/storage/ExternalStorageFormatterSd;->mAlwaysReset:Z

    if-eqz v0, :cond_0

    .line 136
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MASTER_CLEAR"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/android/internal/os/storage/ExternalStorageFormatterSd;->sendBroadcast(Landroid/content/Intent;)V

    .line 138
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/os/storage/ExternalStorageFormatterSd;->stopSelf()V

    .line 139
    return-void
.end method

.method getMountService()Landroid/os/storage/IMountService;
    .locals 3

    .prologue
    .line 231
    iget-object v1, p0, Lcom/android/internal/os/storage/ExternalStorageFormatterSd;->mMountService:Landroid/os/storage/IMountService;

    if-nez v1, :cond_0

    .line 232
    const-string/jumbo v1, "mount"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 233
    .local v0, service:Landroid/os/IBinder;
    if-eqz v0, :cond_1

    .line 234
    invoke-static {v0}, Landroid/os/storage/IMountService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IMountService;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/os/storage/ExternalStorageFormatterSd;->mMountService:Landroid/os/storage/IMountService;

    .line 239
    .end local v0           #service:Landroid/os/IBinder;
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/internal/os/storage/ExternalStorageFormatterSd;->mMountService:Landroid/os/storage/IMountService;

    return-object v1

    .line 236
    .restart local v0       #service:Landroid/os/IBinder;
    :cond_1
    const-string v1, "ExternalStorageFormatterSd"

    const-string v2, "Can\'t get mount service"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .parameter "intent"

    .prologue
    .line 116
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 7
    .parameter "dialog"

    .prologue
    const-string v6, "ExternalStorageFormatterSd"

    .line 121
    const-string v3, "ExternalStorageFormatterSd"

    const-string/jumbo v3, "onCancel"

    invoke-static {v6, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    invoke-virtual {p0}, Lcom/android/internal/os/storage/ExternalStorageFormatterSd;->getMountService()Landroid/os/storage/IMountService;

    move-result-object v2

    .line 123
    .local v2, mountService:Landroid/os/storage/IMountService;
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectorySd()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v1

    .line 125
    .local v1, extStoragePath:Ljava/lang/String;
    :try_start_0
    invoke-interface {v2, v1}, Landroid/os/storage/IMountService;->mountVolume(Ljava/lang/String;)I

    .line 126
    const-string v3, "ExternalStorageFormatterSd"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "PATH = mount "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 130
    :goto_0
    invoke-virtual {p0}, Lcom/android/internal/os/storage/ExternalStorageFormatterSd;->stopSelf()V

    .line 131
    return-void

    .line 127
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 128
    .local v0, e:Landroid/os/RemoteException;
    const-string v3, "ExternalStorageFormatterSd"

    const-string v3, "Failed talking with mount service"

    invoke-static {v6, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public onCreate()V
    .locals 3

    .prologue
    .line 62
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 64
    iget-object v0, p0, Lcom/android/internal/os/storage/ExternalStorageFormatterSd;->mStorageManager:Landroid/os/storage/StorageManager;

    if-nez v0, :cond_0

    .line 65
    const-string/jumbo v0, "storage"

    invoke-virtual {p0, v0}, Lcom/android/internal/os/storage/ExternalStorageFormatterSd;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/storage/StorageManager;

    iput-object v0, p0, Lcom/android/internal/os/storage/ExternalStorageFormatterSd;->mStorageManager:Landroid/os/storage/StorageManager;

    .line 66
    iget-object v0, p0, Lcom/android/internal/os/storage/ExternalStorageFormatterSd;->mStorageManager:Landroid/os/storage/StorageManager;

    iget-object v1, p0, Lcom/android/internal/os/storage/ExternalStorageFormatterSd;->mStorageListener:Landroid/os/storage/StorageEventListener;

    invoke-virtual {v0, v1}, Landroid/os/storage/StorageManager;->registerListener(Landroid/os/storage/StorageEventListener;)V

    .line 69
    :cond_0
    const-string/jumbo v0, "power"

    invoke-virtual {p0, v0}, Lcom/android/internal/os/storage/ExternalStorageFormatterSd;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    const/4 v1, 0x1

    const-string v2, "ExternalStorageFormatterSd"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/os/storage/ExternalStorageFormatterSd;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 71
    iget-object v0, p0, Lcom/android/internal/os/storage/ExternalStorageFormatterSd;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 72
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 104
    iget-object v0, p0, Lcom/android/internal/os/storage/ExternalStorageFormatterSd;->mStorageManager:Landroid/os/storage/StorageManager;

    if-eqz v0, :cond_0

    .line 105
    iget-object v0, p0, Lcom/android/internal/os/storage/ExternalStorageFormatterSd;->mStorageManager:Landroid/os/storage/StorageManager;

    iget-object v1, p0, Lcom/android/internal/os/storage/ExternalStorageFormatterSd;->mStorageListener:Landroid/os/storage/StorageEventListener;

    invoke-virtual {v0, v1}, Landroid/os/storage/StorageManager;->unregisterListener(Landroid/os/storage/StorageEventListener;)V

    .line 107
    :cond_0
    iget-object v0, p0, Lcom/android/internal/os/storage/ExternalStorageFormatterSd;->mProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_1

    .line 108
    iget-object v0, p0, Lcom/android/internal/os/storage/ExternalStorageFormatterSd;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 110
    :cond_1
    iget-object v0, p0, Lcom/android/internal/os/storage/ExternalStorageFormatterSd;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 111
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 112
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 4
    .parameter "intent"
    .parameter "flags"
    .parameter "startId"

    .prologue
    const/4 v3, 0x1

    .line 76
    const-string v0, "ExternalStorageFormatterSd"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onStartCommand :: intent is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    iget-object v0, p0, Lcom/android/internal/os/storage/ExternalStorageFormatterSd;->mProgressDialog:Landroid/app/ProgressDialog;

    if-nez v0, :cond_1

    .line 88
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/internal/os/storage/ExternalStorageFormatterSd;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 89
    iget-object v0, p0, Lcom/android/internal/os/storage/ExternalStorageFormatterSd;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v3}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 90
    iget-object v0, p0, Lcom/android/internal/os/storage/ExternalStorageFormatterSd;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v3}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 91
    iget-object v0, p0, Lcom/android/internal/os/storage/ExternalStorageFormatterSd;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x7d3

    invoke-virtual {v0, v1}, Landroid/view/Window;->setType(I)V

    .line 92
    iget-boolean v0, p0, Lcom/android/internal/os/storage/ExternalStorageFormatterSd;->mAlwaysReset:Z

    if-nez v0, :cond_0

    .line 93
    iget-object v0, p0, Lcom/android/internal/os/storage/ExternalStorageFormatterSd;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, p0}, Landroid/app/ProgressDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 95
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/os/storage/ExternalStorageFormatterSd;->updateProgressState()V

    .line 96
    iget-object v0, p0, Lcom/android/internal/os/storage/ExternalStorageFormatterSd;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 99
    :cond_1
    const/4 v0, 0x3

    return v0
.end method

.method public updateProgressDialog(I)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 219
    iget-object v0, p0, Lcom/android/internal/os/storage/ExternalStorageFormatterSd;->mProgressDialog:Landroid/app/ProgressDialog;

    if-nez v0, :cond_0

    .line 220
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/internal/os/storage/ExternalStorageFormatterSd;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 221
    iget-object v0, p0, Lcom/android/internal/os/storage/ExternalStorageFormatterSd;->mProgressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 222
    iget-object v0, p0, Lcom/android/internal/os/storage/ExternalStorageFormatterSd;->mProgressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 223
    iget-object v0, p0, Lcom/android/internal/os/storage/ExternalStorageFormatterSd;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x7d3

    invoke-virtual {v0, v1}, Landroid/view/Window;->setType(I)V

    .line 224
    iget-object v0, p0, Lcom/android/internal/os/storage/ExternalStorageFormatterSd;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 227
    :cond_0
    iget-object v0, p0, Lcom/android/internal/os/storage/ExternalStorageFormatterSd;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {p0, p1}, Lcom/android/internal/os/storage/ExternalStorageFormatterSd;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 228
    return-void
.end method

.method updateProgressState()V
    .locals 7

    .prologue
    const-string v6, "ExternalStorageFormatterSd"

    .line 142
    const-string v4, "ExternalStorageFormatterSd"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "updateProgressState :: mFactoryReset = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/internal/os/storage/ExternalStorageFormatterSd;->mFactoryReset:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", mAlwaysReset = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/internal/os/storage/ExternalStorageFormatterSd;->mAlwaysReset:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    invoke-static {}, Landroid/os/Environment;->getExternalStorageStateSd()Ljava/lang/String;

    move-result-object v3

    .line 144
    .local v3, status:Ljava/lang/String;
    const-string/jumbo v4, "mounted"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string/jumbo v4, "mounted_ro"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 146
    :cond_0
    const v4, 0x1040453

    invoke-virtual {p0, v4}, Lcom/android/internal/os/storage/ExternalStorageFormatterSd;->updateProgressDialog(I)V

    .line 147
    invoke-virtual {p0}, Lcom/android/internal/os/storage/ExternalStorageFormatterSd;->getMountService()Landroid/os/storage/IMountService;

    move-result-object v2

    .line 148
    .local v2, mountService:Landroid/os/storage/IMountService;
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectorySd()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v1

    .line 149
    .local v1, extStoragePath:Ljava/lang/String;
    const-string v4, "ExternalStorageFormatterSd"

    const-string/jumbo v4, "updateProgressState :: STEP 1"

    invoke-static {v6, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    const/4 v4, 0x1

    :try_start_0
    invoke-interface {v2, v1, v4}, Landroid/os/storage/IMountService;->unmountVolume(Ljava/lang/String;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 216
    .end local v1           #extStoragePath:Ljava/lang/String;
    .end local v2           #mountService:Landroid/os/storage/IMountService;
    :goto_0
    return-void

    .line 152
    .restart local v1       #extStoragePath:Ljava/lang/String;
    .restart local v2       #mountService:Landroid/os/storage/IMountService;
    :catch_0
    move-exception v0

    .line 153
    .local v0, e:Landroid/os/RemoteException;
    const-string v4, "ExternalStorageFormatterSd"

    const-string v4, "Failed talking with mount service"

    invoke-static {v6, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 155
    .end local v0           #e:Landroid/os/RemoteException;
    .end local v1           #extStoragePath:Ljava/lang/String;
    .end local v2           #mountService:Landroid/os/storage/IMountService;
    :cond_1
    const-string/jumbo v4, "nofs"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    const-string/jumbo v4, "unmounted"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    const-string/jumbo v4, "unmountable"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 158
    :cond_2
    const-string v4, "ExternalStorageFormatterSd"

    const-string/jumbo v4, "updateProgressState :: STEP 2"

    invoke-static {v6, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    const v4, 0x1040455

    invoke-virtual {p0, v4}, Lcom/android/internal/os/storage/ExternalStorageFormatterSd;->updateProgressDialog(I)V

    .line 160
    invoke-virtual {p0}, Lcom/android/internal/os/storage/ExternalStorageFormatterSd;->getMountService()Landroid/os/storage/IMountService;

    move-result-object v2

    .line 161
    .restart local v2       #mountService:Landroid/os/storage/IMountService;
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectorySd()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v1

    .line 162
    .restart local v1       #extStoragePath:Ljava/lang/String;
    if-eqz v2, :cond_3

    .line 163
    new-instance v4, Lcom/android/internal/os/storage/ExternalStorageFormatterSd$2;

    invoke-direct {v4, p0, v2, v1}, Lcom/android/internal/os/storage/ExternalStorageFormatterSd$2;-><init>(Lcom/android/internal/os/storage/ExternalStorageFormatterSd;Landroid/os/storage/IMountService;Ljava/lang/String;)V

    invoke-virtual {v4}, Lcom/android/internal/os/storage/ExternalStorageFormatterSd$2;->start()V

    goto :goto_0

    .line 201
    :cond_3
    const-string v4, "ExternalStorageFormatterSd"

    const-string v4, "Unable to locate IMountService"

    invoke-static {v6, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 203
    .end local v1           #extStoragePath:Ljava/lang/String;
    .end local v2           #mountService:Landroid/os/storage/IMountService;
    :cond_4
    const-string v4, "bad_removal"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 204
    const v4, 0x1040458

    invoke-virtual {p0, v4}, Lcom/android/internal/os/storage/ExternalStorageFormatterSd;->fail(I)V

    goto :goto_0

    .line 205
    :cond_5
    const-string v4, "checking"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 206
    const v4, 0x104045a

    invoke-virtual {p0, v4}, Lcom/android/internal/os/storage/ExternalStorageFormatterSd;->fail(I)V

    goto :goto_0

    .line 207
    :cond_6
    const-string/jumbo v4, "removed"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 208
    const v4, 0x104045b

    invoke-virtual {p0, v4}, Lcom/android/internal/os/storage/ExternalStorageFormatterSd;->fail(I)V

    goto :goto_0

    .line 209
    :cond_7
    const-string/jumbo v4, "shared"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 210
    const v4, 0x104045d

    invoke-virtual {p0, v4}, Lcom/android/internal/os/storage/ExternalStorageFormatterSd;->fail(I)V

    goto/16 :goto_0

    .line 212
    :cond_8
    const v4, 0x104045e

    invoke-virtual {p0, v4}, Lcom/android/internal/os/storage/ExternalStorageFormatterSd;->fail(I)V

    .line 213
    const-string v4, "ExternalStorageFormatterSd"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown storage state: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    invoke-virtual {p0}, Lcom/android/internal/os/storage/ExternalStorageFormatterSd;->stopSelf()V

    goto/16 :goto_0
.end method
