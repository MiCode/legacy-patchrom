.class Lcom/android/phone/Settings$3;
.super Ljava/lang/Object;
.source "Settings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/Settings;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/Settings;


# direct methods
.method constructor <init>(Lcom/android/phone/Settings;)V
    .locals 0
    .parameter

    .prologue
    .line 189
    iput-object p1, p0, Lcom/android/phone/Settings$3;->this$0:Lcom/android/phone/Settings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter "dialog"
    .parameter "arg1"

    .prologue
    const/4 v3, 0x1

    .line 191
    iget-object v1, p0, Lcom/android/phone/Settings$3;->this$0:Lcom/android/phone/Settings;

    const-string v2, "connectivity"

    invoke-virtual {v1, v2}, Lcom/android/phone/Settings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 193
    .local v0, cm:Landroid/net/ConnectivityManager;
    invoke-virtual {v0, v3}, Landroid/net/ConnectivityManager;->setMobileDataEnabled(Z)V

    .line 194
    iget-object v1, p0, Lcom/android/phone/Settings$3;->this$0:Lcom/android/phone/Settings;

    #setter for: Lcom/android/phone/Settings;->mDataClicked:Z
    invoke-static {v1, v3}, Lcom/android/phone/Settings;->access$002(Lcom/android/phone/Settings;Z)Z

    .line 195
    return-void
.end method
