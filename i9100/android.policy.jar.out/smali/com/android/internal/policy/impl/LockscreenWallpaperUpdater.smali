.class public Lcom/android/internal/policy/impl/LockscreenWallpaperUpdater;
.super Landroid/widget/RelativeLayout;
.source "LockscreenWallpaperUpdater.java"


# static fields
.field private static final DEBUG:Z = true

.field private static final IS_CHANGED_DRAWABLE:I = 0x1

.field private static final IS_NOT_CHANGED_DRAWABLE:I = 0x0

.field private static LOCKSCREEN_WALLPAPER_INFO:Ljava/lang/String; = null

.field private static final MODE_HOMESCREEN_WALLPAPER:I = 0x0

.field private static final MODE_LOCKSCREEN_WALLPAPER:I = 0x1

.field private static final MSG_BOOT_COMPLETED:I = 0x140

.field private static final MSG_LOCKSCREENWALLPAPER_CHANGED:I = 0x136

.field private static final TAG:Ljava/lang/String; = "LockscreenWallpaperUpdater"

.field private static final WALLPAPERIMAGE_PATH:Ljava/lang/String; = "/data/data/com.cooliris.media/files/zzzzzz_lockscreen_wallpaper.jpg"


# instance fields
.field private mBootCompleted:Z

.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mHandler:Landroid/os/Handler;

.field private mLockScreenWallpaperImage:Landroid/widget/ImageView;

.field private mLockscreenWallpaperDrawable:Landroid/graphics/drawable/Drawable;

.field private mMainLayout:Landroid/widget/RelativeLayout;

