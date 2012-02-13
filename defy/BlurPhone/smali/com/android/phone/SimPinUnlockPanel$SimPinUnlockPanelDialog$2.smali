.class Lcom/android/phone/SimPinUnlockPanel$SimPinUnlockPanelDialog$2;
.super Ljava/lang/Object;
.source "SimPinUnlockPanel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/SimPinUnlockPanel$SimPinUnlockPanelDialog;->showUnlockSuccess()V
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
    .line 357
    iput-object p1, p0, Lcom/android/phone/SimPinUnlockPanel$SimPinUnlockPanelDialog$2;->this$0:Lcom/android/phone/SimPinUnlockPanel$SimPinUnlockPanelDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 359
    iget-object v0, p0, Lcom/android/phone/SimPinUnlockPanel$SimPinUnlockPanelDialog$2;->this$0:Lcom/android/phone/SimPinUnlockPanel$SimPinUnlockPanelDialog;

    invoke-virtual {v0}, Lcom/android/phone/SimPinUnlockPanel$SimPinUnlockPanelDialog;->dismiss()V

    .line 360
    return-void
.end method
