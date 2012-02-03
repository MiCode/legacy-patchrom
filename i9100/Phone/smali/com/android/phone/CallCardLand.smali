.class public Lcom/android/phone/CallCardLand;
.super Landroid/widget/FrameLayout;
.source "CallCardLand.java"


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 32
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 33
    iput-object p1, p0, Lcom/android/phone/CallCardLand;->mContext:Landroid/content/Context;

    .line 34
    return-void
.end method

.method private log(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 53
    const-string v0, "CallCardLand"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    return-void
.end method


# virtual methods
.method initialize()V
    .locals 3

    .prologue
    .line 38
    iget-object v1, p0, Lcom/android/phone/CallCardLand;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 39
    .local v0, inflater:Landroid/view/LayoutInflater;
    const v1, 0x7f030002

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 43
    const-string v1, "Inflate CallCard view (landscape)"

    invoke-direct {p0, v1}, Lcom/android/phone/CallCardLand;->log(Ljava/lang/String;)V

    .line 44
    return-void
.end method

.method protected onFinishInflate()V
    .locals 0

    .prologue
    .line 48
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 49
    return-void
.end method
