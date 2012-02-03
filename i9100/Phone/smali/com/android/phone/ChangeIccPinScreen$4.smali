.class Lcom/android/phone/ChangeIccPinScreen$4;
.super Ljava/lang/Object;
.source "ChangeIccPinScreen.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/ChangeIccPinScreen;->displayPUKAlert()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/ChangeIccPinScreen;


# direct methods
.method constructor <init>(Lcom/android/phone/ChangeIccPinScreen;)V
    .locals 0
    .parameter

    .prologue
    .line 291
    iput-object p1, p0, Lcom/android/phone/ChangeIccPinScreen$4;->this$0:Lcom/android/phone/ChangeIccPinScreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 293
    iget-object v0, p0, Lcom/android/phone/ChangeIccPinScreen$4;->this$0:Lcom/android/phone/ChangeIccPinScreen;

    #getter for: Lcom/android/phone/ChangeIccPinScreen;->mPUKAlert:Landroid/app/AlertDialog;
    invoke-static {v0}, Lcom/android/phone/ChangeIccPinScreen;->access$1300(Lcom/android/phone/ChangeIccPinScreen;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 294
    return-void
.end method
