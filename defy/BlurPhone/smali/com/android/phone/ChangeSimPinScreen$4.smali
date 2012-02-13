.class Lcom/android/phone/ChangeSimPinScreen$4;
.super Ljava/lang/Object;
.source "ChangeSimPinScreen.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/ChangeSimPinScreen;->displayPUKAlert()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/ChangeSimPinScreen;


# direct methods
.method constructor <init>(Lcom/android/phone/ChangeSimPinScreen;)V
    .locals 0
    .parameter

    .prologue
    .line 339
    iput-object p1, p0, Lcom/android/phone/ChangeSimPinScreen$4;->this$0:Lcom/android/phone/ChangeSimPinScreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 341
    iget-object v0, p0, Lcom/android/phone/ChangeSimPinScreen$4;->this$0:Lcom/android/phone/ChangeSimPinScreen;

    #getter for: Lcom/android/phone/ChangeSimPinScreen;->mPUKAlert:Landroid/app/AlertDialog;
    invoke-static {v0}, Lcom/android/phone/ChangeSimPinScreen;->access$1300(Lcom/android/phone/ChangeSimPinScreen;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 342
    return-void
.end method
