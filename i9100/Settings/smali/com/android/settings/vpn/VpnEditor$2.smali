.class Lcom/android/settings/vpn/VpnEditor$2;
.super Ljava/lang/Object;
.source "VpnEditor.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/vpn/VpnEditor;->showCancellationConfirmDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/vpn/VpnEditor;


# direct methods
.method constructor <init>(Lcom/android/settings/vpn/VpnEditor;)V
    .locals 0
    .parameter

    .prologue
    .line 196
    iput-object p1, p0, Lcom/android/settings/vpn/VpnEditor$2;->this$0:Lcom/android/settings/vpn/VpnEditor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "w"

    .prologue
    .line 198
    iget-object v0, p0, Lcom/android/settings/vpn/VpnEditor$2;->this$0:Lcom/android/settings/vpn/VpnEditor;

    invoke-virtual {v0}, Lcom/android/settings/vpn/VpnEditor;->finish()V

    .line 199
    return-void
.end method
