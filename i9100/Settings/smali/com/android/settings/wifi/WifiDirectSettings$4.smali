.class Lcom/android/settings/wifi/WifiDirectSettings$4;
.super Ljava/lang/Object;
.source "WifiDirectSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


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
    .line 372
    iput-object p1, p0, Lcom/android/settings/wifi/WifiDirectSettings$4;->this$0:Lcom/android/settings/wifi/WifiDirectSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1
    .parameter "dialog"

    .prologue
    .line 374
    iget-object v0, p0, Lcom/android/settings/wifi/WifiDirectSettings$4;->this$0:Lcom/android/settings/wifi/WifiDirectSettings;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiDirectSettings;->finish()V

    .line 375
    return-void
.end method
