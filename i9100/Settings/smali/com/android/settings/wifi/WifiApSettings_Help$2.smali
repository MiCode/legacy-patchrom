.class Lcom/android/settings/wifi/WifiApSettings_Help$2;
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


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/WifiApSettings_Help;)V
    .locals 0
    .parameter

    .prologue
    .line 100
    iput-object p1, p0, Lcom/android/settings/wifi/WifiApSettings_Help$2;->this$0:Lcom/android/settings/wifi/WifiApSettings_Help;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 104
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiApSettings_Help$2;->this$0:Lcom/android/settings/wifi/WifiApSettings_Help;

    const-class v2, Lcom/android/settings/wifi/WifiApSettings;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 106
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/settings/wifi/WifiApSettings_Help$2;->this$0:Lcom/android/settings/wifi/WifiApSettings_Help;

    invoke-virtual {v1, v0}, Lcom/android/settings/wifi/WifiApSettings_Help;->startActivity(Landroid/content/Intent;)V

    .line 108
    iget-object v1, p0, Lcom/android/settings/wifi/WifiApSettings_Help$2;->this$0:Lcom/android/settings/wifi/WifiApSettings_Help;

    invoke-virtual {v1}, Lcom/android/settings/wifi/WifiApSettings_Help;->finish()V

    .line 110
    return-void
.end method
