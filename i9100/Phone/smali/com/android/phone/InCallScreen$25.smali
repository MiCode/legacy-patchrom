.class Lcom/android/phone/InCallScreen$25;
.super Ljava/lang/Object;
.source "InCallScreen.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/InCallScreen;->showRadioOnDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/InCallScreen;


# direct methods
.method constructor <init>(Lcom/android/phone/InCallScreen;)V
    .locals 0
    .parameter

    .prologue
    .line 4913
    iput-object p1, p0, Lcom/android/phone/InCallScreen$25;->this$0:Lcom/android/phone/InCallScreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2
    .parameter "dialog"

    .prologue
    .line 4915
    iget-object v0, p0, Lcom/android/phone/InCallScreen$25;->this$0:Lcom/android/phone/InCallScreen;

    const/4 v1, 0x0

    #setter for: Lcom/android/phone/InCallScreen;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v0, v1}, Lcom/android/phone/InCallScreen;->access$2402(Lcom/android/phone/InCallScreen;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    .line 4916
    iget-object v0, p0, Lcom/android/phone/InCallScreen$25;->this$0:Lcom/android/phone/InCallScreen;

    #calls: Lcom/android/phone/InCallScreen;->bailOutAfterErrorDialog()V
    invoke-static {v0}, Lcom/android/phone/InCallScreen;->access$2900(Lcom/android/phone/InCallScreen;)V

    .line 4917
    return-void
.end method
