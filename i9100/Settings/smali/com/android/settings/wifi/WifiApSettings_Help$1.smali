.class Lcom/android/settings/wifi/WifiApSettings_Help$1;
.super Ljava/lang/Object;
.source "WifiApSettings_Help.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/wifi/WifiApSettings_Help;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/WifiApSettings_Help;

.field final synthetic val$not_show_again:Landroid/widget/CheckBox;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/WifiApSettings_Help;Landroid/widget/CheckBox;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 88
    iput-object p1, p0, Lcom/android/settings/wifi/WifiApSettings_Help$1;->this$0:Lcom/android/settings/wifi/WifiApSettings_Help;

    iput-object p2, p0, Lcom/android/settings/wifi/WifiApSettings_Help$1;->val$not_show_again:Landroid/widget/CheckBox;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 92
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSettings_Help$1;->this$0:Lcom/android/settings/wifi/WifiApSettings_Help;

    #getter for: Lcom/android/settings/wifi/WifiApSettings_Help;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v0}, Lcom/android/settings/wifi/WifiApSettings_Help;->access$000(Lcom/android/settings/wifi/WifiApSettings_Help;)Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "ap_help_not_show_again"

    iget-object v2, p0, Lcom/android/settings/wifi/WifiApSettings_Help$1;->val$not_show_again:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 94
    return-void

    .line 92
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method
