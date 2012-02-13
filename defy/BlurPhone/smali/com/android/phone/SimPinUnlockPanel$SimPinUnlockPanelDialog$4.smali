.class Lcom/android/phone/SimPinUnlockPanel$SimPinUnlockPanelDialog$4;
.super Ljava/lang/Object;
.source "SimPinUnlockPanel.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/SimPinUnlockPanel$SimPinUnlockPanelDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/SimPinUnlockPanel$SimPinUnlockPanelDialog;


# direct methods
.method constructor <init>(Lcom/android/phone/SimPinUnlockPanel$SimPinUnlockPanelDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 434
    iput-object p1, p0, Lcom/android/phone/SimPinUnlockPanel$SimPinUnlockPanelDialog$4;->this$0:Lcom/android/phone/SimPinUnlockPanel$SimPinUnlockPanelDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 436
    iget-object v0, p0, Lcom/android/phone/SimPinUnlockPanel$SimPinUnlockPanelDialog$4;->this$0:Lcom/android/phone/SimPinUnlockPanel$SimPinUnlockPanelDialog;

    invoke-virtual {v0}, Lcom/android/phone/SimPinUnlockPanel$SimPinUnlockPanelDialog;->dismiss()V

    .line 437
    return-void
.end method
