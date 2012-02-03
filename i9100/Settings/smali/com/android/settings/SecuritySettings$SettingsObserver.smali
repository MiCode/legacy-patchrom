.class final Lcom/android/settings/SecuritySettings$SettingsObserver;
.super Ljava/lang/Object;
.source "SecuritySettings.java"

# interfaces
.implements Ljava/util/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/SecuritySettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SettingsObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/SecuritySettings;


# direct methods
.method private constructor <init>(Lcom/android/settings/SecuritySettings;)V
    .locals 0
    .parameter

    .prologue
    .line 262
    iput-object p1, p0, Lcom/android/settings/SecuritySettings$SettingsObserver;->this$0:Lcom/android/settings/SecuritySettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/SecuritySettings;Lcom/android/settings/SecuritySettings$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 262
    invoke-direct {p0, p1}, Lcom/android/settings/SecuritySettings$SettingsObserver;-><init>(Lcom/android/settings/SecuritySettings;)V

    return-void
.end method


# virtual methods
.method public update(Ljava/util/Observable;Ljava/lang/Object;)V
    .locals 1
    .parameter "o"
    .parameter "arg"

    .prologue
    .line 264
    iget-object v0, p0, Lcom/android/settings/SecuritySettings$SettingsObserver;->this$0:Lcom/android/settings/SecuritySettings;

    #calls: Lcom/android/settings/SecuritySettings;->updateToggles()V
    invoke-static {v0}, Lcom/android/settings/SecuritySettings;->access$100(Lcom/android/settings/SecuritySettings;)V

    .line 265
    return-void
.end method
