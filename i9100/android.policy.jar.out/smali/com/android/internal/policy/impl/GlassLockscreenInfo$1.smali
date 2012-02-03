.class Lcom/android/internal/policy/impl/GlassLockscreenInfo$1;
.super Landroid/os/Handler;
.source "GlassLockscreenInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/GlassLockscreenInfo;-><init>(Landroid/content/Context;Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Landroid/content/res/Configuration;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/GlassLockscreenInfo;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/GlassLockscreenInfo;)V
    .locals 0
    .parameter

    .prologue
    .line 126
    iput-object p1, p0, Lcom/android/internal/policy/impl/GlassLockscreenInfo$1;->this$0:Lcom/android/internal/policy/impl/GlassLockscreenInfo;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 129
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    .line 140
    :goto_0
    return-void

    .line 131
    :sswitch_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockscreenInfo$1;->this$0:Lcom/android/internal/policy/impl/GlassLockscreenInfo;

    iget v1, p1, Landroid/os/Message;->arg1:I

    #calls: Lcom/android/internal/policy/impl/GlassLockscreenInfo;->handelChangeWeatherSetting(I)V
    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/GlassLockscreenInfo;->access$000(Lcom/android/internal/policy/impl/GlassLockscreenInfo;I)V

    goto :goto_0

    .line 134
    :sswitch_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockscreenInfo$1;->this$0:Lcom/android/internal/policy/impl/GlassLockscreenInfo;

    #calls: Lcom/android/internal/policy/impl/GlassLockscreenInfo;->handelUpdateWeather()V
    invoke-static {v0}, Lcom/android/internal/policy/impl/GlassLockscreenInfo;->access$100(Lcom/android/internal/policy/impl/GlassLockscreenInfo;)V

    goto :goto_0

    .line 137
    :sswitch_2
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockscreenInfo$1;->this$0:Lcom/android/internal/policy/impl/GlassLockscreenInfo;

    #calls: Lcom/android/internal/policy/impl/GlassLockscreenInfo;->handleBootCompleted()V
    invoke-static {v0}, Lcom/android/internal/policy/impl/GlassLockscreenInfo;->access$200(Lcom/android/internal/policy/impl/GlassLockscreenInfo;)V

    goto :goto_0

    .line 129
    :sswitch_data_0
    .sparse-switch
        0x12c -> :sswitch_0
        0x136 -> :sswitch_1
        0x140 -> :sswitch_2
    .end sparse-switch
.end method
