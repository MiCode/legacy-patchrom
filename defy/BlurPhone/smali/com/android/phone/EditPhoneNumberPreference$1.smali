.class Lcom/android/phone/EditPhoneNumberPreference$1;
.super Ljava/lang/Object;
.source "EditPhoneNumberPreference.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/EditPhoneNumberPreference;->onBindDialogView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/EditPhoneNumberPreference;


# direct methods
.method constructor <init>(Lcom/android/phone/EditPhoneNumberPreference;)V
    .locals 0
    .parameter

    .prologue
    .line 221
    iput-object p1, p0, Lcom/android/phone/EditPhoneNumberPreference$1;->this$0:Lcom/android/phone/EditPhoneNumberPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 223
    iget-object v0, p0, Lcom/android/phone/EditPhoneNumberPreference$1;->this$0:Lcom/android/phone/EditPhoneNumberPreference;

    #getter for: Lcom/android/phone/EditPhoneNumberPreference;->mParentActivity:Landroid/app/Activity;
    invoke-static {v0}, Lcom/android/phone/EditPhoneNumberPreference;->access$000(Lcom/android/phone/EditPhoneNumberPreference;)Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 224
    iget-object v0, p0, Lcom/android/phone/EditPhoneNumberPreference$1;->this$0:Lcom/android/phone/EditPhoneNumberPreference;

    #getter for: Lcom/android/phone/EditPhoneNumberPreference;->mParentActivity:Landroid/app/Activity;
    invoke-static {v0}, Lcom/android/phone/EditPhoneNumberPreference;->access$000(Lcom/android/phone/EditPhoneNumberPreference;)Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/EditPhoneNumberPreference$1;->this$0:Lcom/android/phone/EditPhoneNumberPreference;

    #getter for: Lcom/android/phone/EditPhoneNumberPreference;->mContactListIntent:Landroid/content/Intent;
    invoke-static {v1}, Lcom/android/phone/EditPhoneNumberPreference;->access$100(Lcom/android/phone/EditPhoneNumberPreference;)Landroid/content/Intent;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/EditPhoneNumberPreference$1;->this$0:Lcom/android/phone/EditPhoneNumberPreference;

    #getter for: Lcom/android/phone/EditPhoneNumberPreference;->mPrefId:I
    invoke-static {v2}, Lcom/android/phone/EditPhoneNumberPreference;->access$200(Lcom/android/phone/EditPhoneNumberPreference;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 226
    :cond_0
    return-void
.end method
