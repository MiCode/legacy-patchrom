.class Lcom/android/phone/EditPhoneNumberPreference$2;
.super Ljava/lang/Object;
.source "EditPhoneNumberPreference.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/EditPhoneNumberPreference;->onPickActivityResult(Ljava/lang/String;)V
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
    .line 320
    iput-object p1, p0, Lcom/android/phone/EditPhoneNumberPreference$2;->this$0:Lcom/android/phone/EditPhoneNumberPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 322
    iget-object v0, p0, Lcom/android/phone/EditPhoneNumberPreference$2;->this$0:Lcom/android/phone/EditPhoneNumberPreference;

    #getter for: Lcom/android/phone/EditPhoneNumberPreference;->imm:Landroid/view/inputmethod/InputMethodManager;
    invoke-static {v0}, Lcom/android/phone/EditPhoneNumberPreference;->access$400(Lcom/android/phone/EditPhoneNumberPreference;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/EditPhoneNumberPreference$2;->this$0:Lcom/android/phone/EditPhoneNumberPreference;

    #getter for: Lcom/android/phone/EditPhoneNumberPreference;->editText:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/android/phone/EditPhoneNumberPreference;->access$300(Lcom/android/phone/EditPhoneNumberPreference;)Landroid/widget/EditText;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 323
    return-void
.end method
