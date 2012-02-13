.class Landroid/service/wallpaper/WallpaperService$Engine$1;
.super Landroid/content/BroadcastReceiver;
.source "WallpaperService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/wallpaper/WallpaperService$Engine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/service/wallpaper/WallpaperService$Engine;


# direct methods
.method constructor <init>(Landroid/service/wallpaper/WallpaperService$Engine;)V
    .locals 0
    .parameter

    .prologue
    iput-object p1, p0, Landroid/service/wallpaper/WallpaperService$Engine$1;->this$1:Landroid/service/wallpaper/WallpaperService$Engine;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const-string v0, "android.intent.action.SCREEN_ON"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine$1;->this$1:Landroid/service/wallpaper/WallpaperService$Engine;

    iput-boolean v3, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mScreenOn:Z

    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine$1;->this$1:Landroid/service/wallpaper/WallpaperService$Engine;

    invoke-virtual {v0}, Landroid/service/wallpaper/WallpaperService$Engine;->reportVisibility()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v0, "android.intent.action.SCREEN_OFF"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine$1;->this$1:Landroid/service/wallpaper/WallpaperService$Engine;

    iput-boolean v2, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mScreenOn:Z

    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine$1;->this$1:Landroid/service/wallpaper/WallpaperService$Engine;

    invoke-virtual {v0}, Landroid/service/wallpaper/WallpaperService$Engine;->reportVisibility()V

    goto :goto_0

    :cond_2
    const-string v0, "com.motorola.internal.intent.action.WALLPAPER_ENABLED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine$1;->this$1:Landroid/service/wallpaper/WallpaperService$Engine;

    iput-boolean v3, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mEnabled:Z

    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine$1;->this$1:Landroid/service/wallpaper/WallpaperService$Engine;

    invoke-virtual {v0}, Landroid/service/wallpaper/WallpaperService$Engine;->reportVisibility()V

    goto :goto_0

    :cond_3
    const-string v0, "com.motorola.internal.intent.action.WALLPAPER_DISABLED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine$1;->this$1:Landroid/service/wallpaper/WallpaperService$Engine;

    iput-boolean v2, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mEnabled:Z

    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine$1;->this$1:Landroid/service/wallpaper/WallpaperService$Engine;

    invoke-virtual {v0}, Landroid/service/wallpaper/WallpaperService$Engine;->reportVisibility()V

    goto :goto_0
.end method
