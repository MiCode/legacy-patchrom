.class Lcom/android/phone/EditFdnContactScreen$4;
.super Ljava/lang/Object;
.source "EditFdnContactScreen.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/EditFdnContactScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/EditFdnContactScreen;


# direct methods
.method constructor <init>(Lcom/android/phone/EditFdnContactScreen;)V
    .locals 0
    .parameter

    .prologue
    .line 507
    iput-object p1, p0, Lcom/android/phone/EditFdnContactScreen$4;->this$0:Lcom/android/phone/EditFdnContactScreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 3
    .parameter "v"
    .parameter "hasFocus"

    .prologue
    .line 509
    if-eqz p2, :cond_0

    instance-of v2, p1, Landroid/widget/TextView;

    if-eqz v2, :cond_0

    .line 510
    move-object v0, p1

    check-cast v0, Landroid/widget/TextView;

    move-object v1, v0

    .line 511
    .local v1, textView:Landroid/widget/TextView;
    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/text/Spannable;

    invoke-static {p0}, Landroid/text/Selection;->selectAll(Landroid/text/Spannable;)V

    .line 513
    .end local v1           #textView:Landroid/widget/TextView;
    :cond_0
    return-void
.end method
