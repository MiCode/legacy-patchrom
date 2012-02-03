.class Lcom/android/settings/vpn/VpnSettings$2;
.super Ljava/lang/Object;
.source "VpnSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/vpn/VpnSettings;->createConnectDialog()Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/vpn/VpnSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/vpn/VpnSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 219
    iput-object p1, p0, Lcom/android/settings/vpn/VpnSettings$2;->this$0:Lcom/android/settings/vpn/VpnSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "dl"
    .parameter "key"
    .parameter "event"

    .prologue
    .line 222
    packed-switch p2, :pswitch_data_0

    .line 227
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 225
    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 222
    nop

    :pswitch_data_0
    .packed-switch 0x52
        :pswitch_0
    .end packed-switch
.end method
