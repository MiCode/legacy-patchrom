.class Lcom/android/settings/UsbSettings$6;
.super Ljava/lang/Object;
.source "UsbSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/UsbSettings;->onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/UsbSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/UsbSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 251
    iput-object p1, p0, Lcom/android/settings/UsbSettings$6;->this$0:Lcom/android/settings/UsbSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 3
    .parameter "arg0"

    .prologue
    .line 253
    const-string v0, "persist.service.usb.setting"

    const-string v1, "0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 254
    iget-object v0, p0, Lcom/android/settings/UsbSettings$6;->this$0:Lcom/android/settings/UsbSettings;

    invoke-virtual {v0}, Lcom/android/settings/UsbSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "usb_setting_mode"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 256
    return-void
.end method
