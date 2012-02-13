.class Lcom/android/phone/FakePhoneActivity$1;
.super Ljava/lang/Object;
.source "FakePhoneActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/FakePhoneActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/FakePhoneActivity;


# direct methods
.method constructor <init>(Lcom/android/phone/FakePhoneActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 53
    iput-object p1, p0, Lcom/android/phone/FakePhoneActivity$1;->this$0:Lcom/android/phone/FakePhoneActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/phone/FakePhoneActivity$1;->this$0:Lcom/android/phone/FakePhoneActivity;

    #getter for: Lcom/android/phone/FakePhoneActivity;->mPlaceCall:Landroid/widget/Button;
    invoke-static {v0}, Lcom/android/phone/FakePhoneActivity;->access$100(Lcom/android/phone/FakePhoneActivity;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Button;->requestFocus()Z

    .line 56
    return-void
.end method
