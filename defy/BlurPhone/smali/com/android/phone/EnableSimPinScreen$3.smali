.class Lcom/android/phone/EnableSimPinScreen$3;
.super Ljava/lang/Object;
.source "EnableSimPinScreen.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/EnableSimPinScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/EnableSimPinScreen;


# direct methods
.method constructor <init>(Lcom/android/phone/EnableSimPinScreen;)V
    .locals 0
    .parameter

    .prologue
    .line 146
    iput-object p1, p0, Lcom/android/phone/EnableSimPinScreen$3;->this$0:Lcom/android/phone/EnableSimPinScreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 148
    iget-object v0, p0, Lcom/android/phone/EnableSimPinScreen$3;->this$0:Lcom/android/phone/EnableSimPinScreen;

    #getter for: Lcom/android/phone/EnableSimPinScreen;->mPinField:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/android/phone/EnableSimPinScreen;->access$100(Lcom/android/phone/EnableSimPinScreen;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 156
    :goto_0
    return-void

    .line 152
    :cond_0
    iget-object v0, p0, Lcom/android/phone/EnableSimPinScreen$3;->this$0:Lcom/android/phone/EnableSimPinScreen;

    iget-object v1, p0, Lcom/android/phone/EnableSimPinScreen$3;->this$0:Lcom/android/phone/EnableSimPinScreen;

    invoke-virtual {v1}, Lcom/android/phone/EnableSimPinScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b02dd

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    #calls: Lcom/android/phone/EnableSimPinScreen;->showStatus(Ljava/lang/CharSequence;)V
    invoke-static {v0, v1}, Lcom/android/phone/EnableSimPinScreen;->access$200(Lcom/android/phone/EnableSimPinScreen;Ljava/lang/CharSequence;)V

    .line 155
    iget-object v0, p0, Lcom/android/phone/EnableSimPinScreen$3;->this$0:Lcom/android/phone/EnableSimPinScreen;

    #calls: Lcom/android/phone/EnableSimPinScreen;->enableSimPin()V
    invoke-static {v0}, Lcom/android/phone/EnableSimPinScreen;->access$300(Lcom/android/phone/EnableSimPinScreen;)V

    goto :goto_0
.end method
