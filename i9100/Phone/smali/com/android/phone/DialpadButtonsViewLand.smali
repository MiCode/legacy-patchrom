.class public Lcom/android/phone/DialpadButtonsViewLand;
.super Landroid/widget/LinearLayout;
.source "DialpadButtonsViewLand.java"


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 33
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 34
    iput-object p1, p0, Lcom/android/phone/DialpadButtonsViewLand;->mContext:Landroid/content/Context;

    .line 35
    return-void
.end method

.method private log(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 54
    const-string v0, "DialpadButtonsViewLand"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    return-void
.end method


# virtual methods
.method initialize()V
    .locals 3

    .prologue
    .line 39
    iget-object v1, p0, Lcom/android/phone/DialpadButtonsViewLand;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 40
    .local v0, inflater:Landroid/view/LayoutInflater;
    const v1, 0x7f030015

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 44
    const-string v1, "Inflate Dialpad buttons view (landscape)"

    invoke-direct {p0, v1}, Lcom/android/phone/DialpadButtonsViewLand;->log(Ljava/lang/String;)V

    .line 45
    return-void
.end method

.method protected onFinishInflate()V
    .locals 0

    .prologue
    .line 49
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 50
    return-void
.end method
