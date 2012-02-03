.class Lcom/android/phone/Settings$SettingsDBObserver;
.super Landroid/database/ContentObserver;
.source "Settings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/Settings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SettingsDBObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/Settings;


# direct methods
.method public constructor <init>(Lcom/android/phone/Settings;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter "h"

    .prologue
    .line 305
    iput-object p1, p0, Lcom/android/phone/Settings$SettingsDBObserver;->this$0:Lcom/android/phone/Settings;

    .line 306
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 307
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 3
    .parameter "b"

    .prologue
    .line 310
    iget-object v1, p0, Lcom/android/phone/Settings$SettingsDBObserver;->this$0:Lcom/android/phone/Settings;

    #getter for: Lcom/android/phone/Settings;->mDataDialog:Landroid/app/AlertDialog$Builder;
    invoke-static {v1}, Lcom/android/phone/Settings;->access$200(Lcom/android/phone/Settings;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    if-nez v1, :cond_0

    .line 311
    iget-object v1, p0, Lcom/android/phone/Settings$SettingsDBObserver;->this$0:Lcom/android/phone/Settings;

    const-string v2, "connectivity"

    invoke-virtual {v1, v2}, Lcom/android/phone/Settings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 312
    .local v0, cm:Landroid/net/ConnectivityManager;
    iget-object v1, p0, Lcom/android/phone/Settings$SettingsDBObserver;->this$0:Lcom/android/phone/Settings;

    #getter for: Lcom/android/phone/Settings;->mButtonDataEnabled:Landroid/preference/CheckBoxPreference;
    invoke-static {v1}, Lcom/android/phone/Settings;->access$100(Lcom/android/phone/Settings;)Landroid/preference/CheckBoxPreference;

    move-result-object v1

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getMobileDataEnabled()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 314
    .end local v0           #cm:Landroid/net/ConnectivityManager;
    :cond_0
    return-void
.end method
