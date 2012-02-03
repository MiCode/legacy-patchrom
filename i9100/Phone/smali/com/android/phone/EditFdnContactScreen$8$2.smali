.class Lcom/android/phone/EditFdnContactScreen$8$2;
.super Ljava/lang/Object;
.source "EditFdnContactScreen.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/EditFdnContactScreen$8;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/phone/EditFdnContactScreen$8;


# direct methods
.method constructor <init>(Lcom/android/phone/EditFdnContactScreen$8;)V
    .locals 0
    .parameter

    .prologue
    .line 632
    iput-object p1, p0, Lcom/android/phone/EditFdnContactScreen$8$2;->this$1:Lcom/android/phone/EditFdnContactScreen$8;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 634
    iget-object v0, p0, Lcom/android/phone/EditFdnContactScreen$8$2;->this$1:Lcom/android/phone/EditFdnContactScreen$8;

    iget-object v0, v0, Lcom/android/phone/EditFdnContactScreen$8;->this$0:Lcom/android/phone/EditFdnContactScreen;

    #getter for: Lcom/android/phone/EditFdnContactScreen;->imm:Landroid/view/inputmethod/InputMethodManager;
    invoke-static {v0}, Lcom/android/phone/EditFdnContactScreen;->access$100(Lcom/android/phone/EditFdnContactScreen;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/EditFdnContactScreen$8$2;->this$1:Lcom/android/phone/EditFdnContactScreen$8;

    iget-object v1, v1, Lcom/android/phone/EditFdnContactScreen$8;->this$0:Lcom/android/phone/EditFdnContactScreen;

    #getter for: Lcom/android/phone/EditFdnContactScreen;->mPin2Field:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/android/phone/EditFdnContactScreen;->access$000(Lcom/android/phone/EditFdnContactScreen;)Landroid/widget/EditText;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 635
    return-void
.end method
