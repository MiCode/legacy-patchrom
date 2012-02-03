.class Lcom/android/settings/wifi/WifiDirectSettings$6;
.super Ljava/lang/Object;
.source "WifiDirectSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/wifi/WifiDirectSettings;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/WifiDirectSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/WifiDirectSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 338
    iput-object p1, p0, Lcom/android/settings/wifi/WifiDirectSettings$6;->this$0:Lcom/android/settings/wifi/WifiDirectSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 340
    const-string v0, "WifiDirectSettings"

    const-string v1, "Network is connected, activity will finish"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 341
    iget-object v0, p0, Lcom/android/settings/wifi/WifiDirectSettings$6;->this$0:Lcom/android/settings/wifi/WifiDirectSettings;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiDirectSettings;->finish()V

    .line 342
    return-void
.end method