.field private mWallpaperModeValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 55
    const-string v0, "com.android.lockscreenwallpaper.CHANGED"

    sput-object v0, Lcom/android/internal/policy/impl/LockscreenWallpaperUpdater;->LOCKSCREEN_WALLPAPER_INFO:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    const/4 v3, 0x0

    .line 73
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 52
    iput-object v3, p0, Lcom/android/internal/policy/impl/LockscreenWallpaperUpdater;->mMainLayout:Landroid/widget/RelativeLayout;

    .line 53
    iput-object v3, p0, Lcom/android/internal/policy/impl/LockscreenWallpaperUpdater;->mLockScreenWallpaperImage:Landroid/widget/ImageView;

    .line 61
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/internal/policy/impl/LockscreenWallpaperUpdater;->mBootCompleted:Z

    .line 63
    iput-object v3, p0, Lcom/android/internal/policy/impl/LockscreenWallpaperUpdater;->mLockscreenWallpaperDrawable:Landroid/graphics/drawable/Drawable;

    .line 75
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 76
    .local v1, inflater:Landroid/view/LayoutInflater;
    const v2, 0x109007c

    const/4 v3, 0x1

    invoke-virtual {v1, v2, p0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 78
    const v2, 0x1020280

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/LockscreenWallpaperUpdater;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    iput-object v2, p0, Lcom/android/internal/policy/impl/LockscreenWallpaperUpdater;->mMainLayout:Landroid/widget/RelativeLayout;

    .line 79
    const v2, 0x1020281

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/LockscreenWallpaperUpdater;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/internal/policy/impl/LockscreenWallpaperUpdater;->mLockScreenWallpaperImage:Landroid/widget/ImageView;

    .line 81
    new-instance v2, Lcom/android/internal/policy/impl/LockscreenWallpaperUpdater$1;

    invoke-direct {v2, p0}, Lcom/android/internal/policy/impl/LockscreenWallpaperUpdater$1;-><init>(Lcom/android/internal/policy/impl/LockscreenWallpaperUpdater;)V

    iput-object v2, p0, Lcom/android/internal/policy/impl/LockscreenWallpaperUpdater;->mHandler:Landroid/os/Handler;

    .line 99
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 100
    .local v0, filter:Landroid/content/IntentFilter;
    sget-object v2, Lcom/android/internal/policy/impl/LockscreenWallpaperUpdater;->LOCKSCREEN_WALLPAPER_INFO:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 101
    const-string v2, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 105
    new-instance v2, Lcom/android/internal/policy/impl/LockscreenWallpaperUpdater$2;

    invoke-direct {v2, p0}, Lcom/android/internal/policy/impl/LockscreenWallpaperUpdater$2;-><init>(Lcom/android/internal/policy/impl/LockscreenWallpaperUpdater;)V

    iput-object v2, p0, Lcom/android/internal/policy/impl/LockscreenWallpaperUpdater;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 119
    iget-object v2, p0, Lcom/android/internal/policy/impl/LockscreenWallpaperUpdater;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 121
    const-string v2, "LockscreenWallpaperUpdater"

    const-string v3, "add lockscreenwallpaper"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/policy/impl/LockscreenWallpaperUpdater;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 44
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/LockscreenWallpaperUpdater;->handleLockScreenWallpaperUpdate(I)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/internal/policy/impl/LockscreenWallpaperUpdater;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/android/internal/policy/impl/LockscreenWallpaperUpdater;->handleBootCompleted()V

    return-void
.end method

.method static synthetic access$200()Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    sget-object v0, Lcom/android/internal/policy/impl/LockscreenWallpaperUpdater;->LOCKSCREEN_WALLPAPER_INFO:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/internal/policy/impl/LockscreenWallpaperUpdater;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockscreenWallpaperUpdater;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private getLockscreenDrawable()Landroid/graphics/drawable/Drawable;
    .locals 2

    .prologue
    const-string v1, "LockscreenWallpaperUpdater"

    .line 193
    const-string v0, "LockscreenWallpaperUpdater"

    const-string v0, "get drawable (keygurardupdatemonitor private get) "

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/LockscreenWallpaperUpdater;->mBootCompleted:Z

    if-nez v0, :cond_0

    .line 198
    const-string v0, "LockscreenWallpaperUpdater"

    const-string v0, "drawable is null(keygurardupdatemonitor private get) "

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/LockscreenWallpaperUpdater;->setLockscreenDrawable()V

    .line 201
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockscreenWallpaperUpdater;->mLockscreenWallpaperDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method private getWallpaperDrawable()Landroid/graphics/drawable/Drawable;
    .locals 6

    .prologue
    const-string v4, "LockscreenWallpaperUpdater"

    const-string v5, "/data/data/com.cooliris.media/files/zzzzzz_lockscreen_wallpaper.jpg"

    .line 205
    const/4 v2, 0x0

    .line 206
    .local v2, wallpaperDrawable:Landroid/graphics/drawable/BitmapDrawable;
    const/4 v1, 0x0

    .line 208
    .local v1, tmpDrawable:Landroid/graphics/drawable/Drawable;
    new-instance v0, Ljava/io/File;

    const-string v3, "/data/data/com.cooliris.media/files/zzzzzz_lockscreen_wallpaper.jpg"

    invoke-direct {v0, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 210
    .local v0, file:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 212
    const-string v3, "LockscreenWallpaperUpdater"

    const-string v3, "wallpaper file exist "

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    .end local v2           #wallpaperDrawable:Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/LockscreenWallpaperUpdater;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const-string v4, "/data/data/com.cooliris.media/files/zzzzzz_lockscreen_wallpaper.jpg"

    invoke-direct {v2, v3, v5}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Ljava/lang/String;)V

    .restart local v2       #wallpaperDrawable:Landroid/graphics/drawable/BitmapDrawable;
    move-object v3, v2

    .line 225
    :goto_0
    return-object v3

    .line 223
    :cond_0
    const-string v3, "LockscreenWallpaperUpdater"

    const-string v3, "wallpaper file not exist "

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/LockscreenWallpaperUpdater;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x108041c

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    move-object v3, v1

    .line 225
    goto :goto_0
.end method

.method private handleBootCompleted()V
    .locals 1

    .prologue
    .line 132
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/LockscreenWallpaperUpdater;->setLockscreenDrawable()V

    .line 133
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/LockscreenWallpaperUpdater;->mBootCompleted:Z

    .line 134
    return-void
.end method

.method private handleLockScreenWallpaperUpdate(I)V
    .locals 2
    .parameter "mode"

    .prologue
    .line 126
    const-string v0, "LockscreenWallpaperUpdater"

    const-string v1, "handleLockScreenWallpaperUpdate"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/LockscreenWallpaperUpdater;->setLockscreenDrawable()V

    .line 129
    return-void
.end method

.method private init()V
    .locals 2

    .prologue
    .line 137
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockscreenWallpaperUpdater;->mLockScreenWallpaperImage:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/LockscreenWallpaperUpdater;->getLockscreenWallpaper()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 138
    return-void
.end method


# virtual methods
.method public cleanUp()V
    .locals 2

    .prologue
    .line 142
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/LockscreenWallpaperUpdater;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/policy/impl/LockscreenWallpaperUpdater;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 143
    const-string v0, "LockscreenWallpaperUpdater"

    const-string v1, "cleanUp()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    return-void
.end method

.method public getLockscreenWallpaper()Landroid/graphics/drawable/Drawable;
    .locals 2

    .prologue
    .line 180
    const-string v0, "LockscreenWallpaperUpdater"

    const-string v1, "get drawable (public) "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    invoke-direct {p0}, Lcom/android/internal/policy/impl/LockscreenWallpaperUpdater;->getLockscreenDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 152
    const-string v0, "LockscreenWallpaperUpdater"

    const-string v1, "onPause()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 157
    const-string v0, "LockscreenWallpaperUpdater"

    const-string v1, "onResume()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    invoke-direct {p0}, Lcom/android/internal/policy/impl/LockscreenWallpaperUpdater;->init()V

    .line 161
    return-void
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 147
    const-string v0, "LockscreenWallpaperUpdater"

    const-string v1, "onStop()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    return-void
.end method

.method protected setLockscreenDrawable()V
    .locals 2

    .prologue
    .line 187
    const-string v0, "LockscreenWallpaperUpdater"

    const-string v1, "set drawable"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    invoke-direct {p0}, Lcom/android/internal/policy/impl/LockscreenWallpaperUpdater;->getWallpaperDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/LockscreenWallpaperUpdater;->mLockscreenWallpaperDrawable:Landroid/graphics/drawable/Drawable;

    .line 190
    return-void
.end method
