.class Lcom/android/phone/InVTCallScreen$28;
.super Ljava/lang/Object;
.source "InVTCallScreen.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/InVTCallScreen;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/InVTCallScreen;


# direct methods
.method constructor <init>(Lcom/android/phone/InVTCallScreen;)V
    .locals 0
    .parameter

    .prologue
    .line 8838
    iput-object p1, p0, Lcom/android/phone/InVTCallScreen$28;->this$0:Lcom/android/phone/InVTCallScreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2
    .parameter "dialog"

    .prologue
    .line 8841
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$28;->this$0:Lcom/android/phone/InVTCallScreen;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/phone/InVTCallScreen;->removeDialog(I)V

    .line 8844
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$28;->this$0:Lcom/android/phone/InVTCallScreen;

    const/4 v1, 0x0

    #setter for: Lcom/android/phone/InVTCallScreen;->mAuxiDialogList:Z
    invoke-static {v0, v1}, Lcom/android/phone/InVTCallScreen;->access$002(Lcom/android/phone/InVTCallScreen;Z)Z

    .line 8845
    return-void
.end method
