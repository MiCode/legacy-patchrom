.class Lcom/android/phone/SimPinUnlockPanel$1;
.super Ljava/lang/Object;
.source "SimPinUnlockPanel.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/SimPinUnlockPanel;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/SimPinUnlockPanel;


# direct methods
.method constructor <init>(Lcom/android/phone/SimPinUnlockPanel;)V
    .locals 0
    .parameter

    .prologue
    .line 68
    iput-object p1, p0, Lcom/android/phone/SimPinUnlockPanel$1;->this$0:Lcom/android/phone/SimPinUnlockPanel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1
    .parameter "dialog"

    .prologue
    .line 70
    iget-object v0, p0, Lcom/android/phone/SimPinUnlockPanel$1;->this$0:Lcom/android/phone/SimPinUnlockPanel;

    invoke-virtual {v0}, Lcom/android/phone/SimPinUnlockPanel;->finish()V

    .line 71
    return-void
.end method
