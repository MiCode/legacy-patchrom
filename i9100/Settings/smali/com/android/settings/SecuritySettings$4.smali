.class Lcom/android/settings/SecuritySettings$4;
.super Ljava/lang/Object;
.source "SecuritySettings.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/SecuritySettings;->updateSimlockPreferenceState(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/SecuritySettings;


# direct methods
.method constructor <init>(Lcom/android/settings/SecuritySettings;)V
    .locals 0
    .parameter

    .prologue
    .line 322
    iput-object p1, p0, Lcom/android/settings/SecuritySettings$4;->this$0:Lcom/android/settings/SecuritySettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 324
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 331
    iget-object v0, p0, Lcom/android/settings/SecuritySettings$4;->this$0:Lcom/android/settings/SecuritySettings;

    #getter for: Lcom/android/settings/SecuritySettings;->mSimlockPreferences:Landroid/preference/PreferenceScreen;
    invoke-static {v0}, Lcom/android/settings/SecuritySettings;->access$800(Lcom/android/settings/SecuritySettings;)Landroid/preference/PreferenceScreen;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 333
    :pswitch_0
    return-void

    .line 324
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
